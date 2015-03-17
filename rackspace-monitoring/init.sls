install-rackspace-monitoring-agent:
  pkg.installed:
    - refresh: True
    - sources:
      - rackspace-monitoring-agent: http://meta.packages.cloudmonitoring.rackspace.com/ubuntu-14.04-x86_64/rackspace-cloud-monitoring-meta-stable_1.0_all.deb
  service.running:
    - name: rackspace-monitoring-agent
