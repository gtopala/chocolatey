
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
  checksum      = '7BDD39A60253A80F7209D156FF3772EDB77402CECCC64A3140023C4D59FF6189'
  checksumType  = 'sha256'
  checksum64    = '7BDD39A60253A80F7209D156FF3772EDB77402CECCC64A3140023C4D59FF6189'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















