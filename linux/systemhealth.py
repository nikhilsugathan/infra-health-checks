import psutil
import json

data = {
    'cpu_percent': psutil.cpu_percent(interval=1),
    'memory': psutil.virtual_memory()._asdict(),
    'disk': psutil.disk_usage('/')._asdict()
}

print(json.dumps(data, indent=2))
