
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
  checksum      = 'B7B2010344B39EF952C099077621A765E8FE32AD044122677A6EF489AD8ACDED'
  checksumType  = 'sha256'
  checksum64    = 'B7B2010344B39EF952C099077621A765E8FE32AD044122677A6EF489AD8ACDED'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















