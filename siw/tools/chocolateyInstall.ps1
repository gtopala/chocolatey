
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
  checksum      = '8C8FE0DEB6B932A08FB2EF1030C4D53419C61335BC78DC46BA1FC2D702253594'
  checksumType  = 'sha256'
  checksum64    = '8C8FE0DEB6B932A08FB2EF1030C4D53419C61335BC78DC46BA1FC2D702253594'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















