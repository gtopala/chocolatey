
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
  checksum      = '7BADB9D70002B19E1A33BCFEB299AF3014B8B9540C49F66193EFFB21EC58351A'
  checksumType  = 'sha256'
  checksum64    = '7BADB9D70002B19E1A33BCFEB299AF3014B8B9540C49F66193EFFB21EC58351A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















