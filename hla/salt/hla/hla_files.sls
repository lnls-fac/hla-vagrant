hla-bashrc:
  file.managed:
    - name: /home/fac/.bashrc
    - source: salt://files/hla-bashrc
