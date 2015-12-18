#!/usr/bin/env python3

import os
import sys
import subprocess


commands = (
    'tar xzf pyepics-3.2.4.tar.gz',
    'cd pyepics-3.2.4 && python3 setup.py install && cd ..',
    'rm -rf pyepics-3.2.4.tar.gz pyepics-3.2.4'
)

for command in commands:
    if subprocess.call(command, shell=True, executable='/bin/bash') != 0:
        sys.exit(1)

sys.exit(0)
