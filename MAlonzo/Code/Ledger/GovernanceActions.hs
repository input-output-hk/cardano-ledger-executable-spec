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
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovStructure
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- _._+ᵉ_
d__'43''7497'__8 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__8 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d__'43''7497'__220
      (coe
         MAlonzo.Code.Ledger.GovStructure.d_epochStructure_416 (coe v0))
-- _.Credential
d_Credential_26 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_26 = erased
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_66 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'RwdAddr_66 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_66 v1 v2 v3
du_DecEq'45'RwdAddr_66 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'RwdAddr_66 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144 (coe v0)
      (coe v1) (coe v2)
-- _.Epoch
d_Epoch_98 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_Epoch_98 = erased
-- _.PParamGroup
d_PParamGroup_132 a0 = ()
-- _.PParams
d_PParams_134 a0 = ()
-- _.UpdateT
d_UpdateT_138 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_UpdateT_138 = erased
-- _.ProtVer
d_ProtVer_144 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_ProtVer_144 = erased
-- _.RwdAddr
d_RwdAddr_148 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_162 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_ScriptHash_162 = erased
-- _.applyUpdate
d_applyUpdate_200 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_200 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_408
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_454
         (coe MAlonzo.Code.Ledger.GovStructure.d_govParams_716 (coe v0)))
-- _.preoEpoch
d_preoEpoch_268 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_268 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_preoEpoch_46
      (coe
         MAlonzo.Code.Ledger.GovStructure.d_epochStructure_416 (coe v0))
-- Ledger.GovernanceActions.defer
d_defer_470 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_470 ~v0 = du_defer_470
du_defer_470 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_470
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__268
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.GovernanceActions.maximum
d_maximum_472 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_472 ~v0 v1 = du_maximum_472 v1
du_maximum_472 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_472 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256
      (coe MAlonzo.Code.Data.Rational.Base.d__'8852'__320)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Ledger.Set.Theory.du_finiteness_210 v0))
-- Ledger.GovernanceActions.GovActionID
d_GovActionID_476 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_GovActionID_476 = erased
-- Ledger.GovernanceActions.GovRole
d_GovRole_478 a0 = ()
data T_GovRole_478 = C_CC_480 | C_DRep_482 | C_SPO_484
-- Ledger.GovernanceActions.VDeleg
d_VDeleg_486 a0 = ()
data T_VDeleg_486
  = C_credVoter_488 T_GovRole_478
                    MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_abstainRep_490 | C_noConfidenceRep_492
-- Ledger.GovernanceActions.Anchor
d_Anchor_494 a0 = ()
data T_Anchor_494
  = C_Anchor'46'constructor_1351 MAlonzo.Code.Agda.Builtin.String.T_String_6
                                 AgdaAny
-- Ledger.GovernanceActions.Anchor.url
d_url_500 ::
  T_Anchor_494 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_500 v0
  = case coe v0 of
      C_Anchor'46'constructor_1351 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.Anchor.hash
d_hash_502 :: T_Anchor_494 -> AgdaAny
d_hash_502 v0
  = case coe v0 of
      C_Anchor'46'constructor_1351 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovAction
d_GovAction_504 a0 = ()
data T_GovAction_504
  = C_NoConfidence_506 |
    C_NewCommittee_508 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                       MAlonzo.Code.Data.Rational.Base.T_ℚ_6 |
    C_NewConstitution_510 AgdaAny (Maybe AgdaAny) |
    C_TriggerHF_512 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_ChangePParams_514 AgdaAny |
    C_TreasuryWdrl_516 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Info_518
-- Ledger.GovernanceActions.actionWellFormed
d_actionWellFormed_520 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GovAction_504 -> Bool
d_actionWellFormed_520 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10 in
    coe
      (case coe v1 of
         C_ChangePParams_514 v3
           -> coe
                MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_410
                (MAlonzo.Code.Ledger.PParams.d_ppUpd_454
                   (coe MAlonzo.Code.Ledger.GovStructure.d_govParams_716 (coe v0)))
                v3
         _ -> coe v2)
-- Ledger.GovernanceActions.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_526 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> T_GovRole_478 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_526 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_526 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_526 ::
  AgdaAny -> AgdaAny -> AgdaAny -> T_GovRole_478 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_526 v0 v1 v2 v3
  = case coe v3 of
      C_CC_480 -> coe v0
      C_DRep_482 -> coe v1
      C_SPO_484 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.threshold
d_threshold_536 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  T_GovAction_504 ->
  T_GovRole_478 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_536 v0 v1 v2 v3
  = case coe v3 of
      C_NoConfidence_506
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_526 (coe du_noVote_644)
             (coe
                du_vote_646
                (MAlonzo.Code.Ledger.PParams.d_P1_172
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v1))))
             (coe
                du_vote_646
                (MAlonzo.Code.Ledger.PParams.d_Q1_202
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_300 (coe v1))))
      C_NewCommittee_508 v4 v5 v6
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
               -> coe
                    du_'8739'_'8739'_'8739'_'8739'_526 (coe du_noVote_644)
                    (coe
                       du_vote_646
                       (MAlonzo.Code.Ledger.PParams.d_P2a_174
                          (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v1))))
                    (coe
                       du_vote_646
                       (MAlonzo.Code.Ledger.PParams.d_Q2a_204
                          (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_300 (coe v1))))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    du_'8739'_'8739'_'8739'_'8739'_526 (coe du_noVote_644)
                    (coe
                       du_vote_646
                       (MAlonzo.Code.Ledger.PParams.d_P2b_176
                          (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v1))))
                    (coe
                       du_vote_646
                       (MAlonzo.Code.Ledger.PParams.d_Q2b_206
                          (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_300 (coe v1))))
             _ -> MAlonzo.RTE.mazUnreachableError
      C_NewConstitution_510 v4 v5
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_526
             (coe du_vote_646 (coe du_ccThreshold_632 (coe v2)))
             (coe
                du_vote_646
                (MAlonzo.Code.Ledger.PParams.d_P3_178
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v1))))
             (coe du_noVote_644)
      C_TriggerHF_512 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_526
             (coe du_vote_646 (coe du_ccThreshold_632 (coe v2)))
             (coe
                du_vote_646
                (MAlonzo.Code.Ledger.PParams.d_P4_180
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v1))))
             (coe
                du_vote_646
                (MAlonzo.Code.Ledger.PParams.d_Q4_208
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_300 (coe v1))))
      C_ChangePParams_514 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_526
             (coe du_vote_646 (coe du_ccThreshold_632 (coe v2)))
             (coe du_vote_646 (coe du_P5_640 (coe v0) (coe v1) (coe v4)))
             (coe du_noVote_644)
      C_TreasuryWdrl_516 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_526
             (coe du_vote_646 (coe du_ccThreshold_632 (coe v2)))
             (coe
                du_vote_646
                (MAlonzo.Code.Ledger.PParams.d_P6_190
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v1))))
             (coe du_noVote_644)
      C_Info_518
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_526
             (coe du_vote_646 (coe du_defer_470))
             (coe du_vote_646 (coe du_defer_470))
             (coe du_vote_646 (coe du_defer_470))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions._.ccThreshold
d_ccThreshold_632 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ccThreshold_632 ~v0 ~v1 v2 = du_ccThreshold_632 v2
du_ccThreshold_632 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_ccThreshold_632 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1 -> coe v1
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe du_defer_470
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions._.pparamThreshold
d_pparamThreshold_638 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_140 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_pparamThreshold_638 ~v0 v1 ~v2 v3 = du_pparamThreshold_638 v1 v3
du_pparamThreshold_638 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_140 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_pparamThreshold_638 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.PParams.C_NetworkGroup_142
        -> coe
             MAlonzo.Code.Ledger.PParams.d_P5a_182
             (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v0))
      MAlonzo.Code.Ledger.PParams.C_EconomicGroup_144
        -> coe
             MAlonzo.Code.Ledger.PParams.d_P5b_184
             (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v0))
      MAlonzo.Code.Ledger.PParams.C_TechnicalGroup_146
        -> coe
             MAlonzo.Code.Ledger.PParams.d_P5c_186
             (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v0))
      MAlonzo.Code.Ledger.PParams.C_GovernanceGroup_148
        -> coe
             MAlonzo.Code.Ledger.PParams.d_P5d_188
             (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v0))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions._.P5
d_P5_640 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5_640 v0 v1 ~v2 v3 = du_P5_640 v0 v1 v3
du_P5_640 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_P5_640 v0 v1 v2
  = coe
      du_maximum_472
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe du_pparamThreshold_638 (coe v1))
         (coe
            MAlonzo.Code.Ledger.PParams.d_updateGroups_406
            (MAlonzo.Code.Ledger.PParams.d_ppUpd_454
               (coe MAlonzo.Code.Ledger.GovStructure.d_govParams_716 (coe v0)))
            v2))
-- Ledger.GovernanceActions._.noVote
d_noVote_644 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_noVote_644 ~v0 ~v1 ~v2 = du_noVote_644
du_noVote_644 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_noVote_644 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.GovernanceActions._.vote
d_vote_646 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_646 ~v0 ~v1 ~v2 = du_vote_646
du_vote_646 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_646 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.GovernanceActions.canVote
d_canVote_654 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_GovAction_504 -> T_GovRole_478 -> ()
d_canVote_654 = erased
-- Ledger.GovernanceActions.NeedsHash
d_NeedsHash_662 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GovAction_504 -> ()
d_NeedsHash_662 = erased
-- Ledger.GovernanceActions.HashProtected
d_HashProtected_664 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> () -> ()
d_HashProtected_664 = erased
-- Ledger.GovernanceActions.Vote
d_Vote_668 a0 = ()
data T_Vote_668 = C_yes_670 | C_no_672 | C_abstain_674
-- Ledger.GovernanceActions.GovVote
d_GovVote_676 a0 = ()
data T_GovVote_676
  = C_GovVote'46'constructor_8945 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  T_GovRole_478 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_Vote_668
                                  (Maybe T_Anchor_494)
-- Ledger.GovernanceActions.GovVote.gid
d_gid_688 ::
  T_GovVote_676 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_688 v0
  = case coe v0 of
      C_GovVote'46'constructor_8945 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.role
d_role_690 :: T_GovVote_676 -> T_GovRole_478
d_role_690 v0
  = case coe v0 of
      C_GovVote'46'constructor_8945 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.credential
d_credential_692 ::
  T_GovVote_676 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_credential_692 v0
  = case coe v0 of
      C_GovVote'46'constructor_8945 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.vote
d_vote_694 :: T_GovVote_676 -> T_Vote_668
d_vote_694 v0
  = case coe v0 of
      C_GovVote'46'constructor_8945 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.anchor
d_anchor_696 :: T_GovVote_676 -> Maybe T_Anchor_494
d_anchor_696 v0
  = case coe v0 of
      C_GovVote'46'constructor_8945 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal
d_GovProposal_698 a0 = ()
data T_GovProposal_698
  = C_GovProposal'46'constructor_9155 MAlonzo.Code.Ledger.Address.T_RwdAddr_58
                                      T_GovAction_504 AgdaAny Integer T_Anchor_494
-- Ledger.GovernanceActions.GovProposal.returnAddr
d_returnAddr_710 ::
  T_GovProposal_698 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_710 v0
  = case coe v0 of
      C_GovProposal'46'constructor_9155 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.action
d_action_712 :: T_GovProposal_698 -> T_GovAction_504
d_action_712 v0
  = case coe v0 of
      C_GovProposal'46'constructor_9155 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.prevAction
d_prevAction_714 :: T_GovProposal_698 -> AgdaAny
d_prevAction_714 v0
  = case coe v0 of
      C_GovProposal'46'constructor_9155 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.deposit
d_deposit_716 :: T_GovProposal_698 -> Integer
d_deposit_716 v0
  = case coe v0 of
      C_GovProposal'46'constructor_9155 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.anchor
d_anchor_718 :: T_GovProposal_698 -> T_Anchor_494
d_anchor_718 v0
  = case coe v0 of
      C_GovProposal'46'constructor_9155 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactEnv
d_EnactEnv_720 a0 = ()
data T_EnactEnv_720
  = C_'10214'_'44'_'44'_'10215''7497'_734 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          Integer AgdaAny
-- Ledger.GovernanceActions.EnactEnv.gid
d_gid_728 ::
  T_EnactEnv_720 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_728 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7497'_734 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactEnv.treasury
d_treasury_730 :: T_EnactEnv_720 -> Integer
d_treasury_730 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7497'_734 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactEnv.epoch
d_epoch_732 :: T_EnactEnv_720 -> AgdaAny
d_epoch_732 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7497'_734 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactState
d_EnactState_736 a0 = ()
data T_EnactState_736
  = C_EnactState'46'constructor_9681 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.GovernanceActions.EnactState.cc
d_cc_748 ::
  T_EnactState_736 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_748 v0
  = case coe v0 of
      C_EnactState'46'constructor_9681 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactState.constitution
d_constitution_750 ::
  T_EnactState_736 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_750 v0
  = case coe v0 of
      C_EnactState'46'constructor_9681 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactState.pv
d_pv_752 ::
  T_EnactState_736 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_752 v0
  = case coe v0 of
      C_EnactState'46'constructor_9681 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactState.pparams
d_pparams_754 ::
  T_EnactState_736 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_754 v0
  = case coe v0 of
      C_EnactState'46'constructor_9681 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactState.withdrawals
d_withdrawals_756 ::
  T_EnactState_736 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_756 v0
  = case coe v0 of
      C_EnactState'46'constructor_9681 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.ccCreds
d_ccCreds_758 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ccCreds_758 ~v0 v1 = du_ccCreds_758 v1
du_ccCreds_758 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_ccCreds_758 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
               -> coe
                    MAlonzo.Code.Interface.IsSet.du_dom_478
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1414
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.Axiom.Set.du_'8709'_424
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1414
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_792 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'GovRole_792 ~v0 = du_DecEq'45'GovRole_792
du_DecEq'45'GovRole_792 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'GovRole_792
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_480
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_480
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_DRep_482
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_484
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_482
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_480
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_482
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_SPO_484
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_484
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_480
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRep_482
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SPO_484
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
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
d_DecEq'45'Vote_794 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Vote_794 ~v0 = du_DecEq'45'Vote_794
du_DecEq'45'Vote_794 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'Vote_794
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_670
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_670
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_no_672
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_674
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_672
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_670
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_672
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_abstain_674
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_674
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_670
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_no_672
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstain_674
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
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
d_DecEq'45'VDeleg_796 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'VDeleg_796 v0
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v1 ->
            case coe v1 of
              C_credVoter_488 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_credVoter_488 v5 v6
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
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
                                             MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                   (coe
                                                      MAlonzo.Code.Ledger.GovStructure.d_crypto_372
                                                      (coe v0)))))
                                          (coe
                                             MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                (coe
                                                   MAlonzo.Code.Ledger.GovStructure.d_crypto_372
                                                   (coe v0))))
                                          (coe v6) (coe v3)))
                                    (coe
                                       MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                       (coe du_DecEq'45'GovRole_792) v5 v2))
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
                          C_abstainRep_490
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_noConfidenceRep_492
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstainRep_490
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_credVoter_488 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstainRep_490
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_noConfidenceRep_492
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_noConfidenceRep_492
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_credVoter_488 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_abstainRep_490
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_noConfidenceRep_492
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
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
-- Ledger.GovernanceActions._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__798 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'ENACT'10632'__798
  = C_Enact'45'NoConf_800 |
    C_Enact'45'NewComm_808 (AgdaAny ->
                            MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                            MAlonzo.Code.Data.Sum.Base.T__'8846'__30) |
    C_Enact'45'NewConst_810 | C_Enact'45'HF_812 |
    C_Enact'45'PParams_814 |
    C_Enact'45'Wdrl_820 MAlonzo.Code.Data.Nat.Base.T__'8804'__18 |
    C_Enact'45'Info_822
