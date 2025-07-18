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
  checksum      = 'D4A5F12BF99F94FF81F8429167E7179901D36ABC45692B78DE543F77875C2592'
  checksumType  = 'sha256'
  checksum64    = 'D4A5F12BF99F94FF81F8429167E7179901D36ABC45692B78DE543F77875C2592'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















