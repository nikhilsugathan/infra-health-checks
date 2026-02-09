$cpu = (Get-Counter '\Processor(_Total)\% Processor Time').CounterSamples.CookedValue
$mem = Get-CimInstance Win32_OperatingSystem
$disk = Get-PSDrive -PSProvider FileSystem

$result = @{
    CPUUsage = [math]::Round($cpu, 2)
    MemoryFreeGB = [math]::Round($mem.FreePhysicalMemory/1MB, 2)
    Disks = $disk | Select Name, @{Name='FreeGB';Expression={[math]::Round($_.Free/1GB,2)}}
}

$result | ConvertTo-Json
