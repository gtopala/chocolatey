
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
  checksum      = '1B1BF28B6111D5E5E9A3C323AC378FD6566571017F3B29DAB00003961E895393'
  checksumType  = 'sha256'
  checksum64    = '1B1BF28B6111D5E5E9A3C323AC378FD6566571017F3B29DAB00003961E895393'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















