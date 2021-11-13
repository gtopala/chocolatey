
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
  checksum      = '3A021FAA8BEBC354A9DCF88B6953AFAFE73A7B034E233321830CDD45FE625A6F'
  checksumType  = 'sha256'
  checksum64    = '3A021FAA8BEBC354A9DCF88B6953AFAFE73A7B034E233321830CDD45FE625A6F'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















