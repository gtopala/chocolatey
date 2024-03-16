
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
  checksum      = 'D3BDB5EB03D5CEF696343105F66C2C64CDE89D63984237EAFBCFA35276CB9279'
  checksumType  = 'sha256'
  checksum64    = 'D3BDB5EB03D5CEF696343105F66C2C64CDE89D63984237EAFBCFA35276CB9279'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















