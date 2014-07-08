{% from "users/map.jinja" import sudogroup with context %}
linuturk:
  user.present:
    - fullname: Justin Phelps
    - shell: /bin/bash
    - home: /home/linuturk
    - gid_from_name: True
    - groups:
      - {{ sudogroup.name }}
