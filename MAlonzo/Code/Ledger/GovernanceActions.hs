{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Ledger.GovernanceActions where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- _.Credential
d_Credential_22 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_22 = erased
-- _.Epoch
d_Epoch_102 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_102 = erased
-- _.UpdateT
d_UpdateT_144 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_UpdateT_144 = erased
-- _.ProtVer
d_ProtVer_150 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_ProtVer_150 = erased
-- _.RwdAddr
d_RwdAddr_154 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_168 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_ScriptHash_168 = erased
-- Ledger.GovernanceActions.maximum
d_maximum_480 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_480 ~v0 v1 = du_maximum_480 v1
du_maximum_480 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_480 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256
      (coe MAlonzo.Code.Data.Rational.Base.d__'8852'__320)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Ledger.Set.Theory.du_finiteness_214 v0))
-- Ledger.GovernanceActions.GovRole
d_GovRole_484 a0 = ()
data T_GovRole_484 = C_CC_486 | C_DRep_488 | C_SPO_490
-- Ledger.GovernanceActions.Voter
d_Voter_492 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Voter_492 = erased
-- Ledger.GovernanceActions.GovActionID
d_GovActionID_494 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovActionID_494 = erased
-- Ledger.GovernanceActions.VDeleg
d_VDeleg_496 a0 = ()
data T_VDeleg_496
  = C_credVoter_498 T_GovRole_484
                    MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_abstainRep_500 | C_noConfidenceRep_502
-- Ledger.GovernanceActions.Anchor
d_Anchor_504 a0 = ()
data T_Anchor_504
  = C_Anchor'46'constructor_1361 MAlonzo.Code.Agda.Builtin.String.T_String_6
                                 AgdaAny
-- Ledger.GovernanceActions.Anchor.url
d_url_510 ::
  T_Anchor_504 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_510 v0
  = case coe v0 of
      C_Anchor'46'constructor_1361 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.Anchor.hash
d_hash_512 :: T_Anchor_504 -> AgdaAny
d_hash_512 v0
  = case coe v0 of
      C_Anchor'46'constructor_1361 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovAction
d_GovAction_514 a0 = ()
data T_GovAction_514
  = C_NoConfidence_516 |
    C_NewCommittee_518 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                       MAlonzo.Code.Data.Rational.Base.T_ℚ_6 |
    C_NewConstitution_520 AgdaAny (Maybe AgdaAny) |
    C_TriggerHF_522 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_ChangePParams_524 AgdaAny |
    C_TreasuryWdrl_526 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Info_528
-- Ledger.GovernanceActions.actionWellFormed
d_actionWellFormed_530 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GovAction_514 -> Bool
d_actionWellFormed_530 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10 in
    coe
      (case coe v1 of
         C_ChangePParams_524 v3
           -> coe
                MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_484
                (MAlonzo.Code.Ledger.PParams.d_ppUpd_528
                   (coe
                      MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_750 (coe v0)))
                v3
         _ -> coe v2)
-- Ledger.GovernanceActions.NeedsHash
d_NeedsHash_534 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GovAction_514 -> ()
d_NeedsHash_534 = erased
-- Ledger.GovernanceActions.HashProtected
d_HashProtected_536 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> () -> ()
d_HashProtected_536 = erased
-- Ledger.GovernanceActions.Vote
d_Vote_540 a0 = ()
data T_Vote_540 = C_yes_542 | C_no_544 | C_abstain_546
-- Ledger.GovernanceActions.GovVote
d_GovVote_548 a0 = ()
data T_GovVote_548
  = C_GovVote'46'constructor_2985 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_Vote_540
                                  (Maybe T_Anchor_504)
-- Ledger.GovernanceActions.GovVote.gid
d_gid_558 ::
  T_GovVote_548 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_558 v0
  = case coe v0 of
      C_GovVote'46'constructor_2985 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.voter
d_voter_560 ::
  T_GovVote_548 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_560 v0
  = case coe v0 of
      C_GovVote'46'constructor_2985 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.vote
d_vote_562 :: T_GovVote_548 -> T_Vote_540
d_vote_562 v0
  = case coe v0 of
      C_GovVote'46'constructor_2985 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.anchor
d_anchor_564 :: T_GovVote_548 -> Maybe T_Anchor_504
d_anchor_564 v0
  = case coe v0 of
      C_GovVote'46'constructor_2985 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal
d_GovProposal_566 a0 = ()
data T_GovProposal_566
  = C_GovProposal'46'constructor_3297 T_GovAction_514 AgdaAny
                                      (Maybe AgdaAny) Integer
                                      MAlonzo.Code.Ledger.Address.T_RwdAddr_58 T_Anchor_504
-- Ledger.GovernanceActions.GovProposal.action
d_action_580 :: T_GovProposal_566 -> T_GovAction_514
d_action_580 v0
  = case coe v0 of
      C_GovProposal'46'constructor_3297 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.prevAction
d_prevAction_582 :: T_GovProposal_566 -> AgdaAny
d_prevAction_582 v0
  = case coe v0 of
      C_GovProposal'46'constructor_3297 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.policy
d_policy_584 :: T_GovProposal_566 -> Maybe AgdaAny
d_policy_584 v0
  = case coe v0 of
      C_GovProposal'46'constructor_3297 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.deposit
d_deposit_586 :: T_GovProposal_566 -> Integer
d_deposit_586 v0
  = case coe v0 of
      C_GovProposal'46'constructor_3297 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.returnAddr
d_returnAddr_588 ::
  T_GovProposal_566 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_588 v0
  = case coe v0 of
      C_GovProposal'46'constructor_3297 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.anchor
d_anchor_590 :: T_GovProposal_566 -> T_Anchor_504
d_anchor_590 v0
  = case coe v0 of
      C_GovProposal'46'constructor_3297 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState
d_GovActionState_592 a0 = ()
data T_GovActionState_592
  = C_GovActionState'46'constructor_3569 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                         MAlonzo.Code.Ledger.Address.T_RwdAddr_58 AgdaAny
                                         T_GovAction_514 AgdaAny
-- Ledger.GovernanceActions.GovActionState.votes
d_votes_604 ::
  T_GovActionState_592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_604 v0
  = case coe v0 of
      C_GovActionState'46'constructor_3569 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState.returnAddr
d_returnAddr_606 ::
  T_GovActionState_592 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_606 v0
  = case coe v0 of
      C_GovActionState'46'constructor_3569 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState.expiresIn
d_expiresIn_608 :: T_GovActionState_592 -> AgdaAny
d_expiresIn_608 v0
  = case coe v0 of
      C_GovActionState'46'constructor_3569 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState.action
d_action_610 :: T_GovActionState_592 -> T_GovAction_514
d_action_610 v0
  = case coe v0 of
      C_GovActionState'46'constructor_3569 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovActionState.prevAction
d_prevAction_612 :: T_GovActionState_592 -> AgdaAny
d_prevAction_612 v0
  = case coe v0 of
      C_GovActionState'46'constructor_3569 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_614 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_614 ~v0 = du_DecEq'45'GovRole_614
du_DecEq'45'GovRole_614 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_614
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_486
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_486
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_DRep_488
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_490
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_488
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_486
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_488
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_SPO_490
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_490
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_486
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_488
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_490
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_616 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_616 ~v0 = du_DecEq'45'Vote_616
du_DecEq'45'Vote_616 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_616
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_542
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_542
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_no_544
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_546
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_544
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_542
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_544
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_abstain_546
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_546
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_542
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_544
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_546
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_618 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_618 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v1 ->
            case coe v1 of
              C_credVoter_498 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_credVoter_498 v5 v6
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                       (coe
                                          MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                   (coe
                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_390
                                                      (coe v0)))))
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                (coe
                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_390
                                                   (coe v0))))
                                          (coe v6) (coe v3)))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                       (coe du_DecEq'45'GovRole_614) v5 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)
                                            erased)))
                          C_abstainRep_500
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_noConfidenceRep_502
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstainRep_500
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_credVoter_498 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstainRep_500
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_noConfidenceRep_502
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_noConfidenceRep_502
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_credVoter_498 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstainRep_500
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_noConfidenceRep_502
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
