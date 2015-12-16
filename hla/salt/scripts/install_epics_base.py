#!/usr/bin/env python3

import os
import sys
import subprocess


commands = (
    'tar xzf baseR3.14.12.4.tar.gz',
    'mv base-3.14.12.4 base',
    'cd base && make && cd ..',
    'rm baseR3.14.12.4.tar.gz'
)

for command in commands:
    if subprocess.call(command, shell=True, executable='/bin/bash') != 0:
        sys.exit(1)

sys.exit(0)
