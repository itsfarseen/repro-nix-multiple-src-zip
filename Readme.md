# How to run

Run this to start a static file server `python -m http.server 8000`, so that nix can find the zip files.

Run `nix build`

Error:

```bash
$ nix build                                                                                                                                                                      13.854s 18:45
error: builder for '/nix/store/148aybzhywpnkh82p8fvdz3qd0n7k065-test.drv' failed with exit code 1;
       last 5 log lines:
       > unpacking sources
       > unpacking source archive /nix/store/9kyiq086c7hvyvyzlk7azc9s7saw6kbc-source
       > unpacking source archive /nix/store/zsahrfi6qpblxpi8v0i92n8v9rl2ihjd-source
       > cp: cannot create directory 'source/zsahrfi6qpblxpi8v0i92n8v9rl2ihjd-source': Permission denied
       > do not know how to unpack source archive /nix/store/zsahrfi6qpblxpi8v0i92n8v9rl2ihjd-source
       For full logs, run 'nix log /nix/store/148aybzhywpnkh82p8fvdz3qd0n7k065-test.drv'.
```
