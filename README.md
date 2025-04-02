# Extract text from image

It extracts the text in a image and returns the text extracted.

## Requeriments

1. [tesseract-ocr](https://github.com/tesseract-ocr/tesseract)

To install it you have following options:

* Ubuntu/Debian:

```bash
$ sudo apt update && sudo apt install tesseract-ocr -y
```

* MacOs(with Homebrew):

```bash
$ brew install tesseract
```

2. Validate your language is available with following command:

```bash
$ tesseract --list-langs
```

3. If missing your language, you can install it with following command:

* Ubuntu/Debian:

```bash
$ sudo apt install tesseract-ocr-spa
```

* MacOs(with Homebrew):

```bash
$ brew install tesseract-lang
```

4. Install bundler gem

```bash
$ gem install bundler
```

## How to install the project?

To install this project, you can run following command:

```bash
$ bundle install
```

## How to run the project?

You can run the project with following command:

```bash
$ ruby app.rb
```

## Sources and bibliography

1. [Recognize text from an image in Ruby](https://medium.com/@k7aled.el3bady123/recognize-text-from-an-image-in-ruby-ebdfbe1ef3be)
2. [Tesseract documentation](https://tesseract-ocr.github.io/tessdoc/Command-Line-Usage.html#simplest-invocation-to-ocr-an-image)
3. [Languages supported by tesseract](https://tesseract-ocr.github.io/tessdoc/Data-Files-in-different-versions.html)
