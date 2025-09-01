namespace Spec

abbrev Octet := UInt8
abbrev Bytes := Array Octet

structure Hash where
  hash: Bytes -> Bytes
  L : Nat
  B : Nat
  deriving Inhabited

namespace SHA

def mk(L B : Nat) (h : Bytes -> Bytes) : Hash :=
  { hash := h, L := L, B := B }

def SHA1 (h : Bytes -> Bytes) : Hash :=
  mk 20 64 h

end SHA

end Spec
