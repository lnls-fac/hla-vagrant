fac group and user present:
  group.present:
    - name: fac
  user.present:
    - name: fac
    - gid: fac
    - groups:
      - fac
      - sudo
    - password: {{ pillar['password_hash'] }}
    - shell: /bin/bash
