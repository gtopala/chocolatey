
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
  checksum      = 'BA1DF6EF98460A72CD63F42E2F873F5398617188F73ED7BF2CD5521CCB8C8BFF'
  checksumType  = 'sha256'
  checksum64    = 'BA1DF6EF98460A72CD63F42E2F873F5398617188F73ED7BF2CD5521CCB8C8BFF'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















