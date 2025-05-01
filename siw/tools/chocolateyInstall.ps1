
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
  checksum      = '96890B8C4065184E47A9034E212235828763FFF321471AECE13F5A15BB959CE7'
  checksumType  = 'sha256'
  checksum64    = '96890B8C4065184E47A9034E212235828763FFF321471AECE13F5A15BB959CE7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















