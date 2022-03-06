
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
  checksum      = 'A856CA5FEB6AD9A193BB79EABB3736DA498C86A132945F2200ED06C83FC422BE'
  checksumType  = 'sha256'
  checksum64    = 'A856CA5FEB6AD9A193BB79EABB3736DA498C86A132945F2200ED06C83FC422BE'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















