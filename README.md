# Riot.js and Redux example

This is an example of [Riot.js](http://riotjs.com) tag using [Redux](https://github.com/reactjs/redux).
Produces a Riot tag for a dynamic ASCII word clock:

![](./sample.png)

## Build

```bash
npm install
webpack -p
```

Minified tag script is in `dist/meet.js`

## Usage:
    <script src="./dist/qlock.js" charset="utf-8"></script>
    ...
    <qlock></qlock>

### Example:

    <qlock></qlock>
