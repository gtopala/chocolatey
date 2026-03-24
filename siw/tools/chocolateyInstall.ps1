
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
  checksum      = 'E54793A4C174D099B4466F350E9A98E2D0134BDBA11A5CF5870F1BAA8024DAB7'
  checksumType  = 'sha256'
  checksum64    = 'E54793A4C174D099B4466F350E9A98E2D0134BDBA11A5CF5870F1BAA8024DAB7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















