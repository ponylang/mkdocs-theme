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
theme: ponylang
```

## Development

You must have `virtualenv` and `npm` installed.

### Installation

This will set up all of the necessary packages to install the theme locally.

```sh
git clone https://github.com/ponylang/mkdocs-theme
cd mkdocs-theme
virtualenv venv
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

```sh
rm dist/*
python setup.py sdist bdist_wheel
twine upload dist/*
```
