
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
  checksum      = '95BF44A84F247F762077DF9CA2D95C9A42CE98FE0F0A6D5E918501725A1CA435'
  checksumType  = 'sha256'
  checksum64    = '95BF44A84F247F762077DF9CA2D95C9A42CE98FE0F0A6D5E918501725A1CA435'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















