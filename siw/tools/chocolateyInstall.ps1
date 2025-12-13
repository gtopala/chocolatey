
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
  checksum      = '1BB357ADE5C961EC9541E6CF2E1E32866A1054A159FEE5C74E151C0C4776CBBC'
  checksumType  = 'sha256'
  checksum64    = '1BB357ADE5C961EC9541E6CF2E1E32866A1054A159FEE5C74E151C0C4776CBBC'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















