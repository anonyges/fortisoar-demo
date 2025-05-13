# pre-requisite for having fortisoar
yum install tmux -y
tmux

# checking / installing solution packs
/opt/cyops/scripts/api_caller.py --endpoint "https://localhost/api/3/solutionpacks/install" --method POST --payload '{"name":"sOARFramework"}' --monitor-sp
/opt/cyops/scripts/api_caller.py --endpoint "https://localhost/api/3/solutionpacks/install" --method POST --payload '{"name":"socSimulator"}' --monitor-sp
/opt/cyops/scripts/api_caller.py --endpoint "https://localhost/api/3/solutionpacks/install" --method POST --payload '{"name":"connectorHealthMonitoring"}' --monitor-sp

/opt/cyops/scripts/api_caller.py --endpoint "https://localhost/api/3/solutionpacks/install" --method POST --payload '{"name":"threat-intel-management"}' --monitor-sp
/opt/cyops/scripts/api_caller.py --endpoint "https://localhost/api/3/solutionpacks/install" --method POST --payload '{"name":"vulnerabilityManagement"}' --monitor-sp
/opt/cyops/scripts/api_caller.py --endpoint "https://localhost/api/3/solutionpacks/install" --method POST --payload '{"name":"mITREATT&CKEnrichmentFramework"}' --monitor-sp
/opt/cyops/scripts/api_caller.py --endpoint "https://localhost/api/3/solutionpacks/install" --method POST --payload '{"name":"mITREATT&CKThreatHunting"}' --monitor-sp

/opt/cyops/scripts/api_caller.py --endpoint "https://localhost/api/3/solutionpacks/install" --method POST --payload '{"name":"oT-VulnerabilityManagement"}' --monitor-sp
/opt/cyops/scripts/api_caller.py --endpoint "https://localhost/api/3/solutionpacks/install" --method POST --payload '{"name":"sOCOverviewMetrics"}' --monitor-sp

# checking / installing connectors
yum install cyops-connector-abuseipdb -y
yum install cyops-connector-virustotal -y
