#!/bin/bash
docker pull asiwomex/todo-api:latest
docker stop my-website || true
docker rm my-website || true