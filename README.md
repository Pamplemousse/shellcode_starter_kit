# Shellcode starter kit

Develop and test shellcodes locally.


## Contains

  * The source code for a tester program, to load the shellcode in memory and execute it;
  * A basic shellcode example to:
    * `open` the flag file,
    * Use `sendfile` to send data from the flag file file descriptor to the standard output, effectively printing the flag,
    * `exit` gracefully;
  * An example flag file for the kit to work out of the box.


## How to use

```
# compile the tester
gcc -o tester tester.c

# compile and extract the shellcode
as shellcode.s -o shellcode.o
objcopy --dump-section .text=shellcode shellcode.o

# run the shellcode using the tester
cat shellcode | ./tester
```

## Acknowledgements

This repo is just a formatting of the snippets provided by [@zardus](https://github.com/zardus) during the [Computer Systems Security (CSE466)](https://www.pwn.college/cse466/syllabus.html) class at [ASU](https://www.asu.edu/).
