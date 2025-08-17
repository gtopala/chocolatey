
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
  checksum      = '15D8E79226AF0793BC33CF3924F8F0841305CA3D379B4A4DD3707FC2D548156E'
  checksumType  = 'sha256'
  checksum64    = '15D8E79226AF0793BC33CF3924F8F0841305CA3D379B4A4DD3707FC2D548156E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















