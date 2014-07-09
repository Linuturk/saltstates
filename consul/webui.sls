/usr/local/bin/consul_ui:
  archive.extracted:
    - source: https://dl.bintray.com/mitchellh/consul/0.3.0_web_ui.zip
    - source_hash: sha256=0ab215e6aa7c94ccdb2c074732b8706940d37386b88c9421f1e4bc2501065476
    - archive_format: zip
    - if_missing: /usr/local/bin/consul_ui/dist

consul-nginx:
  pkg.installed:
    - name: nginx

consul-nginx-service:
  service.running:
    - name: nginx
    - enable: True
  watch:
    - file: /etc/nginx/sites-available/default

/etc/nginx/sites-available/default:
  file.managed:
    - source: salt://consul/nginx-proxypass
    - name: /etc/nginx/sites-available/default
    - user: root
    - group: root
    - mode: 0644
