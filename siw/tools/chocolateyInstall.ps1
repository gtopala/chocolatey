
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
  checksum      = '12FACD050473313916D4C8E927C02F3CDB3675E73A291BB2B0FAAD9C08AC3FB0'
  checksumType  = 'sha256'
  checksum64    = '12FACD050473313916D4C8E927C02F3CDB3675E73A291BB2B0FAAD9C08AC3FB0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















