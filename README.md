# Extract HearthPwn hpids

PowerShell script for extracting hpids for a set from HearthPwn, used for their tooltip library.

https://www.hearthpwn.com/tooltips

## Usage

Change $hpwnset to the HearthPwn set id you want to extract from, $set to the set name, and $saveLocation to where you want to save the file containting the data.

Run script in PowerShell with the command "& .\extract-hpids.ps1"

Data is saved as JSON in this format:

```
{"hpid":90546,"set":"ros","name":"Arch-Villain Rafaam"},
{"hpid":90567,"set":"ros","name":"Blastmaster Boom"},
{"hpid":90545,"set":"ros","name":"Chef Nomi"},
{"hpid":90623,"set":"ros","name":"Exotic Mountseller"},
{"hpid":90554,"set":"ros","name":"Swampqueen Hagatha"},
```
