
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
  checksum      = '4E5E5B8CACF2305B4263B8533B4946535DC404A7CCEAF4F4EBD7F9AD92148E21'
  checksumType  = 'sha256'
  checksum64    = '4E5E5B8CACF2305B4263B8533B4946535DC404A7CCEAF4F4EBD7F9AD92148E21'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















