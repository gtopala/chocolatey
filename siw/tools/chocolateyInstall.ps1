
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
  checksum      = '1A74A02C3A35AB44D34800475378412009E163B8E2E63074DC80A861802B1757'
  checksumType  = 'sha256'
  checksum64    = '1A74A02C3A35AB44D34800475378412009E163B8E2E63074DC80A861802B1757'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















