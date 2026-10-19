
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
  checksum      = '5563FF385FFD8D8A119044AD01F1A52F4339ADED35215EEB517C3652236F02BD'
  checksumType  = 'sha256'
  checksum64    = '5563FF385FFD8D8A119044AD01F1A52F4339ADED35215EEB517C3652236F02BD'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















