
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
  checksum      = '815EEDCFE6A63DBFB44F71DA0E681F2437D03F6C88778852B7325ADB633BAF2C'
  checksumType  = 'sha256'
  checksum64    = '815EEDCFE6A63DBFB44F71DA0E681F2437D03F6C88778852B7325ADB633BAF2C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















