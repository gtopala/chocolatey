
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
  checksum      = 'FA03D0A18414B608E192B63E2CD4AF60FDABF62FBA5DDF6F502A6ADF419A78D8'
  checksumType  = 'sha256'
  checksum64    = 'FA03D0A18414B608E192B63E2CD4AF60FDABF62FBA5DDF6F502A6ADF419A78D8'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















