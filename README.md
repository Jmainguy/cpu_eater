# cpu_eater
## What is cpu_eater?
cpu_eater is a golang app to eat cpu for load testing purposes
## How did you deploy it?
```/bin/bash
oc new-project cpueater
oc new-build https://github.com/jmainguy/cpu_eater
oc apply -f deployment.yml
```
