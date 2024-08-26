
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
  checksum      = 'A494C92A5EDA6E05C0CA3105D23336719220F79A710D41A1376A5EAA74D26C8B'
  checksumType  = 'sha256'
  checksum64    = 'A494C92A5EDA6E05C0CA3105D23336719220F79A710D41A1376A5EAA74D26C8B'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















