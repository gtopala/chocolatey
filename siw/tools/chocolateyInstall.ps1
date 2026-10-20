
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
  checksum      = '2C739D2D01F0117C8EF11314F67903AF65A95B0E378ACA2387D81F40F65DD2CF'
  checksumType  = 'sha256'
  checksum64    = '2C739D2D01F0117C8EF11314F67903AF65A95B0E378ACA2387D81F40F65DD2CF'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















