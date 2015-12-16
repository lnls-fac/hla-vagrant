epics3 tar exists:
  file.managed:
    - name: /usr/local/epics/R3.14/baseR3.14.12.4.tar.gz
    - source: http://www.aps.anl.gov/epics/download/base/baseR3.14.12.4.tar.gz
    - source_hash: md5=4e71c07053c4458eece4d492eb85fca8

install epics base:
  cmd.script:
    - name: salt://scripts/install_epics_base.py
    - cwd: /usr/local/epics/R3.14
