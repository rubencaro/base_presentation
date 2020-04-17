# Presentation template

## Run the presentation

Just run the appropiate server, and the presentation will be available on `http://localhost:8080`.

- Linux: run `./serve_linux`
- Windows: run `serve_win.exe`
- Mac: run `./serve_darwin`

## Edit the presentation

Everything custom is in the `custom` folder. The entry point is `index.html`. Edit those files.

- `npm install` to install.
- `npm start` to run.

That will open the presentation on `http://localhost:3000`, watch for changes on your files, and reload the webpage.

## Used libraries

- [reveal.js](https://revealjs.com) for the presentation itself.
- [spark](https://github.com/rif/spark) for the final binary server.
- [browser-sync](https://www.browsersync.io) for the development server.

## Generate PDF

First, run the presentation. Ex. `./serve_linux`

```bash
# Generate the PDF inside a container courtesy of decktape
docker run -t --net=host astefanutti/decktape reveal --size 1920x1080 http://localhost:8080/?fragments=true slides.pdf
# Get the PDF out of the container and clean it up
docker cp $(docker ps -lq):slides.pdf .
docker rm $(docker ps -lq)
```

Now you have a `slides.pdf` file.
