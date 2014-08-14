drone-deps:
  pkg.installed:
    - pkgs: {{ pillar['drone']['packages'] }}

docker-py:
  pip.installed:
    - require:
      - pkg: python-pip

docker:
  pkgrepo.managed:
    - humanname: Docker
    - name: deb https://get.docker.io/ubuntu docker main
    - keyid: A88D21E9
    - keyserver: keyserver.ubuntu.com
    - file: /etc/apt/sources.list.d/docker.list
    - require_in:
      - pkg: lxc-docker
  pkg.installed:
    - name: lxc-docker

drone:
  pkg.installed:
    - sources:
      - drone: http://downloads.drone.io/latest/drone.deb
  service.running:
    - name: drone
