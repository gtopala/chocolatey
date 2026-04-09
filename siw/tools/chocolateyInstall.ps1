
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
  checksum      = '41BA0EAF1838CDBBBD59ADA785988F9672C75901B6A0B4E7986445FA573BE14F'
  checksumType  = 'sha256'
  checksum64    = '41BA0EAF1838CDBBBD59ADA785988F9672C75901B6A0B4E7986445FA573BE14F'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















