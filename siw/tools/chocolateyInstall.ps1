
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
  checksum      = 'B0241B8802740DA6CB557EAA8E82A82F094280595D8752284005C57DB873EC49'
  checksumType  = 'sha256'
  checksum64    = 'B0241B8802740DA6CB557EAA8E82A82F094280595D8752284005C57DB873EC49'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















