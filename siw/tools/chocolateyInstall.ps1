
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
  checksum      = '8EF5D2150E90466735ECEF14226B47D7494F8C181994A45C2521F28AE7CA13A3'
  checksumType  = 'sha256'
  checksum64    = '8EF5D2150E90466735ECEF14226B47D7494F8C181994A45C2521F28AE7CA13A3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















