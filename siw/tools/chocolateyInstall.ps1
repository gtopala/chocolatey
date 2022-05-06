
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
  checksum      = 'D805D32CB2345BAC35AEFF3EA5D565B312B8626C9877110C3BCC480EF87143CC'
  checksumType  = 'sha256'
  checksum64    = 'D805D32CB2345BAC35AEFF3EA5D565B312B8626C9877110C3BCC480EF87143CC'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















