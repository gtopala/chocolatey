
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
  checksum      = 'EE826D7347DDAEFC74BE970F7F29584FAA9E43BC8F32A247F17D490BE47777A8'
  checksumType  = 'sha256'
  checksum64    = 'EE826D7347DDAEFC74BE970F7F29584FAA9E43BC8F32A247F17D490BE47777A8'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















