$packageName = 'siw.portable'
$url = 'https://www.gtopala.net/download/siw_tech.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url64 = 'https://www.gtopala.net/download/siw_tech.zip'
$checksum      = '121E9A0E0F23A5100437180C1827847E'
$checksumType  = 'md5'
 
Install-ChocolateyZipPackage $packageName $url $unzipLocation $url64 -Checksum $checksum -ChecksumType $checksumType

