
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
  checksum      = '8785A2EE603FF1ABD0F43007C07D700D94D6354B33C59FB284FBF1699E94BBE7'
  checksumType  = 'sha256'
  checksum64    = '8785A2EE603FF1ABD0F43007C07D700D94D6354B33C59FB284FBF1699E94BBE7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















