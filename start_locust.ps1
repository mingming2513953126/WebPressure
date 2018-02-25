Write-Host "ÇëÊäÈëÑ¹²âÍøÕ¾hostÂ·¾¶£¨ÀıÈç£ºhttp://api.g.caipiao.163.com£©£º"
$site = Read-Host
Write-Host "ÇëÊäÈëÑ¹²âÍøÕ¾urlÂ·¾¶£¨ÀıÈç£º/homepage/list_header.html£©£º"
$url = Read-Host
python .\start_locust.py $site $url
