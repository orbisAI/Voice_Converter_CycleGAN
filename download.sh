#!/bin/bash
git clone https://github.com/JeremyCCHsu/Python-Wrapper-for-World-Vocoder.git
cd Python-Wrapper-for-World-Vocoder
git submodule update --init
pip install -U pip
pip install -r requirements.txt
pip install .

python download.py --download_dir ./download --data_dir ./data --datasets vcc2016