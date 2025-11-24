
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
  checksum      = 'D7BC7D4E4EC65839B8271D7BFD2CD978D89E31DF877202566539BA4E49982241'
  checksumType  = 'sha256'
  checksum64    = 'D7BC7D4E4EC65839B8271D7BFD2CD978D89E31DF877202566539BA4E49982241'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















