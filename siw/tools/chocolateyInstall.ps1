
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
  checksum      = '97EACEE6F2B50DF0A44CE2F38A583A0E45C6F05715A36CCA0ECD01DF8C88C2D2'
  checksumType  = 'sha256'
  checksum64    = '97EACEE6F2B50DF0A44CE2F38A583A0E45C6F05715A36CCA0ECD01DF8C88C2D2'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















