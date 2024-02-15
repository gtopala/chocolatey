
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
  checksum      = '977518FAA19EFD243B8AE30BB700AB75C965B8FCBB100767F05EDD26FD878035'
  checksumType  = 'sha256'
  checksum64    = '977518FAA19EFD243B8AE30BB700AB75C965B8FCBB100767F05EDD26FD878035'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















