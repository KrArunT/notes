# notes

## Srink WSL vdisk
Run following command in Powershell

```
wsl --shutdown 
diskpart
select vdisk file="C:\Users\Arun\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu_79rhkp1fndgsc\LocalState\ext4.vhdx"
compact vdisk
exit
```
