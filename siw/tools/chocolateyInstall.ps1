
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
  checksum      = '03B3BF8CD774C2B628D9D340E5CD707ED021A41DE3BB2365CE5D52239DE16FC0'
  checksumType  = 'sha256'
  checksum64    = '03B3BF8CD774C2B628D9D340E5CD707ED021A41DE3BB2365CE5D52239DE16FC0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















