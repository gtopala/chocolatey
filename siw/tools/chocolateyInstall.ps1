
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
  checksum      = '2F6165A110C9ED903E2635856D1072EDE0A5FE7294C947D006331A7BD97091D3'
  checksumType  = 'sha256'
  checksum64    = '2F6165A110C9ED903E2635856D1072EDE0A5FE7294C947D006331A7BD97091D3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















