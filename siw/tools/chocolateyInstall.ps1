
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
  checksum      = '799230325BEC7F2BB426044BEC27A09D0705BB2D4AE1F2BF2BC4919DA7F6B9DC'
  checksumType  = 'sha256'
  checksum64    = '799230325BEC7F2BB426044BEC27A09D0705BB2D4AE1F2BF2BC4919DA7F6B9DC'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















