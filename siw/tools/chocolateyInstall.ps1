
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
  checksum      = 'CC62EF5D297CD567791F26305DF70DEF9A562CAB8E6DD965027AE5122CFE7E3E'
  checksumType  = 'sha256'
  checksum64    = 'CC62EF5D297CD567791F26305DF70DEF9A562CAB8E6DD965027AE5122CFE7E3E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















