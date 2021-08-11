
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
  checksum      = '56C01E7097AB8199F19F8EEC1C644FED6FAA81517767334620EFC88FECFFB632'
  checksumType  = 'sha256'
  checksum64    = '56C01E7097AB8199F19F8EEC1C644FED6FAA81517767334620EFC88FECFFB632'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















