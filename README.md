# DevOps-Final

# DevOps Intern Final Assessment

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
