From Patat Require Import Patat.

Goal (forall x : nat, True) -> True.
Proof.
  intros.
  pat `forall x, True` at apply pat.
  exact 0.
Qed.

Goal (forall x : nat, True) -> True.
Proof.
  intros.
  pat `forall x, True` as p at apply p.
  exact 0.
Qed.

Goal (forall x : nat, True) -> True.
Proof.
  intros.
  spat `forall x, _` at apply spat.
  exact 0.
Qed.

Goal forall n m : nat, n = n -> m = m -> n = n.
Proof.
  intros n m Hn Hm.
  rpat `_ = _` at exact rpat.
Qed.
