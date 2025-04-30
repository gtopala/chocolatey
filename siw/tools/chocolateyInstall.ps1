
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
  checksum      = '702868E8CC06BB3E2891977E8DA360309158967C26397E04B33FA439BE6F67FA'
  checksumType  = 'sha256'
  checksum64    = '702868E8CC06BB3E2891977E8DA360309158967C26397E04B33FA439BE6F67FA'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















