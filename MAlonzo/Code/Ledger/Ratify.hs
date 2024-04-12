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
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 -> ()
d_NeedsHash_236 = erased
-- _.PParamGroup
d_PParamGroup_266 a0 = ()
-- _.PParams
d_PParams_268 a0 = ()
-- _.UpdateT
d_UpdateT_272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UpdateT_272 = erased
-- _.VDeleg
d_VDeleg_380 a0 = ()
-- _.preoEpoch
d_preoEpoch_530 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_530 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0))
-- Ledger.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1370 a0 a1 a2 a3 a4 = ()
-- Ledger.Ratify._.EnactEnv
d_EnactEnv_1386 a0 = ()
-- Ledger.Ratify._.EnactState
d_EnactState_1388 a0 = ()
-- Ledger.Ratify._.Vote
d_Vote_1436 a0 = ()
-- Ledger.Ratify._∧_
d__'8743'__1446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__1446 = erased
-- Ledger.Ratify._
d___1448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d___1448 ~v0 = du___1448
du___1448 :: MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du___1448
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196
-- Ledger.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1452 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1452 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1452 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1452 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_484 -> coe v0
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_486 -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_488 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 -> AgdaAny
d_'8739'_'8741'_'8739'_1464 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1464 v2 v3
du_'8739'_'8741'_'8739'_1464 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 -> AgdaAny
du_'8739'_'8741'_'8739'_1464 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_484 -> coe v0
                  MAlonzo.Code.Ledger.GovernanceActions.C_DRep_486 -> coe v2
                  MAlonzo.Code.Ledger.GovernanceActions.C_SPO_488 -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.vote
d_vote_1474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1474 ~v0 = du_vote_1474
du_vote_1474 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1474 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Ratify.defer
d_defer_1476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1476 ~v0 = du_defer_1476
du_defer_1476 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1476
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__268
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Ratify.maxThreshold
d_maxThreshold_1478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1478 ~v0 v1 = du_maxThreshold_1478 v1
du_maxThreshold_1478 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1478 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256 (coe du_comb_1486)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Ledger.Set.Theory.du_finiteness_214 v0))
-- Ledger.Ratify._.comb
d_comb_1486 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_1486 ~v0 ~v1 v2 v3 = du_comb_1486 v2 v3
du_comb_1486 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_1486 v0 v1
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
d_'9472'_1496 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1496 ~v0 = du_'9472'_1496
du_'9472'_1496 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1496 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Ratify.✓†
d_'10003''8224'_1498 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1498 ~v0 = du_'10003''8224'_1498
du_'10003''8224'_1498 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1498 = coe du_vote_1474 (coe du_defer_1476)
-- Ledger.Ratify.threshold
d_threshold_1500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1500 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_514
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1452 (coe du_'9472'_1496)
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_P1_176
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_316 (coe v1))))
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_Q1_208
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_318 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_516 v4 v5 v6
        -> coe
             du_'8739'_'8741'_'8739'_1464 (coe du_'9472'_1496)
             (coe du_P'47'Q2a'47'b_1604 (coe v1) (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_518 v4 v5
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1452 (coe v2)
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_P3_182
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_316 (coe v1))))
             (coe du_'9472'_1496)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_520 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1452 (coe v2)
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_P4_184
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_316 (coe v1))))
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_Q4_214
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_318 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_522 v4
        -> coe
             du_'8739'_'8741'_'8739'_1464 (coe v2)
             (coe du_P'47'Q5_1610 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_524 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1452 (coe v2)
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_P6_194
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_316 (coe v1))))
             (coe du_'9472'_1496)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_526
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1452 (coe du_'10003''8224'_1498)
             (coe du_'10003''8224'_1498) (coe du_'10003''8224'_1498)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.✓
d_'10003'_1602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1602 ~v0 ~v1 v2 = du_'10003'_1602 v2
du_'10003'_1602 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1602 v0 = coe v0
-- Ledger.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1604 ~v0 v1 v2 = du_P'47'Q2a'47'b_1604 v1 v2
du_P'47'Q2a'47'b_1604 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1604 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_P2a_178
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_316 (coe v0))))
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_Q2a_210
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_318 (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_P2b_180
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_316 (coe v0))))
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_Q2b_212
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_318 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.pparamThreshold
d_pparamThreshold_1608 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1608 ~v0 v1 ~v2 v3
  = du_pparamThreshold_1608 v1 v3
du_pparamThreshold_1608 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1608 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.PParams.C_NetworkGroup_144
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_P5a_186
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_316 (coe v0))))
             (coe du_'9472'_1496)
      MAlonzo.Code.Ledger.PParams.C_EconomicGroup_146
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_P5b_188
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_316 (coe v0))))
             (coe du_'9472'_1496)
      MAlonzo.Code.Ledger.PParams.C_TechnicalGroup_148
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_P5c_190
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_316 (coe v0))))
             (coe du_'9472'_1496)
      MAlonzo.Code.Ledger.PParams.C_GovernanceGroup_150
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_P5d_192
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_316 (coe v0))))
             (coe du_'9472'_1496)
      MAlonzo.Code.Ledger.PParams.C_SecurityGroup_152
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1496)
             (coe
                du_vote_1474
                (MAlonzo.Code.Ledger.PParams.d_Q5e_216
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_318 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.P/Q5
d_P'47'Q5_1610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1610 v0 v1 ~v2 v3 = du_P'47'Q5_1610 v0 v1 v3
du_P'47'Q5_1610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1610 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1478
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1608 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_478
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_526
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1808 (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1478
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1608 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_478
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_526
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1808 (coe v0)))
               v2)))
-- Ledger.Ratify.canVote
d_canVote_1618 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 -> ()
d_canVote_1618 = erased
-- Ledger.Ratify.StakeDistrs
d_StakeDistrs_1626 a0 = ()
newtype T_StakeDistrs_1626
  = C_StakeDistrs'46'constructor_10609 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_1630 ::
  T_StakeDistrs_1626 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1630 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_10609 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv
d_RatifyEnv_1632 a0 = ()
data T_RatifyEnv_1632
  = C_RatifyEnv'46'constructor_11057 T_StakeDistrs_1626 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1644 :: T_RatifyEnv_1632 -> T_StakeDistrs_1626
d_stakeDistrs_1644 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11057 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1646 :: T_RatifyEnv_1632 -> AgdaAny
d_currentEpoch_1646 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11057 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.dreps
d_dreps_1648 ::
  T_RatifyEnv_1632 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1648 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11057 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1650 ::
  T_RatifyEnv_1632 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1650 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11057 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.treasury
d_treasury_1652 :: T_RatifyEnv_1632 -> Integer
d_treasury_1652 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11057 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState
d_RatifyState_1654 a0 = ()
data T_RatifyState_1654
  = C_'10214'_'44'_'44'_'10215''691'_1668 MAlonzo.Code.Ledger.Enact.T_EnactState_644
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify.RatifyState.es
d_es_1662 ::
  T_RatifyState_1654 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_es_1662 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1668 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.removed
d_removed_1664 ::
  T_RatifyState_1654 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1664 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1668 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.delay
d_delay_1666 :: T_RatifyState_1654 -> Bool
d_delay_1666 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1668 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.CCData
d_CCData_1670 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CCData_1670 = erased
-- Ledger.Ratify.govRole
d_govRole_1672 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_494 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482
d_govRole_1672 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_496 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_498
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_486
      MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_500
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_486
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.IsCC
d_IsCC_1676 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_494 -> ()
d_IsCC_1676 = erased
-- Ledger.Ratify.IsDRep
d_IsDRep_1678 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_494 -> ()
d_IsDRep_1678 = erased
-- Ledger.Ratify.IsSPO
d_IsSPO_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_494 -> ()
d_IsSPO_1680 = erased
-- Ledger.Ratify.coinThreshold
d_coinThreshold_1688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_coinThreshold_1688 ~v0 = du_coinThreshold_1688
du_coinThreshold_1688 :: Integer
du_coinThreshold_1688 = coe (1000000000 :: Integer)
-- Ledger.Ratify.rankThreshold
d_rankThreshold_1690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_rankThreshold_1690 ~v0 = du_rankThreshold_1690
du_rankThreshold_1690 :: Integer
du_rankThreshold_1690 = coe (1000 :: Integer)
-- Ledger.Ratify.mostStakeDRepDist
d_mostStakeDRepDist_1692 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist_1692 ~v0 v1 v2
  = du_mostStakeDRepDist_1692 v1 v2
du_mostStakeDRepDist_1692 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist_1692 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du__'8638'''__1036 (coe v0)
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664 (coe v1)
                 (coe v2))))
-- Ledger.Ratify.mostStakeDRepDist-0
d_mostStakeDRepDist'45'0_1702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45'0_1702 ~v0 v1
  = du_mostStakeDRepDist'45'0_1702 v1
du_mostStakeDRepDist'45'0_1702 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist'45'0_1702 v0
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
                       MAlonzo.Code.Axiom.Set.d_th_1430
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_480 (coe v0))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                       (MAlonzo.Code.Axiom.Set.d_sp_150
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1430
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_210
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
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4) (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_480)
                    (coe du_mostStakeDRepDist_1692 (coe v0) (coe (0 :: Integer))) v0)
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                    (MAlonzo.Code.Axiom.Set.d_sp_150
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1430
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_210
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
d_mostStakeDRepDist'45''8709'_1710 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45''8709'_1710 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         addInt (coe (1 :: Integer))
         (coe
            MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1042
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
            (coe
               MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
            (coe (\ v2 -> v2)) (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_430
         (coe
            (\ v2 v3 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
-- Ledger.Ratify._.helper
d_helper_1724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_helper_1724 = erased
-- Ledger.Ratify.∃topNDRepDist
d_'8707'topNDRepDist_1752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'topNDRepDist_1752 v0 v1 v2 ~v3 ~v4
  = du_'8707'topNDRepDist_1752 v0 v1 v2
du_'8707'topNDRepDist_1752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'topNDRepDist_1752 v0 v1 v2
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
                       MAlonzo.Code.Ledger.Set.Theory.du_length'738'_222
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                       (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_494)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_specification_174
                             (MAlonzo.Code.Axiom.Set.d_th_1430
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                erased erased erased
                                (coe
                                   MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_210
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
               (d_mostStakeDRepDist'45''8709'_1710 (coe v0) (coe v2)))))
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
                             MAlonzo.Code.Ledger.Set.Theory.du_length'738'_222
                             (coe
                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                (coe
                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                                (coe
                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_494)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_specification_174
                                   (MAlonzo.Code.Axiom.Set.d_th_1430
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1430
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                      erased erased erased
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_210
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
                     (d_mostStakeDRepDist'45''8709'_1710 (coe v0) (coe v2))))))
         (coe
            MAlonzo.Code.Data.Nat.Properties.du_'8816''8658''62'_2750 (coe v1)
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du_length'738'_222
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_khs_192
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_494)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_specification_174
                     (MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     erased erased (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                        (MAlonzo.Code.Axiom.Set.d_sp_150
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                        erased erased erased
                        (coe
                           MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_210
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
                                                               MAlonzo.Code.Ledger.Set.Theory.du_length'738'_222
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                                              (coe v0))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                                           (coe v0))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                                                               (coe
                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_494)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_specification_174
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                     erased erased
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v2))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                        erased erased erased
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_210
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
                                                       (d_mostStakeDRepDist'45''8709'_1710
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
                                                                MAlonzo.Code.Ledger.Set.Theory.du_length'738'_222
                                                                (coe
                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                      (coe
                                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                                                                (coe
                                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_494)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_specification_174
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                      erased erased
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v2))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                         (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1430
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                         erased erased erased
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.du_to'45'sp_210
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
                                                        (d_mostStakeDRepDist'45''8709'_1710
                                                           (coe v0) (coe v2))))))
                                            (coe v3)))))))
                        (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))))
-- Ledger.Ratify.topNDRepDist
d_topNDRepDist_1778 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_topNDRepDist_1778 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2670
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du_length'738'_222
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                          (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_494)
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_480 (coe v2)))
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
                                                  du_mostStakeDRepDist_1692 (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        du_'8707'topNDRepDist_1752 (coe v0) (coe v1)
                                                        (coe v2)))))
                                     else coe seq (coe v9) (coe seq (coe v7) (coe v2))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v7)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_510
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Ratify.restrictedDists
d_restrictedDists_1790 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> T_StakeDistrs_1626 -> T_StakeDistrs_1626
d_restrictedDists_1790 ~v0 ~v1 ~v2 v3 = du_restrictedDists_1790 v3
du_restrictedDists_1790 :: T_StakeDistrs_1626 -> T_StakeDistrs_1626
du_restrictedDists_1790 v0 = coe v0
-- Ledger.Ratify._._.stakeDistr
d_stakeDistr_1804 ::
  T_StakeDistrs_1626 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1804 v0 = coe d_stakeDistr_1630 (coe v0)
-- Ledger.Ratify.actualVotes
d_actualVotes_1810 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_1810 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__696
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_1958 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_854
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_496
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_484))
         (coe
            du_actualCCVotes_1930 (coe v0) (coe v1) (coe v2) (coe v5)
            (coe v3)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__696
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_1958 (coe v0))))
         (coe du_actualPDRepVotes_1936 (coe v0) (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__696
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_govStructure_1958 (coe v0))))
            (coe du_actualDRepVotes_1938 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_1940 (coe v0) (coe v1) (coe v5) (coe v4))))
-- Ledger.Ratify._._.ccHotKeys
d_ccHotKeys_1828 ::
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1828 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_1828 v0
du_ccHotKeys_1828 ::
  T_RatifyEnv_1632 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1828 v0 = coe d_ccHotKeys_1650 (coe v0)
-- Ledger.Ratify._._.currentEpoch
d_currentEpoch_1830 ::
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_1830 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_1830 v0
du_currentEpoch_1830 :: T_RatifyEnv_1632 -> AgdaAny
du_currentEpoch_1830 v0 = coe d_currentEpoch_1646 (coe v0)
-- Ledger.Ratify._._.dreps
d_dreps_1832 ::
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1832 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_1832 v0
du_dreps_1832 ::
  T_RatifyEnv_1632 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1832 v0 = coe d_dreps_1648 (coe v0)
-- Ledger.Ratify._._.stakeDistrs
d_stakeDistrs_1834 ::
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1626
d_stakeDistrs_1834 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_1834 v0
du_stakeDistrs_1834 :: T_RatifyEnv_1632 -> T_StakeDistrs_1626
du_stakeDistrs_1834 v0 = coe d_stakeDistrs_1644 (coe v0)
-- Ledger.Ratify._._.treasury
d_treasury_1836 ::
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_1836 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_1836 v0
du_treasury_1836 :: T_RatifyEnv_1632 -> Integer
du_treasury_1836 v0 = coe d_treasury_1652 (coe v0)
-- Ledger.Ratify._.roleVotes
d_roleVotes_1896 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_1896 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_1896 v5 v6
du_roleVotes_1896 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_1896 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_854
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_496))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1020
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_612))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Ratify._.activeDReps
d_activeDReps_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_activeDReps_1904 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_1904 v0 v1
du_activeDReps_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_activeDReps_1904 v0 v1
  = coe
      MAlonzo.Code.Interface.IsSet.du_dom_490
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498)
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1020
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
              (coe
                 MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                 (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_1646 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0)))
                    (d_currentEpoch_1646 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0))))
                 (coe d_currentEpoch_1646 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_1648 (coe v1)))
-- Ledger.Ratify._.spos
d_spos_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_494]
d_spos_1910 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_1910 v1
du_spos_1910 ::
  T_RatifyEnv_1632 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_494]
du_spos_1910 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1012
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_612))
           (coe d_govRole_1672 (coe v1))
           (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_488))
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_490
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498)
         (coe d_stakeDistr_1630 (coe d_stakeDistrs_1644 (coe v0))))
-- Ledger.Ratify._.activeCC
d_activeCC_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_activeCC_1912 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_activeCC_1912 v0 v1 v6
du_activeCC_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_activeCC_1912 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    MAlonzo.Code.Interface.IsSet.du_dom_490
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1430
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498)
                    (coe
                       MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1020
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45'MAny_72
                            (coe
                               (\ v7 ->
                                  MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1120
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1430
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                             (coe
                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_khs_192
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0)))))
                          (coe d_ccHotKeys_1650 (coe v1))
                          (coe
                             MAlonzo.Code.Interface.IsSet.du_dom_490
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1430
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498) (coe v4))))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.du_'8709'_424
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1430
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.actualCCVote
d_actualCCVote_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_538
d_actualCCVote_1920 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_1920 v0 v1 v5 v6 v7
du_actualCCVote_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_538
du_actualCCVote_1920 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                 (coe
                    MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                    (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0)))
                    (coe
                       MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                       (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0)))
                       (\ v5 v6 -> v5) (d_currentEpoch_1646 (coe v1)) v4)
                    (coe
                       MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                       (\ v5 v6 -> v6)
                       (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0)))
                       (d_currentEpoch_1646 (coe v1)) v4))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0))))
                    (coe d_currentEpoch_1646 (coe v1)) (coe v4))) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1358
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe d_ccHotKeys_1650 (coe v1)) (coe v3)
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0)))))
                    (coe v3)
                    (let v6
                           = MAlonzo.Code.Axiom.Set.d_th_1430
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                     coe
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom_310 v6
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_480
                             (coe d_ccHotKeys_1650 (coe v1)))))) in
       coe
         (case coe v5 of
            MAlonzo.Code.Agda.Builtin.Bool.C_true_10
              -> case coe v6 of
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                     -> case coe v7 of
                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                            -> coe
                                 MAlonzo.Code.Data.Maybe.Base.du_maybe_36 (coe (\ v9 -> v9))
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_542)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1358
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                    (coe v2)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_484)
                                       (coe v8))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                          erased
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                             (coe
                                                MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_612)
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                      (coe v0))))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_484)
                                          (coe v8))
                                       (let v9
                                              = MAlonzo.Code.Axiom.Set.d_th_1430
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Rel.du_dom_310 v9
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_480
                                                (coe v2))))))
                          _ -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_544
                   _ -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_544
            _ -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_544))
-- Ledger.Ratify._.actualCCVotes
d_actualCCVotes_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_1930 v0 v1 v2 ~v3 ~v4 v5 v6
  = du_actualCCVotes_1930 v0 v1 v2 v5 v6
du_actualCCVotes_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_1930 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                    (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                       (MAlonzo.Code.Ledger.PParams.d_ccMinSize_328 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Set.Theory.du_length'738'_222
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_494)
                          (coe du_activeCC_1912 (coe v0) (coe v1) (coe v4))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_956
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1430
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe du_actualCCVote_1920 (coe v0) (coe v1) (coe v3)) (coe v6)))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_constMap_992
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1430
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_490
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498) (coe v6))
                            (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_542)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_510
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1430
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.actualPDRepVotes
d_actualPDRepVotes_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_1936 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_1936 v0 v6
du_actualPDRepVotes_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_1936 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__696
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_1958 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_678
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_498)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_544)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_678
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_500)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_542))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_514
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__696
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_1958 (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_678
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_498)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_544)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_678
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_500)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_540)))
         _ -> coe v2)
-- Ledger.Ratify._.actualDRepVotes
d_actualDRepVotes_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_1938 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_1938 v0 v1 v5
du_actualDRepVotes_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_1938 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__696
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_1958 (coe v0))))
      (coe
         du_roleVotes_1896 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_486))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_constMap_992
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_496
               (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_486))
            (coe du_activeDReps_1904 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_542))
-- Ledger.Ratify._.actualSPOVotes
d_actualSPOVotes_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_1940 v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_actualSPOVotes_1940 v0 v1 v5 v6
du_actualSPOVotes_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_1940 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__696
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_1958 (coe v0))))
              (coe
                 du_roleVotes_1896 (coe v2)
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_488))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_constMap_992
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_spos_1910 (coe v1))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_544)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_520 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__696
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_1958 (coe v0))))
                (coe
                   du_roleVotes_1896 (coe v2)
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_488))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_constMap_992
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe du_spos_1910 (coe v1))
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_542))
         _ -> coe v4)
-- Ledger.Ratify._/₀_
d__'47''8320'__1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__1942 ~v0 v1 v2 = du__'47''8320'__1942 v1 v2
du__'47''8320'__1942 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'47''8320'__1942 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Ratify.getStakeDist
d_getStakeDist_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_494] ->
  T_StakeDistrs_1626 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_1950 ~v0 v1 v2 v3 = du_getStakeDist_1950 v1 v2 v3
du_getStakeDist_1950 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_494] ->
  T_StakeDistrs_1626 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_1950 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_484
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_constMap_992
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1430
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1012
                (\ v3 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe
                           MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_612))
                     (coe d_govRole_1672 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_486
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1028
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_612))
                  (coe d_govRole_1672 (coe v3)) (coe v0))
             (d_stakeDistr_1630 (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_488
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1028
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_612))
                  (coe d_govRole_1672 (coe v3)) (coe v0))
             (d_stakeDistr_1630 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_494] ->
  T_StakeDistrs_1626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_1960 v0 v1 v2 v3 v4
  = coe
      du__'47''8320'__1942
      (coe
         d_acceptedStake_1974 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_1976 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Ratify._.acceptedStake
d_acceptedStake_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_494] ->
  T_StakeDistrs_1626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_1974 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1042
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_1958 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1120
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_1958 (coe v0))))
         (coe du_getStakeDist_1950 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1408
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_614))
            (coe v4) (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_540)))
-- Ledger.Ratify._.totalStake
d_totalStake_1976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_494] ->
  T_StakeDistrs_1626 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_1976 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1042
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_1958 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1128
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_1958 (coe v0))))
         (coe du_getStakeDist_1950 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1408
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_614))
            (coe v4)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_544)))
-- Ledger.Ratify.acceptedBy
d_acceptedBy_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 -> ()
d_acceptedBy_1982 = erased
-- Ledger.Ratify.accepted
d_accepted_2010 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 -> ()
d_accepted_2010 = erased
-- Ledger.Ratify.expired
d_expired_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 -> ()
d_expired_2018 = erased
-- Ledger.Ratify.verifyPrev
d_verifyPrev_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_644 -> ()
d_verifyPrev_2026 = erased
-- Ledger.Ratify.delayingAction
d_delayingAction_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 -> Bool
d_delayingAction_2048 ~v0 v1 = du_delayingAction_2048 v1
du_delayingAction_2048 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 -> Bool
du_delayingAction_2048 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_514
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_516 v1 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_518 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_520 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_522 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_524 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_526
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed
d_delayed_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_644 -> Bool -> ()
d_delayed_2052 = erased
-- Ledger.Ratify.verifyPrev?
d_verifyPrev'63'_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2068 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_514
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0)))
                   (coe (\ v4 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_656 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_516 v4 v5 v6
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0)))
                   (coe (\ v7 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_656 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_518 v4 v5
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0)))
                   (coe (\ v6 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_constitution_658 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_520 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0)))
                   (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pv_660 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_522 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0)))
                   (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pparams_662 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_524 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_526
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed?
d_delayed'63'_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2122 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__78
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__88
         (coe d_verifyPrev'63'_2068 (coe v0) (coe v1) (coe v2) (coe v3))
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
d_acceptedBy'63'_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_482 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2142 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_1243 v5 v6 v7 v8 v9
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
                                 d_threshold_1500 v0 v12
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 ()
                                    erased () erased
                                    (\ v14 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                                    v10)
                                 (MAlonzo.Code.Ledger.GovernanceActions.d_action_608 (coe v3)) v4))
                           (coe
                              d_acceptedStakeRatio_1960 (coe v0) (coe v4)
                              (coe
                                 MAlonzo.Code.Interface.IsSet.du_dom_490
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498)
                                 (coe
                                    d_actualVotes_1810 (coe v0) (coe v1) (coe v12) (coe v10)
                                    (coe
                                       MAlonzo.Code.Ledger.GovernanceActions.d_action_608 (coe v3))
                                    (coe
                                       MAlonzo.Code.Ledger.GovernanceActions.d_votes_602 (coe v3))))
                              (coe d_stakeDistrs_1644 (coe v1))
                              (coe
                                 d_actualVotes_1810 (coe v0) (coe v1) (coe v12) (coe v10)
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_608 (coe v3))
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_602 (coe v3))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.accepted?
d_accepted'63'_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2160 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
      (coe
         d_acceptedBy'63'_2142 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_484))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
         (coe
            d_acceptedBy'63'_2142 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_486))
         (coe
            d_acceptedBy'63'_2142 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_488)))
-- Ledger.Ratify.expired?
d_expired'63'_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2174 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
            (coe
               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_606 (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0)))
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_606 (coe v2))
            v1))
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__2192 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2192
  = C_RATIFY'45'Accept_2220 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Enact.T__'8866'_'8640''10631'_'44'ENACT'10632'__726 |
    C_RATIFY'45'Reject_2236 AgdaAny |
    C_RATIFY'45'Continue_2266 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103331 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2196 ~v0 v1 = du_ccHotKeys_2196 v1
du_ccHotKeys_2196 ::
  T_GeneralizeTel_103331 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2196 v0
  = coe d_ccHotKeys_1650 (coe d_'46'generalizedField'45'Γ_103319 v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2198 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103331 -> AgdaAny
d_currentEpoch_2198 ~v0 v1 = du_currentEpoch_2198 v1
du_currentEpoch_2198 :: T_GeneralizeTel_103331 -> AgdaAny
du_currentEpoch_2198 v0
  = coe
      d_currentEpoch_1646 (coe d_'46'generalizedField'45'Γ_103319 v0)
-- Ledger.Ratify._.dreps
d_dreps_2200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103331 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2200 ~v0 v1 = du_dreps_2200 v1
du_dreps_2200 ::
  T_GeneralizeTel_103331 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2200 v0
  = coe d_dreps_1648 (coe d_'46'generalizedField'45'Γ_103319 v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103331 -> T_StakeDistrs_1626
d_stakeDistrs_2202 ~v0 v1 = du_stakeDistrs_2202 v1
du_stakeDistrs_2202 :: T_GeneralizeTel_103331 -> T_StakeDistrs_1626
du_stakeDistrs_2202 v0
  = coe
      d_stakeDistrs_1644 (coe d_'46'generalizedField'45'Γ_103319 v0)
-- Ledger.Ratify._.treasury
d_treasury_2204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103331 -> Integer
d_treasury_2204 ~v0 v1 = du_treasury_2204 v1
du_treasury_2204 :: T_GeneralizeTel_103331 -> Integer
du_treasury_2204 v0
  = coe d_treasury_1652 (coe d_'46'generalizedField'45'Γ_103319 v0)
-- Ledger.Ratify._.action
d_action_2210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103331 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512
d_action_2210 ~v0 v1 = du_action_2210 v1
du_action_2210 ::
  T_GeneralizeTel_103331 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512
du_action_2210 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_608
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_103321 v0))
-- Ledger.Ratify._.prevAction
d_prevAction_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103331 -> AgdaAny
d_prevAction_2214 ~v0 v1 = du_prevAction_2214 v1
du_prevAction_2214 :: T_GeneralizeTel_103331 -> AgdaAny
du_prevAction_2214 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_610
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_103321 v0))
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103741 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2224 ~v0 v1 = du_ccHotKeys_2224 v1
du_ccHotKeys_2224 ::
  T_GeneralizeTel_103741 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2224 v0
  = coe d_ccHotKeys_1650 (coe d_'46'generalizedField'45'Γ_103731 v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2226 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103741 -> AgdaAny
d_currentEpoch_2226 ~v0 v1 = du_currentEpoch_2226 v1
du_currentEpoch_2226 :: T_GeneralizeTel_103741 -> AgdaAny
du_currentEpoch_2226 v0
  = coe
      d_currentEpoch_1646 (coe d_'46'generalizedField'45'Γ_103731 v0)
-- Ledger.Ratify._.dreps
d_dreps_2228 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103741 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2228 ~v0 v1 = du_dreps_2228 v1
du_dreps_2228 ::
  T_GeneralizeTel_103741 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2228 v0
  = coe d_dreps_1648 (coe d_'46'generalizedField'45'Γ_103731 v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103741 -> T_StakeDistrs_1626
d_stakeDistrs_2230 ~v0 v1 = du_stakeDistrs_2230 v1
du_stakeDistrs_2230 :: T_GeneralizeTel_103741 -> T_StakeDistrs_1626
du_stakeDistrs_2230 v0
  = coe
      d_stakeDistrs_1644 (coe d_'46'generalizedField'45'Γ_103731 v0)
-- Ledger.Ratify._.treasury
d_treasury_2232 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103741 -> Integer
d_treasury_2232 ~v0 v1 = du_treasury_2232 v1
du_treasury_2232 :: T_GeneralizeTel_103741 -> Integer
du_treasury_2232 v0
  = coe d_treasury_1652 (coe d_'46'generalizedField'45'Γ_103731 v0)
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_104329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2240 ~v0 v1 = du_ccHotKeys_2240 v1
du_ccHotKeys_2240 ::
  T_GeneralizeTel_104329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2240 v0
  = coe d_ccHotKeys_1650 (coe d_'46'generalizedField'45'Γ_104319 v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_104329 -> AgdaAny
d_currentEpoch_2242 ~v0 v1 = du_currentEpoch_2242 v1
du_currentEpoch_2242 :: T_GeneralizeTel_104329 -> AgdaAny
du_currentEpoch_2242 v0
  = coe
      d_currentEpoch_1646 (coe d_'46'generalizedField'45'Γ_104319 v0)
-- Ledger.Ratify._.dreps
d_dreps_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_104329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2244 ~v0 v1 = du_dreps_2244 v1
du_dreps_2244 ::
  T_GeneralizeTel_104329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2244 v0
  = coe d_dreps_1648 (coe d_'46'generalizedField'45'Γ_104319 v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_104329 -> T_StakeDistrs_1626
d_stakeDistrs_2246 ~v0 v1 = du_stakeDistrs_2246 v1
du_stakeDistrs_2246 :: T_GeneralizeTel_104329 -> T_StakeDistrs_1626
du_stakeDistrs_2246 v0
  = coe
      d_stakeDistrs_1644 (coe d_'46'generalizedField'45'Γ_104319 v0)
-- Ledger.Ratify._.treasury
d_treasury_2248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_104329 -> Integer
d_treasury_2248 ~v0 v1 = du_treasury_2248 v1
du_treasury_2248 :: T_GeneralizeTel_104329 -> Integer
du_treasury_2248 v0
  = coe d_treasury_1652 (coe d_'46'generalizedField'45'Γ_104319 v0)
-- Ledger.Ratify._.action
d_action_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_104329 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512
d_action_2254 ~v0 v1 = du_action_2254 v1
du_action_2254 ::
  T_GeneralizeTel_104329 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512
du_action_2254 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_608
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_104321 v0))
-- Ledger.Ratify._.prevAction
d_prevAction_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_104329 -> AgdaAny
d_prevAction_2258 ~v0 v1 = du_prevAction_2258 v1
du_prevAction_2258 :: T_GeneralizeTel_104329 -> AgdaAny
du_prevAction_2258 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_610
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_104321 v0))
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1632 ->
  T_RatifyState_1654 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_1654 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2268 = erased
-- Ledger.Ratify..generalizedField-Γ
d_'46'generalizedField'45'Γ_103319 ::
  T_GeneralizeTel_103331 -> T_RatifyEnv_1632
d_'46'generalizedField'45'Γ_103319
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_103321 ::
  T_GeneralizeTel_103331 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_103321
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_103323 ::
  T_GeneralizeTel_103331 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_'46'generalizedField'45'es_103323
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_103325 ::
  T_GeneralizeTel_103331 -> Bool
d_'46'generalizedField'45'd_103325
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es'
d_'46'generalizedField'45'es''_103327 ::
  T_GeneralizeTel_103331 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_'46'generalizedField'45'es''_103327
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_103329 ::
  T_GeneralizeTel_103331 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_103329
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_103331 a0 = ()
data T_GeneralizeTel_103331
  = C_mkGeneralizeTel_103333 T_RatifyEnv_1632
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Ledger.Enact.T_EnactState_644 Bool
                             MAlonzo.Code.Ledger.Enact.T_EnactState_644
                             [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ratify..generalizedField-Γ
d_'46'generalizedField'45'Γ_103731 ::
  T_GeneralizeTel_103741 -> T_RatifyEnv_1632
d_'46'generalizedField'45'Γ_103731
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_103733 ::
  T_GeneralizeTel_103741 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_103733
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_103735 ::
  T_GeneralizeTel_103741 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_'46'generalizedField'45'es_103735
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_103737 ::
  T_GeneralizeTel_103741 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_103737
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_103739 ::
  T_GeneralizeTel_103741 -> Bool
d_'46'generalizedField'45'd_103739
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_103741 a0 = ()
data T_GeneralizeTel_103741
  = C_mkGeneralizeTel_103743 T_RatifyEnv_1632
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Ledger.Enact.T_EnactState_644
                             [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify..generalizedField-Γ
d_'46'generalizedField'45'Γ_104319 ::
  T_GeneralizeTel_104329 -> T_RatifyEnv_1632
d_'46'generalizedField'45'Γ_104319
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_104321 ::
  T_GeneralizeTel_104329 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_104321
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_104323 ::
  T_GeneralizeTel_104329 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_'46'generalizedField'45'es_104323
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_104325 ::
  T_GeneralizeTel_104329 -> Bool
d_'46'generalizedField'45'd_104325
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_104327 ::
  T_GeneralizeTel_104329 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_104327
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_104329 a0 = ()
data T_GeneralizeTel_104329
  = C_mkGeneralizeTel_104331 T_RatifyEnv_1632
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Ledger.Enact.T_EnactState_644 Bool
                             [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
