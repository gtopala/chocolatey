
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
  checksum      = 'AE116FA5D0984C1841D7633F819311713255D479A9B4ABD569B24492647E8BFA'
  checksumType  = 'sha256'
  checksum64    = 'AE116FA5D0984C1841D7633F819311713255D479A9B4ABD569B24492647E8BFA'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















