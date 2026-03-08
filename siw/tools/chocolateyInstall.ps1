
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
  checksum      = '144DC03854F483EFE66801949F50E837335A371E9AC0309EFEF7BCDA6CD94392'
  checksumType  = 'sha256'
  checksum64    = '144DC03854F483EFE66801949F50E837335A371E9AC0309EFEF7BCDA6CD94392'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















