
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
  checksum      = 'D32FF91BE9816660BE35707CD74A96C8C48F5092FB173E2BF75D582D9042C41D'
  checksumType  = 'sha256'
  checksum64    = 'D32FF91BE9816660BE35707CD74A96C8C48F5092FB173E2BF75D582D9042C41D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















