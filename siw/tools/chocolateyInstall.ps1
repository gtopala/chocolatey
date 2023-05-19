
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
  checksum      = '9CF21A5BD831E6F8AB146468F2D057E6089020209F6C43D08A2C769E690E85E3'
  checksumType  = 'sha256'
  checksum64    = '9CF21A5BD831E6F8AB146468F2D057E6089020209F6C43D08A2C769E690E85E3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















