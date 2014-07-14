/etc/consul/conf.d/client.json:
  file.managed:
    - source: salt://consul/client.json
    - name: /etc/consul/conf.d/client.json
    - user: root
    - group: root
    - mode: 0644
