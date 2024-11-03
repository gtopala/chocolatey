
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
  checksum      = '5EAC93A3CE856F110B69C3F0C7049ABE6132CCAB2374E72717CC7CCCAB81C445'
  checksumType  = 'sha256'
  checksum64    = '5EAC93A3CE856F110B69C3F0C7049ABE6132CCAB2374E72717CC7CCCAB81C445'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















