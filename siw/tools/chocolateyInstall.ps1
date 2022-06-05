
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
  checksum      = '5C44F400CF4EE7D55AF714396B978D9A534415B13C86440889E8AD272A415F06'
  checksumType  = 'sha256'
  checksum64    = '5C44F400CF4EE7D55AF714396B978D9A534415B13C86440889E8AD272A415F06'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















