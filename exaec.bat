@echo off
set url1=https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-gcc-win64.zip
set url2=https://www.7-zip.org/a/7z2301-x64.exe

:: Vérifier si le système d'exploitation est Windows
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
    :: Ouvrir les URLs avec Microsoft Edge sur Windows
    start microsoft-edge:"%url1%"
    start microsoft-edge:"%url2%"

    :: Attendre un court instant avant d'ouvrir la deuxième URL
    timeout /t 5 /nobreak

    :: Télécharger le deuxième fichier dans le répertoire Downloads
    bitsadmin /transfer downloadJob %url2% %USERPROFILE%\Downloads\7z2301-x64.exe

    :: Installer 7-Zip en mode silencieux
    %USERPROFILE%\Downloads\7z2301-x64.exe /S
) else (
    echo Ce script est conçu pour Windows avec Microsoft Edge. Il ne peut pas être exécuté sur ce système d'exploitation.
)

:: Ajout de politesse
echo Merci pour ta collaboration! Si tu as d'autres questions ou besoin d'aide, n'hésite pas. Comment s'est passée ta journée jusqu'à présent?
