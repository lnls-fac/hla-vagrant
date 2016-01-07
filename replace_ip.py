#!/usr/bin/env python3

import argparse


def replace_file_with_ip(filename, ip):
    with open(filename+'_template', 'rt') as f:
        lines = f.readlines()

    for i in range(len(lines)):
        line = lines[i]
        if line.find(search) > 0:
            lines[i] = line.replace(search, ip, 1)

    with open(filename, 'wt') as f:
        f.writelines(lines)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('ip', help='IP address component')

    args = parser.parse_args()
    ip = args.ip

    search = '<replace_ip>'

    replace_file_with_ip('Vagrantfile', ip)
    replace_file_with_ip('hla/etc/hla', ip)
    replace_file_with_ip('hla/etc/va', ip)
    replace_file_with_ip('hla/salt/files/hla-bashrc', ip)
    replace_file_with_ip('hla/salt/files/va-bashrc', ip)
