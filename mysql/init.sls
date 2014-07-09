{% from "mysql/map.jinja" import mysql with context %}
mysql:
  pkg.installed:
    - name: {{ mysql.pkg }}
  service.running:
    - name: {{ mysql.service }}
    - enable: True
    - watch:
      - pkg: {{ mysql.pkg }}
