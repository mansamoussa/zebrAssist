#!/usr/bin/env bash
set -e
python -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
if [ -f pyproject.toml ]; then
pip install poetry && poetry install
else
pip install -r requirements.txt
fi
pre-commit install || true
