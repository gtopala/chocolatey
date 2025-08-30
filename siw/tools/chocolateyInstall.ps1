
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
  checksum      = '12A4C4F76270DDC73F7047E0E246CAF28B7BCD1C6D0977C6A86488EEC5CBECE4'
  checksumType  = 'sha256'
  checksum64    = '12A4C4F76270DDC73F7047E0E246CAF28B7BCD1C6D0977C6A86488EEC5CBECE4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















