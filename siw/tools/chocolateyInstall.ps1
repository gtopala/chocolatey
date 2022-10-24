
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
  checksum      = '81AE54767C8288A3C7F527847CB0E288DF955E70807503D7B00B457D4843AF01'
  checksumType  = 'sha256'
  checksum64    = '81AE54767C8288A3C7F527847CB0E288DF955E70807503D7B00B457D4843AF01'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















