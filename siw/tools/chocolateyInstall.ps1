
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
  checksum      = 'CFD46A9B95E5342315FF3775CD6FAF8349978A8B6800F52A998EC05200BCE7BF'
  checksumType  = 'sha256'
  checksum64    = 'CFD46A9B95E5342315FF3775CD6FAF8349978A8B6800F52A998EC05200BCE7BF'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















