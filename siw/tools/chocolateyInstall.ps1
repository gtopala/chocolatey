
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
  checksum      = '0C57B4827CF560126CDEA11C0CCC1AAD6331A4F5B4841ED11BFA8D0D77930705'
  checksumType  = 'sha256'
  checksum64    = '0C57B4827CF560126CDEA11C0CCC1AAD6331A4F5B4841ED11BFA8D0D77930705'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















