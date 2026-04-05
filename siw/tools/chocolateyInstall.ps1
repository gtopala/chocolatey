
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
  checksum      = '9733C38D9C32DBB2CFD74781099848947226474E7FE809CEB8C82F34AB3B10D0'
  checksumType  = 'sha256'
  checksum64    = '9733C38D9C32DBB2CFD74781099848947226474E7FE809CEB8C82F34AB3B10D0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















