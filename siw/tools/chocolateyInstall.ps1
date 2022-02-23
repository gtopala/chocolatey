
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
  checksum      = '0E3E9F44645FEB3521B434F2EFB7650C2DB90058B2ECA12719CB0D0E39B20C56'
  checksumType  = 'sha256'
  checksum64    = '0E3E9F44645FEB3521B434F2EFB7650C2DB90058B2ECA12719CB0D0E39B20C56'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















