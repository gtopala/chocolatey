
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
  checksum      = '29841F4BDFCE89497A9064164654288532A40824F1FE1A362A363EB288F0F8C2'
  checksumType  = 'sha256'
  checksum64    = '29841F4BDFCE89497A9064164654288532A40824F1FE1A362A363EB288F0F8C2'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















