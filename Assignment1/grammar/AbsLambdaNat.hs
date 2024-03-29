

module AbsLambdaNat where

-- Haskell module generated by the BNF converter




newtype Id = Id String deriving (Eq, Ord, Show, Read)
data Program = Prog Exp
  deriving (Eq, Ord, Show, Read)

data Exp
    = EAbs Id Exp
    | EIf Exp Exp Exp Exp
    | ELet Id Exp Exp
    | ERec Id Exp Exp
    | EHd Exp
    | ETl Exp
    | EMinusOne Exp
    | EApp Exp Exp
    | ENil
    | ECons Exp Exp
    | ENat0
    | ENatS Exp
    | EVar Id
    | EFix Exp
  deriving (Eq, Ord, Show, Read)

