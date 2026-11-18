
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
  checksum      = '1BFBC9C8F081B40FF0A72D288D717D9A0AE9EFF4163F0818CA4586255F5544DB'
  checksumType  = 'sha256'
  checksum64    = '1BFBC9C8F081B40FF0A72D288D717D9A0AE9EFF4163F0818CA4586255F5544DB'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















