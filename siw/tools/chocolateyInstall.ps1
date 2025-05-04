
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
  checksum      = 'FE1788E44932D30D5043CB3652B4E9C937847B10AFD91551623A26FF251C3728'
  checksumType  = 'sha256'
  checksum64    = 'FE1788E44932D30D5043CB3652B4E9C937847B10AFD91551623A26FF251C3728'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















