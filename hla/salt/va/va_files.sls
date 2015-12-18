va-bashrc:
  file.managed:
    - name: /home/fac/.bashrc
    - source: salt://files/va-bashrc
