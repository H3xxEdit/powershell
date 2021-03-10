Get-ChildItem C:\ -recurse -ErrorAction SilentlyContinue |
	select-object FullName,Length,Mode,CreationTimeUtc,LastAccessTimeUtc,LastWriteTimeUtc,Attributes |
	Export-Csv $env:HOMEDRIVE$env:HOMEPATH\Desktop\fl-$env:COMPUTERNAME.csv
	