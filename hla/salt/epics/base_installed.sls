epics3 base extracted:
  archive.extracted:
    - name: {{ pillar['epics3_dir'] }}/epics_base_tar
    - source: http://www.aps.anl.gov/epics/download/base/baseR3.14.12.4.tar.gz
    - archive_format: tar
    - source_hash: md5=4e71c07053c4458eece4d492eb85fca8
    - user: fac
  cmd.run:
    - name: mv epics_base_tar/base-3.14.12.4 base
    - cwd: {{ pillar['epics3_dir'] }}
    - user: fac
  file.absent:
    - name: {{ pillar['epics3_dir'] }}/epics_base_tar

install epics base:
  cmd.run:
    - name: make
    - cwd: {{ pillar['epics3_dir'] }}/base
    - user: fac
