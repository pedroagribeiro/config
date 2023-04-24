# Windows Subsystem for Linux

## Docker

Docker tends to make the distro take way to much space in the Windows disk. To
resolve that a periodic Docker cleanup is necessary. The cleanup is made up by 2
steps:

```bash
docker system prune --all
```

In the Powershell the wsl image must be compacted in order to retrieve the
recovered space, in my case the image is Ubuntu-22.04:

```Powershell
wslcompact -c Ubuntu-22.04
```

The previous command is reliant on the following awesome project:

- github.com/okibcn/wslcompact
