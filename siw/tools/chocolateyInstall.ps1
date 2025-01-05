
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
  checksum      = '1E1D3A93A8265A1AFD1ABA5E340084BF4E7A6711A42DFB56687FF4E5FA090AB2'
  checksumType  = 'sha256'
  checksum64    = '1E1D3A93A8265A1AFD1ABA5E340084BF4E7A6711A42DFB56687FF4E5FA090AB2'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















