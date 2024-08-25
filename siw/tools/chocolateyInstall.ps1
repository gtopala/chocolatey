
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
  checksum      = 'D17A9F81A69BEE0461F29C433A664F0DB81AB017C53FBC94AB8124D0EE73EFB4'
  checksumType  = 'sha256'
  checksum64    = 'D17A9F81A69BEE0461F29C433A664F0DB81AB017C53FBC94AB8124D0EE73EFB4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















