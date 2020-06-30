#!/usr/bin/env bash

# clean folder
rm -rfv dist/

# generate distribution archives as:
# https://packaging.python.org/tutorials/packaging-projects/

# python3 -m pip install --user --upgrade setuptools wheel
python3 setup.py sdist bdist_wheel


# Uploading the distribution archives
# python3 -m pip install --user --upgrade twine
python3 -m twine upload dist/*
