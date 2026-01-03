
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
  checksum      = '1F263444C63D8BA922ABA25A5E95003380AC706CD3F2DA8A6E8B50BD7EE92988'
  checksumType  = 'sha256'
  checksum64    = '1F263444C63D8BA922ABA25A5E95003380AC706CD3F2DA8A6E8B50BD7EE92988'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















