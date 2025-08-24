
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
  checksum      = 'D19B7A6D38710B5D69B52B9F53A06E5B88B4F406FC52E8C3A112FBF03EE39062'
  checksumType  = 'sha256'
  checksum64    = 'D19B7A6D38710B5D69B52B9F53A06E5B88B4F406FC52E8C3A112FBF03EE39062'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















