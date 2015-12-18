fac-bashrc:
  file.managed:
    - name: /usr/local/etc/fac-bashrc
    - source: salt://files/fac-bashrc

vimrc:
  file.managed:
    - name: /home/fac/.vimrc
    - source: salt://files/vimrc

update_sources_list:
  file.managed:
    - name: /etc/apt/sources.list
    - source: salt://files/sources.list
  cmd.run:
    - name: apt-get update
