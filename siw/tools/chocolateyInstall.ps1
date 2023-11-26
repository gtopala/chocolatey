
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
  checksum      = '7CA8CA82597E74FA018A22D2A800DE22BA6F25B3AB919D0B59748333AB94EC86'
  checksumType  = 'sha256'
  checksum64    = '7CA8CA82597E74FA018A22D2A800DE22BA6F25B3AB919D0B59748333AB94EC86'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















