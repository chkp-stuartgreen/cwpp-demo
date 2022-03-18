# cwpp-demo
Kubernetes deployments for various malware scenarios.

1. Crypto miner in entrypoint. Will use a shell script as the workload entry point, which pulls XMrig into the image after deployment. Image scanning should not detect the xmrig binary as it's not present before deployment. Run kubectl apply -f 1-malware-as-entrypoint.yml and verify that the deployment is successful but CG Runtime protection detects and restarts the new workload.
2.  [WIP] Create an image that rests for a period of time, then retrieves a second stage payload or instruction after profiling has taken place. 
