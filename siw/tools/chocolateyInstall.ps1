
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
  checksum      = '7AB9E4B4DF8BEB36377706B94F51A4B185905857772BB1C80C905672E3C37C6D'
  checksumType  = 'sha256'
  checksum64    = '7AB9E4B4DF8BEB36377706B94F51A4B185905857772BB1C80C905672E3C37C6D'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















