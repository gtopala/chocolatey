
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
  checksum      = '5C4998BB510C7A11814B4079340394CAF8B938914E966B1E90D4BF14B0F6E10C'
  checksumType  = 'sha256'
  checksum64    = '5C4998BB510C7A11814B4079340394CAF8B938914E966B1E90D4BF14B0F6E10C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















