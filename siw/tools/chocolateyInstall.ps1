
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
  checksum      = '92E49EFE394BDA9873374FAC448B4EE82FF27E53BADB3541EB81E9ECCB177E48'
  checksumType  = 'sha256'
  checksum64    = '92E49EFE394BDA9873374FAC448B4EE82FF27E53BADB3541EB81E9ECCB177E48'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















