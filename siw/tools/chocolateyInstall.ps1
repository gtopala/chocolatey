
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
  checksum      = '711E50D39F9DD959E337A5E537B60CD296869E0496F273DDE2BFD3171317E23E'
  checksumType  = 'sha256'
  checksum64    = '711E50D39F9DD959E337A5E537B60CD296869E0496F273DDE2BFD3171317E23E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















