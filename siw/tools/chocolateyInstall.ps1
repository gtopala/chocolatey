
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
  checksum      = 'CC49F17DD742F337E71967E2BC1F3BDBB7DEC97DFDB76C9D792397B69AAACA00'
  checksumType  = 'sha256'
  checksum64    = 'CC49F17DD742F337E71967E2BC1F3BDBB7DEC97DFDB76C9D792397B69AAACA00'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















