
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
  checksum      = '93AB218E5C09009D85B893A7AEF09227FB47AFDE244C6F6E114563E7421E8DD0'
  checksumType  = 'sha256'
  checksum64    = '93AB218E5C09009D85B893A7AEF09227FB47AFDE244C6F6E114563E7421E8DD0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















