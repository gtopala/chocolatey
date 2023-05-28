
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
  checksum      = 'A290CE04809F6E4FAE820546AADC785C9EEA7FC440CAFBC9313060CBC1CF219D'
  checksumType  = 'sha256'
  checksum64    = 'A290CE04809F6E4FAE820546AADC785C9EEA7FC440CAFBC9313060CBC1CF219D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















