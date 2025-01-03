
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
  checksum      = 'D38521558E38CC9406391A92FFA890987350D42C7723DAE674BAC95973DD7E22'
  checksumType  = 'sha256'
  checksum64    = 'D38521558E38CC9406391A92FFA890987350D42C7723DAE674BAC95973DD7E22'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















