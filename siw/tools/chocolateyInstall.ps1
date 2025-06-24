
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
  checksum      = '9858996452B4D2813648A1A915FA2239239956D0650DD4E12A5952008A285600'
  checksumType  = 'sha256'
  checksum64    = '9858996452B4D2813648A1A915FA2239239956D0650DD4E12A5952008A285600'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















