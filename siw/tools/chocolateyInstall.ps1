
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
  checksum      = 'C56CD819D43AE65BCB5CEA48D3373CA34633922A010351DCAF761AFF465ECDDD'
  checksumType  = 'sha256'
  checksum64    = 'C56CD819D43AE65BCB5CEA48D3373CA34633922A010351DCAF761AFF465ECDDD'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















