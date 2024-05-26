
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
  checksum      = '60557921A39CA51DCBBD0803D3E219C32E865DE2D6909F6ED26E97E85D97F658'
  checksumType  = 'sha256'
  checksum64    = '60557921A39CA51DCBBD0803D3E219C32E865DE2D6909F6ED26E97E85D97F658'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















