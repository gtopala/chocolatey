
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
  checksum      = 'A1092748E184D88D6ADD97A5AFA6EBEBCBA0569090AF6DCD0746A50609C140A7'
  checksumType  = 'sha256'
  checksum64    = 'A1092748E184D88D6ADD97A5AFA6EBEBCBA0569090AF6DCD0746A50609C140A7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















