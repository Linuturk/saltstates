consul
======

Use Salt-Cloud to provision your nodes. Then:

1. Run Highstate.
1. Bootstrap one node. `consul agent -config-file=/etc/consul/conf.d/server.json --bootstrap`
1. Restart consul agent.
