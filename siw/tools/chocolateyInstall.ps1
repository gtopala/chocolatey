
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
  checksum      = 'A0C7EDA3CCB01EB04A5037307DE2CFDFCDA8365A43C47D1A0D136A25EBF45833'
  checksumType  = 'sha256'
  checksum64    = 'A0C7EDA3CCB01EB04A5037307DE2CFDFCDA8365A43C47D1A0D136A25EBF45833'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















