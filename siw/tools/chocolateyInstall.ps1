
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
  checksum      = '12F5F89462463FAF12F9FBB931BAD1A2B9AAC93B4B7120F590A87DE211E4E4FC'
  checksumType  = 'sha256'
  checksum64    = '12F5F89462463FAF12F9FBB931BAD1A2B9AAC93B4B7120F590A87DE211E4E4FC'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















