fac_files dir exists:
  file.directory:
    - name: {{ pillar['repo_base_dir'] }}
    - user: fac
    - group: fac

epics dir exists:
  file.directory:
    - name: /usr/local/epics
    - user: fac
    - group: fac

epics3 dir exists:
  file.directory:
    - name: /usr/local/epics/R3.14.12.4
    - user: fac
    - group: fac

epics3 link exists:
  file.symlink:
    - name: {{ pillar['epics3_dir'] }}
    - target: /usr/local/epics/R3.14.12.4
    - user: fac
    - group: fac

epics3 extensions dir exists:
  file.directory:
    - name: {{ pillar['epics3_dir'] }}/extensions
    - user: fac
    - group: fac
