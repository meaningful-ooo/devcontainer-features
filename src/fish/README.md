
# fish (fish)

Installs fish shell and [Fisher][fisher] plugin manager and optionally [Fishtape][fishtape] test runner.

## Example Usage

```json
"features": {
    "ghcr.io/meaningful-ooo/devcontainer-features/fish:1": {
        "fishtape": true
    }
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| `fisher` | Install [Fisher][fisher] plugin manager | boolean | `true` |
| `fishtape` | Install [Fishtape][fishtape], 100% pure-Fish test runner | boolean | `false` |

---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/meaningful-ooo/devcontainer-features/blob/main/src/fish/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._

[fisher]: https://github.com/jorgebucaran/fisher
[fishtape]: https://github.com/jorgebucaran/fishtape
