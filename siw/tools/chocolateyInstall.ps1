
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
  checksum      = 'FACCFBA8D6D824DEB57356204F8B74A48A6199AD038D8F679C71D21FD37C0605'
  checksumType  = 'sha256'
  checksum64    = 'FACCFBA8D6D824DEB57356204F8B74A48A6199AD038D8F679C71D21FD37C0605'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















