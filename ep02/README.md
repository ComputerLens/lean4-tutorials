# Episode 02 — Install Lean 4 on Ubuntu & Arch Linux

Part of **Computer Lens — Lean 4 Tutorial: From Zero to Formal Proofs**.

This episode installs Lean 4 on Ubuntu and Arch Linux using **Elan**, checks the **Lean** compiler and **Lake** build tool, creates a Lean project, and verifies a small example. Ubuntu also demonstrates VS Code with the Lean 4 extension.

**Video:** [Computer Lens YouTube channel](https://www.youtube.com/@ComputerLens) (add the direct Episode 02 link after publication).

## Files

- [`QuickCheck.lean`](QuickCheck.lean) — exactly the source file demonstrated in Episode 02.

```lean
#eval (2 + 2 : Nat)
theorem two_plus_two : 2 + 2 = 4 := by decide
```

`#eval` computes the expression and prints `4`. The theorem asks Lean to check `2 + 2 = 4`; `by decide` provides a proof for this decidable proposition. When the file is accepted without errors, Lean prints no additional line for the theorem.

## 1. Prerequisites

### Ubuntu

```bash
sudo apt update
sudo apt install git curl wget
```

### Arch Linux

```bash
sudo pacman -Syu
sudo pacman -S --needed git curl
```

## 2. Install Lean through Elan (both distributions)

The following is the **official upstream Elan installer**. Read and trust the installer source before running a remote shell script.

```bash
curl https://elan.lean-lang.org/elan-init.sh -sSf | sh
```

Choose **1** for the default installation, then run:

```bash
source "$HOME/.elan/env"
elan --version
lean --version
lake --version
```

On first use, Elan may download the Lean toolchain. Versions and download times will vary.

## 3. Create and build a project

Run these commands once in a location where `LeanEpisode02` does not already exist:

```bash
mkdir -p ~/Lean
cd ~/Lean
lake new LeanEpisode02
cd LeanEpisode02
lake build
```

Copy the example from this GitHub checkout into the new project. Run the following from the **repository root** (the directory containing `ep02/`):

```bash
cp ep02/QuickCheck.lean ~/Lean/LeanEpisode02/
```

Then run:

```bash
cd ~/Lean/LeanEpisode02
lake env lean QuickCheck.lean
```

Expected output from the example:

```text
4
```

The theorem does not print a second line when verification succeeds.

## 4. VS Code (Ubuntu demonstration)

On Ubuntu, the episode installs Microsoft's Visual Studio Code using its `.deb` package:

```bash
cd /tmp
wget -O code.deb 'https://go.microsoft.com/fwlink/?LinkID=760868'
sudo apt install ./code.deb
rm code.deb
cd ~
code --install-extension leanprover.lean4
```

To open the project in VS Code:

```bash
cd ~/Lean/LeanEpisode02
code .
```

Arch Linux users can install the official Arch `code` package (the open-source **Code–OSS** build), though the video focuses on terminal verification on Arch:

```bash
sudo pacman -S --needed code
```

The Lean extension must also be installed in the editor being used; extension-gallery availability may differ between the Microsoft and Code–OSS builds.

## Notes

- This repository contains the reproducible example, **not** installation screen recordings or downloaded toolchains.
- Your exact package versions and terminal messages may differ from the video.
- `lake new` generates its own `lean-toolchain` and project files; this repository does not commit a generated build directory.
- If `LeanEpisode02` already exists, reuse it instead of running `lake new` again.

[Back to the tutorial series](../README.md)
