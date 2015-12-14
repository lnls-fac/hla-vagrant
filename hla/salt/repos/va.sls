va:
  git.latest:
    - name: {{ pillar['repo_base_url'] }}/va.git
    - rev: {{ pillar['va_version'] }}
    - target: {{ pillar['repo_base_dir'] }}/code/va
    - force_reset: True
  cmd.run:
    - name: python3 setup.py {{ pillar['install_command'] }}
    - cwd: {{ pillar['repo_base_dir'] }}/code/va
