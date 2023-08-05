
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
  checksum      = '757EACC1E296674AA7AA5D48F1CD3659130BA95709AF867E4F2F847A62DDD7A9'
  checksumType  = 'sha256'
  checksum64    = '757EACC1E296674AA7AA5D48F1CD3659130BA95709AF867E4F2F847A62DDD7A9'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















