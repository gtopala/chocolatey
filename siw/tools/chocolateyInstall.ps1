
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
  checksum      = '097447823EE8F61A2452FB6FF48587926231E98503FAB23F839F812782D1C65D'
  checksumType  = 'sha256'
  checksum64    = '097447823EE8F61A2452FB6FF48587926231E98503FAB23F839F812782D1C65D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















