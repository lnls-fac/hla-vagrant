epics3 extensions build system set:
  cmd.run:
    - name: {{ pillar['epics3_dir'] }}/base/bin/linux-x86_64/makeBaseExt.pl -t simple
    - cwd: {{ pillar['epics3_dir'] }}/extensions
    - user: fac

procServ extracted:
  archive.extracted:
    - name: {{ pillar['epics3_dir'] }}/extensions/procServ
    - source: http://sourceforge.net/projects/procserv/files/2.6.0/procServ-2.6.0.tar.gz/download
    - archive_format: tar
    - source_hash: md5=bbf052e7fcc6fa403d2514219346da04
    - archive_format: tar
    - user: fac

install procServ:
  cmd.run:
    - name: ./configure && make install
    - cwd: {{ pillar['epics3_dir'] }}/extensions/procServ/procServ-2.6.0

procServ directory absent:
  file.absent:
    - name: {{ pillar['epics3_dir'] }}/extensions/procServ

sequencer extracted:
  archive.extracted:
    - name: {{ pillar['epics3_dir'] }}/extensions/sequencer
    - source: http://www-csr.bessy.de/control/SoftDist/sequencer/releases/seq-2.2.2.tar.gz
    - archive_format: tar
    - source_hash: md5=fa2db34286644dd67edb83e0e1b1c8c3
    - user: fac
  cmd.run:
    - name: mv sequencer/seq-2.2.2 .
    - cwd: {{ pillar['epics3_dir'] }}/extensions
    - user: fac
  file.absent:
    - name: {{ pillar['epics3_dir'] }}/extensions/sequencer

make sequencer:
  file.managed:
    - name: {{ pillar['epics3_dir'] }}/extensions/seq-2.2.2/configure/RELEASE
    - source: salt://files/sequencer_RELEASE
    - user: fac
  cmd.run:
    - name: make
    - cwd: {{ pillar['epics3_dir'] }}/extensions/seq-2.2.2
    - user: fac

gateway extracted:
  archive.extracted:
    - name: {{ pillar['epics3_dir'] }}/extensions/gateway
    - source: https://launchpad.net/epics-gateway/trunk/2.0.5.1/+download/gateway2_0_5_1.tar.gz
    - archive_format: tar
    - source_hash: md5=f1b01a3b096d68966f2e13ee13d8b719
    - user: fac
  cmd.run:
    - name: mv gateway/gateway2_0_5_1 src
    - cwd: {{ pillar['epics3_dir'] }}/extensions
    - user: fac
  file.absent:
    - name: {{ pillar['epics3_dir'] }}/extensions/gateway

make extensions:
  file.managed:
    - name: {{ pillar['epics3_dir'] }}/extensions/src/Makefile
    - source: salt://files/extensions_Makefile
  cmd.run:
    - name: make
    - cwd: {{ pillar['epics3_dir'] }}/extensions/src
    - user: fac

gateway access file managed:
  file.managed:
    - name: /home/fac/GATEWAY.access
    - source: salt://files/GATEWAY.access
    - user: fac
