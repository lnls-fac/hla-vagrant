fac_files dir exists:
  file.directory:
    - name: /home/fac_files
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
    - name: /usr/local/epics/R3.14
    - target: /usr/local/epics/R3.14.12.4
    - user: fac
    - group: fac

epics3 extensions dir exists:
  file.directory:
    - name: /usr/local/epics/R3.14/extensions
    - user: fac
    - group: fac
