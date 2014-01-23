{% from "linux-dev-pkgs/map.jinja" import map with context %}

linux-dev-pkgs:
  pkg.installed:
    - pkgs: {{linux_dev_pkgs.pkgs|json }}

