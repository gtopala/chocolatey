
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
  checksum      = 'F36AB6E69D79608F9274209AF7714496A96BF6754FDDB7DC648FEC39496ECF59'
  checksumType  = 'sha256'
  checksum64    = 'F36AB6E69D79608F9274209AF7714496A96BF6754FDDB7DC648FEC39496ECF59'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















