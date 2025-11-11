
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
  checksum      = '86CB5CCCFD20DEA398093889A98C60B15E25413FE17F11B620777175AC5FB1DA'
  checksumType  = 'sha256'
  checksum64    = '86CB5CCCFD20DEA398093889A98C60B15E25413FE17F11B620777175AC5FB1DA'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















