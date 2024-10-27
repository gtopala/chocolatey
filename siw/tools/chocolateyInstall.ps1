
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
  checksum      = '426B62C4CD9C54B559D15B74ABAE4A9A2D591A9D4729188E2D83A059733561CA'
  checksumType  = 'sha256'
  checksum64    = '426B62C4CD9C54B559D15B74ABAE4A9A2D591A9D4729188E2D83A059733561CA'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















