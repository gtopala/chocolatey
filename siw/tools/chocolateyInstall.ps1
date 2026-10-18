
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
  checksum      = '14AD126D9C6DBC962E5FE3C09AB388C4808756FAE943C73E74BE1A8ADFCEBB42'
  checksumType  = 'sha256'
  checksum64    = '14AD126D9C6DBC962E5FE3C09AB388C4808756FAE943C73E74BE1A8ADFCEBB42'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















