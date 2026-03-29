
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
  checksum      = 'F06F981CF868B5089B2C672F09E5A96A16F8E7C9FEB9F0FECB3C08A934323227'
  checksumType  = 'sha256'
  checksum64    = 'F06F981CF868B5089B2C672F09E5A96A16F8E7C9FEB9F0FECB3C08A934323227'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















