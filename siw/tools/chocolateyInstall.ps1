
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
  checksum      = '508E7E7BCDDC8741E09514DECA887AF690088B290025CD46FE834B9E953581A3'
  checksumType  = 'sha256'
  checksum64    = '508E7E7BCDDC8741E09514DECA887AF690088B290025CD46FE834B9E953581A3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















