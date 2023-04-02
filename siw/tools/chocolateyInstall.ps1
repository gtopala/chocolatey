
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
  checksum      = '55ACC69788361830E7B56E19ACFCEAB7CBCAB7F8C4C6AEE2CD936C3544E6612B'
  checksumType  = 'sha256'
  checksum64    = '55ACC69788361830E7B56E19ACFCEAB7CBCAB7F8C4C6AEE2CD936C3544E6612B'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















