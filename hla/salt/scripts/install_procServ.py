#!/usr/bin/env python3

import os
import sys
import subprocess


commands = (
    'tar xzf procServ-2.6.0.tar.gz',
    'cd procServ-2.6.0 && ./configure && make install && cd ..',
    'rm -rf procServ-2.6.0.tar.gz procServ-2.6.0'
)

for command in commands:
    if subprocess.call(command, shell=True, executable='/bin/bash') != 0:
        sys.exit(1)

sys.exit(0)
