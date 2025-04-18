
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
  checksum      = '80FE94BCB624E1C5277F742C31F99701A6F20FFC20B566C45745F8040621393F'
  checksumType  = 'sha256'
  checksum64    = '80FE94BCB624E1C5277F742C31F99701A6F20FFC20B566C45745F8040621393F'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















