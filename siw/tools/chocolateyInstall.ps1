
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
  checksum      = '8876159CFDCDC27C9031E608FEB35C54D944FBA255EC806F4A18BE68B56C1947'
  checksumType  = 'sha256'
  checksum64    = '8876159CFDCDC27C9031E608FEB35C54D944FBA255EC806F4A18BE68B56C1947'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















