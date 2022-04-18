# Transform a video into a gif

This is useful for things like short demos to be included in Pull Requests

```
ffmpeg -i "$1" -r 10 -f gif - | gifsicle > out.gif
```
