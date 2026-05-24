
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
  checksum      = 'B9E8C2C2897B71157A05D70962F59A19F4AB8355D069C905E4385249FC442316'
  checksumType  = 'sha256'
  checksum64    = 'B9E8C2C2897B71157A05D70962F59A19F4AB8355D069C905E4385249FC442316'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















