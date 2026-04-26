
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
  checksum      = 'B3A1693FF827F972102F88FAA69DE675982DD1BCDBF429F7432CF56D648D5B74'
  checksumType  = 'sha256'
  checksum64    = 'B3A1693FF827F972102F88FAA69DE675982DD1BCDBF429F7432CF56D648D5B74'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















