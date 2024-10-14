
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
  checksum      = '1640E8FBA5F72E0CF47287621E11E7F728C1B8EEF4B8F8E0E4B04BFD222EC01F'
  checksumType  = 'sha256'
  checksum64    = '1640E8FBA5F72E0CF47287621E11E7F728C1B8EEF4B8F8E0E4B04BFD222EC01F'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















