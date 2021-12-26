c:
::litera dysku backupów

cd mcbackup
:: wchodzi do folderu backupów

mkdir "backup%date:~7,2%_%date:~-10,2%_%date:~-4,4%-%time:~0,2%_%time:~3,2%"
::tworzy folder z datą i godziną

xcopy (wersja mc ponizej) c:\mcbackup\"backup%date:~7,2%_%date:~-10,2%_%date:~-4,4%-%time:~0,2%_%time:~3,2%" /E
::(wersja mc ponizej) W zależność od wersji piszemy
::Java %appdata%/.minecraft/saves
::Bedrock %USERPROFILE%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftWorlds

pause
::zbędne ale pausuje po zakończeniu zadania żeby można było sprawdzić czy nie ma błędów

::wprzypadku gdy chcesz zmienić dysk na którym mają być zapisywane backupy podmieniasz c: na inną literę w pierwszej linijce oraz w 2 argumencie komendy xcopy
