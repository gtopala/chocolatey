
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
  checksum      = 'F7D86C7B03C5D70E2D9F7B48D9692219A17C68B39BB94E4D6B7E99776ED5D65B'
  checksumType  = 'sha256'
  checksum64    = 'F7D86C7B03C5D70E2D9F7B48D9692219A17C68B39BB94E4D6B7E99776ED5D65B'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















