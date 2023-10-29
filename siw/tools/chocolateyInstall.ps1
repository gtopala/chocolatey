
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
  checksum      = '158AF588184016F3F778E70293F35CAD99881C7C0FD2888377B0F573A4BAAC55'
  checksumType  = 'sha256'
  checksum64    = '158AF588184016F3F778E70293F35CAD99881C7C0FD2888377B0F573A4BAAC55'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















