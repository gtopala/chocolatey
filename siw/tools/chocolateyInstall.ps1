
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
  checksum      = '62F2AC91CAFF3C77B3609F21D61E09AA6F59A4327161F5EBE66E338F68D95134'
  checksumType  = 'sha256'
  checksum64    = '62F2AC91CAFF3C77B3609F21D61E09AA6F59A4327161F5EBE66E338F68D95134'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















