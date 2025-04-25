
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
  checksum      = '68E301A224FB8008785AF6DC13C98EB1A769B76A397A5D47F91C8210C7760B7A'
  checksumType  = 'sha256'
  checksum64    = '68E301A224FB8008785AF6DC13C98EB1A769B76A397A5D47F91C8210C7760B7A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















