
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
  checksum      = '4C5C2B6D6AA3F2BDC8C3F09F46F4F0D72020373C4822CBDC53E7E45E9AE6BF24'
  checksumType  = 'sha256'
  checksum64    = '4C5C2B6D6AA3F2BDC8C3F09F46F4F0D72020373C4822CBDC53E7E45E9AE6BF24'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















