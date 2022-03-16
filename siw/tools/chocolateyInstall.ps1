
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
  checksum      = 'CEA5C18452F171BF31F057BA7510C4519DB061CDF753ECB987847B026CF25C8C'
  checksumType  = 'sha256'
  checksum64    = 'CEA5C18452F171BF31F057BA7510C4519DB061CDF753ECB987847B026CF25C8C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















