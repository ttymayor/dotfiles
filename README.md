# tantuyu's dotfiles

這是我筆電（Arch Linux）某些配置，用來備份與同步，如果你也想套用某些配置也可以使用。

## 安裝

> 使用 stow 進行安裝，請先確認系統擁有 stow 工具。

```bash
git clone https://github.com/tantuyu/dotfiles.git
cd dotfiles
```

依自己需求套用配置：

```bash
stow -v -t ~ fish
stow -v -t ~ ghostty
stow -v -t ~ starship
stow -v -t ~ <other_directory>
```

## 當前目錄

```
.
├── fish
├── ghostty
└── starship
```
