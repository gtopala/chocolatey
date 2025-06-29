
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
  checksum      = 'CE82CEF47ADAB603A053DF08EC0046EFB863258D2F48F121521FDC4D459DEA5A'
  checksumType  = 'sha256'
  checksum64    = 'CE82CEF47ADAB603A053DF08EC0046EFB863258D2F48F121521FDC4D459DEA5A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















