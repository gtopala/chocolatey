
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
  checksum      = 'B919C9674BFCAC0F19A377F905D3253FF3F3A9D9ACECFEC13DD2D4BFDAC45875'
  checksumType  = 'sha256'
  checksum64    = 'B919C9674BFCAC0F19A377F905D3253FF3F3A9D9ACECFEC13DD2D4BFDAC45875'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















