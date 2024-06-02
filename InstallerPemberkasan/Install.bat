cd C:\Program Files
mkdir Pemberkasan

xcopy "C:\Backup_Pemberkasan\InstallerPemberkasan\*" "C:\Program Files\Pemberkasan\" /s /e /y

cd C:\Program Files\Pemberkasan
nssm install PemberkasanService "C:\Program Files\Pemberkasan\main.exe" 
Net start PemberkasanService


