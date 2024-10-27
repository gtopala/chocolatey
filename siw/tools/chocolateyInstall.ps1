
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
  checksum      = '79D3DCAE709BD936929C45B364F9AC48949A2CE74EC7C56C282202D00E3F5DD7'
  checksumType  = 'sha256'
  checksum64    = '79D3DCAE709BD936929C45B364F9AC48949A2CE74EC7C56C282202D00E3F5DD7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















