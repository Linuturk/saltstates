mongodb:
  pkgrepo.managed:
    - name: deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen
    - keyserver: keyserver.ubuntu.com
    - keyid: 7F0CEB10
  pkg.latest:
    - name: mongodb-org
    - refresh: True
  service.running:
    - name: mongod
    - enable: True
