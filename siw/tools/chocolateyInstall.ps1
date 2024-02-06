
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
  checksum      = '1FCE42B959A57F9059437E4B78E4CB45E782EB5CCFF70FF49205917DFD1FEBE2'
  checksumType  = 'sha256'
  checksum64    = '1FCE42B959A57F9059437E4B78E4CB45E782EB5CCFF70FF49205917DFD1FEBE2'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















