/var/www/html/index.php:
  file.managed:
    - source: salt://consul/services/app.php
    - name: /var/www/html/index.php
    - user: root
    - group: root
    - mode: 0644
    - makedirs: True
    - require:
      - pkg: php5

php5:
  pkg.installed:
    - name: php5
    - refresh: True
