# Patat - shorthand matches for Coq proof scripts

> Patat – One of the names for the sweet potato in Polish.

Using Patat, you can pat the hypotheses in your Rocq proofs in a shorter way.

## Setup

### dune

Pin this repository:
```sh
opam pin add patat.dev https://github.com/kacperFKorban/patat.git
```

Add the dependency to your `dune-project`:
```dune
(depends
 (patat (= "dev"))
)
```

## Example

```coq
From Patat Require Import Patat.

Lemma test : (forall x : nat, True) -> True.
Proof.
  intros.
  pat `forall x, _` (apply pat).
  (* short for:
    match goal with
    | [ H : forall x : nat, True |- _ ] =>
      let pat := H in apply pat
    end
  *)
  exact 0.
Qed.
```

`rpat` searches matching hypotheses from oldest to newest:

```coq
Goal forall n m : nat, n = n -> m = m -> n = n.
Proof.
  intros n m Hn Hm.
  rpat `_ = _` at exact rpat.
Qed.
```

## Inspiration

Inspired by [`qpat_assum`](https://hol-theorem-prover.org/cheatsheet.html#assumption-management) from [HOL4](https://hol-theorem-prover.org/).
