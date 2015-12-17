css dir exists:
  file.directory:
    - name: /opt/css
    - user: fac
    - group: fac

css extracted:
  archive.extracted:
    - name: /opt/css/sns-css-4.1.0
    - source: https://ics-web.sns.ornl.gov/css/updates/apps/sns-css-4.1.0-linux.gtk.x86_64.zip
    - source_hash: md5=3841e9acfe93ffdf008286ecd66455c8

css link exists:
  file.symlink:
    - name: /usr/local/bin
    - target: /opt/css/sns-css-4.1.0/css
