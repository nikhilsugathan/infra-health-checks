# Infrastructure Health Checks

## Overview
Operational health checks for Windows and Linux systems used in enterprise and SRE environments.

## Why This Exists
Inspired by real-world NOC/SRE monitoring gaps where lightweight checks are required outside core monitoring tools.

## Checks Included
- CPU utilization
- Memory usage
- Disk capacity
- Critical service status

## Usage

### Windows
```powershell
powershell -ExecutionPolicy Bypass -File windows/systemhealth.ps1
```

### Linux
```bash
python3 linux/systemhealth.py
```

## Output
JSON formatted output suitable for logging or alert ingestion.

## Future Improvements
- Export to monitoring systems
- Add threshold-based alerting
