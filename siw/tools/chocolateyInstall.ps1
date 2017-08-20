
$ErrorActionPreference = 'Stop';


$packageName= 'siw'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.gtopala.net/download/siw-setup.exe'
$url64      = 'https://www.gtopala.net/download/siw-setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'siw*'
  checksum      = '5D2BD4C25D38A82D70743AD7EC0B1FC9'
  checksumType  = 'md5'
  checksum64    = '5D2BD4C25D38A82D70743AD7EC0B1FC9'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs

















