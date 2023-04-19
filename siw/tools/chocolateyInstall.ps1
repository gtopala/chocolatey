
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
  checksum      = '63872ECD532E1FD73D29CF8BB13A345E464D96831FC08252D1E5FF875DC8B79A'
  checksumType  = 'sha256'
  checksum64    = '63872ECD532E1FD73D29CF8BB13A345E464D96831FC08252D1E5FF875DC8B79A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















