
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
  checksum      = '7A31E78FA6604248C1492B8813E576513FFFB4B69439F63766B1412472D79119'
  checksumType  = 'sha256'
  checksum64    = '7A31E78FA6604248C1492B8813E576513FFFB4B69439F63766B1412472D79119'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















