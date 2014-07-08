{% from "apache/map.jinja" import apache with context %}
apache:
  pkg.installed:
    - name: {{ apache.pkg }}
  service.running:
    - name: {{ apache.service }}
    - enable: True
    - watch:
      - pkg: {{ apache.pkg }}
