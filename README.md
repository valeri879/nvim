# Neovim Configuration

A fast, clean, and minimal Neovim setup focused on modern web development and productivity. This configuration is built with **Lua**, uses **modern plugins**, and aims to stay simple, readable, and easy to extend.

---

## ✨ Features (Brief)

* 🚀 Fast startup and lightweight setup
* 🧠 LSP support with automatic installation
* 🎨 Clean UI with Gruvbox theme and Lualine statusline
* 🔍 Powerful fuzzy finding with Telescope
* 🌲 Syntax highlighting powered by Tree‑sitter
* 📁 File explorer with Nvim‑tree
* ⌨️ Convenient keymaps including ESC to exit terminal mode
* 🔧 Git integration, comments, auto pairs, and more

---

## 📦 Plugins Used

### 🎨 UI & Appearance

* **gruvbox** – Clean and eye‑friendly color scheme
* **lualine** – Fast and minimal statusline
* **indent-blankline** – Visual indentation guides

### 🧠 LSP & Autocompletion

* **mason** – Installs LSP servers, linters, and formatters
* **mason-lspconfig** – Bridges Mason with Neovim LSP
* **cmp (nvim-cmp)** – Autocompletion engine

### 🌲 Syntax & Editing

* **treesitter** – Advanced syntax highlighting and parsing
* **autopairs** – Automatically closes brackets, quotes, etc.
* **comments** – Easy commenting and uncommenting

### 🔍 Navigation & Files

* **telescope** – Fuzzy finder for files, text, buffers, and more
* **nvim-tree** – File explorer sidebar

### 🧑‍💻 Git

* **gitsigns** – Git diff signs, blame, and hunk actions

---

## 🛠 Requirements

* Neovim **0.9+** (recommended)
* Git
* A Nerd Font (for icons)

---

## 🚀 Installation

```bash
git clone <your-repo-url> ~/.config/nvim
```

Then open Neovim:

```bash
nvim
```

Plugins will be installed automatically on first launch.

---

## ⌨️ Key Bindings

### Terminal Mode

* **`<Esc>`** – Exit terminal mode and return to normal mode (instead of `<C-\><C-n>`)

### General Keymaps

* **`<leader> `** – Find files (Telescope)
* **`<leader>fg`** – Live grep (Telescope)
* **`<leader>fb`** – Show open buffers (Telescope)
* **`<leader>fh`** – Help tags (Telescope)
* **`<leader>e`** – Toggle file explorer (Nvim-tree)
* **`<leader>rn`** – Rename symbol (LSP)
* **`<leader>ca`** – Code actions (LSP)
* **`<leader>i`** – Show diagnostics in popup (LSP)

### LSP Navigation

* **`gd`** – Go to definition
* **`gD`** – Go to declaration
* **`gr`** – List all references
* **`gi`** – Go to implementation
* **`K`** – Show documentation (hover)
* **`<C-k>`** – Signature help
* **`[d`** – Previous diagnostic
* **`]d`** – Next diagnostic

> **Note:** `<leader>` is mapped to `<Space>` by default

---

## ⌨️ Philosophy

This setup is:

* Minimal but powerful
* Keyboard‑driven (mouse optional 😄)
* Easy to understand and customize

It’s designed for developers who want **full control** without unnecessary bloat.

---

## 📌 Notes

* Written fully in **Lua**
* No heavy frameworks
* Easy to extend with new plugins

---

## ⭐ Inspiration

Inspired by the Neovim community and modern IDE‑like workflows — but without losing Vim’s soul.

---

Feel free to fork, star ⭐, or adapt it to your own workflow.
