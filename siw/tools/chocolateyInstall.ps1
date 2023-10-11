
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
  checksum      = '840D6E3FA24822F6595DE6ED6A91527FE7F98C3DC4EEEA5C04093B56D009D54B'
  checksumType  = 'sha256'
  checksum64    = '840D6E3FA24822F6595DE6ED6A91527FE7F98C3DC4EEEA5C04093B56D009D54B'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















