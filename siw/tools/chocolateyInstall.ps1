
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
  checksum      = '2A522C294484E29BD08F671D7F39FF6B916CFF8C2B6FFBFDE1DD2F6E1867ECC1'
  checksumType  = 'sha256'
  checksum64    = '2A522C294484E29BD08F671D7F39FF6B916CFF8C2B6FFBFDE1DD2F6E1867ECC1'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















