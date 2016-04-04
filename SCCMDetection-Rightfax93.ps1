$exit = $false
Do
{
	$procs = get-process | where {$_.processName -eq "_setup"}

	if ($procs -eq $null)
	{

		$exit = $true
	}
	else
	{
		$exit = $false
	}
}
while($exit -eq $false)


if(Test-Path "C:\Program Files (x86)\RightFax\Client\fuw32.exe")
{
	write-host "SUCCESS"
}
