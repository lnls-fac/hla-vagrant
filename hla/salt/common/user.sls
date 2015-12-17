fac_user_present:
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
