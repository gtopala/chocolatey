
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
  checksum      = 'F4C23A906F242A043FC7FB9A86568CBCCE62649AB0A30B71794401CD44CB4E9C'
  checksumType  = 'sha256'
  checksum64    = 'F4C23A906F242A043FC7FB9A86568CBCCE62649AB0A30B71794401CD44CB4E9C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















