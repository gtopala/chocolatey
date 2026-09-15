
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
  checksum      = '14C171956E702860DEBC6C2E0F9B6CC770CFC39273A0B467D142354E5B99A68C'
  checksumType  = 'sha256'
  checksum64    = '14C171956E702860DEBC6C2E0F9B6CC770CFC39273A0B467D142354E5B99A68C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















