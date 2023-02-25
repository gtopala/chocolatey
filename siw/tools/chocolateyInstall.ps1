
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
  checksum      = '127D78E101BACA91FD3C2E528C856257737701D7FE7CBF09B7CC30BDEEBD40C3'
  checksumType  = 'sha256'
  checksum64    = '127D78E101BACA91FD3C2E528C856257737701D7FE7CBF09B7CC30BDEEBD40C3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















