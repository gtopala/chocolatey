
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
  checksum      = 'D27481040018101D69FC916C8500B2959BB642780E3F5CCA02399DBB79C3026E'
  checksumType  = 'sha256'
  checksum64    = 'D27481040018101D69FC916C8500B2959BB642780E3F5CCA02399DBB79C3026E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















