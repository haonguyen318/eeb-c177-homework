## Lecture Homework #3
### Part 1
###### 1. Find the number of winners for each Nobel prize (chemistry, economics, literature, medicine, peace, physics).
```
tail -n +2 nobel.csv | cut -d ',' -f 3 | sort -r | uniq -c
```
* chemistry: 181
* economics: 81
* literature: 114
* medicine: 216
* peace: 133
* physics: 210

###### 2. Find the winners of multiple Nobel prizes.
```
tail -n +2 nobel.csv | cut -d "," -f 5-6 | sort -k 6 | uniq -d
```
* Frederick, Sanger
* John, Bardeen
* Linus Carl, Pauling
* Marie, Curie
* Office of the United Nations High Commissioner for Refugees (UNHCR),NA
* Comité international de la Croix Rouge (International Committee of the Red Cross),NA

###### 3. Find the most common surnames among the winners.
```
tail -n +2 nobel.csv | cut -d "," -f 6 | sort | uniq -d
```
* Anderson
* Bardeen
* Bloch
* Bohr
* Bragg
* Brown
* Buck
* Chamberlain
* Curie
* Fischer
* Frank
* Friedman
* Hall
* Henderson
* Hess
* Hodgkin
* Hoffmann
* Jensen
* Kendall
* Kornberg
* Krebs
* Lee
* Lewis
* Marshall
* Mistral
* Moser
* Mott
* Müller
* Murad
* Myrdal
* NA
* Pauling
* Porter
* Richards
* Richardson
* Sanger
* Siegbahn
* Simon
* Smith
* Thomson
* Tinbergen
* Wiesel
* Williams
* Wilson

###### 4. The Nobel prizes have not been awarded every year since 1901. Which one has been awarded the most? Which the least?
```
tail -n +2 nobel.csv | cut -d "," -f 3 | sort -d | uniq -c | sort -g | head -n 1
tail -n +2 nobel.csv | cut -d "," -f 3 | sort -d | uniq -c | sort -g | tail -n 1
```
* economics: 81
* medicine: 216
