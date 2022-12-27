
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
  checksum      = '6223CDE0F815FCEBA5CD30744FBD2648834A729D129577BEA7FC0CE3F5AC310A'
  checksumType  = 'sha256'
  checksum64    = '6223CDE0F815FCEBA5CD30744FBD2648834A729D129577BEA7FC0CE3F5AC310A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















