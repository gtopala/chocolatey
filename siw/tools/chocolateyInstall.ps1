
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
  checksum      = '3271E7F3DBC229548A6B5E9760002F37758BF06B741BDF6C7B5E9949A013B14B'
  checksumType  = 'sha256'
  checksum64    = '3271E7F3DBC229548A6B5E9760002F37758BF06B741BDF6C7B5E9949A013B14B'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















