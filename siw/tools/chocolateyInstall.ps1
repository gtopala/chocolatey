
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
  checksum      = '458B9416F70E7C75A837F09643811DBCAD93C84F69506C287B0E8029DD718584'
  checksumType  = 'sha256'
  checksum64    = '458B9416F70E7C75A837F09643811DBCAD93C84F69506C287B0E8029DD718584'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















