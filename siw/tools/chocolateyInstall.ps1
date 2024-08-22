
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
  checksum      = '942C42181EF41F5A4426D0E8958AC2C19D38FFE4BAE9452A6072F4B22920CFEB'
  checksumType  = 'sha256'
  checksum64    = '942C42181EF41F5A4426D0E8958AC2C19D38FFE4BAE9452A6072F4B22920CFEB'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















