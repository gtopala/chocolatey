
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
  checksum      = '0C49AC2A8A1B643E10AD7818A5E1548EAC6B45ECDA36F79297C29856E4AAEE32'
  checksumType  = 'sha256'
  checksum64    = '0C49AC2A8A1B643E10AD7818A5E1548EAC6B45ECDA36F79297C29856E4AAEE32'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















