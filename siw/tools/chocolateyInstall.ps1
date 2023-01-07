
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
  checksum      = '4663F822DC72503CEC3330FC02210F3617417154279076534D0C4913E106972C'
  checksumType  = 'sha256'
  checksum64    = '4663F822DC72503CEC3330FC02210F3617417154279076534D0C4913E106972C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















