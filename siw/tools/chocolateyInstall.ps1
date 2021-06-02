
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
  checksum      = '5E755452999BAE347474437A4528A63ACDB4807A3F98524BC9DDDB1464D4E71D'
  checksumType  = 'sha256'
  checksum64    = '5E755452999BAE347474437A4528A63ACDB4807A3F98524BC9DDDB1464D4E71D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















