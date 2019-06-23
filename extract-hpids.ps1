#PowerShell script for extracting hpids for a set from HearthPwn, used for their tooltip library
#https://www.hearthpwn.com/tooltips

$hpwnset = 115 			#HearthPwn set id
$set = "ros" 			#Set name
$pages = 2 				#Standard for 135 card sets
$saveLocation = "E:\"	#.txt file with hpids saved here
$hpids

for ($i = 1; $i -le $pages; $i++) {
	$url = "https://www.hearthpwn.com/cards?display=1&filter-premium=1&filter-set=" + $hpwnset + "&page=" + $i
	$body = Invoke-WebRequest -URI $url
	$data = $body.Links | Where-Object {$_.href -match "/cards/\d"} | select innerHTML,data-id
	$hpids += foreach ($attr in $data) { '{"hpid":' + $attr."data-id" + ',"set":"' + $set + '","name":"' + $attr.innerHTML + '"},' }
}

[IO.File]::WriteAllText($saveLocation + "hpids-" + $set + ".json",
                        $hpids -ne '' -join "`r`n",
                        [Text.Encoding]::UTF8)