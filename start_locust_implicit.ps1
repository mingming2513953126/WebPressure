Write-Host "请输入压测网站host路径（例如：http://api.g.caipiao.163.com）："
$site = Read-Host
Write-Host "请输入压测网站url路径（例如：/homepage/list_header.html）："
$url = Read-Host
Write-Host "请输入模拟访问网站人数（例如：1000）："
$amount = Read-Host
Write-Host "请输入模拟每秒并发访问网站人数（不得小于模拟访问网站人数，例如：100）："
$conc = Read-Host
Write-Host "请输入模拟访问请求总数（例如：100000）："
$reqs = Read-Host
python .\start_locust_implicit.py $site $url $amount $conc $reqs
Read-Host