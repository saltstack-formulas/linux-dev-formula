linux-dev-pkgs:
  pkg.installed:
    {% if grains['os_family'] == 'Debian' %}
    - pkgs:
      - build-essential
      - git
      - subversion
      - mercurial
    {% elif grains['os_family'] == 'RedHat' %}
    - pkgs:
      - rpm-build
      - rpmdevtools
      - fedora-packager
      - make
      - mock
    {% else %}
    - name: gcc
    {% endif %}

