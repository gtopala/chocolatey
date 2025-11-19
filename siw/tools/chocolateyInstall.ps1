
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
  checksum      = '3439EC8828B63EEF87F5124A27ADE1ED25657FAD6BD6BD857BD0CCE4C26279FB'
  checksumType  = 'sha256'
  checksum64    = '3439EC8828B63EEF87F5124A27ADE1ED25657FAD6BD6BD857BD0CCE4C26279FB'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















