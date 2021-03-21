
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
  checksum      = '9F8972F3F765A5F4F40017DB89D1CEF4EA54021B12664AFA64664335F8DEF525'
  checksumType  = 'sha256'
  checksum64    = '9F8972F3F765A5F4F40017DB89D1CEF4EA54021B12664AFA64664335F8DEF525'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















