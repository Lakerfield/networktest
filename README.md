# networktest
Dockerfile for building lakerfield/networktest

Images automatic start qperf in listing mode

Includes to following test tools packages

- qperf
- curl
- jq
- nmap
- tcpdump
- bind-tools


Some test examples from another container

    # TCP latency test
    qperf hostname tcp_lat
    
    # more examples
    qperf --help examples


## Docker
Execute shell in running container

    docker exec -it <id> /bin/sh


## Kubernetes

Use examples/kubernetes-networktest-deamonset.yaml to deploy a deamonset in current namespace.

    # test latency
    qperf 10.14.x.y tcp_lat

    # test bandwidth for 10 seconds
    qperf 10.42.x.y -t 10 tcp_bw
    
    
    