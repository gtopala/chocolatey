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
  checksum      = '644A77711732C91627354E22F46A9246D6FA3F9125F3CA850F4725015485BDB1'
  checksumType  = 'sha256'
  checksum64    = '644A77711732C91627354E22F46A9246D6FA3F9125F3CA850F4725015485BDB1'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















