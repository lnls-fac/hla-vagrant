hla:
  git.latest:
    - name: {{ pillar['repo_base_url'] }}/hla.git
    - target: {{ pillar['repo_base_dir'] }}/hla
    - force_reset: True
    - user: fac
  cmd.run:
    - name: python3 setup.py {{ pillar['install_command'] }}
    - cwd: {{ pillar['repo_base_dir'] }}/hla/hlaplot
