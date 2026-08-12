# homebrew-clowder

Homebrew tap for [Clowder](https://getclowder.app) (cask auto-bumped by clowder release CI).

```sh
brew install --cask defiantsoftware/clowder/clowder
```

This repo also **hosts the signed DMG release assets**: the Clowder source repo is private, so its
own release assets aren't publicly downloadable.

`Casks/clowder.rb` is machine-written — it is regenerated from `scripts/homebrew/clowder.rb.tmpl` in
the source repo on every final release, so edit the template there, not this file.
