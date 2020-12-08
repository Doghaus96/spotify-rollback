:: Original from spotify user u/Nutritious_breakfast edited by u/DriveByITGuy ;)

::Backs up prefs files

robocopy %appdata%\Spotify c:\install\temp prefs

robocopy %appdata%\Spotify\users c:\install\temp\users prefs /e

:: renames the spotify installer version for ease of use
ren C:\install\spotify-1*.exe spotify-saver.exe

::Uninstall shitty version and rollback to good version

%appdata%\Spotify\Spotify.exe /UNINSTALL /SILENT

C:\Install\spotify-saver.exe /SILENT

::Replaces prefs files

robocopy c:\install\temp %appdata%\Spotify\ prefs

robocopy c:\install\temp\users %AppData%\Spotify\Users\ prefs /e

:: Leaves temp directory (delete it later if you want, just a safety net)
:: Remove the comment marks if you want to delete it in the script, you ballsy person you

::rmdir /q /s c:\install\temp
