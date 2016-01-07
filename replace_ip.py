#!/usr/bin/env python3

import os
import argparse


def replace_file_with_ip_component(filename, ip_component):
    template_filename = os.path.join('templates', os.path.basename(filename))

    with open(template_filename, 'rt') as f:
        lines = f.readlines()

    for i in range(len(lines)):
        line = lines[i]
        if line.find(search) > 0:
            lines[i] = line.replace(search, ip_component, 1)

    with open(filename, 'wt') as f:
        f.writelines(lines)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('ip_component', help='IP address component')

    args = parser.parse_args()
    ip_component = args.ip_component

    search = '<replace_ip>'

    replace_file_with_ip_component('Vagrantfile', ip_component)
    replace_file_with_ip_component('hla/etc/hla', ip_component)
    replace_file_with_ip_component('hla/etc/va', ip_component)
    replace_file_with_ip_component('hla/salt/files/hla-bashrc', ip_component)
    replace_file_with_ip_component('hla/salt/files/va-bashrc', ip_component)
