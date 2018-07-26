#robocopy config
$source = "$sourceNugetExe = "https://www.nuget.org/packages/7Zip4PowersStart-Process
$dest = "D:\programme\nuget"

$arg = "/E /FFT /R:0 /W:0 /NFL /NDL"
$logfile_temp = "logtemp.txt"


#start robocopy
if($exclude -notlike "")
{
    robocopy $source $dest $arg.Split(" ") /XD $exclude.Split("|") > $logfile_temp
}
else
{
    robocopy $source $dest $arg.Split(" ") > $logfile_temp
}
