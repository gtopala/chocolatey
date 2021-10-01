
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
  checksum      = '2A5F16C337B425BD19BEBE620219FDC41CE9DECA1ED82C802AD5F9D88F3AA207'
  checksumType  = 'sha256'
  checksum64    = '2A5F16C337B425BD19BEBE620219FDC41CE9DECA1ED82C802AD5F9D88F3AA207'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















