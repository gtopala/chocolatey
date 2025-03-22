
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
  checksum      = '48B4B57BCE59EC6C6BC55AE49DB35A63308C4B197AEBCAF9BF34DC0588AE951C'
  checksumType  = 'sha256'
  checksum64    = '48B4B57BCE59EC6C6BC55AE49DB35A63308C4B197AEBCAF9BF34DC0588AE951C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















