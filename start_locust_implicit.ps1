Write-Host "������ѹ����վhost·�������磺http://api.g.caipiao.163.com����"
$site = Read-Host
Write-Host "������ѹ����վurl·�������磺/homepage/list_header.html����"
$url = Read-Host
Write-Host "������ģ�������վ���������磺1000����"
$amount = Read-Host
Write-Host "������ģ��ÿ�벢��������վ����������С��ģ�������վ���������磺100����"
$conc = Read-Host
Write-Host "������ģ������������������磺100000����"
$reqs = Read-Host
python .\start_locust_implicit.py $site $url $amount $conc $reqs
Read-Host