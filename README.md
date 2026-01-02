# DevOps-Final

# DevOps Intern Final Assessment
![CI](https://github.com/HanW000/DevOps-Assesment-Final/actions/workflows/ci.yml/badge.svg)


**Name:** Han Wang  
**Date:** 2026-01-02  

## Project Description
This repository documents a small but realistic DevOps workflow using open-source tools (Linux, GitHub, Docker, CI/CD, Nomad, monitoring).  
Each step produces usable output for the next step.

## Step 1 - Git & GitHub Setup
- Initialized a public GitHub repository
- Added this README with name/date and project description
- Added `hello.py` that prints "Hello, DevOps!"

### Run
```bash
python hello.py

## Step 2 - Linux & Scripting Basics

Created a shell script to display basic system information.

### Script
- Path: `scripts/sysinfo.sh`
- Prints:
  - Current user
  - Current date
  - Disk usage

### Run
```bash
chmod +x scripts/sysinfo.sh
./scripts/sysinfo.sh

## Step 3 - Docker Basics

Containerized `hello.py` using Docker. The container runs `python hello.py` on startup.

### Build
```bash
docker build -t devops-hello:latest .

## Step 4 - Add CI status badge

## Step 5 - Job Deployment with Nomad

Created a Nomad job to run the Docker container.

### Run (local dev mode)
Start Nomad in dev mode (keep this terminal open):
```bash
nomad agent -dev


## Step 6 - Monitoring with Grafana Loki

Configured Grafana Loki locally using Docker for log aggregation.

- Loki runs in standalone mode using the official Grafana image.
- Application and Nomad logs serve as log sources.
- Log access is verified via Docker and Nomad commands.

Documentation:
- `monitoring/loki_setup.txt`

(Optional) Screenshots can be added showing Loki container running and logs output.
