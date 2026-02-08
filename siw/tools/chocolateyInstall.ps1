
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
  checksum      = 'D8C6C957C75742053A6D9E322D407D6C10C739F7F74FA66F3BFC75CC6FAEEA6A'
  checksumType  = 'sha256'
  checksum64    = 'D8C6C957C75742053A6D9E322D407D6C10C739F7F74FA66F3BFC75CC6FAEEA6A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















