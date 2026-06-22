
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
  checksum      = 'DB3F63B83BC46EBEE54254A1AB194C53C9FE2645FBCCA652C9C75A62B45B9B46'
  checksumType  = 'sha256'
  checksum64    = 'DB3F63B83BC46EBEE54254A1AB194C53C9FE2645FBCCA652C9C75A62B45B9B46'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















