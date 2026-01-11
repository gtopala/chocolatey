
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
  checksum      = '4A60E27F22F306E1676C96EF7BCE650900FEF45CF93A8B09B96313C7B25BDA3C'
  checksumType  = 'sha256'
  checksum64    = '4A60E27F22F306E1676C96EF7BCE650900FEF45CF93A8B09B96313C7B25BDA3C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















