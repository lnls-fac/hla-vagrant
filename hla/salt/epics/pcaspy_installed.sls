pcaspy tar exists:
  file.managed:
    - name: /home/fac/pcaspy-0.5.1.tar.gz
    - source: https://pypi.python.org/packages/source/p/pcaspy/pcaspy-0.5.1.tar.gz#md5=ba8c56ef136540cbaa463d35385b4c42
    - source_hash: md5=ba8c56ef136540cbaa463d35385b4c42

install pcaspy:
  cmd.script:
    - name: salt://scripts/install_pcaspy.py
    - cwd: /home/fac
    - env:
      - EPICS_BASE: {{ pillar['epics3_dir'] }}/base
      - EPICS_HOST_ARCH: {{ pillar['epics_host_arch'] }}
