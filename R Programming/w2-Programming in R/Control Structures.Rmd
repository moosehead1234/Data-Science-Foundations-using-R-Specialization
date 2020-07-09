---
title: "Control Structures in R"

output:
  html_document:
    toc: true
    toc_float: true
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


Control structures in R allow you to control the flow of execution of the program, depending onruntime conditions. 

Most control structures are not used in interactive sessions, but rather when writing functions or longer expresisons.  

##If

if(<condition>){  
  do something  
}else{  
  do something else  
}


##For
for loops take an interator variable and assign it successive values from a sequence or vector. For loops are most commonly used for iterating over the elements of an object (list, vector, etc.)

This loop takes the i variable and in each iteration of the loop gives it values 1, 2, 3, ..., 10, and then
exits.

```{r}
for(i in 1:10){
  print(i)
}
```


Other examples

```{r}

x <- c("a", "b", "c", "d")

for(i in 1:4){
  print(x[i])
}

for(i in seq_along(x)){
  print(x[i])
}

for(letter in x){
  print(letter)
}

for(i in 1:4) print(x[i])


```

### Nested For Loops

```{r}
x <- matrix(1:6, 2, 3)
x
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

```

## While Loops


While loops begin by testing a condition. If it is true, then they execute the loop body. Once the loop body is executed, the condition is tested again, and so forth.

```{r}
count <- 0
while(count<10){
  print(count)
  count <- count +1
}


##Mutiple conditions
z <- 5
while(z >= 3 && z <= 10) {
 print(z)
 coin <- rbinom(1, 1, 0.5)
 if(coin == 1) { ## random walk
 z <- z + 1
 } else {
 z <- z - 1
 }
}


```



## Repeat


Repeat initiates an infinite loop; these are not commonly used in statistical applications but they do
have their uses. The only way to exit a repeat loop is to call **break**


### Next, Return

**next** is used to skip an iteration of a loop

```{r}
for(i in 1:100) {
 if(i <= 20) {
 ## Skip the first 20 iterations
 next
 }
 ## Do something here
}
```

**return** signals that a function should exit and return a given value.

## Use Cases: Control Structures

Control structures mentiond here are primarily useful for writing programs; for command-line interactive work, the **apply functions** are more useful.






