
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
  checksum      = '5B949563C0E0033119E882D859E946532726D3F73830E48BC7415D86A1D03666'
  checksumType  = 'sha256'
  checksum64    = '5B949563C0E0033119E882D859E946532726D3F73830E48BC7415D86A1D03666'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















