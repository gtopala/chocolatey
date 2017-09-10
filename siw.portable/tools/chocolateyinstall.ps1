$packageName = 'siw.portable'
$url = 'https://www.gtopala.net/download/siw_tech.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url64 = 'https://www.gtopala.net/download/siw_tech.zip'
$checksum      = 'CE9F0D39EE43BBD733D3F96B36A42A99'
$checksumType  = 'md5'
 
Install-ChocolateyZipPackage $packageName $url $unzipLocation $url64 -Checksum $checksum -ChecksumType $checksumType

