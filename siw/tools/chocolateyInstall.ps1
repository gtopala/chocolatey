
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
  checksum      = '8F90DD3B57C607FAFA824F81CE6C441B4599D544A7EFF2978D12A334F3445708'
  checksumType  = 'sha256'
  checksum64    = '8F90DD3B57C607FAFA824F81CE6C441B4599D544A7EFF2978D12A334F3445708'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















