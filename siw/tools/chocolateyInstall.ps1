
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
  checksum      = 'E80B409297CDE2982C9A8AD02AE18BED60B22CAB7AA683ACE5B9F5A03CA09BB1'
  checksumType  = 'sha256'
  checksum64    = 'E80B409297CDE2982C9A8AD02AE18BED60B22CAB7AA683ACE5B9F5A03CA09BB1'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















