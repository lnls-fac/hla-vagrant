#!/usr/bin/env python3

import os
import sys
import subprocess


commands = (
    'tar xzf seq-2.2.2.tar.gz',
    'cd seq-2.2.2 && make && cd ..',
    'rm -rf seq-2.2.2.tar.gz',
    'cd src && tar xzf gateway2_0_5_1.tar.gz && make'
    'rm gateway2_0_5_1.tar.gz'
)

for command in commands:
    if subprocess.call(command, shell=True, executable='/bin/bash') != 0:
        sys.exit(1)

sys.exit(0)
