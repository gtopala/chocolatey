
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
  checksum      = '0BDCCF9821049091EDC1D831E96C2FB32079D9973BCB3AC1EB7195A241CEEAC4'
  checksumType  = 'sha256'
  checksum64    = '0BDCCF9821049091EDC1D831E96C2FB32079D9973BCB3AC1EB7195A241CEEAC4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















