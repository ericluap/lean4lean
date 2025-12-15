
structure NatStream where i := 0 deriving Inhabited

instance : Std.ToStream NatStream NatStream := ⟨id⟩
instance : Std.Stream NatStream Nat := ⟨fun ⟨r⟩ => some (r, ⟨r + 1⟩)⟩
