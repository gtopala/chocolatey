
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
  checksum      = '641333470F52317C0AF3547887CD4241A2B37CCA5A9B6635B63B75142A5FF208'
  checksumType  = 'sha256'
  checksum64    = '641333470F52317C0AF3547887CD4241A2B37CCA5A9B6635B63B75142A5FF208'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















