# Republican Ada GNAT

Packaging of [ave1's GNAT](http://ave1.org/category/ada/) inside an Alpine-based Docker image.

The mystery turdball downloaded while building the image is one of the four artifacts produced after following
the steps outlined at [his blog](http://ave1.org/2018/building-gnat-on-musl-no-more-usrincludex86_64-linux-gnu/).


### Sample Usage

```bash
$ docker run --rm -it -v $(pwd)/ffa_ch1:/root/ffa_ch1 1maa/repgnat:20180924 sh -l
50039cbb0f03:~# cd ffa_ch1/ffa/ffademo/
50039cbb0f03:~/ffa_ch1/ffa/ffademo# gprbuild
using project file ffa_demo.gpr
Compile
   [Ada]          ffa_demo.adb
   [Ada]          demo_ch1.adb
   [Ada]          ffa_io.adb
Bind
   [gprbind]      ffa_demo.bexch
   [Ada]          ffa_demo.ali
Link
   [link]         ffa_demo.adb
50039cbb0f03:~/ffa_ch1/ffa/ffademo# ldd ./bin/ffa_demo
ldd: bin/ffa_demo: Not a valid dynamic program
50039cbb0f03:~/ffa_ch1/ffa/ffademo# ./bin/ffa_demo
X         =
0000000000000000000000000000000000000000000000000000000000000000
Y         =
0000000000000000000000000000000000000000000000000000000000005555
X + Y     =
0000000000000000000000000000000000000000000000000000000000005555
C         =  0
X - Y     =
FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAB
C         =  1
```
