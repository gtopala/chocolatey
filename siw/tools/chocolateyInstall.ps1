
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
  checksum      = '3600F1B9C8E5F0FB6371A88309100426C63B255CF435EB499D944682195E8A8D'
  checksumType  = 'sha256'
  checksum64    = '3600F1B9C8E5F0FB6371A88309100426C63B255CF435EB499D944682195E8A8D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















