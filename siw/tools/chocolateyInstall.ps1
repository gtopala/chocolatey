
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
  checksum      = 'D443B5AE70773E315EA0CFF94E96D0D4EF7853699FD552F2C6B22721EAA6C2F8'
  checksumType  = 'sha256'
  checksum64    = 'D443B5AE70773E315EA0CFF94E96D0D4EF7853699FD552F2C6B22721EAA6C2F8'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















