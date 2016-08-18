rapid7/suricata
===============

A docker container containing a slightly patched suricata version for pcap analysis

## Problem Statement

This docker container contains a custom patched suricata version which includes the references in the eve.json file for easy access by following processing efforts

## Example

Run the Docker image:

```sh
docker run --rm -it -v /my_data_directory_on_the_host:/pcap rapid7/suricata -l /pcap -r /pcap/an_awesome.pcap
```
