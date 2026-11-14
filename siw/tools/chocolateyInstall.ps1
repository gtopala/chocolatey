
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
  checksum      = '907C147189270CC9B20A8DAE61A8BAE698A4433DF0771477FE95A0498F4E1CDB'
  checksumType  = 'sha256'
  checksum64    = '907C147189270CC9B20A8DAE61A8BAE698A4433DF0771477FE95A0498F4E1CDB'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















