
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
  checksum      = 'CD93DAE6F2E4EB5B056C3F96D41375986F63F56C65DFD327E7ABF8A2815F8AC9'
  checksumType  = 'sha256'
  checksum64    = 'CD93DAE6F2E4EB5B056C3F96D41375986F63F56C65DFD327E7ABF8A2815F8AC9'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















