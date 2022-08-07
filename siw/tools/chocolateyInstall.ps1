
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
  checksum      = '105EC6079A8BA0D6E09A3AEF3A188702BA752DEA1F3C5DD589C8620E74512995'
  checksumType  = 'sha256'
  checksum64    = '105EC6079A8BA0D6E09A3AEF3A188702BA752DEA1F3C5DD589C8620E74512995'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















