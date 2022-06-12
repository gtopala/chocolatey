
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
  checksum      = '15A59392704C5F42F35909A348B5220312D94E4E9A4EB2BDBE22FB3B77998B66'
  checksumType  = 'sha256'
  checksum64    = '15A59392704C5F42F35909A348B5220312D94E4E9A4EB2BDBE22FB3B77998B66'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















