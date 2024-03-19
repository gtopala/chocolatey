
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
  checksum      = '5DD5F289E2AA87B0E4FB7B29AB8238066032DB24C9546FEFB6788AB7D25BEB77'
  checksumType  = 'sha256'
  checksum64    = '5DD5F289E2AA87B0E4FB7B29AB8238066032DB24C9546FEFB6788AB7D25BEB77'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















