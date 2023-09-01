# tldr, the shorter man page

## What it is:

tldr is the shorter man page. There are many command line utilities that I 
run only once in a while, such as `tar`. I don't need the whole man page most 
of the time, and that's where tldr comes in.

## Example use

For example, if I want to work with tar, I can just type:

```
tldr tar
```
in my terminal and get the following concise output:

```

[1m[39mtar
[22m[39m
[39mArchiving utility.[22m[39m
[39mOften combined with a compression method, such as gzip or bzip2.[22m[39m
[39mMore information: <https://www.gnu.org/software/tar>.[22m[39m
[32m
- [c]reate an archive and write it to a [f]ile:[22m[39m
[31m    tar cf [22m[39m[34mpath/to/target.tar[39m[31m [22m[39m[34mpath/to/file1 path/to/file2 ...[39m[31m[22m[39m
[32m
- [c]reate a g[z]ipped archive and write it to a [f]ile:[22m[39m
[31m    tar czf [22m[39m[34mpath/to/target.tar.gz[39m[31m [22m[39m[34mpath/to/file1 path/to/file2 ...[39m[31m[22m[39m
[32m
- [c]reate a g[z]ipped archive from a directory using relative paths:[22m[39m
[31m    tar czf [22m[39m[34mpath/to/target.tar.gz[39m[31m --directory=[22m[39m[34mpath/to/directory[39m[31m .[22m[39m
[32m
- E[x]tract a (compressed) archive [f]ile into the current directory [v]erbosely:[22m[39m
[31m    tar xvf [22m[39m[34mpath/to/source.tar[.gz|.bz2|.xz][39m[31m[22m[39m
[32m
- E[x]tract a (compressed) archive [f]ile into the target directory:[22m[39m
[31m    tar xf [22m[39m[34mpath/to/source.tar[.gz|.bz2|.xz][39m[31m --directory=[22m[39m[34mpath/to/directory[39m[31m[22m[39m
[32m
- [c]reate a compressed archive and write it to a [f]ile, using [a]rchive suffix to determine the compression program:[22m[39m
[31m    tar caf [22m[39m[34mpath/to/target.tar.xz[39m[31m [22m[39m[34mpath/to/file1 path/to/file2 ...[39m[31m[22m[39m
[32m
- Lis[t] the contents of a tar [f]ile [v]erbosely:[22m[39m
[31m    tar tvf [22m[39m[34mpath/to/source.tar[39m[31m[22m[39m
[32m
- E[x]tract files matching a pattern from an archive [f]ile:[22m[39m
[31m    tar xf [22m[39m[34mpath/to/source.tar[39m[31m --wildcards "[22m[39m[34m*.html[39m[31m"[22m[39m
```
