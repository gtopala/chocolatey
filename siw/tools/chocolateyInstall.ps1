
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
  checksum      = '5785DDD2E68955ED610DFF00B355D5B5E24BF60F43D477B928C083A44798C99B'
  checksumType  = 'sha256'
  checksum64    = '5785DDD2E68955ED610DFF00B355D5B5E24BF60F43D477B928C083A44798C99B'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















