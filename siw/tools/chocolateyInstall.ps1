
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
  checksum      = '2262B65AF327D0BC8A11A90EBAD1B24D973EF21B53C5B3359D6336CB115B09DE'
  checksumType  = 'sha256'
  checksum64    = '2262B65AF327D0BC8A11A90EBAD1B24D973EF21B53C5B3359D6336CB115B09DE'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















