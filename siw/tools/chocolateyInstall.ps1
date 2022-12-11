
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
  checksum      = 'E9775EB075B7F4A34701743220C3DCB92F6BDA2FB73F40F3AFFEFF342E2D5816'
  checksumType  = 'sha256'
  checksum64    = 'E9775EB075B7F4A34701743220C3DCB92F6BDA2FB73F40F3AFFEFF342E2D5816'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















