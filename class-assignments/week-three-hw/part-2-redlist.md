## Lecture Homework #3
### Part 2
###### 1. Count the number of occurrences for each category (EX, RE, etc.).
```
tail -n +2 European_Red_List.csv | cut -d "," -f 10 | sort -r | uniq -c
```
* 885 VU
* 8 RE
* 964 NT
* 4 NE
* 411 NA
* 5805 LC
* 29 EX
* 4 EW
* 687 EN
* 2409 DD
* 8 CR (PE)
* 456 CR

###### 2. Repeat the previous step, but only consider birds (class AVES).
```
tail -n +2 European_Red_List.csv | grep -w "AVES" | cut -d "," -f 10 | sort -r | uniq -c
```

* 39 VU
* 4 RE
* 32 NT
* 428 LC
* 2 EX
* 18 EN
* 10 CR

###### 3. For each order of birds, compute the number of extinct/near extinct (EX, RE or CE) species.
```
tail -n +2 European_Red_List.csv | grep -w "AVES" | cut -d "," -f 5,10 | grep -w -E "EX|RE|CE" | sort -r| uniq -c
```
* 1 SULIFORMES,RE
* 1 PELECANIFORMES,RE
* 1 PASSERIFORMES,RE
* 1 CHARADRIIFORMES,RE
* 2 CHARADRIIFORMES,EX
