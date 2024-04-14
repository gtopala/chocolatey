
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
  checksum      = '45096C0830D6EE73907C49F02AF2D6AA7DE8FD4B66B887BA0BE1A800850AF5B0'
  checksumType  = 'sha256'
  checksum64    = '45096C0830D6EE73907C49F02AF2D6AA7DE8FD4B66B887BA0BE1A800850AF5B0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















