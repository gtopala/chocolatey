
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
  checksum      = '67098CFC63CCF5F88C8897CD9CB1DF3FCCB50FA4C1C93A33FE2EF31DB2B8488E'
  checksumType  = 'sha256'
  checksum64    = '67098CFC63CCF5F88C8897CD9CB1DF3FCCB50FA4C1C93A33FE2EF31DB2B8488E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















