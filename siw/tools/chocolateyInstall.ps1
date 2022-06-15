
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
  checksum      = '180F0726FD4E096D03BD12FAC280EEF8246E101E73B4243C5F43B38CE7F920B7'
  checksumType  = 'sha256'
  checksum64    = '180F0726FD4E096D03BD12FAC280EEF8246E101E73B4243C5F43B38CE7F920B7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















