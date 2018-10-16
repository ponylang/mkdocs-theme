# Ponylang Mkdocs Theme

A customized theme based on https://github.com/squidfunk/mkdocs-material for
MkDocs of the Ponylang Standard Library documentation.

## Usage

Install the theme from PyPI:

```sh
pip install mkdocs-ponylang
```

In your `mkdocs.yml` file, change the theme:

```yaml
theme:
  name: ponylang
```

### Customization

#### Table of contents

```yaml
# Enable permalinks
markdown_extensions:
- markdown.extensions.toc:
    permalink: true

# Set maximum depth
theme:
  max_toc_depth: 2
```

#### Palette

```yaml
theme:
  palette:
    primary: brown
    accent: amber
```

You can choose from primary and accent colors listed [here](https://squidfunk.github.io/mkdocs-material/getting-started/#color-palette).

#### Icons

```yaml
theme:
  favicon: asserts/image/logo.png
  logo:
     icon: cloud
```

Logos can be images or Material icons (more info [here](https://squidfunk.github.io/mkdocs-material/getting-started/#logo)).

#### Source repository

```yaml
repo_name: ponylang/ponyc
repo_url: https://github.com/ponylang/ponyc
```

#### Other customizations

Extra customization options are available in the [Material theme documentation](https://squidfunk.github.io/mkdocs-material/getting-started/).

## Development

### Requirements

* Python 3
* npm
* libpng-dev

### Installation

This will set up all of the necessary packages to install the theme locally.

```sh
git clone https://github.com/ponylang/mkdocs-theme
cd mkdocs-theme
python -m  venv venv
source venv/bin/activate
pip install -e .
npm install
```

### Build

Compile files from `src/` with Webpack:

```sh
npm run build
```

### Distribution

Upload to PyPI with Twine:

Remember to use the python from the virtualenv you created above.

```sh
rm dist/*
python setup.py sdist bdist_wheel
twine upload dist/*
```
