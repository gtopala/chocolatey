
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
  checksum      = '3BABAAB7AD762DD3FD8EDA5799B8DFBCCFE94E7337071D2DAA4C8C0EBFA6892D'
  checksumType  = 'sha256'
  checksum64    = '3BABAAB7AD762DD3FD8EDA5799B8DFBCCFE94E7337071D2DAA4C8C0EBFA6892D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















