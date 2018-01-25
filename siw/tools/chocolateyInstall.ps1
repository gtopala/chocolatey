
$ErrorActionPreference = 'Stop';


$packageName= 'siw'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://gtopala.net/download/siw-setup.exe'
$url64      = 'https://gtopala.net/download/siw-setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'siw*'
  checksum      = '87DD85815483E68E093BB34E9DB2ABBC'
  checksumType  = 'md5'
  checksum64    = '87DD85815483E68E093BB34E9DB2ABBC'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs

















