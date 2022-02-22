
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
  checksum      = '6B740A6F43B93350798019B5B894465588CA64503AEA9D56B74F15A2C56E961C'
  checksumType  = 'sha256'
  checksum64    = '6B740A6F43B93350798019B5B894465588CA64503AEA9D56B74F15A2C56E961C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















