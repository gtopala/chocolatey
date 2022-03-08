
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
  checksum      = '3D650EABB218B1E5732FE0F41E6EECC51A865E480111E8499384F03D53ED0AD3'
  checksumType  = 'sha256'
  checksum64    = '3D650EABB218B1E5732FE0F41E6EECC51A865E480111E8499384F03D53ED0AD3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















