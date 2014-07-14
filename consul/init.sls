/usr/local/bin/consul:
  archive.extracted:
    - name: /usr/local/bin/
    - source: https://dl.bintray.com/mitchellh/consul/0.3.0_linux_amd64.zip
    - source_hash: sha256=da1337ab3b236bad19b791a54a8df03a8c2a340500a392000c21608696957b15
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
    - source: salt://consul/upstartjob
    - user: root
    - group: root
    - mode: 0644

consul-service:
  service.running:
    - name: consul
    - enable: True
