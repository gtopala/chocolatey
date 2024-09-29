
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
  checksum      = 'B483A3A9CA7CA2A8B93B511AE0FB62BEA58272E7C0A7B8AC711FF64B1E3A851E'
  checksumType  = 'sha256'
  checksum64    = 'B483A3A9CA7CA2A8B93B511AE0FB62BEA58272E7C0A7B8AC711FF64B1E3A851E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















