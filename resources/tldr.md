# tldr, the shorter man page

## Link
![https://github.com/tldr-pages/tldr](https://github.com/tldr-pages/tldr)

## What it is:

tldr is the shorter man page. There are many command line utilities that I 
run only once in a while, such as `tar`. I don't need the whole man page most 
of the time, and that's where tldr comes in.

## Example use

For example, if I want to work with tar, I can just type:

```
tldr tar
```
in my terminal and get the following concise output (note, I stripped the color
output for the sake of this readme):

```
tar

Archiving utility.
Often combined with a compression method, such as gzip or bzip2.
More information: <https://www.gnu.org/software/tar>.

- [c]reate an archive and write it to a [f]ile:
    tar cf path/to/target.tar path/to/file1 path/to/file2 ...

- [c]reate a g[z]ipped archive and write it to a [f]ile:
    tar czf path/to/target.tar.gz path/to/file1 path/to/file2 ...

- [c]reate a g[z]ipped archive from a directory using relative paths:
    tar czf path/to/target.tar.gz --directory=path/to/directory .

- E[x]tract a (compressed) archive [f]ile into the current directory [v]erbosely:
    tar xvf path/to/source.tar[.gz|.bz2|.xz]

- E[x]tract a (compressed) archive [f]ile into the target directory:
    tar xf path/to/source.tar[.gz|.bz2|.xz] --directory=path/to/directory

- [c]reate a compressed archive and write it to a [f]ile, using [a]rchive suffix to determine the compression program:
    tar caf path/to/target.tar.xz path/to/file1 path/to/file2 ...

- Lis[t] the contents of a tar [f]ile [v]erbosely:
    tar tvf path/to/source.tar

- E[x]tract files matching a pattern from an archive [f]ile:
    tar xf path/to/source.tar --wildcards "*.html"
```
