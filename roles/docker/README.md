Docker
=========

Install **Docker** :whale: in Ubuntu.

Requirements
------------

Prerequisites:

- Ubuntu

Variables
--------------

| docker_version | Version of Docker |
| -------------- | ----------------------------------------- |

Example Playbook
----------------

```yaml
---
- name: Install Docker
  hosts: all
  become: true
  become_user: root
  roles:
    - docker
```

License
-------

Apache-2.0
