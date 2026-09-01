
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
  checksum      = '7636EAC03CCE374E3A74E21D5BDA744AC8F0C2D4952D07F8581880545BD8A8C7'
  checksumType  = 'sha256'
  checksum64    = '7636EAC03CCE374E3A74E21D5BDA744AC8F0C2D4952D07F8581880545BD8A8C7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















