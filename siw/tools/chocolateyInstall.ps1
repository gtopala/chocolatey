
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
  checksum      = '91D1A5A3ADF465AE86DC8A2926172A1F95B345E230D4BA740526158093EFE918'
  checksumType  = 'sha256'
  checksum64    = '91D1A5A3ADF465AE86DC8A2926172A1F95B345E230D4BA740526158093EFE918'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















