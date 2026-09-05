
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
  checksum      = '34568495499AC89514CB6692B37E0DCA21358956DACB54D53FA497FAFF46611E'
  checksumType  = 'sha256'
  checksum64    = '34568495499AC89514CB6692B37E0DCA21358956DACB54D53FA497FAFF46611E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















