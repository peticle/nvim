<a id="readme-top"></a>

<div align="center">
    <img src="neovim_logo.png" alt="The Neovim logo" width="100"/>
    <h3>My <i>Neovim</i> configuration!</h3>
    <p align="center">
        A repository to store, share and control the <br>versions my <strong>Neovim</strong> configuration !
    </p>
</div>

<details>
    <summary>Table of contents</summary>
    <ol>
        <li>
            <a href="#about-the-project">About the project</a>
            <ul>
                <li><a href="#keybindings">Keybindings</a></li>
            </ul>
        </li>
        <li>
            <a href="#getting-started">Getting started</a>
            <ul>
                <li><a href="#prerequisites">Prerequisites</a></li>
                <li><a href="#installation">Installation</a></li>
            </ul>
        </li>
        <li><a href="#contact">Contact</a></li>
    </ol>
</details>

## About the project

This repository contains my **Neovim** configuration.

The goal of it is to :

- Save the configuration
- Share the configuration accros my machines
- Control the versions of the configuration

<details>
    <summary><strong>LSP</strong></summary>
    <table>
        <tr>
            <th>Language</th>
            <th>LSP</th>
        </tr>
        <tr>
            <td><code>Bash</code></td>
            <td><code>bashls</code></td>
        </tr>
        <tr>
            <td><code>C</code></td>
            <td><code>clangd</code></td>
        </tr>
        <tr>
            <td><code>C++</code></td>
            <td><code>clangd</code></td>
        </tr>
        <tr>
            <td><code>C#</code></td>
            <td><code>csharp_ls</code></td>
        </tr>
        <tr>
            <td><code>CSS</code></td>
            <td><code>cssls</code></td>
        </tr>
        <tr>
            <td><code>Docker</code></td>
            <td><code>dockerls</code></td>
        </tr>
        <tr>
            <td><code>Docker compose</code></td>
            <td><code>docker_compose_language_service</code></td>
        </tr>
        <tr>
            <td><code>Go</code></td>
            <td><code>gopls</code></td>
        </tr>
        <tr>
            <td><code>Helm</code></td>
            <td><code>helm_ls</code></td>
        </tr>
        <tr>
            <td><code>HTML</code></td>
            <td><code>html</code></td>
        </tr>
        <tr>
            <td><code>JSON</code></td>
            <td><code>jsonls</code></td>
        </tr>
        <tr>
            <td><code>Java</code></td>
            <td><code>jdtls</code></td>
        </tr>
        <tr>
            <td><code>Lua</code></td>
            <td><code>luals</code></td>
        </tr>
        <tr>
            <td><code>Markdown</code></td>
            <td><code>marksman</code></td>
        </tr>
        <tr>
            <td><code>Python</code></td>
            <td><code>pyright</code></td>
        </tr>
        <tr>
            <td><code>PostgreSQL</code></td>
            <td><code>postgres_lsp</code></td>
        </tr>
        <tr>
            <td><code>SQL</code></td>
            <td><code>sqlls</code></td>
        </tr>
        <tr>
            <td><code>Terraform</code></td>
            <td><code>terraformls</code></td>
        </tr>
        <tr>
            <td><code>Typescript</code></td>
            <td><code>vtsls</code></td>
        </tr>
        <tr>
            <td><code>Vue</code></td>
            <td><code>vue_ls</code></td>
        </tr>
        <tr>
            <td><code>XML</code></td>
            <td><code>lemminx</code></td>
        </tr>
        <tr>
            <td><code>YAML</code></td>
            <td><code>yamlls</code></td>
        </tr>
    </table>
</details>

<details>
    <summary><strong>DAP</strong></summary>
    <table>
        <tr>
            <th>Language</th>
            <th>DAP</th>
        </tr>
        <tr>
            <td><code>Bash</code></td>
            <td><code>bash-debug-adapter</code></td>
        </tr>
        <tr>
            <td><code>C</code></td>
            <td><code>cpptools</code></td>
        </tr>
        <tr>
            <td><code>C++</code></td>
            <td><code>cpptools</code></td>
        </tr>
        <tr>
            <td><code>C#<code></td>
            <td><code>netcoredbg</code></td>
        </tr>
        <tr>
            <td><code>Java</code></td>
            <td><code>java-debug-adapter</code><code>java-test</code></td>
        </tr>
        <tr>
            <td><code>Javascript</code></td>
            <td><code>js-debug-adapter</code></td>
        </tr>
        <tr>
            <td><code>PHP</code></td>
            <td><code>php-debug-adapter</code></td>
        </tr>
        <tr>
            <td><code>Python</code></td>
            <td><code>debugpy</code></td>
        </tr>
    </table>
</details>

<details>
    <summary><strong>Linters</strong></summary>
    <table>
        <tr>
            <th>Language</th>
            <th>Linter</th>
        </tr>
        <tr>
            <td><code>Lua</code></td>
            <td><code>luacheck</code></td>
        </tr>
        <tr>
            <td><code>Javascript</code></td>
            <td><code>eslint_d</code></td>
        </tr>
        <tr>
            <td><code>Rust</code></td>
            <td><code>bacon</code></td>
        </tr>
        <tr>
            <td><code>Terraform</code></td>
            <td><code>terraform</code></td>
        </tr>
        <tr>
            <td><code>Typescript</code></td>
            <td><code>eslint_d</code></td>
        </tr>
    </table>
</details>

<details>
    <summary><strong>Formatters</strong></summary>
    <table>
        <tr>
            <th>Language</th>
            <th>Formatter</th>
        </tr>
        <tr>
            <td><code>C</code></td>
            <td><code>clang-format</code></td>
        </tr>
        <tr>
            <td><code>C++</code></td>
            <td><code>clang-format</code></td>
        </tr>
        <tr>
            <td><code>CMake</code></td>
            <td><code>cmake_lang</code></td>
        </tr>
        <tr>
            <td><code>CSS</code></td>
            <td><code>prettierd</code></td>
        </tr>
        <tr>
            <td><code>C#</code></td>
            <td><code>clang-format</code></td>
        </tr>
        <tr>
            <td><code>Go</code></td>
            <td><code>goimports</code><code>gofmt</code></td>
        </tr>
        <tr>
            <td><code>HTML</code></td>
            <td><code>prettierd</code></td>
        </tr>
        <tr>
            <td><code>Javascript</code></td>
            <td><code>prettierd</code></td>
        </tr>
        <tr>
            <td><code>JSON</code></td>
            <td><code>prettierd</code></td>
        </tr>
        <tr>
            <td><code>Lua</code></td>
            <td><code>stylua</code></td>
        </tr>
        <tr>
            <td><code>Markdown</code></td>
            <td><code>prettierd</code></td>
        </tr>
        <tr>
            <td><code>Python</code></td>
            <td><code>isort</code><code>black</code></td>
        </tr>
        <tr>
            <td><code>Rust</code></td>
            <td><code>rustfmt</code></td>
        </tr>
        <tr>
            <td><code>SCSS</code></td>
            <td><code>prettierd</code></td>
        </tr>
        <tr>
            <td><code>SQL</code></td>
            <td><code>sql-formatter</code></td>
        </tr>
        <tr>
            <td><code>Typescript</code></td>
            <td><code>prettierd</code></td>
        </tr>
        <tr>
            <td><code>Vue</code></td>
            <td><code>prettierd</code></td>
        </tr>
    </table>
</details>

### Keybindings

<details>
    <summary><strong>nvim-tree</strong></summary>
    <table>
        <tr>
            <th>Keybinding</th>
            <th>Mode</th>
            <th>Actions</th>
        </tr>
        <tr>
            <td><code>Leader, t, t</code></td>
            <td><code>NORMAL</code></td>
            <td>Toggle the tree window</td>
        </tr>
        <tr>
            <td><code>Leader, t, f</code></td>
            <td><code>NORMAL</code></td>
            <td>Focus the tree window</td>
        </tr>
    </table>
</details>

<details>
    <summary><strong>telescope.nvim</strong></summary>
    <table>
        <tr>
            <th>Keybinding</th>
            <th>Mode</th>
            <th>Actions</th>
        </tr>
        <tr>
            <td><code>Leader, f, f</code></td>
            <td><code>NORMAL</code></td>
            <td>Find a file</td>
        </tr>
        <tr>
            <td><code>Leader, f, g</code></td>
            <td><code>NORMAL</code></td>
            <td>Find a versionned file</td>
        </tr>
        <tr>
            <td><code>Leader, f, s</code></td>
            <td><code>NORMAL</code></td>
            <td>Find a text in the files</td>
        </tr>
        <tr>
            <td><code>Leader, f, s</code></td>
            <td><code>NORMAL</code></td>
            <td>Find a buffer</td>
        </tr>
        <tr>
            <td><code>Leader, f, h</code></td>
            <td><code>NORMAL</code></td>
            <td>Find a help tag</td>
        </tr>
    </table>
</details>

<details>
    <summary><strong>undotree</strong></summary>
    <table>
        <tr>
            <th>Keybinding</th>
            <th>Mode</th>
            <th>Actions</th>
        </tr>
        <tr>
            <td><code>Leader, u</code></td>
            <td><code>NORMAL</code></td>
            <td>Toggle the undotree window</td>
        </tr>
    </table>
</details>

<details>
    <summary><strong>fugitive.vim</strong></summary>
    <table>
        <tr>
            <th>Keybinding</th>
            <th>Mode</th>
            <th>Actions</th>
        </tr>
        <tr>
            <td><code>Leader, g, s</code></td>
            <td><code>NORMAL</code></td>
            <td>Open a summary window</td>
        </tr>
        <tr>
            <td><code>Leader, g, c</code></td>
            <td><code>NORMAL</code></td>
            <td>Open a window to edit commit</td>
        </tr>
        <tr>
            <td><code>Leader, g, p</code></td>
            <td><code>NORMAL</code></td>
            <td>Pushes the modifications</td>
        </tr>
        <tr>
            <td><code>Leader, g, d</code></td>
            <td><code>NORMAL</code></td>
            <td>Open a diff split window</td>
        </tr>
        <tr>
            <td><code>Leader, g, D</code></td>
            <td><code>NORMAL</code></td>
            <td>Open a window with diffs in the file</td>
        </tr>
        <tr>
            <td><code>Leader, g, b</code></td>
            <td><code>NORMAL</code></td>
            <td>Open a git blame window</td>
        </tr>
        <tr>
            <td><code>Leader, g, l</code></td>
            <td><code>NORMAL</code></td>
            <td>Open a window with the git logs</td>
        </tr>
    </table>
</details>

<details>
    <summary><strong>blink.cmp</strong></summary>
    <table>
        <tr>
            <th>Keybinding</th>
            <th>Mode</th>
            <th>Actions</th>
        </tr>
        <tr>
            <td><code>Ctrl + Space</code></td>
            <td><code>NORMAL</code></td>
            <td>Open the menu or the documentation if already open</td>
        </tr>
        <tr>
            <td><code>Ctrl + n / Ctrl + p</code></td>
            <td><code>NORMAL</code></td>
            <td>Select next / previous item</td>
        </tr>
        <tr>
            <td><code>Ctrl + e</code></td>
            <td><code>NORMAL</code></td>
            <td>Hide the menu</td>
        </tr>
        <tr>
            <td><code>Ctrl + k</code></td>
            <td><code>NORMAL</code></td>
            <td>Toggle the signature help</td>
        </tr>
    </table>
</details>

<details>
    <summary><strong>nvim_neoclip</strong></summary>
    <table>
        <tr>
            <th>Keybinding</th>
            <th>Mode</th>
            <th>Actions</th>
        </tr>
        <tr>
            <td><code>Leader, f, y</code></td>
            <td><code>NORMAL</code></td>
            <td>Search a yank with Telescope</td>
        </tr>
        <tr>
            <td><code>Ctrl + p</code></td>
            <td><code>NORMAL</code></td>
            <td>Paste the yank</td>
        </tr>
        <tr>
            <td><code>Ctrl + k</code></td>
            <td><code>NORMAL</code></td>
            <td>Paste the yank behind</td>
        </tr>
    </table>
</details>

<details>
    <summary><strong>Comment.nvim</strong></summary>
    <table>
        <tr>
            <th>Keybinding</th>
            <th>Mode</th>
            <th>Actions</th>
        </tr>
        <tr>
            <td><code>g, c, c</code></td>
            <td><code>NORMAL</code></td>
            <td>Toggle the current line using linewise comment</td>
        </tr>
        <tr>
            <td><code>g, b, c</code></td>
            <td><code>NORMAL</code></td>
            <td>Toggle the current line using blockwise comment</td>
        </tr>
        <tr>
            <td><code>g, c, o</code></td>
            <td><code>NORMAL</code></td>
            <td>Insert a comment on the next line and enter INSERT mode</td>
        </tr>
        <tr>
            <td><code>g, c, O</code></td>
            <td><code>NORMAL</code></td>
            <td>Insert a comment on the previous line and enter INSERT mode</td>
        </tr>
        <tr>
            <td><code>g, c, A</code></td>
            <td><code>NORMAL</code></td>
            <td>Insert a comment to the end of the line and enter INSERT mode</td>
        </tr>
        <tr>
            <td><code>g, c</code></td>
            <td><code>VISUAL</code></td>
            <td>Toggle the region using linewise comment</td>
        </tr>
        <tr>
            <td><code>g, b</code></td>
            <td><code>VISUAL</code></td>
            <td>Toggle the region using blockwise comment</td>
        </tr>
    </table>
</details>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Getting started

### Prerequisites

- [![Static Badge](https://img.shields.io/badge/CaskaydiaCove%20Nerd%20Font-gray)](https://www.nerdfonts.com/)
- [![Static Badge](https://img.shields.io/badge/systemd-v260-blue)](https://systemd.io/)

### Installation

1. Clone the repository

   ```sh
   git clone git@github.com:peticle/nvim.git $XDG_CONFIG_HOME/nvim
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Contact

Clément Petignat - contact@peticle.ch

<p align="right">(<a href="#readme-top">back to top</a>)</p>
