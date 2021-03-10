Get-ChildItem C:\ -recurse -ErrorAction SilentlyContinue |
	where-object -FilterScript {$_.LastWriteTime -gt '2019-01-01'} |
	sort LastWriteTime -Descending |
	select-object FullName,Length,Mode,CreationTimeUtc,LastAccessTimeUtc,LastWriteTimeUtc,Attributes |
	Export-Csv $env:HOMEDRIVE$env:HOMEPATH\Desktop\fl-$env:COMPUTERNAME.csv
	