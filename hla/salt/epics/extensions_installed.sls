epics3 extensions build system set:
  cmd.run:
    - name: /usr/local/epics/R3.14/base/bin/linux-x86_64/makeBaseExt.pl -t simple
    - cwd: /usr/local/epics/R3.14/extensions
    - user: fac

sequencer tar exists:
  file.managed:
    - name: /usr/local/epics/R3.14/extensions/seq-2.2.2.tar.gz
    - source: http://www-csr.bessy.de/control/SoftDist/sequencer/releases/seq-2.2.2.tar.gz
    - source_hash: md5=fa2db34286644dd67edb83e0e1b1c8c3
    - user: fac

procServ tar exists:
  file.managed:
    - name: /usr/local/epics/R3.14/extensions/procServ-2.6.0.tar.gz
    - source: http://sourceforge.net/projects/procserv/files/2.6.0/procServ-2.6.0.tar.gz/download
    - source_hash: md5=bbf052e7fcc6fa403d2514219346da04
    - user: fac

gateway tar exists:
  file.managed:
    - name: /usr/local/epics/R3.14/extensions/src/gateway2_0_5_1.tar.gz
    - source: https://launchpad.net/epics-gateway/trunk/2.0.5.1/+download/gateway2_0_5_1.tar.gz
    - source_hash: md5=f1b01a3b096d68966f2e13ee13d8b719
    - user: fac
    
install procServ:
  cmd.script:
    - name: salt://scripts/install_procServ.py
    - cwd: /usr/local/epics/R3.14/extensions

epics3 extensions Makefile exists:
  file.managed:
    - name: /usr/local/epics/R3.14/extensions/src/Makefile
    - source: salt://files/extensions_Makefile

install epics3 extensions:
  cmd.script:
    - name: salt://scripts/install_epics_extensions.py
    - cwd: /usr/local/epics/R3.14/extensions
    - user: fac
