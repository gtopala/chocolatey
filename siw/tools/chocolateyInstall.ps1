
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
  checksum      = 'FBBEE644FAF935E55F16BD636BB1F3C890C5526AF21003AF0674FEFD8598ED7A'
  checksumType  = 'sha256'
  checksum64    = 'FBBEE644FAF935E55F16BD636BB1F3C890C5526AF21003AF0674FEFD8598ED7A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















