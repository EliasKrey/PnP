Invoke-Item -x C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe

$zip = "C:\Users\ekrey\Dropbox\pnp1_1"
$shellApplication = new-object -com shell.application
$zipPackage = $shellApplication.NameSpace($zip)
$files = gci C:\Users\ekrey\Dropbox\pnp1_1* -Exclude "*.zip" -Recurse

foreach($file in $files)
 	{
         $zipPackage.CopyHere($file.FullName)
         Start-sleep -milliseconds 500
  }
