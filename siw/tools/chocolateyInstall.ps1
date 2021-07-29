
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
  checksum      = 'F5E84472F25E9ED4AAD7D451F50AA7287DD31CB2BECAEEACF19D4140AC168531'
  checksumType  = 'sha256'
  checksum64    = 'F5E84472F25E9ED4AAD7D451F50AA7287DD31CB2BECAEEACF19D4140AC168531'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















