
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
  checksum      = 'D317AAE3A73C9CA74C20719437162FF1C46C92B47694D10494B4C431CCEB1057'
  checksumType  = 'sha256'
  checksum64    = 'D317AAE3A73C9CA74C20719437162FF1C46C92B47694D10494B4C431CCEB1057'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















