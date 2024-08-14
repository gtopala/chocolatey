
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
  checksum      = '6359F43A40E980BFF76A80F4F82C97338D6374968BE681BAB8ACFC4C2A2D67FC'
  checksumType  = 'sha256'
  checksum64    = '6359F43A40E980BFF76A80F4F82C97338D6374968BE681BAB8ACFC4C2A2D67FC'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















