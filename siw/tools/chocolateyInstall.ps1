
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
  checksum      = '8F10EBE25D65D3112155ED19199AEAA621348820774B0623BD1675E5EB903FC4'
  checksumType  = 'sha256'
  checksum64    = '8F10EBE25D65D3112155ED19199AEAA621348820774B0623BD1675E5EB903FC4'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















