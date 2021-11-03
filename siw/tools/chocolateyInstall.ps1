
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
  checksum      = '317A64F3D5C497A0A070874D1AE4D4E6BBA378C921193A8E8EFA5357A4F852F6'
  checksumType  = 'sha256'
  checksum64    = '317A64F3D5C497A0A070874D1AE4D4E6BBA378C921193A8E8EFA5357A4F852F6'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















