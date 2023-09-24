
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
  checksum      = '153F30A5ABD49F8B97D8AAD7943961C29FEE46ADEB5109928806FC016B980FE7'
  checksumType  = 'sha256'
  checksum64    = '153F30A5ABD49F8B97D8AAD7943961C29FEE46ADEB5109928806FC016B980FE7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















