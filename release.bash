#!/usr/bin/env bash

set -e

# add github tag
# upload app to
VERSION=${1?"Usage: ./release.bash <VERSION> [<COMMIT>]"}
COMMIT=${2:-$(git rev-parse HEAD)}

echo "Releasing version $VERSION from commit $COMMIT"
while true; do
    read -rp "Is this correct (y/n)" yn
    case $yn in
        [Yy]*) break;;
        [Nn]*) exit;;
        *) echo "Please answer y or n.";;
    esac
done

# create git release
git checkout master
git pull

if ! git diff --exit-code master origin/master
then
    echo "ERROR! There are local-only changes on branch 'master'!"
    exit 1
fi

git checkout -b "release-$VERSION" "$COMMIT"

# clean
echo "Cleaning up..."
git clean -f
make clean
echo "Done."

# update version
echo "Updating the version and building fresh theme..."
sed -i -e 's/  "version": "[0-9.]\+",/  "version": "'"$VERSION"'",/' package.json
git add package.json

# build fresh version of theme
make build
git add .

git commit -m"Prepare for $VERSION release

[skip ci]"
echo "Done."


git checkout release
if ! git diff --exit-code release origin/release
then
    echo "ERROR! There are local-only changes on branch 'release'!"
    exit 1
fi
# version change will include a conflict, resolve it by using the version from the release branch
git merge -s recursive -X theirs "release-$VERSION" -m "Release $VERSION"

git tag "$VERSION"

git push origin release
git push origin "$VERSION"

# build packages upload to PyPI
echo "Building Python Packages..."
make python-packages
echo "Done."

echo "Uploading Python Packages to PyPI..."
make upload-to-pypi
echo "Done."

# merge back to master
echo "Merging back to master..."
git checkout master
git merge "release-$VERSION"
git push origin master
echo "Done."

