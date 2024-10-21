
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
  checksum      = 'A8D4A66FCD72D088B30679FDAE88DD174B1F2CAFA976259AEAC8EC96A49B8785'
  checksumType  = 'sha256'
  checksum64    = 'A8D4A66FCD72D088B30679FDAE88DD174B1F2CAFA976259AEAC8EC96A49B8785'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















