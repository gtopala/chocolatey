
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
  checksum      = 'FE80BC773D1101B70117FE49213804D9D3AE1C5B120F4379CA78ECF540C71609'
  checksumType  = 'sha256'
  checksum64    = 'FE80BC773D1101B70117FE49213804D9D3AE1C5B120F4379CA78ECF540C71609'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















