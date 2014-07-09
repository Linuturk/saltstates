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
    - source_hash: sha256=93a9804ddc4fb6e3de515562243214a872f8d2f79779a4cbc4b8a627e669c846
    - user: linuturk
    - group: linuturk
    - mode: 0644
    - makedirs: True
