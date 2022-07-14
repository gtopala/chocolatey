
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
  checksum      = '9AD911FC05B5FB40CE434310E66707ACFA343DE34D44AA2A8EF3C2C8C07EEEFF'
  checksumType  = 'sha256'
  checksum64    = '9AD911FC05B5FB40CE434310E66707ACFA343DE34D44AA2A8EF3C2C8C07EEEFF'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















