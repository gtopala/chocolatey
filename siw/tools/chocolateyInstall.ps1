
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
  checksum      = 'B207752FE4C79AEB2F39A2F09F51CEBA6864CA0A9D06627C9151BAA40B9B3954'
  checksumType  = 'sha256'
  checksum64    = 'B207752FE4C79AEB2F39A2F09F51CEBA6864CA0A9D06627C9151BAA40B9B3954'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















