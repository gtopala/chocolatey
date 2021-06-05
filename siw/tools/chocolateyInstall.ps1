
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
  checksum      = '65C5FF4C0B19852695A98BA3FC067AED69EC851DB9535FD2AAFA24C2E38A5DD3'
  checksumType  = 'sha256'
  checksum64    = '65C5FF4C0B19852695A98BA3FC067AED69EC851DB9535FD2AAFA24C2E38A5DD3'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















