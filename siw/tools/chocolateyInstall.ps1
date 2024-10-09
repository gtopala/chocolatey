
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
  checksum      = '22400E3388325E9DFE3590B0107B4C1E1D284ED03E2DD751B8BF1BDCD11EED4A'
  checksumType  = 'sha256'
  checksum64    = '22400E3388325E9DFE3590B0107B4C1E1D284ED03E2DD751B8BF1BDCD11EED4A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















