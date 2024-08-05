
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
  checksum      = 'E9C844C9A645D932924EE9B3C542795FB290C8A676715222BC94D9C2A3DE2A5A'
  checksumType  = 'sha256'
  checksum64    = 'E9C844C9A645D932924EE9B3C542795FB290C8A676715222BC94D9C2A3DE2A5A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















