
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
  checksum      = '7E7788EBB34C35DD15D94DCE2D4A2762C84F0FA978A76A00205152C400E80EC4'
  checksumType  = 'sha256'
  checksum64    = '7E7788EBB34C35DD15D94DCE2D4A2762C84F0FA978A76A00205152C400E80EC4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















