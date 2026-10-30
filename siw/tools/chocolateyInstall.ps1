
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
  checksum      = '4401D375CE378A8B477119608C3572A00E393DA6C99B99532D5EBC770C5E8061'
  checksumType  = 'sha256'
  checksum64    = '4401D375CE378A8B477119608C3572A00E393DA6C99B99532D5EBC770C5E8061'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















