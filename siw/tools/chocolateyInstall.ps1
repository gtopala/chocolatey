
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
  checksum      = '16D1EE6EE5E713B2794FCE1B1BC48AC82F5C5593E3290248AE5CB79CE76B8ABC'
  checksumType  = 'sha256'
  checksum64    = '16D1EE6EE5E713B2794FCE1B1BC48AC82F5C5593E3290248AE5CB79CE76B8ABC'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















