
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
  checksum      = 'A30447AD48CA73D5B576239DD7582A77D0DECD6C88C712841ADCA8688CFA5566'
  checksumType  = 'sha256'
  checksum64    = 'A30447AD48CA73D5B576239DD7582A77D0DECD6C88C712841ADCA8688CFA5566'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















