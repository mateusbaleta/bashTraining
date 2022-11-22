
echo "Baleta - Web Recon"
echo ""
$url = Read-Host "Insert the website url"
$web = Invoke-WebRequest -Uri $url -Method Options
echo "The server runs:"
$web.headers.server
echo ""
echo "The server accepts:"
$web.headers.allow
echo ""
echo "Found links:"
$web2 = Invoke-WebRequest -Uri $url
$web2.links.href | Select-String http://
