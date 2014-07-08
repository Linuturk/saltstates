nodejs-ppa:
  pkgrepo.managed:
    - ppa: chris-lea/node.js
  pkg.latest:
    - name: nodejs
    - refresh: True
