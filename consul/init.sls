/usr/local/bin/consul:
  archive.extracted:
    - name: /usr/local/bin/
    - source: https://dl.bintray.com/mitchellh/consul/0.3.0_linux_amd64.zip
    - source_hash: sha256=da1337ab3b236bad19b791a54a8df03a8c2a340500a392000c21608696957b15
    - archive_format: zip
    - if_missing: /usr/local/bin/consul

/usr/local/bin/consul_ui:
  archive.extracted:
    - source: https://dl.bintray.com/mitchellh/consul/0.3.0_web_ui.zip
    - source_hash: sha256=0ab215e6aa7c94ccdb2c074732b8706940d37386b88c9421f1e4bc2501065476
    - archive_format: zip
    - if_missing: /usr/local/bin/consul_ui/dist
