
$ErrorActionPreference = 'Stop';


$packageName= 'siw'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://gtopala.net/download/siw-setup.exe'
$url64      = 'https://gtopala.net/download/siw-setup.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'siw*'
  checksum      = '6905FE80F2238A28B277FB1EFEFB0574'
  checksumType  = 'md5'
  checksum64    = '6905FE80F2238A28B277FB1EFEFB0574'
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs

















