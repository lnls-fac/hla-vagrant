fac_user_present:
  group.present:
    - name: fac
  user.present:
    - name: fac
    - gid: fac
    - password: {{ pillar['password'] }}
    - shell: /bin/bash
