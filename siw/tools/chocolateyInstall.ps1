
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
  checksum      = '481FBA4D29F6FEDC404047B3E39BC2B8A1AEC2843AD0B53B14EA2FFC5D02D380'
  checksumType  = 'sha256'
  checksum64    = '481FBA4D29F6FEDC404047B3E39BC2B8A1AEC2843AD0B53B14EA2FFC5D02D380'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















