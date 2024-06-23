
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
  checksum      = 'C75979B76E9FBB22A70CF495E34664CD4BD77C9BB8E7B81F89EE0249FCDCBD25'
  checksumType  = 'sha256'
  checksum64    = 'C75979B76E9FBB22A70CF495E34664CD4BD77C9BB8E7B81F89EE0249FCDCBD25'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















