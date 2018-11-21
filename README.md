# DarkModeListener

A small cli tool to listen to dark mode changes on macOS Mojave.

## Installation

Installation via [Mint](https://github.com/yonaskolb/Mint):

```sh
mint install LinusU/DarkModeListener
```

## Usage

```sh
$ dark-mode-listener
light
dark
light
...
```

The program will start by printing a line with either `light` or `dark` depending on the current active mode. It will then print a new line whenever the value changes.
