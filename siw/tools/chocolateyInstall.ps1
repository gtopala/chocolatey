
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
  checksum      = 'D44B8EFA98E16E3E318C3F5CCCA6BFB352AC612D08B00E4C4D8F2209D7DC465D'
  checksumType  = 'sha256'
  checksum64    = 'D44B8EFA98E16E3E318C3F5CCCA6BFB352AC612D08B00E4C4D8F2209D7DC465D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















