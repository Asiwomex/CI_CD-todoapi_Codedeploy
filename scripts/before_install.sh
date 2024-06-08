#!/bin/bash
docker pull asiwomex/todoapp:latest
docker stop my-website || true
docker rm my-website || true