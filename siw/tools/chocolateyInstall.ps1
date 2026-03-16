
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
  checksum      = '3EF7AFAA3D6D78E02A21322A16F81D2F8CEC89346AE97E92C7FECCD9CDDC187C'
  checksumType  = 'sha256'
  checksum64    = '3EF7AFAA3D6D78E02A21322A16F81D2F8CEC89346AE97E92C7FECCD9CDDC187C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















