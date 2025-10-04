
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
  checksum      = 'A46DAAD23EB65675105301116B12A3ADC45443328E99408477CFFC8E2A8545E3'
  checksumType  = 'sha256'
  checksum64    = 'A46DAAD23EB65675105301116B12A3ADC45443328E99408477CFFC8E2A8545E3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















