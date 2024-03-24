
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
  checksum      = '39AC83432ABBB9FB2DA6341F7BF7217F5745737B65354D02FBF0C2634548CC91'
  checksumType  = 'sha256'
  checksum64    = '39AC83432ABBB9FB2DA6341F7BF7217F5745737B65354D02FBF0C2634548CC91'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















