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
    - user: linuturk
    - group: linuturk
    - mode: 0644
    - makedirs: True
