
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
  checksum      = 'E9E9786F938669214AF245AA4BB82C15CAD3538B0601F64462D3CAC8DAA088C8'
  checksumType  = 'sha256'
  checksum64    = 'E9E9786F938669214AF245AA4BB82C15CAD3538B0601F64462D3CAC8DAA088C8'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















