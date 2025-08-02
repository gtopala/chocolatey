
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
  checksum      = 'B74C2BBFE9DC0F1D5100051CE41C3404D88FE97E1474B99CEE6928CCFB3AB030'
  checksumType  = 'sha256'
  checksum64    = 'B74C2BBFE9DC0F1D5100051CE41C3404D88FE97E1474B99CEE6928CCFB3AB030'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















