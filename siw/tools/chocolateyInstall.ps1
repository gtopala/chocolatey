
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
  checksum      = 'DD2648E5BCF6FB0A7CCF4F7AB6903B1BB5FC8056C1E4C2147B39180849A3C13D'
  checksumType  = 'sha256'
  checksum64    = 'DD2648E5BCF6FB0A7CCF4F7AB6903B1BB5FC8056C1E4C2147B39180849A3C13D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















