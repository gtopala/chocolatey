
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
  checksum      = '371F7E88CB19BE1A2BE5A0935F019CEECF5D178C952B1D35B16896DC43891247'
  checksumType  = 'sha256'
  checksum64    = '371F7E88CB19BE1A2BE5A0935F019CEECF5D178C952B1D35B16896DC43891247'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















