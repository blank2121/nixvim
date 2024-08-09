<h1 style="text-align: center;">My NixVim Config</h1>

<h2 align="center">
  <picture>
    <img src="./assets/nixvim_icon.svg" width="25%" />
  </picture>
</h2>

> <p style="text-align: center;">"stole" this svg from [NixVim](https://github.com/nix-community/nixvim/) repo</p>

---

<h2 style="text-align: center;">Sneak Peak</h3>

<img src="./assets/main1.png"/>
<img src="./assets/main2.png"/>
<img src="./assets/main3.png"/>

---

## Installation
If you would like to use this, there are three ways to do so. Hopefully it 
was clear as this is **Nix**Vim and not Vim or NeoVim, but you will need nix installed.

#### **Method 1: Running it**
You could not install it and just run it and to use the configuration, you won't need to clone the repository. All you need to do is run `nix run github:blank2121/nixvim# -- <file>`

<br/>

Additionally, if you want to clone this repository and edit and run it there then run in the folder `nix run .# -- <file>`

#### **Method 2: Adding it to Profile**
To install it to your profile simply run `nix profile install github:blank2121/nixvim`

<br/>

If you want to remove it (or anything for that matter) from your profile run `nix profile list` then find the index that has `github:blank2121/nixvim` and then run `nix profile remove <index>` with the corresponding index.

---

## Attribution
Thank you to the NixVim maintainers [@GaetanLepage](https://github.com/GaetanLepage), [@traxys](https://github.com/traxys), [@MattSturgeon](https://github.com/MattSturgeon) for this amazing project and everyone that contributed to it.
