Write-Host "������ѹ����վhost·�������磺http://api.g.caipiao.163.com����"
$site = Read-Host
Write-Host "������ѹ����վurl·�������磺/homepage/list_header.html����"
$url = Read-Host
python .\start_locust.py $site $url
