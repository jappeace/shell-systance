#! /bin/bash
pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U
