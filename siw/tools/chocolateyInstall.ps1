
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
  checksum      = '21C5461422FD9C389D7B9E1746CF3343022B5B2BBF46B89098457E6C5394C95B'
  checksumType  = 'sha256'
  checksum64    = '21C5461422FD9C389D7B9E1746CF3343022B5B2BBF46B89098457E6C5394C95B'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















