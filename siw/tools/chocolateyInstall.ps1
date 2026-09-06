
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
  checksum      = '06CBE8C8FFCCA524193A2DFA8AA8A5E61E5D1D2EDC00D20BFB086D547D6F4EDF'
  checksumType  = 'sha256'
  checksum64    = '06CBE8C8FFCCA524193A2DFA8AA8A5E61E5D1D2EDC00D20BFB086D547D6F4EDF'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs

















