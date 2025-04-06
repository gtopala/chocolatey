
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
  checksum      = '670D0D0D6A83E8B9DEC300610AF643470FA2BAC14FCB13BA52A59E7E9089EF2A'
  checksumType  = 'sha256'
  checksum64    = '670D0D0D6A83E8B9DEC300610AF643470FA2BAC14FCB13BA52A59E7E9089EF2A'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















