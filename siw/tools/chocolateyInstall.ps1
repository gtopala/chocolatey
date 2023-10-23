
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
  checksum      = 'C7CCFF6394098FC0F25C2E29977BB6F8C4CD4ABCAF396781CE09521323D1C7C7'
  checksumType  = 'sha256'
  checksum64    = 'C7CCFF6394098FC0F25C2E29977BB6F8C4CD4ABCAF396781CE09521323D1C7C7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















