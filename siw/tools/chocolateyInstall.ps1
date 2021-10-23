
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
  checksum      = '77B036EE9D6346E87EB84F23AA755EB5058850022A0AE879DFE0C1D391C3F142'
  checksumType  = 'sha256'
  checksum64    = '77B036EE9D6346E87EB84F23AA755EB5058850022A0AE879DFE0C1D391C3F142'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















