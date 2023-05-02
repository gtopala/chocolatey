
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
  checksum      = 'A0F55CFCEA28C82403E8F4FA40F202B9BAF394F2C94B0D51A003B6793CC15958'
  checksumType  = 'sha256'
  checksum64    = 'A0F55CFCEA28C82403E8F4FA40F202B9BAF394F2C94B0D51A003B6793CC15958'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















