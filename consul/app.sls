/var/www/html/index.php:
  file.managed:
    - source: salt://consul/services/app.php
    - name: /var/www/html/index.php
    - user: root
    - group: root
    - mode: 0644
    - makedirs: True
