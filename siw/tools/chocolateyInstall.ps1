
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
  checksum      = '3084BF8C6C4B7197DCE46DB138451DC013175D263AE7F299E6F35B2291916163'
  checksumType  = 'sha256'
  checksum64    = '3084BF8C6C4B7197DCE46DB138451DC013175D263AE7F299E6F35B2291916163'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















