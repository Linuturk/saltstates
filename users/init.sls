{% from "users/map.jinja" import sudogroup with context %}
linuturk:
  user.present:
    - fullname: Justin Phelps
    - shell: /bin/bash
    - home: /home/linuturk
    - gid_from_name: True
    - groups:
      - {{ sudogroup.name }}

/home/linuturk/.ssh/authorized_keys:
  file.managed:
    - source: https://github.com/linuturk.keys
    - source_hash: sha256=c2eb790ab3a6f72d944cb074c878ff28822e2b9c09ada8088da9778b6d0b439d
    - user: linuturk
    - group: linuturk
    - mode: 0644
    - makedirs: True

/etc/sudoers.d/80-user-sudo:
  file.managed:
    - source: salt://users/80-user-sudo
    - user: root
    - group: root
    - mode: 0440
