
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
  checksum      = '7D2AF615E617DCCC84237D2DE127D6732BAE14E4CDB3A5CDACFAB32F79E58A90'
  checksumType  = 'sha256'
  checksum64    = '7D2AF615E617DCCC84237D2DE127D6732BAE14E4CDB3A5CDACFAB32F79E58A90'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















