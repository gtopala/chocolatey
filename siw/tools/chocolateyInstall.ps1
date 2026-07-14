
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
  checksum      = '0527E4FB684B135AEB178D66590D511F2BBD7DD5432E9D8FAFD9A6F9FF5B04FD'
  checksumType  = 'sha256'
  checksum64    = '0527E4FB684B135AEB178D66590D511F2BBD7DD5432E9D8FAFD9A6F9FF5B04FD'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















