
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
  checksum      = '03DEEB08192F96D76A1E5C53C9F09B008844ED23A605875718D78D67E494C5D9'
  checksumType  = 'sha256'
  checksum64    = '03DEEB08192F96D76A1E5C53C9F09B008844ED23A605875718D78D67E494C5D9'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















