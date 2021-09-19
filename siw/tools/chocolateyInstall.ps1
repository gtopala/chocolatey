
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
  checksum      = 'C85DA64580F09466013B9F5B1ACAB67443F9ED027740037E446CEC2B4F6AD745'
  checksumType  = 'sha256'
  checksum64    = 'C85DA64580F09466013B9F5B1ACAB67443F9ED027740037E446CEC2B4F6AD745'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















