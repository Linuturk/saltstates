salt-minion:
  pkg.installed:
    - name: salt-minion
  service.running:
    - enabled: True
    - watch:
      - pkg: salt-minion
