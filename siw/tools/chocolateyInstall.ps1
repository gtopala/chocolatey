
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
  checksum      = 'F05577A8DA29584FED35882FC76AA343395CD1D56E5DE54A83A206EC2A61AB55'
  checksumType  = 'sha256'
  checksum64    = 'F05577A8DA29584FED35882FC76AA343395CD1D56E5DE54A83A206EC2A61AB55'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















