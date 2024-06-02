
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
  checksum      = '53B13743C1DE397FDC2BD46F53CA4C65B9521463E45BE34DDBCDDA75891E0EE3'
  checksumType  = 'sha256'
  checksum64    = '53B13743C1DE397FDC2BD46F53CA4C65B9521463E45BE34DDBCDDA75891E0EE3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















