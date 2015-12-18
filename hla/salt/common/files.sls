vimrc:
  file.managed:
    - name: /home/fac/.vimrc
    - source: salt://files/vimrc

update sources list:
  file.managed:
    - name: /etc/apt/sources.list
    - source: salt://files/sources.list
  cmd.run:
    - name: apt-get update
