
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
  checksum      = '65A7CF8EF5DAD4660B326D95D651F0F2E58F30467561D37EB2FECDCDEBB5E5A5'
  checksumType  = 'sha256'
  checksum64    = '65A7CF8EF5DAD4660B326D95D651F0F2E58F30467561D37EB2FECDCDEBB5E5A5'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















