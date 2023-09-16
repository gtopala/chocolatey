
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
  checksum      = 'E37B1335A54426FB23DA154D961CD1457A7A85E990F14833667537B547D4DBF3'
  checksumType  = 'sha256'
  checksum64    = 'E37B1335A54426FB23DA154D961CD1457A7A85E990F14833667537B547D4DBF3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















