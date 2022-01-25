
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
  checksum      = '950B06C5C5A4DB1DB66F96430D218B77CA22A19EA4E36708F4A34B6C329E08EE'
  checksumType  = 'sha256'
  checksum64    = '950B06C5C5A4DB1DB66F96430D218B77CA22A19EA4E36708F4A34B6C329E08EE'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















