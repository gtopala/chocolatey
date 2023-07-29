
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
  checksum      = '7864BDFDE48457C4A6FA2513C7E980DB7D7F9B9F6F8B2757A4501D16AF05957A'
  checksumType  = 'sha256'
  checksum64    = '7864BDFDE48457C4A6FA2513C7E980DB7D7F9B9F6F8B2757A4501D16AF05957A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















