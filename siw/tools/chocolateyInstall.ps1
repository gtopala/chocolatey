
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
  checksum      = 'E3D7D3B8605FB7F5FDA031886A3181330355AF614172F5A8C61DFCED00C2DB01'
  checksumType  = 'sha256'
  checksum64    = 'E3D7D3B8605FB7F5FDA031886A3181330355AF614172F5A8C61DFCED00C2DB01'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















