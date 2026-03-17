
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
  checksum      = 'E245041B33A6185187E8D19F2CB459D3542C5F369F480A1B5E183BBED29D364F'
  checksumType  = 'sha256'
  checksum64    = 'E245041B33A6185187E8D19F2CB459D3542C5F369F480A1B5E183BBED29D364F'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















