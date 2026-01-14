
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
  checksum      = '6676B8DF3CA9A571CF19B6E4FFD4D64A6656785C31DAB6857F77D498473C08EA'
  checksumType  = 'sha256'
  checksum64    = '6676B8DF3CA9A571CF19B6E4FFD4D64A6656785C31DAB6857F77D498473C08EA'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















