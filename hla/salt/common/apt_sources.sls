update_sources_list:
  file.managed:
    - name: /etc/apt/sources.list
    - source: salt://apt/sources.list
  cmd.run:
    - name: apt-get update
