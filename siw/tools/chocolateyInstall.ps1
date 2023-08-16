
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
  checksum      = 'F161C71B7F4031F76F216BF5E3725351CB297371EDD2361D5F1A6C24FC965CA0'
  checksumType  = 'sha256'
  checksum64    = 'F161C71B7F4031F76F216BF5E3725351CB297371EDD2361D5F1A6C24FC965CA0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















