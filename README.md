rapid7/suricata
===============

A docker container containing a slightly patched suricata version for pcap analysis

## Problem Statement

This docker container contains a custom patched suricata version which includes references (CVEs) in the eve.json file for analysis. It also incorporates the latest version of the emerging threats feed when it is built.

## Example

Run the Docker image:

```sh
docker run --rm -it -v /my_data_directory_on_the_host:/pcap rapid7/suricata -l /pcap -r /pcap/an_awesome.pcap
```
