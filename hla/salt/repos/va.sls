va:
  git.latest:
    - name: {{ pillar['repo_base_url'] }}/va.git
    - rev: {{ pillar['va_version'] }}
    - target: {{ pillar['repo_base_dir'] }}/code/va
    - force_reset: True
    - user: fac
  cmd.run:
    - name: python3 setup.py {{ pillar['install_command'] }}
    - cwd: {{ pillar['repo_base_dir'] }}/code/va

siriusdb:
  git.latest:
    - name: {{ pillar['repo_base_url'] }}/siriusdb.git
    - target: {{ pillar['repo_base_dir'] }}/siriusdb
    - force_reset: True
    - user: fac
