
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
  checksum      = '682F759BA7F3D851DC762C4A9B53C9EC515975CBFA48480E566070792BA8DB73'
  checksumType  = 'sha256'
  checksum64    = '682F759BA7F3D851DC762C4A9B53C9EC515975CBFA48480E566070792BA8DB73'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















