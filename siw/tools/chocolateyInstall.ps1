
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
  checksum      = '7DB94C93F6896C5104F1B2809D1DAADEE7AFED09CCBFBD60BA911C6BFF796C19'
  checksumType  = 'sha256'
  checksum64    = '7DB94C93F6896C5104F1B2809D1DAADEE7AFED09CCBFBD60BA911C6BFF796C19'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















