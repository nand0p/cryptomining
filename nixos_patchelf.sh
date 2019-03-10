#http://sandervanderburg.blogspot.com/2015/10/deploying-prebuilt-binary-software-with.html

patchelf --set-interpreter /nix/store/[hash]-glibc-2.27/lib/ld-linux-x86-64.so.2 ethminer

