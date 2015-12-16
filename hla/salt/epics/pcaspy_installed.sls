pyepics tar exists:
  file.managed:
    - name: /home/fac/pcaspy-0.5.1.tar.gz
    - source: https://pypi.python.org/packages/source/p/pcaspy/pcaspy-0.5.1.tar.gz#md5=ba8c56ef136540cbaa463d35385b4c42
    - source_hash: md5=ba8c56ef136540cbaa463d35385b4c42

install pyepics:
  cmd.script:
    - name: salt://scripts/install_pcaspy.py
    - cwd: /home/fac
