
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
  checksum      = '8CEC84239CA751A815B474682804F278F56FE759876EEE0074BF3FBA47A4B36C'
  checksumType  = 'sha256'
  checksum64    = '8CEC84239CA751A815B474682804F278F56FE759876EEE0074BF3FBA47A4B36C'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















