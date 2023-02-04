
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
  checksum      = '437893EA349828FB91FB6AC830CA49C003C4AD600C6AA9B13C0DD9CEA4E0D4FA'
  checksumType  = 'sha256'
  checksum64    = '437893EA349828FB91FB6AC830CA49C003C4AD600C6AA9B13C0DD9CEA4E0D4FA'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















