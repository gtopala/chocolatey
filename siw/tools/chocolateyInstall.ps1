
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
  checksum      = 'F00E450C7B95EAA6E1B32FB234F4176EB041E2767C1013B4506C0D69FC10DE22'
  checksumType  = 'sha256'
  checksum64    = 'F00E450C7B95EAA6E1B32FB234F4176EB041E2767C1013B4506C0D69FC10DE22'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















