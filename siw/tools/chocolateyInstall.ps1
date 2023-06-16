
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
  checksum      = 'D7126DF93E867AF5C0BFDA30638812892EB794D56F9890F59F34B32B0002B9EB'
  checksumType  = 'sha256'
  checksum64    = 'D7126DF93E867AF5C0BFDA30638812892EB794D56F9890F59F34B32B0002B9EB'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















