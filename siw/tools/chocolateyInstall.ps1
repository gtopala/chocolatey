
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
  checksum      = '04E0E414DB7D2CB30D56034BFB393E453ACA3B677B7F731CF71FC23BCAC1DAFB'
  checksumType  = 'sha256'
  checksum64    = '04E0E414DB7D2CB30D56034BFB393E453ACA3B677B7F731CF71FC23BCAC1DAFB'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















