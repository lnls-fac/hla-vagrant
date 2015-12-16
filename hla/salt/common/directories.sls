fac_files_dir_exists:
  file.directory:
    - name: /home/fac_files
    - user: fac
    - group: fac

epics_dir_exists:
  file.directory:
    - name: /usr/local/epics
    - user: fac
    - group: fac

epics3_dir_exists:
  file.directory:
    - name: /usr/local/epics/R3.14.12.4
    - user: fac
    - group: fac

epics3_link_exists:
  file.symlink:
    - name: /usr/local/epics/R3.14
    - target: /usr/local/epics/R3.14.12.4
    - user: fac
    - group: fac
