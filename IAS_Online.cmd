@echo off
title IAS - Online (Internet Required)
echo Preparing connect to download resources...
powershell "irm https://raw.githubusercontent.com/npquyngoc/Internet_Download_Manager_Activation_Script/main/PrepareDownloading.ps1 | iex"
echo Exiting the script successfully!
pause