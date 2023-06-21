
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
  checksum      = 'CBD09B5CB9A14116F0818AD9E48D9EDACE35BEE6DC54AB90F58CDBBB1D2BD475'
  checksumType  = 'sha256'
  checksum64    = 'CBD09B5CB9A14116F0818AD9E48D9EDACE35BEE6DC54AB90F58CDBBB1D2BD475'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















