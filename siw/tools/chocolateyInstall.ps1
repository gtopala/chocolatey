
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
  checksum      = '219DAB91011ACCB884C1A5F3FCE647AE9DFF49E9D33E762777466F5C31FF727C'
  checksumType  = 'sha256'
  checksum64    = '219DAB91011ACCB884C1A5F3FCE647AE9DFF49E9D33E762777466F5C31FF727C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















