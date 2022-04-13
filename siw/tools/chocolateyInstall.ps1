
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
  checksum      = 'DC63590113BC5979C48D333F047B0583104DB5D4009F63A500C42593CDDC5928'
  checksumType  = 'sha256'
  checksum64    = 'DC63590113BC5979C48D333F047B0583104DB5D4009F63A500C42593CDDC5928'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















