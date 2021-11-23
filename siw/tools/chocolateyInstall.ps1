
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
  checksum      = '97DF31E29B1944DC566F2DCC2D97DB08046B0AC28ECEF6EA0A400AE2B8666CDE'
  checksumType  = 'sha256'
  checksum64    = '97DF31E29B1944DC566F2DCC2D97DB08046B0AC28ECEF6EA0A400AE2B8666CDE'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















