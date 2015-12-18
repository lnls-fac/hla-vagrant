#!/usr/bin/env python3

import os
import sys
import subprocess


commands = (
    'tar xzf pcaspy-0.5.1.tar.gz',
    'cd pcaspy-0.5.1 && python3 setup.py install && cd ..',
    'rm -rf pcaspy-0.5.1.tar.gz pcaspy-0.5.1'
)

for command in commands:
    if subprocess.call(command, shell=True, executable='/bin/bash') != 0:
        sys.exit(1)

sys.exit(0)
