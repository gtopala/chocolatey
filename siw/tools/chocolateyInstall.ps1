
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
  checksum      = '988CD1F7458C1F2F72031CB86586EE29FFDAACF8BDADD7669FAF6C585819D91D'
  checksumType  = 'sha256'
  checksum64    = '988CD1F7458C1F2F72031CB86586EE29FFDAACF8BDADD7669FAF6C585819D91D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















