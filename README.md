This is an attractive resume template built with Typst, an open source LaTeX alternative written in Rust, that compiles to PDF.

To compile it to PDF, make sure `typst` is installed. The provided `flake.nix` and `.envrc` are useful if you have Nix and direnv installed. This template uses the Mulish font files in `assets/fonts`.

## Build Instructions

From the project root, run:

```bash
./build.sh
```

Or run Typst directly:

```bash
typst compile --font-path ./assets/fonts resume.typ resume.pdf
```
