python-software-properties:
  pkg.installed:
    - name: python-software-properties

unzip:
  pkg.installed:
    - name: unzip

unattended-upgrades:
  pkg.installed:
    - name: unattended-upgrades

/etc/apt/apt.conf.d/02periodic:
  file.managed:
    - source: salt://common/02periodic
    - template: jinja
