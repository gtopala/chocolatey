
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
  checksum      = 'E3DB660AA275F2927FE7573552134B7C70B7520FE76A0DB180EF551451CD7D7A'
  checksumType  = 'sha256'
  checksum64    = 'E3DB660AA275F2927FE7573552134B7C70B7520FE76A0DB180EF551451CD7D7A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















