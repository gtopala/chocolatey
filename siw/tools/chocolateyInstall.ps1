
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
  checksum      = 'F5D591027F24A64AD629B24F2C4A9CD022DDC635D46754232454523BE92ECB92'
  checksumType  = 'sha256'
  checksum64    = 'F5D591027F24A64AD629B24F2C4A9CD022DDC635D46754232454523BE92ECB92'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















