# wrkhse/tap

This tap carries Homebrew formulas for released Workhorse products. Add the
tap and install a product with `brew install wrkhse/tap/<name>`.

```bash
brew tap wrkhse/tap
brew install wrkhse/tap/tack
```

## Updates

Each product's release job renders the formula from that release's
SHA256SUMS, runs brew audit and the install test on macOS, then pushes it
here. Every formula pull request runs brew style, brew audit --strict
--online, brew install and brew test on a macOS runner.
