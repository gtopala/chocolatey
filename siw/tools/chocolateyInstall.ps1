
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
  checksum      = 'D9A2FAAB8E36CD07A3EB16363CD61A8D8530F64D31B9FFEF452A23611EEF5B0B'
  checksumType  = 'sha256'
  checksum64    = 'D9A2FAAB8E36CD07A3EB16363CD61A8D8530F64D31B9FFEF452A23611EEF5B0B'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















