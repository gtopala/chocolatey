
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
  checksum      = '5FB2CA7BE0C67633B681F2BE925917481245FFA628F21C1D02FC8FAF601705B6'
  checksumType  = 'sha256'
  checksum64    = '5FB2CA7BE0C67633B681F2BE925917481245FFA628F21C1D02FC8FAF601705B6'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















