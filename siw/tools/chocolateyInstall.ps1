
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
  checksum      = 'C6A18724DB885B27E7FBF72E3B4047267EB51E20A18E88ABA9DB1FF0E9DD2A7E'
  checksumType  = 'sha256'
  checksum64    = 'C6A18724DB885B27E7FBF72E3B4047267EB51E20A18E88ABA9DB1FF0E9DD2A7E'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















