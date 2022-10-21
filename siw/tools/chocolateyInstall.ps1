
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
  checksum      = '80D88F97CC2F804B6AE1F5DF2356A37A7189F11678FFE7359A049AE5424CFE4C'
  checksumType  = 'sha256'
  checksum64    = '80D88F97CC2F804B6AE1F5DF2356A37A7189F11678FFE7359A049AE5424CFE4C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















