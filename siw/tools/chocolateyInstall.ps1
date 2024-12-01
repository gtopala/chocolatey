
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
  checksum      = '7D6D8599F3B899D519AA0E0078C5040063E5C3F402CFE02A6416A51F4E17A137'
  checksumType  = 'sha256'
  checksum64    = '7D6D8599F3B899D519AA0E0078C5040063E5C3F402CFE02A6416A51F4E17A137'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















