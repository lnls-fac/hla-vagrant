lnls:
  git.latest:
    - name: {{ pillar['repo_base_url'] }}/lnls.git
    - rev: {{ pillar['lnls_version'] }}
    - target: {{ pillar['repo_base_dir'] }}/code/lnls
    - force_reset: True
    - user: fac
  cmd.run:
    - name: python3 setup.py {{ pillar['install_command'] }}
    - cwd: {{ pillar['repo_base_dir'] }}/code/lnls

mathphys:
  git.latest:
    - name: {{ pillar['repo_base_url'] }}/mathphys.git
    - rev: {{ pillar['mathphys_version'] }}
    - target: {{ pillar['repo_base_dir'] }}/code/mathphys
    - force_reset: True
  cmd.run:
    - name: python3 setup.py {{ pillar['install_command'] }}
    - cwd: {{ pillar['repo_base_dir'] }}/code/mathphys

trackcpp:
  git.latest:
    - name: {{ pillar['repo_base_url'] }}/trackcpp.git
    - rev: {{ pillar['trackcpp_version'] }}
    - target: {{ pillar['repo_base_dir'] }}/code/trackcpp
    - force_reset: True
  cmd.run:
    - name: make {{ pillar['install_command'] }}
    - cwd: {{ pillar['repo_base_dir'] }}/code/trackcpp

pyaccel:
  git.latest:
    - name: {{ pillar['repo_base_url'] }}/pyaccel.git
    - rev: {{ pillar['pyaccel_version'] }}
    - target: {{ pillar['repo_base_dir'] }}/code/pyaccel
    - force_reset: True
  cmd.run:
    - name: python3 setup.py {{ pillar['install_command'] }}
    - cwd: {{ pillar['repo_base_dir'] }}/code/pyaccel

scripts:
  git.latest:
    - name: {{ pillar['repo_base_url'] }}/scripts.git
    - rev: {{ pillar['scripts_version'] }}
    - target: {{ pillar['repo_base_dir'] }}/code/scripts
    - force_reset: True
  cmd.run:
    - name: make {{ pillar['install_command'] }}
    - cwd: {{ pillar['repo_base_dir'] }}/code/scripts/bin

sirius:
  git.latest:
    - name: {{ pillar['repo_base_url'] }}/sirius.git
    - rev: {{ pillar['sirius_version'] }}
    - target: {{ pillar['repo_base_dir'] }}/code/sirius
    - force_reset: True
  cmd.run:
    - name: python3 setup.py {{ pillar['install_command'] }}
    - cwd: {{ pillar['repo_base_dir'] }}/code/sirius
