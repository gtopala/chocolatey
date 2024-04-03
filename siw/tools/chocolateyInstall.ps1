
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
  checksum      = 'EFB0406FC9C5D774DB71EA3EFDC1EF843D8857A8310D9AA0FB13412EE92E6071'
  checksumType  = 'sha256'
  checksum64    = 'EFB0406FC9C5D774DB71EA3EFDC1EF843D8857A8310D9AA0FB13412EE92E6071'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















