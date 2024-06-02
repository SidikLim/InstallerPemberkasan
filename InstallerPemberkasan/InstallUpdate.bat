nssm stop PemberkasanService

xcopy "C:\Backup_Pemberkasan\InstallerPemberkasan\*" "C:\Program Files\Pemberkasan\" /s /e /y

nssm start PemberkasanService
