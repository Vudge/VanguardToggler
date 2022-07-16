@echo off
pushd "C:\Program Files\Riot Vanguard"

if exist "vgk.sys" (
    ren vgk.sys vgk_off.sys
    ren vgc.exe vgc_off.exe
    ren vgtray.exe vgtray_off.exe
    sc config vgc start= disabled & sc config vgk start= disabled & net stop vgc & net stop vgk & taskkill /IM vgtray.exe
) else (
    if exist "vgk_off.sys" (
        ren vgk_off.sys vgk.sys
        ren vgc_off.exe vgc.exe
        ren vgtray_off.exe vgtray.exe
        sc config vgc start= demand & sc config vgk start= system & shutdown /r /f /t 00
    ) 
)
