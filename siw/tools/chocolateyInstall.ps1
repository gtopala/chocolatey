
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
  checksum      = 'A8C33AC39A85396D5D0FFA55F17D50C086C6110A3FF5070AB30CABB3DD1732FB'
  checksumType  = 'sha256'
  checksum64    = 'A8C33AC39A85396D5D0FFA55F17D50C086C6110A3FF5070AB30CABB3DD1732FB'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















