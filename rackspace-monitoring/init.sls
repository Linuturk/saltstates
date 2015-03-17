install-rackspace-monitoring-repo:
  pkg.installed:
    - sources:
      - rackspace-cloud-monitoring-meta-stable: http://meta.packages.cloudmonitoring.rackspace.com/ubuntu-14.04-x86_64/rackspace-cloud-monitoring-meta-stable_1.0_all.deb

install-rackspace-monitoring-agent:
  pkg.installed:
    - name: rackspace-monitoring-agent
    - refresh: True
  service.running:
    - name: rackspace-monitoring-agent
