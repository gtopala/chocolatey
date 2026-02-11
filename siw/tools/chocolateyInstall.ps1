
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
  checksum      = 'E371108BD9224209BE280281F45C9C8394278900E62580671C16E5D045CDB0F8'
  checksumType  = 'sha256'
  checksum64    = 'E371108BD9224209BE280281F45C9C8394278900E62580671C16E5D045CDB0F8'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















