
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
  checksum      = 'FF571A6D55A89C8CC2AE123E4991045DAF723473B8E83C4C232C7522F70C07B5'
  checksumType  = 'sha256'
  checksum64    = 'FF571A6D55A89C8CC2AE123E4991045DAF723473B8E83C4C232C7522F70C07B5'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















