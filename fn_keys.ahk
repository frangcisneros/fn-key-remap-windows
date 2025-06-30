#Requires AutoHotkey v2.0
#SingleInstance Force
#NoTrayIcon          ; Oculta el icono en la bandeja
#UseHook             ; Fuerza uso del hook en todos los hotkeys

; Asegura que KeyHistory vea todo (por si acaso)
InstallKeybdHook()

; — Remapeo multimedia —
$F5::  SendInput "{Media_Prev}"
$F6::  SendInput "{Media_Next}"
$F7::  SendInput "{Media_Play_Pause}"
$F9::  SendInput "{Volume_Mute}"
$F10:: SendInput "{Volume_Down}"
$F11:: SendInput "{Volume_Up}"

; — Alt+Fx → envía el scan code “limpio” para restaurar la tecla original —
$!F5::  SendInput "{SC03F}"
$!F6::  SendInput "{SC040}"
$!F7::  SendInput "{SC041}"
$!F9::  SendInput "{SC043}"
$!F10:: SendInput "{SC044}"
$!F11:: SendInput "{SC057}"
