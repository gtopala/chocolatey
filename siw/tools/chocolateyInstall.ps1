
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
  checksum      = '45AAD671ADC01A262598DF331493F46C479502A794780D709E529E0CB4C1A4CC'
  checksumType  = 'sha256'
  checksum64    = '45AAD671ADC01A262598DF331493F46C479502A794780D709E529E0CB4C1A4CC'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















