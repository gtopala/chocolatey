
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
  checksum      = '0F2F1B8F07674351C7E87D4A03225B7C49B6E87216415E6FF0A8F0827C504B4D'
  checksumType  = 'sha256'
  checksum64    = '0F2F1B8F07674351C7E87D4A03225B7C49B6E87216415E6FF0A8F0827C504B4D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















