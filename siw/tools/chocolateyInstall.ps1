
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
  checksum      = '7CE7127793BDCB89BD391B585C377060134C1E25B27FC312BA3D7AB04ED2700F'
  checksumType  = 'sha256'
  checksum64    = '7CE7127793BDCB89BD391B585C377060134C1E25B27FC312BA3D7AB04ED2700F'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















