cd C:\Backup_Pemberkasan
nssm stop PemberkasanService
nssm remove PemberkasanService confirm


cd C:\Program Files
mkdir Pemberkasan

set "sumbermain=C:\Backup_Pemberkasan\main.exe"
set "tujuanmain=C:\Program Files\Pemberkasan\main.exe"
copy /y "%sumbermain%" "%tujuanmain%"

set "sumberlog=C:\Backup_Pemberkasan\service.log"
set "tujuanlog=C:\Program Files\Pemberkasan\service.log"
copy /y "%sumberlog%" "%tujuanlog%"

cd C:\Backup_Pemberkasan

nssm install PemberkasanService "C:\Program Files\Pemberkasan\main.exe" 
Net start PemberkasanService


