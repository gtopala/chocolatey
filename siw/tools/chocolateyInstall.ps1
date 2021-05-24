
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
  checksum      = '7052DD4A4383B1C09C3082826AA4068018837328C666999143D662E2D05AE0D6'
  checksumType  = 'sha256'
  checksum64    = '7052DD4A4383B1C09C3082826AA4068018837328C666999143D662E2D05AE0D6'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















