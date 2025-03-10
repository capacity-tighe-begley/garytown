Write-Host -foregroundcolor cyan 'HP MMS 2024 HP Demos | Get-MMSDemo1 | Get-MMSDemo2 | Get-MMSDemo3 | Get-MMSDemo4 | Get-MMSDemo5'
function Get-MMSDemo1 {
    Write-host ' Softpaq Automation Demo' -ForegroundColor Cyan
    Write-host '  cd c:\temp' -ForegroundColor Gray
    Write-host '  Get-HPDeviceDetails -like *"840 G10"*"' -ForegroundColor Gray
    Write-host '  Get-HPDeviceDetails -like *"800*G9"*' -ForegroundColor Gray
    Write-host '  $Platforms = @("8B41", "8AC3")' -ForegroundColor Gray
    Write-host '  $DPs = $Platforms | foreach {Get-SoftpaqList -Category Driverpack -Os win11 -OsVer 22H2 -Platform $_}' -ForegroundColor Gray
    Write-host '  $DPs | foreach {Get-Softpaq -Number $_.id -Extract}' -ForegroundColor Gray
}

function Get-MMSDemo2 {

    Write-host ' Notification Demo' -ForegroundColor Cyan
    $script:ToastBase64Image = 'iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAMAAABHPGVmAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAMAUExURRQAHQAACAAAGQAAKRMAKAECNhsFNQUXOhocOSgAKScDNjcDOCkbOjgbOx4gOTYiPiIjPUkAG2cAHEUAKVgCLUYHOFsDN0obO1gbPG8AI3UHOWkcOncbO1QiPnAhPgAERwIaRRYcQwMbUy8aQRM3TgElQxokRAElWBgnViYoRDgqQykzTDU2SyUrUis0VTU5WAc0ZRo2ZCQ/cSg7ZUsWQFYaQmIfQHsdQl02TkYlQVYmQkY3SkM7U3E3TGkmQ3gnQzFBTDpEVgBBYTJRbS1EajVLaitLdDNMdzZWfERDTUhIWFNHV0lTXFVUXWdIVWdXXHhVWUVJZE1TZ1lZY1VZcnlaYmZdZFNkeFtiaGZla3dpa2lpdHNudGhzdHh2eJcAHIIAIYUDNJgDNYcbO5ccO7MBMLoALacaO7kbOooiPpkkPqckPbkkPvUAAPUAHc8AJsgINdkAMcsYONgeOucBLvQAKfQHMugaOPQZNsgkPNckO+glO/QnO4EAQbIeQow0SYYoQ5UpQ7g1SKgqRLgmQaYxRcA7UsYoQdYrQvYpQOUsQfQ2QpFOWodFVaxQU4lZZLdaYZtqcohiaJRmaYV7e5R0dahpc6Z2drR7fMtDUsdZWvFNUfRGTPVXV9RuXcVUYuNWYdh8d+FiY/RpZvdzbPV5c3+AfoeCfquDf7iCdsqIfvaFezhZhDBtkjtkijxlkTp+pkFvj0FslkR2nG50gHt4hEh8pYV9hrF8gXyEg0+Qt0uFq0qNtFGOtlKSuGuUsHeivo+SkImIhpGNiZaTjZqXk7GSkaOHhKOdl52inKmwnaikm7OqnpqXobOYqZ6xvounuKiws6upo7Oto7m1qb27stSQi8WIidmblOSRgvaNhPaViuaamPWdl9OqnO+pnvWnmtC5s9SspcO7rdW6qMO8su23quu5qfO2qNfBrcrEttXKudrSv+3QuezCr+fIt/XFtJqzxdbOwdvVxePe0ePbyfPcyOrizfPkzuzm1PXs1f302+7s4PTv4vn05gAAAAA8zmUAAAEAdFJOU////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////wBT9wclAAAACXBIWXMAAA7CAAAOwgEVKEqAAAASTUlEQVRoQ+2ZfXxTZZbHJdeHe8U2ZEVs1ra0AVrm0rQdBwSrCHZ1pJRmFIJsQ2p2NB1aaBYVTG1eFssQ7Qu+jFLWUejuzoLNOEUYBUV56W6ThklJYbW5HVTstBojcG9smYaQJpeGOc9N0LY0LfrHfvazH8+nKUn6PM/3Oed3zrnPvdxw5X/BfoR8L/sR8r3s/zwkMnQ5Ens7vv1wSKirVVOiaeviQhOSfjDEr0qbmZ6WNjNN0caEYt/Fs4khlwOxNyPsckla9vLTxxuyZ2ZnK10TUCaGhNrdA5dj778zDonR9u5B3mdFSOaOfRnPriNcftWU1e2w10hkiL9qEa8IIL2D8JZz2q7dw0i7Hk26bv6XaWs6QtHlwSLwYmiKfKv3En7LswOxgfHseiC89fHb/+0llg8MMO12a1OTzXHC72Tk5CsPr2YxhPPGBsaziSGwWUY06/HHnV4ENmX6tGk337Pca/3T6u3LdzyEXBAxxh8bGs8mguB4hP255FRtMuP5zVNPPd346VlugO3acfqTT62n3ju1qI2x2SYqlPEhAoIpamdE0vKNt7X19zafO9/Rtv2uKbfddbrnc80A+8XqNcRcFRcbHs/GhWAGq0Lzy/pcxPQFZU89a2fafv/a9ntTq5975XRP2KNpeKiDtTsd7RO4Mh4EEAEburnsaX3l10wR0pZrbyAeeRg9Vr4w5d7Pu8+Bkz72G88au9rPj0+JD8FuMDL04n+++Vl3z9ngQBFBEsqvvnrruXUzkha+3P15T5j/0hc67ny1qQuyeyg2a0yLC4HCC7vsDOs773E5rNYdL7zwh0ce+uqtpKSKmnUp61/8/M8fXIDk7Tjff9znzO+CDcXmjWXxIEOD4XCAddtV96Bn33iu+t//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'
    $script:logopath = "c:\programdata\toastlogo.png"
    $script:bytes = [Convert]::FromBase64String($ToastBase64Image)
    [IO.File]::WriteAllBytes($logopath , $bytes)

    $script:param = @{
        Title = 'Please Reboot'
        Message = "Security Changes Require a Reboot"
        LogoImage = $logopath
        TitleBarHeader = "GARYTOWN"
        TitleBarIcon = $logopath
    }
    write-host '  $ToastBase64Image = [Base64PNG File - Already created]' -ForegroundColor Gray
    Write-host '  $logopath = "c:\programdata\toastlogo.png"' -ForegroundColor Gray
    write-host '  $bytes = [Convert]::FromBase64String($ToastBase64Image)'
    write-host '  [IO.File]::WriteAllBytes($logopath , $bytes)'
    write-host ''
    Write-host '  $param = @{' -ForegroundColor Gray
    Write-host '      Title = "Please Reboot"' -ForegroundColor Gray
    Write-host '      Message = "Security Changes Require a Reboot"' -ForegroundColor Gray
    Write-host '      LogoImage = $logopath' -ForegroundColor Gray
    Write-host '      TitleBarHeader = "GARYTOWN"' -ForegroundColor Gray
    Write-host '      TitleBarIcon = $logopath' -ForegroundColor Gray
    Write-host '  }' -ForegroundColor Gray
    write-host ''
    write-host '  Invoke-HPNotification @param'
    write-host '  Invoke-HPRebootNotification @param'

}

Function Get-MMSDemo3{
    Write-host ' BIOS Update Method Demo' -ForegroundColor Cyan
    Write-host '  Get-HPBIOSUpdates' -ForegroundColor Gray
    Write-host '  Get-HPBIOSWindowsUpdate' -ForegroundColor Gray
    Write-host '  Get-SoftpaqList -Category bios -OsVer 23H2' -ForegroundColor Gray
}

Function Get-MMSDemo4 {
    Write-host ' Create Offline Repo Demo' -ForegroundColor Cyan
    write-host '  Pull Up GitHub Script'
    Write-host '  https://github.com/gwblok/garytown/blob/master/hardware/HP/HPIA-BlogSeries-2024/CreateHPIARepo-FileShare.ps1'
}

Function Get-MMSDemo5 {
    Write-host ' Getting the latest Driver Pack for a Platform' -ForegroundColor Cyan
    write-host '  Pull Up GitHub Script'
    Write-host '  https://github.com/gwblok/garytown/blob/master/hardware/HP_Driver_PopulateCMPackage.ps1'
}