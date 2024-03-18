# Getting Started

## 🧰 tools

- [asdf](https://github.com/asdf-vm/asdf) v0.13.0+

## 💻 flutter env

### 📥 Install `asdf`

```shell
$ brew install asdf

# For bash
$ echo -e "\n. $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash" >> ~/.bash_profile

# For zsh
$ echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ~/.zshrc

# For fish
$ echo -e "\nsource "(brew --prefix asdf)"/asdf.fish" >> ~/.config/fish/config.fish
```

### 📥 Install `Flutter`

```shell
$ asdf plugin add flutter
$ asdf plugin add ruby
$ asdf install
$ asdf reshim
```

```shell
$ flutter --version
Flutter 3.19.2 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 7482962148 (2 days ago) • 2024-02-27 16:51:22 -0500
Engine • revision 04817c99c9
Tools • Dart 3.3.0 • DevTools 2.31.1

// 🙌 OK
```

### 📥 Install `Ruby`

```shell
$ ruby -v
ruby 3.2.1 (2023-02-08 revision 31819e82c8) [arm64-darwin23]
```

### Snippet (VSCode)

User Snippets → dart.json

```json
{
  ...
  "contract": {
    "prefix": "cont",
    "body": [
      "import 'package:freezed_annotation/freezed_annotation.dart';",
      "",
      "part '$TM_FILENAME_BASE.freezed.dart';",
      "",
      "@freezed",
      "class $1UiState with _\\$$1UiState {",
      "  const factory $1UiState({",
      "    ",
      "  }) = _$1UiState;",
      "}",
      "",
      "@freezed",
      "sealed class $1Action with _\\$$1Action {",
      "  const factory $1Action.sampleAction() = SampleAction;",
      "}",
      "",
      "@freezed",
      "sealed class $1Effect with _\\$$1Effect {",
      "  const factory $1Effect.none() = None;",
      "}",
    ]
  }
}
```