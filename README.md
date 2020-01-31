# Presentation template

Based on [revealjs](https://github.com/hakimel/reveal.js). See inside `revealjs` folder.

Everything custom is in the `custom` folder. The entry point is `index.html`. Edit those files.

## Start the presentation

Get inside revealjs folder to run the app (`cd revealjs`), and then:

* `npm install` to install.
* `npm start` to run.

That will serve the presentation on `htttp://localhost:8000` and watch for _most_ changes.

## Update revealjs installation

```bash
rm -fr revealjs
git clone git@github.com:hakimel/reveal.js.git revealjs
rm -fr revealjs/.git
cd revealjs
ln -s ../custom .
ln -s ../index.html .
```
