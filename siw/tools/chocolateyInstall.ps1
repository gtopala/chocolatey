
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
  checksum      = '0C6252D1C20575D8F3397C1DD5246485839471FA1A20A0DCC33BBA8B88AE4B47'
  checksumType  = 'sha256'
  checksum64    = '0C6252D1C20575D8F3397C1DD5246485839471FA1A20A0DCC33BBA8B88AE4B47'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















