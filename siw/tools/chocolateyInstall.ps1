
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
  checksum      = 'A35C060EFF2E8DC1C916F9DD90B97D0B29348B62299F5175BB558043C745E9BF'
  checksumType  = 'sha256'
  checksum64    = 'A35C060EFF2E8DC1C916F9DD90B97D0B29348B62299F5175BB558043C745E9BF'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















