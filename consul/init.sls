/usr/local/bin/consul:
  archive.extracted:
    - name: /usr/local/bin/
    - source: https://dl.bintray.com/mitchellh/consul/0.4.0_linux_amd64.zip
    - source_hash: sha256=4f8cd1cc5d90be9e1326fee03d3c96289a4f8b9b6ccb062d228125a1adc9ea0c
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
