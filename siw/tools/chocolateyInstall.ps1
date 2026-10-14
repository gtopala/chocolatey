
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
  checksum      = '7E11D3437F2EC23213A9175956BCB50A81517DE49CA120EB67723942F3A817CD'
  checksumType  = 'sha256'
  checksum64    = '7E11D3437F2EC23213A9175956BCB50A81517DE49CA120EB67723942F3A817CD'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















