
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
  checksum      = '774471F745564329C99EB60B9FF2EE39705264232B9B179AAC7189B3BCF06827'
  checksumType  = 'sha256'
  checksum64    = '774471F745564329C99EB60B9FF2EE39705264232B9B179AAC7189B3BCF06827'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















