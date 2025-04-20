
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
  checksum      = '469CC4BCB0E11A912BE9D200699CD10BA04CC33D5C53ED9116A5FB6E10B51F9C'
  checksumType  = 'sha256'
  checksum64    = '469CC4BCB0E11A912BE9D200699CD10BA04CC33D5C53ED9116A5FB6E10B51F9C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















