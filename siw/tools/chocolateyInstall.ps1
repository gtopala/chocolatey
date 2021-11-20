
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
  checksum      = 'A5C7C80D070EC480B2EF754499DCB644B09EA8F8796A8034500A32D6A8AE88FE'
  checksumType  = 'sha256'
  checksum64    = 'A5C7C80D070EC480B2EF754499DCB644B09EA8F8796A8034500A32D6A8AE88FE'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















