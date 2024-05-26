
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
  checksum      = '50F1C2184813AF9850C79D203288AA3B39BB77D0912B1FAD884691E603488DE0'
  checksumType  = 'sha256'
  checksum64    = '50F1C2184813AF9850C79D203288AA3B39BB77D0912B1FAD884691E603488DE0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















