
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
  checksum      = 'D168FBEF49C89A4D7947C90D5902AD2E810247386C74A5E5EEDE87C6351F9730'
  checksumType  = 'sha256'
  checksum64    = 'D168FBEF49C89A4D7947C90D5902AD2E810247386C74A5E5EEDE87C6351F9730'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















