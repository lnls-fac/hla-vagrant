css dir exists:
  file.directory:
    - name: /opt/css

css extracted:
  archive.extracted:
    - name: /opt/css/nsls_css_tar
    - source: http://sourceforge.net/projects/cs-studio/files/nsls2-release/CSS-NSLSII-linux64-3.2.16a.zip/download
    - archive_format: zip
    - source_hash: md5=2af964bc3c7256048c13a4f5f6e63ebf
  cmd.run:
    - name: mv nsls_css_tar/css-nsls2 .
    - cwd: /opt/css
  file.absent:
    - name: /opt/css/nsls_css_tar

css link exists:
  file.symlink:
    - name: /usr/local/bin/css
    - target: /opt/css/css-nsls2/css-nsls2
