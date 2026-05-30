
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
  checksum      = '74A49151F9315F4AE60E19382B00BC8FEB60E3701535150539BE2731ADBB3D7E'
  checksumType  = 'sha256'
  checksum64    = '74A49151F9315F4AE60E19382B00BC8FEB60E3701535150539BE2731ADBB3D7E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















