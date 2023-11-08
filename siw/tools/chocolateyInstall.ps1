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
  checksum      = 'C31F7836931C9045C3F17C0A1016FBA81BC5CEC53A3F1ACDDC487F7147688D27'
  checksumType  = 'sha256'
  checksum64    = 'C31F7836931C9045C3F17C0A1016FBA81BC5CEC53A3F1ACDDC487F7147688D27'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















