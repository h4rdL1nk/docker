#!/bin/bash

sudo sysctl vm.max_map_count=262144
sudo chown root.root config/filebeat.yml