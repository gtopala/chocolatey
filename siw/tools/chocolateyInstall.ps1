
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
  checksum      = '68858C82623F4126845437131481AE46BE78B54825C86592891AF5A176DB8053'
  checksumType  = 'sha256'
  checksum64    = '68858C82623F4126845437131481AE46BE78B54825C86592891AF5A176DB8053'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















