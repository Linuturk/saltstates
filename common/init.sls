python-software-properties:
  pkg.installed:
    - name: python-software-properties

unzip:
  pkg.installed:
    - name: unzip

unattended-upgrades:
  pkg.installed:
    - name: unattended-upgrades

/etc/apt/apt.conf.d/20auto-upgrades:
  file.managed:
    - source: salt://common/files/20auto-upgrades
    - template: jinja
