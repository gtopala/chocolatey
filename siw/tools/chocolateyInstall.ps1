
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
  checksum      = '65AFE69271B7A7EAFD6ABE91C98B323CC77AD762C2503CE43E63BF2C955A4E1F'
  checksumType  = 'sha256'
  checksum64    = '65AFE69271B7A7EAFD6ABE91C98B323CC77AD762C2503CE43E63BF2C955A4E1F'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















