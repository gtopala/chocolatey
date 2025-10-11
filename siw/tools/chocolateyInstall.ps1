
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
  checksum      = 'BA9656C375C7D7D4D4B97CF12E41A0D0EF7093FD36F1DE1CC91C59061D83C607'
  checksumType  = 'sha256'
  checksum64    = 'BA9656C375C7D7D4D4B97CF12E41A0D0EF7093FD36F1DE1CC91C59061D83C607'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















