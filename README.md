# cpu_eater
## What is cpu_eater?
cpu_eater is a golang app to eat cpu for load testing purposes
## Where does it run?
It runs on the lab openshift cluster
## How do I add features?
Submit a pull request, then tell openshift to rebuild
## How did you deploy it?
```/bin/bash
oc new-project cpu_eater
oc new-build https://github.com/jmainguy/cpu_eater
oc new-app --image-stream=cpueater
```
