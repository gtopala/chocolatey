
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
  checksum      = 'E10BFCC5AFF08ED5B4F37CE073FEEA66C821373842FFA11B072E271202CA0BE8'
  checksumType  = 'sha256'
  checksum64    = 'E10BFCC5AFF08ED5B4F37CE073FEEA66C821373842FFA11B072E271202CA0BE8'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















