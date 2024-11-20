
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
  checksum      = '41489CE8F1472FC076DE5C3E35EA879724105C2F7B59120E9EF90046DE800D34'
  checksumType  = 'sha256'
  checksum64    = '41489CE8F1472FC076DE5C3E35EA879724105C2F7B59120E9EF90046DE800D34'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















