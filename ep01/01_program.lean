def square (n : Nat) : Nat := n * n

def sumTo : Nat → Nat
  | 0     => 0
  | n + 1 => (n + 1) + sumTo n

#eval square 7
#eval sumTo 10

def main : IO Unit := do
  IO.println s!"7 squared = {square 7}"
  IO.println s!"0 + 1 + ... + 10 = {sumTo 10}"
