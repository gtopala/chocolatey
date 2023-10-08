
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
  checksum      = '5592485E68CEDE6B8DDD42F13258D18743937D64229818CFF3F6C7125D37FD0B'
  checksumType  = 'sha256'
  checksum64    = '5592485E68CEDE6B8DDD42F13258D18743937D64229818CFF3F6C7125D37FD0B'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















