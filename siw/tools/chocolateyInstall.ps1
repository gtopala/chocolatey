
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
  checksum      = '83112563F6FFC01664429EEAE196460788E3FBEEED71182C30D47B8D2C9DB7C0'
  checksumType  = 'sha256'
  checksum64    = '83112563F6FFC01664429EEAE196460788E3FBEEED71182C30D47B8D2C9DB7C0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















