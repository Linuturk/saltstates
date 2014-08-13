/usr/local/bin/consul:
  archive.extracted:
    - name: /usr/local/bin/
    - source: https://dl.bintray.com/mitchellh/consul/0.3.1_linux_amd64.zip
    - source_hash: sha256=c33da8ac24f01eefe8549e8d4d301b4e18a71b61f06ae1377a88ccd6eab2cfbb
    - archive_format: zip
    - if_missing: /usr/local/bin/consul

/etc/consul/conf.d:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

/etc/init/consul.conf:
  file.managed:
    - source: salt://consul/files/upstartjob
    - user: root
    - group: root
    - mode: 0644

consul-service:
  service.running:
    - name: consul
    - enable: True
    - watch:
      - file: /etc/consul/conf.d/*
