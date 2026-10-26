; NovaMeet NSIS hooks — ensure novameet:// launches the installed app
; (electron-builder includes this from buildResources when nsis.include is set)

!macro customInstall
  DetailPrint "Registering novameet:// protocol handler"
  WriteRegStr HKCU "Software\Classes\novameet" "" "URL:NovaMeet Protocol"
  WriteRegStr HKCU "Software\Classes\novameet" "URL Protocol" ""
  WriteRegStr HKCU "Software\Classes\novameet\DefaultIcon" "" "$INSTDIR\NovaMeet.exe,0"
  WriteRegStr HKCU "Software\Classes\novameet\shell\open\command" "" '"$INSTDIR\NovaMeet.exe" "%1"'
!macroend

!macro customUnInstall
  DeleteRegKey HKCU "Software\Classes\novameet"
!macroend
