
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
  checksum      = 'BF1690719E807D32763DB02DFE2C373749C3B4673CF9488E5B48C1AB97F999A5'
  checksumType  = 'sha256'
  checksum64    = 'BF1690719E807D32763DB02DFE2C373749C3B4673CF9488E5B48C1AB97F999A5'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















