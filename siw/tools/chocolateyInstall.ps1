
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
  checksum      = '4BD889F7C4DC89E2E52F0EB24B8774C5558410BA7F58A9D80F391B53D8D6F96E'
  checksumType  = 'sha256'
  checksum64    = '4BD889F7C4DC89E2E52F0EB24B8774C5558410BA7F58A9D80F391B53D8D6F96E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















