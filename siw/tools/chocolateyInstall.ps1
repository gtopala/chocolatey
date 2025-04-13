
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
  checksum      = 'FC278A0E698966A06EE7FDC0CEF889B742D60BC4FABD373807C2FCDFA00251AA'
  checksumType  = 'sha256'
  checksum64    = 'FC278A0E698966A06EE7FDC0CEF889B742D60BC4FABD373807C2FCDFA00251AA'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















