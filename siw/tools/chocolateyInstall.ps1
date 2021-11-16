
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
  checksum      = 'BC5709E4BCBEA3BF30119B47D7B8FBB4A93398EB40B5B15345BF4BBFA90DADF5'
  checksumType  = 'sha256'
  checksum64    = 'BC5709E4BCBEA3BF30119B47D7B8FBB4A93398EB40B5B15345BF4BBFA90DADF5'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















