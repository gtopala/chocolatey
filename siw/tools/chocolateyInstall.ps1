
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
  checksum      = '43A84FD68AE92AF871DCEDDEA40E489F31843499BC2AC91137A390C60DC5960D'
  checksumType  = 'sha256'
  checksum64    = '43A84FD68AE92AF871DCEDDEA40E489F31843499BC2AC91137A390C60DC5960D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















