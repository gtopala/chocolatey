
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
  checksum      = 'BE00F030F8D8B88143045AAE5CC1C2F0A3CF0D6DF7BBDE457C03FE2893E46E52'
  checksumType  = 'sha256'
  checksum64    = 'BE00F030F8D8B88143045AAE5CC1C2F0A3CF0D6DF7BBDE457C03FE2893E46E52'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















