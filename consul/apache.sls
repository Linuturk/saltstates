/etc/consul/conf.d/apache.json:
  file.managed:
    - source: salt://consul/services/apache.json
    - name: /etc/consul/conf.d/apache.json
    - user: root
    - group: root
    - mode: 0644

/usr/local/bin/check_apache.sh:
  file.managed:
    - source: salt://consul/services/check_apache.sh
    - name: /usr/local/bin/check_apache.sh
    - user: root
    - group: root
    - mode: 0755
