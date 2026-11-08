module

@[expose] public section

/-! Small `String` helpers (character-based; the inputs are short lines). -/

namespace String

def takeN (s : String) (n : Nat) : String := String.mk (s.toList.take n)
def dropN (s : String) (n : Nat) : String := String.mk (s.toList.drop n)
def takeWhileC (s : String) (p : Char → Bool) : String := String.mk (s.toList.takeWhile p)
def dropWhileC (s : String) (p : Char → Bool) : String := String.mk (s.toList.dropWhile p)
def dropRightN (s : String) (n : Nat) : String := String.mk (s.toList.take (s.length - n))
def dropRightWhileC (s : String) (p : Char → Bool) : String := String.mk (s.toList.reverse.dropWhile p).reverse
def trimWs (s : String) : String := (s.dropWhileC Char.isWhitespace).dropRightWhileC Char.isWhitespace
def lower (s : String) : String := String.mk (s.toList.map Char.toLower)
def allC (s : String) (p : Char → Bool) : Bool := s.toList.all p
/-- `after s sep`: the text after the first occurrence of `sep`, or `none`. -/
def after (s sep : String) : Option String :=
  match s.splitOn sep with
  | _ :: tl@(_ :: _) => some (String.intercalate sep tl)
  | _ => none
def has (s sub : String) : Bool := (s.splitOn sub).length > 1

end String
