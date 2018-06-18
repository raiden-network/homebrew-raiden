# homebrew-raiden

Homebrew Tap for Raiden

**Important note: reporting issues with any of these brews should be done at their respective repositories ([Raiden](https://github.com/raiden-network/raiden)).**

## Installation

```
$ brew tap raiden-network/raiden
```

```
$ brew install raiden
```

## Running

You should now be able to run the raiden network by using the following:
```
$ raiden
```


#### Important note when using --successful

If you get an error looking like this:
```
==> Cloning https://github.com/raiden-network/raiden.git
Updating /Library/Caches/Homebrew/raiden--git
fatal: reference is not a tree: <latest commit hash>
Error: Failed to download resource "raiden"
Failure while executing: git checkout -q -f
```

Try to delete the cache with `rm -rf /Library/Caches/Homebrew/raiden-git`


## Upgrading

```
brew update && brew upgrade
```

## Versions
List available versions with:
```
ls -l /usr/local/Cellar/raiden
```

If you have other versions installed, you can switch with:
```
brew switch raiden <version>
```
Or follow this [StackOverflow answer](http://stackoverflow.com/a/9832084/2639784)

These brews can be installed via the raw GitHub URLs, or by cloning this
repository locally with `brew tap raiden-network/raiden`. You can also install binary
bottles directly with `brew install <bottle_url>`.


## Troubleshooting

* Use `--verbose` to get more info while installing.
* Make sure to update XCode and the command line tools.
* Run `brew update` and `brew upgrade`
* Fix what the `brew doctor` says.
* Reinstall dependencies: `brew reinstall boost --c++11 --with-python`
* Make changes to `/usr/local/Library/Taps/raiden-network/homebrew-raiden/raiden.rb`
* Reinstall with `brew reinstall raiden.rb` (send a pull request!)
* Take a walk
