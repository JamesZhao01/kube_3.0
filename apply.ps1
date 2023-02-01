$f=$args[0]
$res=Test-Path -Path $f -PathType Leaf
if (!$res) {
	throw "File $f does not exist"
} else {
	$res = (gc $f -Raw) -replace '\env:PAT', $env:PAT
	echo $res
}

