
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
  checksum      = 'DE16FC389F2B8637885017EBC2B0108C6B24AEB83C0A9FBCF6F0B81BF3E3FF1E'
  checksumType  = 'sha256'
  checksum64    = 'DE16FC389F2B8637885017EBC2B0108C6B24AEB83C0A9FBCF6F0B81BF3E3FF1E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















