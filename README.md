# wdio

`docker-compose up app`

# Debug

## REPL

```bash
docker-compose run --rm app npx wdio repl chrome -h standalone-chrome-debug
```

## VNC

VNC Server allows you to visually see the browser being automated.
```bash
vncviewer
```

When you are prompted for the password it is *secret*.
