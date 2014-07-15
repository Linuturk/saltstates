/etc/consul/conf.d/mysql.json:
  file.managed:
    - source: salt://consul/services/mysql.json
    - name: /etc/consul/conf.d/mysql.json
    - user: root
    - group: root
    - mode: 0644

/usr/local/bin/check_mysql.sh:
  file.managed:
    - source: salt://consul/services/check_mysql.sh
    - name: /usr/local/bin/check_mysql.sh
    - user: root
    - group: root
    - mode: 0644

/var/www/html/index.php:
  file.managed:
    - source: salt://consul/services/app.php
    - name: /var/www/html/index.php
    - user: root
    - group: root
    - mode: 0644
