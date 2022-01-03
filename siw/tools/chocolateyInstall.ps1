
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
  checksum      = 'F96C3F09B866D604F7A964AB561D12DBB64B6E4D66C9C6E993463F4F2361F57C'
  checksumType  = 'sha256'
  checksum64    = 'F96C3F09B866D604F7A964AB561D12DBB64B6E4D66C9C6E993463F4F2361F57C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















