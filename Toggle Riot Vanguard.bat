cd /d "C:\Program Files\Riot Vanguard"

if exist vgk.sys (
	rename vgc.exe vgc_off.exe
    	rename vgk.sys vgk_off.sys
    	rename vgtray.exe vgtray_off.exe
    	cscript "C:\%AppData%\Microsoft\Windows\Start Menu\Programs\Scripts\Disable Vanguard.vbs"
)else if exist vgk_off.sys (
    	rename vgc_off.exe vgc.exe
    	rename vgk_off.sys vgk.sys
    	rename vgtray_off.exe vgtray.exe
    	cscript "C:\Users\Vudgekek\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Utilities\enable_vanguard_restart.vbs"