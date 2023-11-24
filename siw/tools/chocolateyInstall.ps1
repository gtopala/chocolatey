
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
  checksum      = 'F6B82C81851E0A854E093F19E4126809D170AFD5F781179AF4FC49018BB87D16'
  checksumType  = 'sha256'
  checksum64    = 'F6B82C81851E0A854E093F19E4126809D170AFD5F781179AF4FC49018BB87D16'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















