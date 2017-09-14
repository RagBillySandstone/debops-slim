# Prerequisites
The goal is to run DebOps, yes? So we'll begin with the [DebOps install prerequisites][1].
* Latest ansible -- **Not** default repo
   * [Add the Ansible ppa][2]
   * Add openssh-client to the slim base image
* python-netaddr
* python-ldap
* python-passlib
* uuid-runtime
* gpg
* git
* encfs - Optional. Allows debops-padlock script to encrypt confidential data within DebOps projects.

Also, the build complained during the apt transaction:
`debconf: delaying package configuration, since apt-utils is not installed` but as far as I can tell, this should only affect software with interactive installers. Nothing is failing, so I'm ignoring it for now.


[1]: https://docs.debops.org/en/latest/debops-tools/docs/installation.html#debops-tools-ref-prerequisites
[2]: http://docs.ansible.com/ansible/latest/intro_installation.html#latest-releases-via-apt-debian
