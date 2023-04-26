
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
  checksum      = '45ECD4C8FB2DEDE5B345A45FA80136B2C7E71F126A3DA33B188583581E130B37'
  checksumType  = 'sha256'
  checksum64    = '45ECD4C8FB2DEDE5B345A45FA80136B2C7E71F126A3DA33B188583581E130B37'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















