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
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Properties
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.Decidable.Instance
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
         MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412 (coe v0))
-- _.Credential
d_Credential_26 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_26 = erased
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
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_404
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_444
         (coe MAlonzo.Code.Ledger.GovStructure.d_govParams_708 (coe v0)))
-- Ledger.GovernanceActions.defer
d_defer_464 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_464 ~v0 = du_defer_464
du_defer_464 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_464
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__260
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_172)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_172)
-- Ledger.GovernanceActions.maximum
d_maximum_466 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_466 ~v0 v1 = du_maximum_466 v1
du_maximum_466 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_466 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256
      (coe MAlonzo.Code.Data.Rational.Base.d__'8852'__312)
      (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_170)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Ledger.Set.Theory.du_finiteness_210 v0))
-- Ledger.GovernanceActions.GovActionID
d_GovActionID_470 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_GovActionID_470 = erased
-- Ledger.GovernanceActions.GovRole
d_GovRole_472 a0 = ()
data T_GovRole_472 = C_CC_474 | C_DRep_476 | C_SPO_478
-- Ledger.GovernanceActions.VDeleg
d_VDeleg_480 a0 = ()
data T_VDeleg_480
  = C_credVoter_482 T_GovRole_472
                    MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_abstainRep_484 | C_noConfidenceRep_486
-- Ledger.GovernanceActions.Anchor
d_Anchor_488 a0 = ()
data T_Anchor_488
  = C_Anchor'46'constructor_1319 MAlonzo.Code.Agda.Builtin.String.T_String_6
                                 AgdaAny
-- Ledger.GovernanceActions.Anchor.url
d_url_494 ::
  T_Anchor_488 -> MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_494 v0
  = case coe v0 of
      C_Anchor'46'constructor_1319 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.Anchor.hash
d_hash_496 :: T_Anchor_488 -> AgdaAny
d_hash_496 v0
  = case coe v0 of
      C_Anchor'46'constructor_1319 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovAction
d_GovAction_498 a0 = ()
data T_GovAction_498
  = C_NoConfidence_500 |
    C_NewCommittee_502 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                       MAlonzo.Code.Data.Rational.Base.T_ℚ_6 |
    C_NewConstitution_504 AgdaAny (Maybe AgdaAny) |
    C_TriggerHF_506 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_ChangePParams_508 AgdaAny |
    C_TreasuryWdrl_510 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Info_512
-- Ledger.GovernanceActions.actionWellFormed
d_actionWellFormed_514 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GovAction_498 -> Bool
d_actionWellFormed_514 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10 in
    case coe v1 of
      C_ChangePParams_508 v3
        -> coe
             MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_406
             (MAlonzo.Code.Ledger.PParams.d_ppUpd_444
                (coe MAlonzo.Code.Ledger.GovStructure.d_govParams_708 (coe v0)))
             v3
      _ -> coe v2
-- Ledger.GovernanceActions.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_520 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> T_GovRole_472 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_520 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_520 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_520 ::
  AgdaAny -> AgdaAny -> AgdaAny -> T_GovRole_472 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_520 v0 v1 v2 v3
  = case coe v3 of
      C_CC_474 -> coe v0
      C_DRep_476 -> coe v1
      C_SPO_478 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.threshold
d_threshold_530 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  T_GovAction_498 ->
  T_GovRole_472 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_530 v0 v1 v2 v3
  = case coe v3 of
      C_NoConfidence_500
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_520 (coe du_noVote_638)
             (coe
                du_vote_640
                (MAlonzo.Code.Ledger.PParams.d_P1_172
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v1))))
             (coe
                du_vote_640
                (MAlonzo.Code.Ledger.PParams.d_Q1_202
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_300 (coe v1))))
      C_NewCommittee_502 v4 v5 v6
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
               -> coe
                    du_'8739'_'8739'_'8739'_'8739'_520 (coe du_noVote_638)
                    (coe
                       du_vote_640
                       (MAlonzo.Code.Ledger.PParams.d_P2a_174
                          (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v1))))
                    (coe
                       du_vote_640
                       (MAlonzo.Code.Ledger.PParams.d_Q2a_204
                          (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_300 (coe v1))))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    du_'8739'_'8739'_'8739'_'8739'_520 (coe du_noVote_638)
                    (coe
                       du_vote_640
                       (MAlonzo.Code.Ledger.PParams.d_P2b_176
                          (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v1))))
                    (coe
                       du_vote_640
                       (MAlonzo.Code.Ledger.PParams.d_Q2b_206
                          (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_300 (coe v1))))
             _ -> MAlonzo.RTE.mazUnreachableError
      C_NewConstitution_504 v4 v5
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_520
             (coe du_vote_640 (coe du_ccThreshold_626 (coe v2)))
             (coe
                du_vote_640
                (MAlonzo.Code.Ledger.PParams.d_P3_178
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v1))))
             (coe du_noVote_638)
      C_TriggerHF_506 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_520
             (coe du_vote_640 (coe du_ccThreshold_626 (coe v2)))
             (coe
                du_vote_640
                (MAlonzo.Code.Ledger.PParams.d_P4_180
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v1))))
             (coe
                du_vote_640
                (MAlonzo.Code.Ledger.PParams.d_Q4_208
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_300 (coe v1))))
      C_ChangePParams_508 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_520
             (coe du_vote_640 (coe du_ccThreshold_626 (coe v2)))
             (coe du_vote_640 (coe du_P5_634 (coe v0) (coe v1) (coe v4)))
             (coe du_noVote_638)
      C_TreasuryWdrl_510 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_520
             (coe du_vote_640 (coe du_ccThreshold_626 (coe v2)))
             (coe
                du_vote_640
                (MAlonzo.Code.Ledger.PParams.d_P6_190
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v1))))
             (coe du_noVote_638)
      C_Info_512
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_520
             (coe du_vote_640 (coe du_defer_464))
             (coe du_vote_640 (coe du_defer_464))
             (coe du_vote_640 (coe du_defer_464))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions._.ccThreshold
d_ccThreshold_626 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ccThreshold_626 ~v0 ~v1 v2 = du_ccThreshold_626 v2
du_ccThreshold_626 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_ccThreshold_626 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1 -> coe v1
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe du_defer_464
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions._.pparamThreshold
d_pparamThreshold_632 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_140 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_pparamThreshold_632 ~v0 v1 ~v2 v3 = du_pparamThreshold_632 v1 v3
du_pparamThreshold_632 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_140 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_pparamThreshold_632 v0 v1
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
d_P5_634 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5_634 v0 v1 ~v2 v3 = du_P5_634 v0 v1 v3
du_P5_634 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_P5_634 v0 v1 v2
  = coe
      du_maximum_466
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe du_pparamThreshold_632 (coe v1))
         (coe
            MAlonzo.Code.Ledger.PParams.d_updateGroups_402
            (MAlonzo.Code.Ledger.PParams.d_ppUpd_444
               (coe MAlonzo.Code.Ledger.GovStructure.d_govParams_708 (coe v0)))
            v2))
-- Ledger.GovernanceActions._.noVote
d_noVote_638 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_noVote_638 ~v0 ~v1 ~v2 = du_noVote_638
du_noVote_638 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_noVote_638 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.GovernanceActions._.vote
d_vote_640 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_640 ~v0 ~v1 ~v2 = du_vote_640
du_vote_640 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_640 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.GovernanceActions.canVote
d_canVote_648 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_GovAction_498 -> T_GovRole_472 -> ()
d_canVote_648 = erased
-- Ledger.GovernanceActions.NeedsHash
d_NeedsHash_656 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GovAction_498 -> ()
d_NeedsHash_656 = erased
-- Ledger.GovernanceActions.HashProtected
d_HashProtected_658 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> () -> ()
d_HashProtected_658 = erased
-- Ledger.GovernanceActions.Vote
d_Vote_662 a0 = ()
data T_Vote_662 = C_yes_664 | C_no_666 | C_abstain_668
-- Ledger.GovernanceActions.GovVote
d_GovVote_670 a0 = ()
data T_GovVote_670
  = C_GovVote'46'constructor_8875 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  T_GovRole_472 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 T_Vote_662
                                  (Maybe T_Anchor_488)
-- Ledger.GovernanceActions.GovVote.gid
d_gid_682 ::
  T_GovVote_670 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_682 v0
  = case coe v0 of
      C_GovVote'46'constructor_8875 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.role
d_role_684 :: T_GovVote_670 -> T_GovRole_472
d_role_684 v0
  = case coe v0 of
      C_GovVote'46'constructor_8875 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.credential
d_credential_686 ::
  T_GovVote_670 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_credential_686 v0
  = case coe v0 of
      C_GovVote'46'constructor_8875 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.vote
d_vote_688 :: T_GovVote_670 -> T_Vote_662
d_vote_688 v0
  = case coe v0 of
      C_GovVote'46'constructor_8875 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovVote.anchor
d_anchor_690 :: T_GovVote_670 -> Maybe T_Anchor_488
d_anchor_690 v0
  = case coe v0 of
      C_GovVote'46'constructor_8875 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal
d_GovProposal_692 a0 = ()
data T_GovProposal_692
  = C_GovProposal'46'constructor_9083 MAlonzo.Code.Ledger.Address.T_RwdAddr_58
                                      T_GovAction_498 AgdaAny Integer T_Anchor_488
-- Ledger.GovernanceActions.GovProposal.returnAddr
d_returnAddr_704 ::
  T_GovProposal_692 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_704 v0
  = case coe v0 of
      C_GovProposal'46'constructor_9083 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.action
d_action_706 :: T_GovProposal_692 -> T_GovAction_498
d_action_706 v0
  = case coe v0 of
      C_GovProposal'46'constructor_9083 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.prevAction
d_prevAction_708 :: T_GovProposal_692 -> AgdaAny
d_prevAction_708 v0
  = case coe v0 of
      C_GovProposal'46'constructor_9083 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.deposit
d_deposit_710 :: T_GovProposal_692 -> Integer
d_deposit_710 v0
  = case coe v0 of
      C_GovProposal'46'constructor_9083 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.GovProposal.anchor
d_anchor_712 :: T_GovProposal_692 -> T_Anchor_488
d_anchor_712 v0
  = case coe v0 of
      C_GovProposal'46'constructor_9083 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactEnv
d_EnactEnv_714 a0 = ()
data T_EnactEnv_714
  = C_'10214'_'44'_'44'_'10215''7497'_728 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          Integer AgdaAny
-- Ledger.GovernanceActions.EnactEnv.gid
d_gid_722 ::
  T_EnactEnv_714 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_722 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7497'_728 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactEnv.treasury
d_treasury_724 :: T_EnactEnv_714 -> Integer
d_treasury_724 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7497'_728 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactEnv.epoch
d_epoch_726 :: T_EnactEnv_714 -> AgdaAny
d_epoch_726 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7497'_728 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactState
d_EnactState_730 a0 = ()
data T_EnactState_730
  = C_EnactState'46'constructor_9609 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.GovernanceActions.EnactState.cc
d_cc_742 ::
  T_EnactState_730 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_742 v0
  = case coe v0 of
      C_EnactState'46'constructor_9609 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactState.constitution
d_constitution_744 ::
  T_EnactState_730 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_744 v0
  = case coe v0 of
      C_EnactState'46'constructor_9609 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactState.pv
d_pv_746 ::
  T_EnactState_730 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_746 v0
  = case coe v0 of
      C_EnactState'46'constructor_9609 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactState.pparams
d_pparams_748 ::
  T_EnactState_730 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_748 v0
  = case coe v0 of
      C_EnactState'46'constructor_9609 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.EnactState.withdrawals
d_withdrawals_750 ::
  T_EnactState_730 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_750 v0
  = case coe v0 of
      C_EnactState'46'constructor_9609 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovernanceActions.ccCreds
d_ccCreds_752 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ccCreds_752 ~v0 v1 = du_ccCreds_752 v1
du_ccCreds_752 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_ccCreds_752 v0
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
d_DecEq'45'GovRole_786 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'GovRole_786 ~v0 = du_DecEq'45'GovRole_786
du_DecEq'45'GovRole_786 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'GovRole_786
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v0 ->
            case coe v0 of
              C_CC_474
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_474
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_DRep_476
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_SPO_478
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRep_476
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_474
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_DRep_476
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_SPO_478
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SPO_478
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_CC_474
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_DRep_476
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_SPO_478
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_788 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Vote_788 ~v0 = du_DecEq'45'Vote_788
du_DecEq'45'Vote_788 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'Vote_788
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v0 ->
            case coe v0 of
              C_yes_664
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_664
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_no_666
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_abstain_668
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_no_666
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_664
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_no_666
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_abstain_668
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstain_668
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_yes_664
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_no_666
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_abstain_668
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_790 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'VDeleg_790 v0
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v1 ->
            case coe v1 of
              C_credVoter_482 v2 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_credVoter_482 v5 v6
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
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
                                                      MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                      (coe v0)))))
                                          (coe
                                             MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                (coe
                                                   MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                   (coe v0))))
                                          (coe v6) (coe v3)))
                                    (coe
                                       MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                       (coe du_DecEq'45'GovRole_786) v5 v2))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)
                                            erased)))
                          C_abstainRep_484
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_noConfidenceRep_486
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_abstainRep_484
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_credVoter_482 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_abstainRep_484
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_noConfidenceRep_486
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_noConfidenceRep_486
                -> coe
                     (\ v2 ->
                        case coe v2 of
                          C_credVoter_482 v3 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_abstainRep_484
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_noConfidenceRep_486
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.GovernanceActions._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__792 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'ENACT'10632'__792
  = C_Enact'45'NoConf_794 |
    C_Enact'45'NewComm_800 (AgdaAny ->
                            MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                            MAlonzo.Code.Data.Sum.Base.T__'8846'__30) |
    C_Enact'45'NewConst_802 | C_Enact'45'HF_804 |
    C_Enact'45'PParams_806 |
    C_Enact'45'Wdrl_812 MAlonzo.Code.Data.Nat.Base.T__'8804'__18 |
    C_Enact'45'Info_814
-- Ledger.GovernanceActions._.completeness
d_completeness_818 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_818 = erased
-- Ledger.GovernanceActions._.computeProof
d_computeProof_822 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeProof_822 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_88
      (coe v0)
-- Ledger.GovernanceActions.Computational-ENACT
d_Computational'45'ENACT_830 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'ENACT_830 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_176
      (\ v1 ->
         case coe v1 of
           C_'10214'_'44'_'44'_'10215''7497'_728 v2 v3 v4
             -> coe
                  (\ v5 v6 ->
                     case coe v6 of
                       C_NoConfidence_500
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    C_EnactState'46'constructor_9609
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18) (coe v2))
                                    (coe d_constitution_744 (coe v5)) (coe d_pv_746 (coe v5))
                                    (coe d_pparams_748 (coe v5)) (coe d_withdrawals_750 (coe v5)))
                                 (coe C_Enact'45'NoConf_794))
                       C_NewCommittee_502 v7 v8 v9
                         -> let v10
                                  = coe
                                      MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                      (MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Epoch_30
                                         (coe
                                            MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                            (coe v0)))
                                      erased
                                      (\ v10 ->
                                         coe
                                           MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45''8846'_144
                                           (coe
                                              MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_266
                                              (MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
                                                 (coe
                                                    MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                    (coe v0)))
                                              (coe
                                                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                 (MAlonzo.Code.Ledger.Epoch.d_firstSlot_40
                                                    (coe
                                                       MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                       (coe v0)))
                                                 (\ v11 v12 -> v11) v10
                                                 (MAlonzo.Code.Ledger.Epoch.d__'43''7497'__220
                                                    (coe
                                                       MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe d_pparams_748 (coe v5))))
                                                    (coe v4)))
                                              (coe
                                                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                 (\ v11 v12 -> v12)
                                                 (MAlonzo.Code.Ledger.Epoch.d_firstSlot_40
                                                    (coe
                                                       MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                       (coe v0)))
                                                 v10
                                                 (MAlonzo.Code.Ledger.Epoch.d__'43''7497'__220
                                                    (coe
                                                       MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe d_pparams_748 (coe v5))))
                                                    (coe v4))))
                                           (coe
                                              MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                                              (coe
                                                 MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Epoch_30
                                                 (coe
                                                    MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                    (coe v0)))
                                              (coe v10)
                                              (coe
                                                 MAlonzo.Code.Ledger.Epoch.d__'43''7497'__220
                                                 (coe
                                                    MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                    (coe v0))
                                                 (coe
                                                    MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe d_pparams_748 (coe v5))))
                                                 (coe v4))))
                                      (coe
                                         MAlonzo.Code.Interface.IsSet.du_range_480
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1414
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                         (coe v7)) in
                            case coe v10 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v11 v12
                                -> if coe v11
                                     then case coe v12 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v13
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                      (coe
                                                         C_EnactState'46'constructor_9609
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (let v14
                                                                         = coe
                                                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                      (coe v0))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                   (coe v0))) in
                                                                   coe
                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1096
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1414
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                        erased v14)
                                                                     (let v15
                                                                            = coe
                                                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                      (coe v0))) in
                                                                      coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__676
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                           erased v15)
                                                                        (coe v7)
                                                                        (coe
                                                                           MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                                                                           (coe
                                                                              (\ v16 ->
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe v16)))
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 d_cc_742
                                                                                 (coe v5)))))
                                                                     (coe v8))
                                                                  (coe v9)))
                                                            (coe v2))
                                                         (coe d_constitution_744 (coe v5))
                                                         (coe d_pv_746 (coe v5))
                                                         (coe d_pparams_748 (coe v5))
                                                         (coe d_withdrawals_750 (coe v5)))
                                                      (coe C_Enact'45'NewComm_800 v13))
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     else coe
                                            seq (coe v12)
                                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                              _ -> MAlonzo.RTE.mazUnreachableError
                       C_NewConstitution_504 v7 v8
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                 (coe
                                    C_EnactState'46'constructor_9609 (coe d_cc_742 (coe v5))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                          (coe v8))
                                       (coe v2))
                                    (coe d_pv_746 (coe v5)) (coe d_pparams_748 (coe v5))
                                    (coe d_withdrawals_750 (coe v5)))
                                 (coe C_Enact'45'NewConst_802))
                       C_TriggerHF_506 v7
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                 (coe
                                    C_EnactState'46'constructor_9609 (coe d_cc_742 (coe v5))
                                    (coe d_constitution_744 (coe v5))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                       (coe v2))
                                    (coe d_pparams_748 (coe v5)) (coe d_withdrawals_750 (coe v5)))
                                 (coe C_Enact'45'HF_804))
                       C_ChangePParams_508 v7
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                 (coe
                                    C_EnactState'46'constructor_9609 (coe d_cc_742 (coe v5))
                                    (coe d_constitution_744 (coe v5)) (coe d_pv_746 (coe v5))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.PParams.d_applyUpdate_404
                                          (MAlonzo.Code.Ledger.PParams.d_ppUpd_444
                                             (coe
                                                MAlonzo.Code.Ledger.GovStructure.d_govParams_708
                                                (coe v0)))
                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe d_pparams_748 (coe v5)))
                                          v7)
                                       (coe v2))
                                    (coe d_withdrawals_750 (coe v5)))
                                 (coe C_Enact'45'PParams_806))
                       C_TreasuryWdrl_510 v7
                         -> let v8
                                  = MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
                                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3206
                                         (coe
                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                            (coe
                                               MAlonzo.Code.Ledger.GovStructure.d_DecEq'45'Netw_366
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                  (coe
                                                     MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                               (coe
                                                  MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                  (coe v0))))
                                         MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v8 -> v8)
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__514
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'monoid_3204
                                               (coe
                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                                  (coe
                                                     MAlonzo.Code.Ledger.GovStructure.d_DecEq'45'Netw_366
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                        (coe
                                                           MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                     (coe
                                                        MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                        (coe v0))))
                                               (d_withdrawals_750 (coe v5)) v7)))
                                      (coe v3) in
                            case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v9 v10
                                -> if coe v9
                                     then case coe v10 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v11
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                      (coe
                                                         C_EnactState'46'constructor_9609
                                                         (coe d_cc_742 (coe v5))
                                                         (coe d_constitution_744 (coe v5))
                                                         (coe d_pv_746 (coe v5))
                                                         (coe d_pparams_748 (coe v5))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__514
                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.C_Monoid'46'constructor_13309
                                                               (MAlonzo.Code.Algebra.Bundles.d__'8729'__760
                                                                  (coe
                                                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'monoid_3204))
                                                               (MAlonzo.Code.Algebra.Bundles.d_ε_762
                                                                  (coe
                                                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'monoid_3204))
                                                               (MAlonzo.Code.Algebra.Bundles.d_isMonoid_764
                                                                  (coe
                                                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'monoid_3204)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                                               (coe
                                                                  MAlonzo.Code.Ledger.GovStructure.d_DecEq'45'Netw_366
                                                                  (coe v0))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                     (coe v0))))
                                                            (d_withdrawals_750 (coe v5)) v7))
                                                      (coe C_Enact'45'Wdrl_812 v11))
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     else coe
                                            seq (coe v10)
                                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                              _ -> MAlonzo.RTE.mazUnreachableError
                       C_Info_512
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__68 (coe v5)
                                 (coe C_Enact'45'Info_814))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
