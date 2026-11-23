# Episode 01 — Introduction to Lean 4

**Riemann Hypothesis: 17 Million Lines. Who Checked It? | Lean 4**

Part of the [Computer Lens](https://www.youtube.com/@ComputerLens) Lean 4 tutorial series.

## About This Episode

Can a programming language verify mathematical proofs?

In this introductory episode, we explore Lean 4, its connection to recent AI-assisted mathematical research, and its role in formal verification.

We discuss the Riemann Hypothesis, the Navier–Stokes equations, and how proof assistants help mathematicians check complex arguments.

We also introduce Rocq, another important proof assistant.

Finally, we demonstrate Lean 4 using two examples in the Linux terminal.

## Files

| File | Description |
|---|---|
| `01_program.lean` | Demonstrates functions, calculations, and program execution |
| `02_proof.lean` | Demonstrates mathematical theorem verification |
| `wrong.lean` | Demonstrates Lean rejecting an intentionally incorrect theorem |

**Important:** `wrong.lean` contains a deliberately false mathematical statement. It is included for educational purposes and is expected to produce an error.

## Running the Programs

Make sure Lean 4 is installed.

Open a terminal in the `ep01` directory.

### Demo 1: Programming in Lean

```bash
lean 01_program.lean
lean --run 01_program.lean
```

The program demonstrates mathematical functions, including squaring a number and calculating a sum.

### Demo 2: Formal Verification

First, examine the difference between the correct and incorrect versions.

```bash
diff 02_proof.lean wrong.lean
```

Try checking the incorrect theorem:

```bash
lean wrong.lean
```

Lean should report an error because the requested proof is invalid.

Now check the correct theorem:

```bash
lean 02_proof.lean
```

Lean verifies the mathematical statements.

## What Have We Learned?

1. Lean 4 is a functional programming language.
2. Lean 4 is also an interactive theorem prover.
3. Lean checks whether a proposed proof establishes its stated theorem.
4. An invalid proof cannot pass Lean's verification merely because its author claims it is correct.

## Try It Yourself

Modify the mathematical statement in `wrong.lean`.

Can you make Lean accept the theorem without changing the proof tactic?

Share your observations in the YouTube comments.

## Next Episode

**Episode 02: Installing Lean 4 on Ubuntu and Arch Linux**

We will install Lean 4 from the command line and prepare our environment for future tutorials.

---

**Computer Lens**

Subscribe to think computationally.

https://www.youtube.com/@ComputerLens
