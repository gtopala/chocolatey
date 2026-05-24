
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
  checksum      = 'D351C628E22BFF431B6D24B726349E29B7F8004CF8B9C6654A6288ABF1BA73B9'
  checksumType  = 'sha256'
  checksum64    = 'D351C628E22BFF431B6D24B726349E29B7F8004CF8B9C6654A6288ABF1BA73B9'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















