
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
  checksum      = 'F3EBE036643C6B8E060E9C4E364F1FD333D1EE6FA4D549C8B89F27DD537DD20C'
  checksumType  = 'sha256'
  checksum64    = 'F3EBE036643C6B8E060E9C4E364F1FD333D1EE6FA4D549C8B89F27DD537DD20C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















