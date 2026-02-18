
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
  checksum      = '25F721D7FA39A010265690591D1B663F137DF489BEF405B671E7D6CFC7E90066'
  checksumType  = 'sha256'
  checksum64    = '25F721D7FA39A010265690591D1B663F137DF489BEF405B671E7D6CFC7E90066'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















