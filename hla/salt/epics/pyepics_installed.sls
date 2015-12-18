pyepics tar exists:
  file.managed:
    - name: /home/fac/pyepics-3.2.4.tar.gz
    - source: https://pypi.python.org/packages/source/p/pyepics/pyepics-3.2.4.tar.gz#md5=aa824e88f39a3aa01ca3fb9ad16842ae
    - source_hash: md5=aa824e88f39a3aa01ca3fb9ad16842ae

install pyepics:
  cmd.script:
    - name: salt://scripts/install_pyepics.py
    - cwd: /home/fac
    - env:
      - EPICS_BASE: {{ pillar['epics3_dir'] }}/base
