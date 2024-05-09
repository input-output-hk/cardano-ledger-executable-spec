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

module MAlonzo.Code.Ledger.Ratify where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Properties.Ext
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.Credential
d_Credential_64 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_64 = erased
-- _.Epoch
d_Epoch_172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_172 = erased
-- _.GovAction
d_GovAction_186 a0 = ()
-- _.GovActionID
d_GovActionID_188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_188 = erased
-- _.GovActionState
d_GovActionState_190 a0 = ()
-- _.GovRole
d_GovRole_198 a0 = ()
-- _.NeedsHash
d_NeedsHash_236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 -> ()
d_NeedsHash_236 = erased
-- _.PParamGroup
d_PParamGroup_268 a0 = ()
-- _.PParams
d_PParams_270 a0 = ()
-- _.UpdateT
d_UpdateT_274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UpdateT_274 = erased
-- _.VDeleg
d_VDeleg_384 a0 = ()
-- _.preoEpoch
d_preoEpoch_536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_536 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
-- Ledger.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1374 a0 a1 a2 a3 a4 = ()
-- Ledger.Ratify._.EnactEnv
d_EnactEnv_1390 a0 = ()
-- Ledger.Ratify._.EnactState
d_EnactState_1392 a0 = ()
-- Ledger.Ratify._.Vote
d_Vote_1440 a0 = ()
-- Ledger.Ratify._∧_
d__'8743'__1450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__1450 = erased
-- Ledger.Ratify._
d___1452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d___1452 ~v0 = du___1452
du___1452 :: MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du___1452
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196
-- Ledger.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1456 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1456 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1456 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1456 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_482 -> coe v0
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484 -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_486 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 -> AgdaAny
d_'8739'_'8741'_'8739'_1468 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1468 v2 v3
du_'8739'_'8741'_'8739'_1468 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 -> AgdaAny
du_'8739'_'8741'_'8739'_1468 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_482 -> coe v0
                  MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484 -> coe v2
                  MAlonzo.Code.Ledger.GovernanceActions.C_SPO_486 -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.vote
d_vote_1478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1478 ~v0 = du_vote_1478
du_vote_1478 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1478 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Ratify.defer
d_defer_1480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1480 ~v0 = du_defer_1480
du_defer_1480 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1480
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__268
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Ratify.maxThreshold
d_maxThreshold_1482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1482 ~v0 v1 = du_maxThreshold_1482 v1
du_maxThreshold_1482 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1482 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256 (coe du_comb_1490)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Ledger.Set.Theory.du_finiteness_216 v0))
-- Ledger.Ratify._.comb
d_comb_1490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_1490 ~v0 ~v1 v2 v3 = du_comb_1490 v2 v3
du_comb_1490 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_1490 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d__'8852'__320 (coe v2) (coe v3))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v0
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.─
d_'9472'_1500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1500 ~v0 = du_'9472'_1500
du_'9472'_1500 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1500 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Ratify.✓†
d_'10003''8224'_1502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1502 ~v0 = du_'10003''8224'_1502
du_'10003''8224'_1502 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1502 = coe du_vote_1478 (coe du_defer_1480)
-- Ledger.Ratify.threshold
d_threshold_1504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1504 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_512
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1456 (coe du_'9472'_1500)
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_P1_176
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v1))))
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_Q1_208
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_514 v4 v5 v6
        -> coe
             du_'8739'_'8741'_'8739'_1468 (coe du_'9472'_1500)
             (coe du_P'47'Q2a'47'b_1610 (coe v1) (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_516 v4 v5
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1456 (coe v2)
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_P3_182
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v1))))
             (coe du_'9472'_1500)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_518 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1456 (coe v2)
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_P4_184
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v1))))
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_Q4_214
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_520 v4
        -> coe
             du_'8739'_'8741'_'8739'_1468 (coe v2)
             (coe du_P'47'Q5_1616 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_522 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1456 (coe v2)
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_P6_194
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v1))))
             (coe du_'9472'_1500)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_524
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1456 (coe du_'10003''8224'_1502)
             (coe du_'10003''8224'_1502) (coe du_'10003''8224'_1502)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.✓
d_'10003'_1608 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1608 ~v0 ~v1 v2 = du_'10003'_1608 v2
du_'10003'_1608 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1608 v0 = coe v0
-- Ledger.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1610 ~v0 v1 v2 = du_P'47'Q2a'47'b_1610 v1 v2
du_P'47'Q2a'47'b_1610 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1610 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_P2a_178
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0))))
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_Q2a_210
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_P2b_180
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0))))
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_Q2b_212
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.pparamThreshold
d_pparamThreshold_1614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1614 ~v0 v1 ~v2 v3
  = du_pparamThreshold_1614 v1 v3
du_pparamThreshold_1614 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1614 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.PParams.C_NetworkGroup_144
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_P5a_186
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0))))
             (coe du_'9472'_1500)
      MAlonzo.Code.Ledger.PParams.C_EconomicGroup_146
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_P5b_188
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0))))
             (coe du_'9472'_1500)
      MAlonzo.Code.Ledger.PParams.C_TechnicalGroup_148
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_P5c_190
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0))))
             (coe du_'9472'_1500)
      MAlonzo.Code.Ledger.PParams.C_GovernanceGroup_150
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_P5d_192
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0))))
             (coe du_'9472'_1500)
      MAlonzo.Code.Ledger.PParams.C_SecurityGroup_152
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1500)
             (coe
                du_vote_1478
                (MAlonzo.Code.Ledger.PParams.d_Q5e_216
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.P/Q5
d_P'47'Q5_1616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1616 v0 v1 ~v2 v3 = du_P'47'Q5_1616 v0 v1 v3
du_P'47'Q5_1616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1616 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1482
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1444
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1614 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_482
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_526
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1798 (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1482
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1444
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1614 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_482
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_526
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1798 (coe v0)))
               v2)))
-- Ledger.Ratify.canVote
d_canVote_1624 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 -> ()
d_canVote_1624 = erased
-- Ledger.Ratify.StakeDistrs
d_StakeDistrs_1632 a0 = ()
newtype T_StakeDistrs_1632
  = C_StakeDistrs'46'constructor_10617 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_1636 ::
  T_StakeDistrs_1632 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1636 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_10617 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv
d_RatifyEnv_1638 a0 = ()
data T_RatifyEnv_1638
  = C_RatifyEnv'46'constructor_11065 T_StakeDistrs_1632 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1650 :: T_RatifyEnv_1638 -> T_StakeDistrs_1632
d_stakeDistrs_1650 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11065 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1652 :: T_RatifyEnv_1638 -> AgdaAny
d_currentEpoch_1652 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11065 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.dreps
d_dreps_1654 ::
  T_RatifyEnv_1638 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1654 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11065 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1656 ::
  T_RatifyEnv_1638 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1656 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11065 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.treasury
d_treasury_1658 :: T_RatifyEnv_1638 -> Integer
d_treasury_1658 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11065 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState
d_RatifyState_1660 a0 = ()
data T_RatifyState_1660
  = C_'10214'_'44'_'44'_'10215''691'_1674 MAlonzo.Code.Ledger.Enact.T_EnactState_644
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify.RatifyState.es
d_es_1668 ::
  T_RatifyState_1660 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_es_1668 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1674 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.removed
d_removed_1670 ::
  T_RatifyState_1660 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1670 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1674 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.delay
d_delay_1672 :: T_RatifyState_1660 -> Bool
d_delay_1672 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1674 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.CCData
d_CCData_1676 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CCData_1676 = erased
-- Ledger.Ratify.govRole
d_govRole_1678 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480
d_govRole_1678 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_494 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_496
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484
      MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_498
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.IsCC
d_IsCC_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492 -> ()
d_IsCC_1682 = erased
-- Ledger.Ratify.IsDRep
d_IsDRep_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492 -> ()
d_IsDRep_1684 = erased
-- Ledger.Ratify.IsSPO
d_IsSPO_1686 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492 -> ()
d_IsSPO_1686 = erased
-- Ledger.Ratify.coinThreshold
d_coinThreshold_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_coinThreshold_1694 ~v0 = du_coinThreshold_1694
du_coinThreshold_1694 :: Integer
du_coinThreshold_1694 = coe (1000000000 :: Integer)
-- Ledger.Ratify.rankThreshold
d_rankThreshold_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_rankThreshold_1696 ~v0 = du_rankThreshold_1696
du_rankThreshold_1696 :: Integer
du_rankThreshold_1696 = coe (1000 :: Integer)
-- Ledger.Ratify.mostStakeDRepDist
d_mostStakeDRepDist_1698 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist_1698 ~v0 v1 v2
  = du_mostStakeDRepDist_1698 v1 v2
du_mostStakeDRepDist_1698 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist_1698 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du__'8638'''__1048 (coe v0)
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664 (coe v1)
                 (coe v2))))
-- Ledger.Ratify.mostStakeDRepDist-0
d_mostStakeDRepDist'45'0_1708 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45'0_1708 ~v0 v1
  = du_mostStakeDRepDist'45'0_1708 v1
du_mostStakeDRepDist'45'0_1708 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist'45'0_1708 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v1 v2 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1444
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_484 (coe v0))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                       (MAlonzo.Code.Axiom.Set.d_sp_150
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1444
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                          (coe
                             (\ v3 ->
                                coe
                                  MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                     (coe (0 :: Integer)) (coe v3)))))
                       (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                    (coe v1))
                 v2)))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1444
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4) (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_484)
                    (coe du_mostStakeDRepDist_1698 (coe v0) (coe (0 :: Integer))) v0)
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                    (MAlonzo.Code.Axiom.Set.d_sp_150
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1444
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                       (coe
                          (\ v3 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                  (coe (0 :: Integer)) (coe v3)))))
                    (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                 (coe v1))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22) (coe v2))))
-- Ledger.Ratify.mostStakeDRepDist-∅
d_mostStakeDRepDist'45''8709'_1716 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45''8709'_1716 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         addInt (coe (1 :: Integer))
         (coe
            MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1054
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
            (coe
               MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
            (coe (\ v2 -> v2)) (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_432
         (coe
            (\ v2 v3 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
-- Ledger.Ratify._.helper
d_helper_1730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_helper_1730 = erased
-- Ledger.Ratify.∃topNDRepDist
d_'8707'topNDRepDist_1758 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'topNDRepDist_1758 v0 v1 v2 ~v3 ~v4
  = du_'8707'topNDRepDist_1758 v0 v1 v2
du_'8707'topNDRepDist_1758 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'topNDRepDist_1758 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
            (coe
               (\ v3 ->
                  MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2670
                    (coe
                       MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                       (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_498)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_specification_174
                             (MAlonzo.Code.Axiom.Set.d_th_1444
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1444
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                erased erased erased
                                (coe
                                   MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                           (coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                              (\ v5 ->
                                                 coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2608
                                                   (coe v3))
                                              (coe
                                                 MAlonzo.Code.Data.Bool.Properties.d_T'63'_3690
                                                 (coe
                                                    MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__10
                                                    (coe v3) (coe v4)))))))
                                (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))))
                    (coe v1)))
            (coe
               MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
               (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72) erased
               (d_mostStakeDRepDist'45''8709'_1716 (coe v0) (coe v2)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                  (coe
                     (\ v3 ->
                        MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2670
                          (coe
                             MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                             (coe
                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                (coe
                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                                (coe
                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_498)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_specification_174
                                   (MAlonzo.Code.Axiom.Set.d_th_1444
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1444
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                      erased erased erased
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                                         (coe
                                            (\ v4 ->
                                               coe
                                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                    (\ v5 ->
                                                       coe
                                                         MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2608
                                                         (coe v3))
                                                    (coe
                                                       MAlonzo.Code.Data.Bool.Properties.d_T'63'_3690
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__10
                                                          (coe v3) (coe v4)))))))
                                      (\ v4 ->
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))))
                          (coe v1)))
                  (coe
                     MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                     (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72) erased
                     (d_mostStakeDRepDist'45''8709'_1716 (coe v0) (coe v2))))))
         (coe
            MAlonzo.Code.Data.Nat.Properties.du_'8816''8658''62'_2750 (coe v1)
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_khs_192
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_498)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_specification_174
                     (MAlonzo.Code.Axiom.Set.d_th_1444
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                        (MAlonzo.Code.Axiom.Set.d_sp_150
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1444
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                        erased erased erased
                        (coe
                           MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                   (coe
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2608
                                           (coe
                                              addInt (coe (1 :: Integer))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                                                    (coe
                                                       (\ v5 ->
                                                          MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2670
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                              (coe v0))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                           (coe v0))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                                                               (coe
                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_498)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_specification_174
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1444
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                     erased erased
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1444
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                        erased erased erased
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                                                                           (coe
                                                                              (\ v6 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                   (coe
                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                      (\ v7 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2608
                                                                                           (coe v5))
                                                                                      (coe
                                                                                         MAlonzo.Code.Data.Bool.Properties.d_T'63'_3690
                                                                                         (coe
                                                                                            MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__10
                                                                                            (coe v5)
                                                                                            (coe
                                                                                               v6)))))))
                                                                        (\ v6 ->
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe v6))))))
                                                            (coe v1)))
                                                    (coe
                                                       MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                       (coe
                                                          MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                       erased
                                                       (d_mostStakeDRepDist'45''8709'_1716
                                                          (coe v0) (coe v2)))))))
                                      (coe
                                         MAlonzo.Code.Data.Bool.Properties.d_T'63'_3690
                                         (coe
                                            MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__10
                                            (coe
                                               addInt (coe (1 :: Integer))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                                                     (coe
                                                        (\ v4 ->
                                                           MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2670
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                                                                (coe
                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                      (coe
                                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                                                                (coe
                                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_498)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_specification_174
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1444
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                      erased erased
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v2))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                         (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1444
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                         erased erased erased
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_212
                                                                            (coe
                                                                               (\ v5 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                       (\ v6 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2608
                                                                                            (coe
                                                                                               v4))
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Bool.Properties.d_T'63'_3690
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__10
                                                                                             (coe
                                                                                                v4)
                                                                                             (coe
                                                                                                v5)))))))
                                                                         (\ v5 ->
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe v5))))))
                                                             (coe v1)))
                                                     (coe
                                                        MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                        (coe
                                                           MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                        erased
                                                        (d_mostStakeDRepDist'45''8709'_1716
                                                           (coe v0) (coe v2))))))
                                            (coe v3)))))))
                        (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))))
-- Ledger.Ratify.topNDRepDist
d_topNDRepDist_1784 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_topNDRepDist_1784 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2670
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                          (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_498)
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_484 (coe v2)))
                 (coe v1))
              (MAlonzo.Code.Data.Nat.Properties.d__'62''63'__2898
                 (coe v1) (coe (0 :: Integer))) in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
           -> case coe v5 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                  -> if coe v6
                       then case coe v4 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                                -> if coe v8
                                     then coe
                                            seq (coe v9)
                                            (coe
                                               seq (coe v7)
                                               (coe
                                                  du_mostStakeDRepDist_1698 (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        du_'8707'topNDRepDist_1758 (coe v0) (coe v1)
                                                        (coe v2)))))
                                     else coe seq (coe v9) (coe seq (coe v7) (coe v2))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v7)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_514
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1444
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Ratify.restrictedDists
d_restrictedDists_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> T_StakeDistrs_1632 -> T_StakeDistrs_1632
d_restrictedDists_1796 ~v0 ~v1 ~v2 v3 = du_restrictedDists_1796 v3
du_restrictedDists_1796 :: T_StakeDistrs_1632 -> T_StakeDistrs_1632
du_restrictedDists_1796 v0 = coe v0
-- Ledger.Ratify._._.stakeDistr
d_stakeDistr_1810 ::
  T_StakeDistrs_1632 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1810 v0 = coe d_stakeDistr_1636 (coe v0)
-- Ledger.Ratify.actualVotes
d_actualVotes_1816 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_1816 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__834
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1444
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1574
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_804
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1444
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_494
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_482))
         (coe
            du_actualCCVotes_1944 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__834
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1444
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1574
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
         (coe du_actualPDRepVotes_1952 (coe v0) (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__834
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1444
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1574
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
            (coe du_actualDRepVotes_1954 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_1956 (coe v0) (coe v1) (coe v5) (coe v4))))
-- Ledger.Ratify._._.ccHotKeys
d_ccHotKeys_1834 ::
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1834 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_1834 v0
du_ccHotKeys_1834 ::
  T_RatifyEnv_1638 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1834 v0 = coe d_ccHotKeys_1656 (coe v0)
-- Ledger.Ratify._._.currentEpoch
d_currentEpoch_1836 ::
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_1836 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_1836 v0
du_currentEpoch_1836 :: T_RatifyEnv_1638 -> AgdaAny
du_currentEpoch_1836 v0 = coe d_currentEpoch_1652 (coe v0)
-- Ledger.Ratify._._.dreps
d_dreps_1838 ::
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1838 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_1838 v0
du_dreps_1838 ::
  T_RatifyEnv_1638 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1838 v0 = coe d_dreps_1654 (coe v0)
-- Ledger.Ratify._._.stakeDistrs
d_stakeDistrs_1840 ::
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1632
d_stakeDistrs_1840 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_1840 v0
du_stakeDistrs_1840 :: T_RatifyEnv_1638 -> T_StakeDistrs_1632
du_stakeDistrs_1840 v0 = coe d_stakeDistrs_1650 (coe v0)
-- Ledger.Ratify._._.treasury
d_treasury_1842 ::
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_1842 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_1842 v0
du_treasury_1842 :: T_RatifyEnv_1638 -> Integer
du_treasury_1842 v0 = coe d_treasury_1658 (coe v0)
-- Ledger.Ratify._.roleVotes
d_roleVotes_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_1904 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_1904 v5 v6
du_roleVotes_1904 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_1904 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_804
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1444
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_494))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1032
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_616))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Ratify._.activeDReps
d_activeDReps_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_activeDReps_1912 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_1912 v0 v1
du_activeDReps_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_activeDReps_1912 v0 v1
  = coe
      MAlonzo.Code.Interface.IsSet.du_dom_494
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1444
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_502)
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1032
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
              (coe
                 MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                 (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_1652 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
                    (d_currentEpoch_1652 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))))
                 (coe d_currentEpoch_1652 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_1654 (coe v1)))
-- Ledger.Ratify._.spos
d_spos_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492]
d_spos_1918 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_1918 v1
du_spos_1918 ::
  T_RatifyEnv_1638 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492]
du_spos_1918 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1024
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_616))
           (coe d_govRole_1678 (coe v1))
           (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_486))
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_494
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1444
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_502)
         (coe d_stakeDistr_1636 (coe d_stakeDistrs_1650 (coe v0))))
-- Ledger.Ratify._.getCCHotCred
d_getCCHotCred_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getCCHotCred_1920 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_1920 v0 v1 v6
du_getCCHotCred_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getCCHotCred_1920 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> let v5
                 = coe
                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                        (coe
                           MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                           (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
                              (\ v5 v6 -> v5) (d_currentEpoch_1652 (coe v1)) v4)
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v5 v6 -> v6)
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
                              (d_currentEpoch_1652 (coe v1)) v4))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
                                    (coe v0))))
                           (coe d_currentEpoch_1652 (coe v1)) (coe v4))) in
           coe
             (let v6
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1432
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1444
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe d_ccHotKeys_1656 (coe v1)) (coe v3)
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1576
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (coe
                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                    (coe
                                       MAlonzo.Code.Ledger.Crypto.d_khs_192
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))))
                           (coe v3)
                           (let v6
                                  = MAlonzo.Code.Axiom.Set.d_th_1444
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_314 v6
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_484
                                    (coe d_ccHotKeys_1656 (coe v1)))))) in
              coe
                (case coe v5 of
                   MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                     -> case coe v6 of
                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                            -> case coe v7 of
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8 -> coe v7
                                 _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                          _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                   _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.actualCCVote
d_actualCCVote_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_542
d_actualCCVote_1930 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_1930 v0 v1 v5 v6 v7
du_actualCCVote_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_542
du_actualCCVote_1930 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_1920 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_36 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_546)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1432
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1444
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_482) (coe v6))
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1576
                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                         (coe
                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_616)
                            (coe
                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_482) (coe v6))
                      (let v7
                             = MAlonzo.Code.Axiom.Set.d_th_1444
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_314 v7
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_484 (coe v2))))))
         _ -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_548)
-- Ledger.Ratify._.activeCC
d_activeCC_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_activeCC_1940 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_activeCC_1940 v0 v1 v6
du_activeCC_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_activeCC_1940 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_562
      (MAlonzo.Code.Axiom.Set.d_th_1444
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_getCCHotCred_1920 (coe v0) (coe v1))
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_484 (coe v2))
-- Ledger.Ratify._.actualCCVotes
d_actualCCVotes_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_1944 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_1944 v0 v1 v2 v3 v5
du_actualCCVotes_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_1944 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                    (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                       (MAlonzo.Code.Ledger.PParams.d_ccMinSize_332 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Set.Theory.du_length'738'_224
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_498)
                          (coe du_activeCC_1940 (coe v0) (coe v1) (coe v6))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1026
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1444
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe du_actualCCVote_1930 (coe v0) (coe v1) (coe v4)) (coe v6)))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_constMap_1062
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1444
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_494
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1444
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_502) (coe v6))
                            (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_546)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_514
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1444
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.actualPDRepVotes
d_actualPDRepVotes_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_1952 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_1952 v0 v6
du_actualPDRepVotes_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_1952 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__834
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1444
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1574
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_682
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1444
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_496)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_548)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_682
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1444
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_498)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_546))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_512
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__834
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1444
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1574
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_682
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1444
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_496)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_548)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_682
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1444
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_498)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_544)))
         _ -> coe v2)
-- Ledger.Ratify._.actualDRepVotes
d_actualDRepVotes_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_1954 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_1954 v0 v1 v5
du_actualDRepVotes_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_1954 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__834
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1444
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1574
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
      (coe
         du_roleVotes_1904 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_constMap_1062
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1444
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1444
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_494
               (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484))
            (coe du_activeDReps_1912 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_546))
-- Ledger.Ratify._.actualSPOVotes
d_actualSPOVotes_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_1956 v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_actualSPOVotes_1956 v0 v1 v5 v6
du_actualSPOVotes_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_1956 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__834
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1444
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1574
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
              (coe
                 du_roleVotes_1904 (coe v2)
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_486))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_constMap_1062
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1444
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_spos_1918 (coe v1))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_548)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_518 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__834
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1444
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1574
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
                (coe
                   du_roleVotes_1904 (coe v2)
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_486))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_constMap_1062
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1444
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe du_spos_1918 (coe v1))
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_546))
         _ -> coe v4)
-- Ledger.Ratify._/₀_
d__'47''8320'__1958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__1958 ~v0 v1 v2 = du__'47''8320'__1958 v1 v2
du__'47''8320'__1958 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'47''8320'__1958 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Ratify.getStakeDist
d_getStakeDist_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492] ->
  T_StakeDistrs_1632 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_1966 ~v0 v1 v2 v3 = du_getStakeDist_1966 v1 v2 v3
du_getStakeDist_1966 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492] ->
  T_StakeDistrs_1632 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_1966 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_482
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_constMap_1062
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1444
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1024
                (\ v3 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe
                           MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_616))
                     (coe d_govRole_1678 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1040
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_616))
                  (coe d_govRole_1678 (coe v3)) (coe v0))
             (d_stakeDistr_1636 (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_486
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1040
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_616))
                  (coe d_govRole_1678 (coe v3)) (coe v0))
             (d_stakeDistr_1636 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_1976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492] ->
  T_StakeDistrs_1632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_1976 v0 v1 v2 v3 v4
  = coe
      du__'47''8320'__1958
      (coe
         d_acceptedStake_1990 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_1992 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Ratify._.acceptedStake
d_acceptedStake_1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492] ->
  T_StakeDistrs_1632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_1990 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1054
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1192
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1444
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1574
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
         (coe du_getStakeDist_1966 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1482
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1444
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1574
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_618))
            (coe v4) (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_544)))
-- Ledger.Ratify._.totalStake
d_totalStake_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492] ->
  T_StakeDistrs_1632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_1992 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1054
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1200
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1444
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1574
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
         (coe du_getStakeDist_1966 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1482
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1444
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1574
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_618))
            (coe v4)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_548)))
-- Ledger.Ratify.acceptedBy
d_acceptedBy_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 -> ()
d_acceptedBy_1998 = erased
-- Ledger.Ratify.accepted
d_accepted_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 -> ()
d_accepted_2026 = erased
-- Ledger.Ratify.expired
d_expired_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 -> ()
d_expired_2034 = erased
-- Ledger.Ratify.verifyPrev
d_verifyPrev_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_644 -> ()
d_verifyPrev_2042 = erased
-- Ledger.Ratify.delayingAction
d_delayingAction_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 -> Bool
d_delayingAction_2064 ~v0 v1 = du_delayingAction_2064 v1
du_delayingAction_2064 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 -> Bool
du_delayingAction_2064 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_512
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_514 v1 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_516 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_518 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_520 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_522 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_524
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed
d_delayed_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_644 -> Bool -> ()
d_delayed_2068 = erased
-- Ledger.Ratify.verifyPrev?
d_verifyPrev'63'_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2084 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_512
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0)))
                   (coe (\ v4 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_656 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_514 v4 v5 v6
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0)))
                   (coe (\ v7 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_656 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_516 v4 v5
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0)))
                   (coe (\ v6 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_constitution_658 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_518 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0)))
                   (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pv_660 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_520 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0)))
                   (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pparams_662 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_522 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_524
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed?
d_delayed'63'_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2138 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__78
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__88
         (coe d_verifyPrev'63'_2084 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946) (coe v4)
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Ratify.acceptedBy?
d_acceptedBy'63'_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2158 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_1231 v5 v6 v7 v8 v9
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
               -> case coe v8 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                      -> coe
                           MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3398
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_maybe_36 (coe (\ v14 -> v14))
                              (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
                              (coe
                                 d_threshold_1504 v0 v12
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 ()
                                    erased () erased
                                    (\ v14 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                                    v10)
                                 (MAlonzo.Code.Ledger.GovernanceActions.d_action_612 (coe v3)) v4))
                           (coe
                              d_acceptedStakeRatio_1976 (coe v0) (coe v4)
                              (coe
                                 MAlonzo.Code.Interface.IsSet.du_dom_494
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1444
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_502)
                                 (coe
                                    d_actualVotes_1816 (coe v0) (coe v1) (coe v12) (coe v10)
                                    (coe
                                       MAlonzo.Code.Ledger.GovernanceActions.d_action_612 (coe v3))
                                    (coe
                                       MAlonzo.Code.Ledger.GovernanceActions.d_votes_606 (coe v3))))
                              (coe d_stakeDistrs_1650 (coe v1))
                              (coe
                                 d_actualVotes_1816 (coe v0) (coe v1) (coe v12) (coe v10)
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_612 (coe v3))
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_606 (coe v3))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.accepted?
d_accepted'63'_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2176 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
      (coe
         d_acceptedBy'63'_2158 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_482))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
         (coe
            d_acceptedBy'63'_2158 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484))
         (coe
            d_acceptedBy'63'_2158 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_486)))
-- Ledger.Ratify.expired?
d_expired'63'_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2190 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
            (coe
               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_610 (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_610 (coe v2))
            v1))
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__2208 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2208
  = C_RATIFY'45'Accept_2236 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Enact.T__'8866'_'8640''10631'_'44'ENACT'10632'__730 |
    C_RATIFY'45'Reject_2252 AgdaAny |
    C_RATIFY'45'Continue_2282 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102815 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2212 ~v0 v1 = du_ccHotKeys_2212 v1
du_ccHotKeys_2212 ::
  T_GeneralizeTel_102815 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2212 v0
  = coe d_ccHotKeys_1656 (coe d_'46'generalizedField'45'Γ_102803 v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102815 -> AgdaAny
d_currentEpoch_2214 ~v0 v1 = du_currentEpoch_2214 v1
du_currentEpoch_2214 :: T_GeneralizeTel_102815 -> AgdaAny
du_currentEpoch_2214 v0
  = coe
      d_currentEpoch_1652 (coe d_'46'generalizedField'45'Γ_102803 v0)
-- Ledger.Ratify._.dreps
d_dreps_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102815 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2216 ~v0 v1 = du_dreps_2216 v1
du_dreps_2216 ::
  T_GeneralizeTel_102815 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2216 v0
  = coe d_dreps_1654 (coe d_'46'generalizedField'45'Γ_102803 v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102815 -> T_StakeDistrs_1632
d_stakeDistrs_2218 ~v0 v1 = du_stakeDistrs_2218 v1
du_stakeDistrs_2218 :: T_GeneralizeTel_102815 -> T_StakeDistrs_1632
du_stakeDistrs_2218 v0
  = coe
      d_stakeDistrs_1650 (coe d_'46'generalizedField'45'Γ_102803 v0)
-- Ledger.Ratify._.treasury
d_treasury_2220 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102815 -> Integer
d_treasury_2220 ~v0 v1 = du_treasury_2220 v1
du_treasury_2220 :: T_GeneralizeTel_102815 -> Integer
du_treasury_2220 v0
  = coe d_treasury_1658 (coe d_'46'generalizedField'45'Γ_102803 v0)
-- Ledger.Ratify._.action
d_action_2226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102815 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510
d_action_2226 ~v0 v1 = du_action_2226 v1
du_action_2226 ::
  T_GeneralizeTel_102815 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510
du_action_2226 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_612
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_102805 v0))
-- Ledger.Ratify._.prevAction
d_prevAction_2230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102815 -> AgdaAny
d_prevAction_2230 ~v0 v1 = du_prevAction_2230 v1
du_prevAction_2230 :: T_GeneralizeTel_102815 -> AgdaAny
du_prevAction_2230 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_614
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_102805 v0))
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2240 ~v0 v1 = du_ccHotKeys_2240 v1
du_ccHotKeys_2240 ::
  T_GeneralizeTel_103225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2240 v0
  = coe d_ccHotKeys_1656 (coe d_'46'generalizedField'45'Γ_103215 v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103225 -> AgdaAny
d_currentEpoch_2242 ~v0 v1 = du_currentEpoch_2242 v1
du_currentEpoch_2242 :: T_GeneralizeTel_103225 -> AgdaAny
du_currentEpoch_2242 v0
  = coe
      d_currentEpoch_1652 (coe d_'46'generalizedField'45'Γ_103215 v0)
-- Ledger.Ratify._.dreps
d_dreps_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2244 ~v0 v1 = du_dreps_2244 v1
du_dreps_2244 ::
  T_GeneralizeTel_103225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2244 v0
  = coe d_dreps_1654 (coe d_'46'generalizedField'45'Γ_103215 v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103225 -> T_StakeDistrs_1632
d_stakeDistrs_2246 ~v0 v1 = du_stakeDistrs_2246 v1
du_stakeDistrs_2246 :: T_GeneralizeTel_103225 -> T_StakeDistrs_1632
du_stakeDistrs_2246 v0
  = coe
      d_stakeDistrs_1650 (coe d_'46'generalizedField'45'Γ_103215 v0)
-- Ledger.Ratify._.treasury
d_treasury_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103225 -> Integer
d_treasury_2248 ~v0 v1 = du_treasury_2248 v1
du_treasury_2248 :: T_GeneralizeTel_103225 -> Integer
du_treasury_2248 v0
  = coe d_treasury_1658 (coe d_'46'generalizedField'45'Γ_103215 v0)
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103813 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2256 ~v0 v1 = du_ccHotKeys_2256 v1
du_ccHotKeys_2256 ::
  T_GeneralizeTel_103813 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2256 v0
  = coe d_ccHotKeys_1656 (coe d_'46'generalizedField'45'Γ_103803 v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103813 -> AgdaAny
d_currentEpoch_2258 ~v0 v1 = du_currentEpoch_2258 v1
du_currentEpoch_2258 :: T_GeneralizeTel_103813 -> AgdaAny
du_currentEpoch_2258 v0
  = coe
      d_currentEpoch_1652 (coe d_'46'generalizedField'45'Γ_103803 v0)
-- Ledger.Ratify._.dreps
d_dreps_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103813 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2260 ~v0 v1 = du_dreps_2260 v1
du_dreps_2260 ::
  T_GeneralizeTel_103813 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2260 v0
  = coe d_dreps_1654 (coe d_'46'generalizedField'45'Γ_103803 v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103813 -> T_StakeDistrs_1632
d_stakeDistrs_2262 ~v0 v1 = du_stakeDistrs_2262 v1
du_stakeDistrs_2262 :: T_GeneralizeTel_103813 -> T_StakeDistrs_1632
du_stakeDistrs_2262 v0
  = coe
      d_stakeDistrs_1650 (coe d_'46'generalizedField'45'Γ_103803 v0)
-- Ledger.Ratify._.treasury
d_treasury_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103813 -> Integer
d_treasury_2264 ~v0 v1 = du_treasury_2264 v1
du_treasury_2264 :: T_GeneralizeTel_103813 -> Integer
du_treasury_2264 v0
  = coe d_treasury_1658 (coe d_'46'generalizedField'45'Γ_103803 v0)
-- Ledger.Ratify._.action
d_action_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103813 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510
d_action_2270 ~v0 v1 = du_action_2270 v1
du_action_2270 ::
  T_GeneralizeTel_103813 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510
du_action_2270 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_612
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_103805 v0))
-- Ledger.Ratify._.prevAction
d_prevAction_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103813 -> AgdaAny
d_prevAction_2274 ~v0 v1 = du_prevAction_2274 v1
du_prevAction_2274 :: T_GeneralizeTel_103813 -> AgdaAny
du_prevAction_2274 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_614
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_103805 v0))
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1638 ->
  T_RatifyState_1660 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_1660 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2284 = erased
-- Ledger.Ratify..generalizedField-Γ
d_'46'generalizedField'45'Γ_102803 ::
  T_GeneralizeTel_102815 -> T_RatifyEnv_1638
d_'46'generalizedField'45'Γ_102803
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_102805 ::
  T_GeneralizeTel_102815 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_102805
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_102807 ::
  T_GeneralizeTel_102815 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_'46'generalizedField'45'es_102807
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_102809 ::
  T_GeneralizeTel_102815 -> Bool
d_'46'generalizedField'45'd_102809
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es'
d_'46'generalizedField'45'es''_102811 ::
  T_GeneralizeTel_102815 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_'46'generalizedField'45'es''_102811
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_102813 ::
  T_GeneralizeTel_102815 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_102813
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_102815 a0 = ()
data T_GeneralizeTel_102815
  = C_mkGeneralizeTel_102817 T_RatifyEnv_1638
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Ledger.Enact.T_EnactState_644 Bool
                             MAlonzo.Code.Ledger.Enact.T_EnactState_644
                             [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ratify..generalizedField-Γ
d_'46'generalizedField'45'Γ_103215 ::
  T_GeneralizeTel_103225 -> T_RatifyEnv_1638
d_'46'generalizedField'45'Γ_103215
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_103217 ::
  T_GeneralizeTel_103225 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_103217
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_103219 ::
  T_GeneralizeTel_103225 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_'46'generalizedField'45'es_103219
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_103221 ::
  T_GeneralizeTel_103225 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_103221
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_103223 ::
  T_GeneralizeTel_103225 -> Bool
d_'46'generalizedField'45'd_103223
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_103225 a0 = ()
data T_GeneralizeTel_103225
  = C_mkGeneralizeTel_103227 T_RatifyEnv_1638
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Ledger.Enact.T_EnactState_644
                             [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify..generalizedField-Γ
d_'46'generalizedField'45'Γ_103803 ::
  T_GeneralizeTel_103813 -> T_RatifyEnv_1638
d_'46'generalizedField'45'Γ_103803
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_103805 ::
  T_GeneralizeTel_103813 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_103805
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_103807 ::
  T_GeneralizeTel_103813 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_'46'generalizedField'45'es_103807
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_103809 ::
  T_GeneralizeTel_103813 -> Bool
d_'46'generalizedField'45'd_103809
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_103811 ::
  T_GeneralizeTel_103813 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_103811
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_103813 a0 = ()
data T_GeneralizeTel_103813
  = C_mkGeneralizeTel_103815 T_RatifyEnv_1638
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Ledger.Enact.T_EnactState_644 Bool
                             [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
