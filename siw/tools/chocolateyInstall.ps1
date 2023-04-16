
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
  checksum      = 'D44E653E8AED9A5D39423FFBE567DC5ADDC342CBD277065D2550103934CE1A1E'
  checksumType  = 'sha256'
  checksum64    = 'D44E653E8AED9A5D39423FFBE567DC5ADDC342CBD277065D2550103934CE1A1E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















