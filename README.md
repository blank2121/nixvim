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
was clear as this is **Nix**Vim and not Vim or NeoVim, so you will need nix installed.

Final thing to say is there is a code version and a writing version which are nearly identical 
besides the color schemes and that the writer has fewer plugins as it doesn't need LSPs for code. 
To choose one or both, just use the same patters that is shown but where ever there is `#code` or 
`.code`, replace that with `#writer` or `.writer` respectively.

#### **Method 1: Add to NixOS flake (Recommended method)**
Just add it to your NixOS `flake.nix` file:

```nix
{
    inputs = {
        nixvim.url = "github:blank2121/nixvim";
        ...
    };
}
```

After, to install it as a package that can be used, add it to your `environment.systemPackages`

```nix
{ inputs, pkgs, ... }:

{
  environment.systemPackages = [
    inputs.nixvim.packages."${pkgs.system}".code
    ...
  ];
  ...
}
```

Note that if you are having `environment.systemPackages` in the `flake.nix` file, then do not do use `"${pkgs.system}"` but `"${system}"`

#### **Method 2: Running it**
You could not install it and just run it and to use the configuration, you won't need to clone the repository. All you need to do is run `nix run github:blank2121/nixvim#code -- <file>`

#### **Method 3: Adding it to Profile (NOT RECOMMENDED)**
To install it to your profile simply run `nix profile install github:blank2121/nixvim#code`

<br/>

If you want to remove it (or anything for that matter) from your profile run `nix profile list` then find the index that has `github:blank2121/nixvim` and then run `nix profile remove <index>` with the corresponding index.

---

## Attribution
Thank you to the NixVim maintainers [@GaetanLepage](https://github.com/GaetanLepage), [@traxys](https://github.com/traxys), [@MattSturgeon](https://github.com/MattSturgeon) for this amazing project and everyone that contributed to it.
