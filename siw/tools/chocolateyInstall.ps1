
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
  checksum      = 'ADD74814A803B47D5C604960D8C225589EB9B34C9420DB9E79A14AAE307B7DAC'
  checksumType  = 'sha256'
  checksum64    = 'ADD74814A803B47D5C604960D8C225589EB9B34C9420DB9E79A14AAE307B7DAC'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















