#!/bin/sh

docker run -t -v ./results:/app/results python-serialization-bench:latest
