
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
  checksum      = '92B36F3600B5B9F090EED11CFE7A0327D20D7041EDD391E2653ED5EC2B94A91E'
  checksumType  = 'sha256'
  checksum64    = '92B36F3600B5B9F090EED11CFE7A0327D20D7041EDD391E2653ED5EC2B94A91E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















