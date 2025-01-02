
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
  checksum      = 'F9F1AD5B6AF7026052AFE598DE29905782255AF005A4B0653BFE1CBDBB9A73C1'
  checksumType  = 'sha256'
  checksum64    = 'F9F1AD5B6AF7026052AFE598DE29905782255AF005A4B0653BFE1CBDBB9A73C1'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















