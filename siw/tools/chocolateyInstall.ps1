
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
  checksum      = '10CE8651AAF200F9F6F743B32C74182F6B9B2EADB8845F7B12511E64834B61F0'
  checksumType  = 'sha256'
  checksum64    = '10CE8651AAF200F9F6F743B32C74182F6B9B2EADB8845F7B12511E64834B61F0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















