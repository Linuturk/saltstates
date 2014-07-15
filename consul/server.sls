/etc/consul/conf.d/server.json:
  file.managed:
    - source: salt://consul/files/server.json
    - name: /etc/consul/conf.d/server.json
    - user: root
    - group: root
    - mode: 0644
