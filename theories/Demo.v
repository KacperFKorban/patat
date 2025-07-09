From Patat Require Import Patat.

Lemma test : (forall x : nat, True) -> True.
Proof.
  intros.
  pat `forall x, True` (apply pat).
  exact 0.
Qed.

Lemma test1 : (forall x : nat, True) -> True.
Proof.
  intros.
  spat `forall x, _` (apply spat).
  exact 0.
Qed.
