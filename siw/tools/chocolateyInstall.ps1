
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
  checksum      = 'F56F065F774D9BF2A6B9BD7970C91A4B33BED5DADCE0636AE9D351C2AEBEDAD4'
  checksumType  = 'sha256'
  checksum64    = 'F56F065F774D9BF2A6B9BD7970C91A4B33BED5DADCE0636AE9D351C2AEBEDAD4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















