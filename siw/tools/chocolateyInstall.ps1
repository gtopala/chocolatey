
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
  checksum      = '62D6D8CB147D5BCBD514B924F62FAC5AB65DD44FCB49C6E058F2D53872FE5568'
  checksumType  = 'sha256'
  checksum64    = '62D6D8CB147D5BCBD514B924F62FAC5AB65DD44FCB49C6E058F2D53872FE5568'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















