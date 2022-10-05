
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
  checksum      = 'DBE2C106AF69AA1825AEC1EBABD5A75A233021F6EEA048E6AEFE132B877CD8FC'
  checksumType  = 'sha256'
  checksum64    = 'DBE2C106AF69AA1825AEC1EBABD5A75A233021F6EEA048E6AEFE132B877CD8FC'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















