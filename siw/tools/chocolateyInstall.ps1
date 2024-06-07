
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
  checksum      = '65EE890CCE0B260AB8C20F2FB8EE9CCD3A3EFAD98757AF2D40E849B19CA48992'
  checksumType  = 'sha256'
  checksum64    = '65EE890CCE0B260AB8C20F2FB8EE9CCD3A3EFAD98757AF2D40E849B19CA48992'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















