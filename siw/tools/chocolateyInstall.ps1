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
  checksum      = 'BEF395B113CD3F413B6775631A24A9792034294EF46FA3D21014370CB5D30EC7'
  checksumType  = 'sha256'
  checksum64    = 'BEF395B113CD3F413B6775631A24A9792034294EF46FA3D21014370CB5D30EC7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















