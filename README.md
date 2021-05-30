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


Execute shell in running container

    docker exec -it <id> /bin/sh


