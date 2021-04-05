
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
  checksum      = '665BF5CBAD77B4A0B0F1E7399127302BBED50C68A42CE0BA5A9544A89E37B09F'
  checksumType  = 'sha256'
  checksum64    = '665BF5CBAD77B4A0B0F1E7399127302BBED50C68A42CE0BA5A9544A89E37B09F'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















