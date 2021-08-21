
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
  checksum      = '61975BE4EC92F96B557B4D3F51E50935D78ABDFD6E07196E14152F07A50F06ED'
  checksumType  = 'sha256'
  checksum64    = '61975BE4EC92F96B557B4D3F51E50935D78ABDFD6E07196E14152F07A50F06ED'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















