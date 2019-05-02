# Simple container running `asciidoctor`

The application asciidoctor will use `/doc` as the workdir. Be sure to mount a volume on this directory.

Build the container or pull from a registry
```
$ docker build -t asciidoctor .
```

Then use as follows:

```
$ docker run \
    -v $(pwd)/documentation:/doc \
    asciidoctor \
    -b html5 mything.asciidoc
