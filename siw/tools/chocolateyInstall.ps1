﻿
$ErrorActionPreference = 'Stop';


$packageName= 'siw'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://siw64.com/download/siwtrial-setup.exe'
$url64      = 'https://siw64.com/download/siwtrial-setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'siw*'
  checksum      = 'A55748931098948C56DA3DDAF8CC454150C4CB9E73521418B8931A61A9125EDA'
  checksumType  = 'sha256'
  checksum64    = 'A55748931098948C56DA3DDAF8CC454150C4CB9E73521418B8931A61A9125EDA'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















