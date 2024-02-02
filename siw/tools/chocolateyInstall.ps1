
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
  checksum      = '6274358ADC2B329BF273BBE31659130EAECD551344CAF069D734D07C233498AA'
  checksumType  = 'sha256'
  checksum64    = '6274358ADC2B329BF273BBE31659130EAECD551344CAF069D734D07C233498AA'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















