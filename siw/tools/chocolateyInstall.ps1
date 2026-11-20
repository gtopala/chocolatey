
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
  checksum      = 'F6F9C50E011A06133E4152BD2C25FD0F4A0B08BA0FC1A6AFE65FC3B4E6959EC3'
  checksumType  = 'sha256'
  checksum64    = 'F6F9C50E011A06133E4152BD2C25FD0F4A0B08BA0FC1A6AFE65FC3B4E6959EC3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















