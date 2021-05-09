
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
  checksum      = '6637BE36CD92B9AB76A0E917DF27D5E73A72EBEEB2D803A606E48E7829B76120'
  checksumType  = 'sha256'
  checksum64    = '6637BE36CD92B9AB76A0E917DF27D5E73A72EBEEB2D803A606E48E7829B76120'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















