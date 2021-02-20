
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
  checksum      = 'E296FA639AFBA0B78817958F932FCD3E670BFABD20DCB4AF49DFDA43CC8C28E1'
  checksumType  = 'sha256'
  checksum64    = 'E296FA639AFBA0B78817958F932FCD3E670BFABD20DCB4AF49DFDA43CC8C28E1'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















