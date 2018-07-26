############################################
# Print Output of All Directories          #
# Recursive                                #
#                                          #
# Used by Elias Krey                       #
# 26.07.2018                               #
############################################

foreach ($User in $UserList)
{
    $NewFolder = "C:\Users\me\Documents\" + $User.UserName + "Folder"
    New-Item $NewFolder -type directory
    $NewFile = "$NewFolder\" + $User.UserName + "File.txt"
    New-Item $NewFile -type file
}
