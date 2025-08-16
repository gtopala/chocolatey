
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
  checksum      = '33041886BDE9C358880F1367DB6511316A2725E2D8AB1552D41770627F61103B'
  checksumType  = 'sha256'
  checksum64    = '33041886BDE9C358880F1367DB6511316A2725E2D8AB1552D41770627F61103B'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















