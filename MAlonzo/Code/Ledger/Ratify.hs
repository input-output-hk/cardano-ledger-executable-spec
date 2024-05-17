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
d__'8866'_'8640''10631'_'44'ENACT'10632'__1372 a0 a1 a2 a3 a4 = ()
-- Ledger.Ratify._.EnactEnv
d_EnactEnv_1388 a0 = ()
-- Ledger.Ratify._.EnactState
d_EnactState_1390 a0 = ()
-- Ledger.Ratify._.Vote
d_Vote_1438 a0 = ()
-- Ledger.Ratify._∧_
d__'8743'__1448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__1448 = erased
-- Ledger.Ratify._
d___1450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d___1450 ~v0 = du___1450
du___1450 :: MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du___1450
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196
-- Ledger.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1454 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1454 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1454 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1454 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_482 -> coe v0
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484 -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_486 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1466 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 -> AgdaAny
d_'8739'_'8741'_'8739'_1466 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1466 v2 v3
du_'8739'_'8741'_'8739'_1466 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 -> AgdaAny
du_'8739'_'8741'_'8739'_1466 v0 v1
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
d_vote_1476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1476 ~v0 = du_vote_1476
du_vote_1476 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1476 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Ratify.defer
d_defer_1478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1478 ~v0 = du_defer_1478
du_defer_1478 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1478
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__268
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Ratify.maxThreshold
d_maxThreshold_1480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1480 ~v0 v1 = du_maxThreshold_1480 v1
du_maxThreshold_1480 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1480 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256 (coe du_comb_1488)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Ledger.Set.Theory.du_finiteness_214 v0))
-- Ledger.Ratify._.comb
d_comb_1488 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_1488 ~v0 ~v1 v2 v3 = du_comb_1488 v2 v3
du_comb_1488 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_1488 v0 v1
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
d_'9472'_1498 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1498 ~v0 = du_'9472'_1498
du_'9472'_1498 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1498 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Ratify.✓†
d_'10003''8224'_1500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1500 ~v0 = du_'10003''8224'_1500
du_'10003''8224'_1500 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1500 = coe du_vote_1476 (coe du_defer_1478)
-- Ledger.Ratify.threshold
d_threshold_1502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1502 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_512
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1454 (coe du_'9472'_1498)
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_P1_176
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v1))))
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_Q1_208
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_514 v4 v5 v6
        -> coe
             du_'8739'_'8741'_'8739'_1466 (coe du_'9472'_1498)
             (coe du_P'47'Q2a'47'b_1608 (coe v1) (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_516 v4 v5
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1454 (coe v2)
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_P3_182
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v1))))
             (coe du_'9472'_1498)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_518 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1454 (coe v2)
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_P4_184
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v1))))
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_Q4_214
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_520 v4
        -> coe
             du_'8739'_'8741'_'8739'_1466 (coe v2)
             (coe du_P'47'Q5_1614 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_522 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1454 (coe v2)
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_P6_194
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v1))))
             (coe du_'9472'_1498)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_524
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1454 (coe du_'10003''8224'_1500)
             (coe du_'10003''8224'_1500) (coe du_'10003''8224'_1500)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.✓
d_'10003'_1606 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1606 ~v0 ~v1 v2 = du_'10003'_1606 v2
du_'10003'_1606 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1606 v0 = coe v0
-- Ledger.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1608 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1608 ~v0 v1 v2 = du_P'47'Q2a'47'b_1608 v1 v2
du_P'47'Q2a'47'b_1608 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1608 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_P2a_178
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0))))
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_Q2a_210
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_P2b_180
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0))))
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_Q2b_212
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.pparamThreshold
d_pparamThreshold_1612 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1612 ~v0 v1 ~v2 v3
  = du_pparamThreshold_1612 v1 v3
du_pparamThreshold_1612 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_142 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1612 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.PParams.C_NetworkGroup_144
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_P5a_186
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0))))
             (coe du_'9472'_1498)
      MAlonzo.Code.Ledger.PParams.C_EconomicGroup_146
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_P5b_188
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0))))
             (coe du_'9472'_1498)
      MAlonzo.Code.Ledger.PParams.C_TechnicalGroup_148
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_P5c_190
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0))))
             (coe du_'9472'_1498)
      MAlonzo.Code.Ledger.PParams.C_GovernanceGroup_150
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_P5d_192
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0))))
             (coe du_'9472'_1498)
      MAlonzo.Code.Ledger.PParams.C_SecurityGroup_152
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1498)
             (coe
                du_vote_1476
                (MAlonzo.Code.Ledger.PParams.d_Q5e_216
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.P/Q5
d_P'47'Q5_1614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1614 v0 v1 ~v2 v3 = du_P'47'Q5_1614 v0 v1 v3
du_P'47'Q5_1614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1614 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1480
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1612 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_482
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_526
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1798 (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1480
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1612 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_482
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_526
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1798 (coe v0)))
               v2)))
-- Ledger.Ratify.canVote
d_canVote_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 -> ()
d_canVote_1622 = erased
-- Ledger.Ratify.StakeDistrs
d_StakeDistrs_1630 a0 = ()
newtype T_StakeDistrs_1630
  = C_StakeDistrs'46'constructor_10613 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_1634 ::
  T_StakeDistrs_1630 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1634 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_10613 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv
d_RatifyEnv_1636 a0 = ()
data T_RatifyEnv_1636
  = C_RatifyEnv'46'constructor_11061 T_StakeDistrs_1630 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1648 :: T_RatifyEnv_1636 -> T_StakeDistrs_1630
d_stakeDistrs_1648 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11061 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1650 :: T_RatifyEnv_1636 -> AgdaAny
d_currentEpoch_1650 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11061 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.dreps
d_dreps_1652 ::
  T_RatifyEnv_1636 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1652 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11061 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1654 ::
  T_RatifyEnv_1636 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1654 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11061 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.treasury
d_treasury_1656 :: T_RatifyEnv_1636 -> Integer
d_treasury_1656 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11061 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState
d_RatifyState_1658 a0 = ()
data T_RatifyState_1658
  = C_'10214'_'44'_'44'_'10215''691'_1672 MAlonzo.Code.Ledger.Enact.T_EnactState_644
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify.RatifyState.es
d_es_1666 ::
  T_RatifyState_1658 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_es_1666 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1672 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.removed
d_removed_1668 ::
  T_RatifyState_1658 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1668 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1672 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.delay
d_delay_1670 :: T_RatifyState_1658 -> Bool
d_delay_1670 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1672 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.CCData
d_CCData_1674 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CCData_1674 = erased
-- Ledger.Ratify.govRole
d_govRole_1676 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480
d_govRole_1676 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_494 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_496
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484
      MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_498
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.IsCC
d_IsCC_1680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492 -> ()
d_IsCC_1680 = erased
-- Ledger.Ratify.IsDRep
d_IsDRep_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492 -> ()
d_IsDRep_1682 = erased
-- Ledger.Ratify.IsSPO
d_IsSPO_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492 -> ()
d_IsSPO_1684 = erased
-- Ledger.Ratify.coinThreshold
d_coinThreshold_1692 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_coinThreshold_1692 ~v0 = du_coinThreshold_1692
du_coinThreshold_1692 :: Integer
du_coinThreshold_1692 = coe (1000000000 :: Integer)
-- Ledger.Ratify.rankThreshold
d_rankThreshold_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_rankThreshold_1694 ~v0 = du_rankThreshold_1694
du_rankThreshold_1694 :: Integer
du_rankThreshold_1694 = coe (1000 :: Integer)
-- Ledger.Ratify.mostStakeDRepDist
d_mostStakeDRepDist_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist_1696 ~v0 v1 v2
  = du_mostStakeDRepDist_1696 v1 v2
du_mostStakeDRepDist_1696 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist_1696 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du__'8638'''__1042 (coe v0)
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664 (coe v1)
                 (coe v2))))
-- Ledger.Ratify.mostStakeDRepDist-0
d_mostStakeDRepDist'45'0_1706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45'0_1706 ~v0 v1
  = du_mostStakeDRepDist'45'0_1706 v1
du_mostStakeDRepDist'45'0_1706 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist'45'0_1706 v0
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
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_482 (coe v0))
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
                    (\ v3 v4 -> v4) (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_482)
                    (coe du_mostStakeDRepDist_1696 (coe v0) (coe (0 :: Integer))) v0)
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
d_mostStakeDRepDist'45''8709'_1714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45''8709'_1714 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         addInt (coe (1 :: Integer))
         (coe
            MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
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
         MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_430
         (coe
            (\ v2 v3 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
-- Ledger.Ratify._.helper
d_helper_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_helper_1728 = erased
-- Ledger.Ratify.∃topNDRepDist
d_'8707'topNDRepDist_1756 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'topNDRepDist_1756 v0 v1 v2 ~v3 ~v4
  = du_'8707'topNDRepDist_1756 v0 v1 v2
du_'8707'topNDRepDist_1756 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'topNDRepDist_1756 v0 v1 v2
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
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                       (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_496)
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
               (d_mostStakeDRepDist'45''8709'_1714 (coe v0) (coe v2)))))
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
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                                (coe
                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_496)
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
                     (d_mostStakeDRepDist'45''8709'_1714 (coe v0) (coe v2))))))
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
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_496)
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
                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_496)
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
                                                       (d_mostStakeDRepDist'45''8709'_1714
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
                                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_496)
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
                                                        (d_mostStakeDRepDist'45''8709'_1714
                                                           (coe v0) (coe v2))))))
                                            (coe v3)))))))
                        (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))))
-- Ledger.Ratify.topNDRepDist
d_topNDRepDist_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_topNDRepDist_1782 v0 v1 v2
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
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                          (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_496)
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_482 (coe v2)))
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
                                                  du_mostStakeDRepDist_1696 (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        du_'8707'topNDRepDist_1756 (coe v0) (coe v1)
                                                        (coe v2)))))
                                     else coe seq (coe v9) (coe seq (coe v7) (coe v2))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v7)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_512
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Ratify.restrictedDists
d_restrictedDists_1794 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> T_StakeDistrs_1630 -> T_StakeDistrs_1630
d_restrictedDists_1794 ~v0 ~v1 ~v2 v3 = du_restrictedDists_1794 v3
du_restrictedDists_1794 :: T_StakeDistrs_1630 -> T_StakeDistrs_1630
du_restrictedDists_1794 v0 = coe v0
-- Ledger.Ratify._._.stakeDistr
d_stakeDistr_1808 ::
  T_StakeDistrs_1630 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1808 v0 = coe d_stakeDistr_1634 (coe v0)
-- Ledger.Ratify.actualVotes
d_actualVotes_1814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_1814 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_802
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_494
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_482))
         (coe
            du_actualCCVotes_1942 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
         (coe du_actualPDRepVotes_1950 (coe v0) (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
            (coe du_actualDRepVotes_1952 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_1954 (coe v0) (coe v1) (coe v5) (coe v4))))
-- Ledger.Ratify._._.ccHotKeys
d_ccHotKeys_1832 ::
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1832 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_1832 v0
du_ccHotKeys_1832 ::
  T_RatifyEnv_1636 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1832 v0 = coe d_ccHotKeys_1654 (coe v0)
-- Ledger.Ratify._._.currentEpoch
d_currentEpoch_1834 ::
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_1834 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_1834 v0
du_currentEpoch_1834 :: T_RatifyEnv_1636 -> AgdaAny
du_currentEpoch_1834 v0 = coe d_currentEpoch_1650 (coe v0)
-- Ledger.Ratify._._.dreps
d_dreps_1836 ::
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1836 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_1836 v0
du_dreps_1836 ::
  T_RatifyEnv_1636 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1836 v0 = coe d_dreps_1652 (coe v0)
-- Ledger.Ratify._._.stakeDistrs
d_stakeDistrs_1838 ::
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1630
d_stakeDistrs_1838 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_1838 v0
du_stakeDistrs_1838 :: T_RatifyEnv_1636 -> T_StakeDistrs_1630
du_stakeDistrs_1838 v0 = coe d_stakeDistrs_1648 (coe v0)
-- Ledger.Ratify._._.treasury
d_treasury_1840 ::
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_1840 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_1840 v0
du_treasury_1840 :: T_RatifyEnv_1636 -> Integer
du_treasury_1840 v0 = coe d_treasury_1656 (coe v0)
-- Ledger.Ratify._.roleVotes
d_roleVotes_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_1902 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_1902 v5 v6
du_roleVotes_1902 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_1902 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_802
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_494))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1026
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
d_activeDReps_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_activeDReps_1910 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_1910 v0 v1
du_activeDReps_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_activeDReps_1910 v0 v1
  = coe
      MAlonzo.Code.Interface.IsSet.du_dom_492
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1026
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
                    (\ v3 v4 -> v3) (d_currentEpoch_1650 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
                    (d_currentEpoch_1650 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))))
                 (coe d_currentEpoch_1650 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_1652 (coe v1)))
-- Ledger.Ratify._.spos
d_spos_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492]
d_spos_1916 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_1916 v1
du_spos_1916 ::
  T_RatifyEnv_1636 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492]
du_spos_1916 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1018
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_616))
           (coe d_govRole_1676 (coe v1))
           (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_486))
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_492
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
         (coe d_stakeDistr_1634 (coe d_stakeDistrs_1648 (coe v0))))
-- Ledger.Ratify._.getCCHotCred
d_getCCHotCred_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getCCHotCred_1918 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_1918 v0 v1 v6
du_getCCHotCred_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getCCHotCred_1918 v0 v1 v2
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
                              (\ v5 v6 -> v5) (d_currentEpoch_1650 (coe v1)) v4)
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v5 v6 -> v6)
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
                              (d_currentEpoch_1650 (coe v1)) v4))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
                                    (coe v0))))
                           (coe d_currentEpoch_1650 (coe v1)) (coe v4))) in
           coe
             (let v6
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1430
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe d_ccHotKeys_1654 (coe v1)) (coe v3)
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
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))))
                           (coe v3)
                           (let v6
                                  = MAlonzo.Code.Axiom.Set.d_th_1430
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_312 v6
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                    (coe d_ccHotKeys_1654 (coe v1)))))) in
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
d_actualCCVote_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_542
d_actualCCVote_1928 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_1928 v0 v1 v5 v6 v7
du_actualCCVote_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_542
du_actualCCVote_1928 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_1918 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_36 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_546)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1430
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_482) (coe v6))
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
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
                             = MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_312 v7
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_482 (coe v2))))))
         _ -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_548)
-- Ledger.Ratify._.activeCC
d_activeCC_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_activeCC_1938 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_activeCC_1938 v0 v1 v6
du_activeCC_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_activeCC_1938 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_getCCHotCred_1918 (coe v0) (coe v1))
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_482 (coe v2))
-- Ledger.Ratify._.actualCCVotes
d_actualCCVotes_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_1942 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_1942 v0 v1 v2 v3 v5
du_actualCCVotes_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_1942 v0 v1 v2 v3 v4
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
                          MAlonzo.Code.Ledger.Set.Theory.du_length'738'_222
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
                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_496)
                          (coe du_activeCC_1938 (coe v0) (coe v1) (coe v6))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1024
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1430
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe du_actualCCVote_1928 (coe v0) (coe v1) (coe v4)) (coe v6)))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_constMap_1060
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1430
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_492
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500) (coe v6))
                            (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_546)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_512
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1430
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.actualPDRepVotes
d_actualPDRepVotes_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_1950 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_1950 v0 v6
du_actualPDRepVotes_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_1950 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_496)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_548)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_498)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_546))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_512
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_496)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_548)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_498)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_544)))
         _ -> coe v2)
-- Ledger.Ratify._.actualDRepVotes
d_actualDRepVotes_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_1952 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_1952 v0 v1 v5
du_actualDRepVotes_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_1952 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
      (coe
         du_roleVotes_1902 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_constMap_1060
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_494
               (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484))
            (coe du_activeDReps_1910 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_546))
-- Ledger.Ratify._.actualSPOVotes
d_actualSPOVotes_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_1954 v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_actualSPOVotes_1954 v0 v1 v5 v6
du_actualSPOVotes_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_1954 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
              (coe
                 du_roleVotes_1902 (coe v2)
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_486))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_constMap_1060
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_spos_1916 (coe v1))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_548)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_518 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
                (coe
                   du_roleVotes_1902 (coe v2)
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_486))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_constMap_1060
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe du_spos_1916 (coe v1))
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_546))
         _ -> coe v4)
-- Ledger.Ratify._/₀_
d__'47''8320'__1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__1956 ~v0 v1 v2 = du__'47''8320'__1956 v1 v2
du__'47''8320'__1956 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'47''8320'__1956 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Ratify.getStakeDist
d_getStakeDist_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492] ->
  T_StakeDistrs_1630 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_1964 ~v0 v1 v2 v3 = du_getStakeDist_1964 v1 v2 v3
du_getStakeDist_1964 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492] ->
  T_StakeDistrs_1630 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_1964 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_482
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_constMap_1060
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1430
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1018
                (\ v3 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe
                           MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_616))
                     (coe d_govRole_1676 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1034
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_616))
                  (coe d_govRole_1676 (coe v3)) (coe v0))
             (d_stakeDistr_1634 (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_486
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1034
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_616))
                  (coe d_govRole_1676 (coe v3)) (coe v0))
             (d_stakeDistr_1634 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492] ->
  T_StakeDistrs_1630 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_1974 v0 v1 v2 v3 v4
  = coe
      du__'47''8320'__1956
      (coe
         d_acceptedStake_1988 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_1990 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Ratify._.acceptedStake
d_acceptedStake_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492] ->
  T_StakeDistrs_1630 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_1988 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
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
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1190
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
         (coe du_getStakeDist_1964 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1480
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_618))
            (coe v4) (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_544)))
-- Ledger.Ratify._.totalStake
d_totalStake_1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492] ->
  T_StakeDistrs_1630 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_1990 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
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
         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
         (coe du_getStakeDist_1964 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1480
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_618))
            (coe v4)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_548)))
-- Ledger.Ratify.acceptedBy
d_acceptedBy_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 -> ()
d_acceptedBy_1996 = erased
-- Ledger.Ratify.accepted
d_accepted_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 -> ()
d_accepted_2024 = erased
-- Ledger.Ratify.expired
d_expired_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 -> ()
d_expired_2032 = erased
-- Ledger.Ratify.verifyPrev
d_verifyPrev_2040 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_644 -> ()
d_verifyPrev_2040 = erased
-- Ledger.Ratify.delayingAction
d_delayingAction_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 -> Bool
d_delayingAction_2062 ~v0 v1 = du_delayingAction_2062 v1
du_delayingAction_2062 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 -> Bool
du_delayingAction_2062 v0
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
d_delayed_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_644 -> Bool -> ()
d_delayed_2066 = erased
-- Ledger.Ratify.verifyPrev?
d_verifyPrev'63'_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2082 v0 v1 v2 v3
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
d_delayed'63'_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2136 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__78
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__88
         (coe d_verifyPrev'63'_2082 (coe v0) (coe v1) (coe v2) (coe v3))
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
d_acceptedBy'63'_2156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_480 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2156 v0 v1 v2 v3 v4
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
                                 d_threshold_1502 v0 v12
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 ()
                                    erased () erased
                                    (\ v14 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                                    v10)
                                 (MAlonzo.Code.Ledger.GovernanceActions.d_action_612 (coe v3)) v4))
                           (coe
                              d_acceptedStakeRatio_1974 (coe v0) (coe v4)
                              (coe
                                 MAlonzo.Code.Interface.IsSet.du_dom_492
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                 (coe
                                    d_actualVotes_1814 (coe v0) (coe v1) (coe v12) (coe v10)
                                    (coe
                                       MAlonzo.Code.Ledger.GovernanceActions.d_action_612 (coe v3))
                                    (coe
                                       MAlonzo.Code.Ledger.GovernanceActions.d_votes_606 (coe v3))))
                              (coe d_stakeDistrs_1648 (coe v1))
                              (coe
                                 d_actualVotes_1814 (coe v0) (coe v1) (coe v12) (coe v10)
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_612 (coe v3))
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_606 (coe v3))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.accepted?
d_accepted'63'_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2174 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
      (coe
         d_acceptedBy'63'_2156 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_482))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
         (coe
            d_acceptedBy'63'_2156 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484))
         (coe
            d_acceptedBy'63'_2156 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_486)))
-- Ledger.Ratify.expired?
d_expired'63'_2188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2188 v0 v1 v2
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
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__2206 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2206
  = C_RATIFY'45'Accept_2234 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Enact.T__'8866'_'8640''10631'_'44'ENACT'10632'__726 |
    C_RATIFY'45'Reject_2250 AgdaAny |
    C_RATIFY'45'Continue_2280 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2210 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102811 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2210 ~v0 v1 = du_ccHotKeys_2210 v1
du_ccHotKeys_2210 ::
  T_GeneralizeTel_102811 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2210 v0
  = coe d_ccHotKeys_1654 (coe d_'46'generalizedField'45'Γ_102799 v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2212 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102811 -> AgdaAny
d_currentEpoch_2212 ~v0 v1 = du_currentEpoch_2212 v1
du_currentEpoch_2212 :: T_GeneralizeTel_102811 -> AgdaAny
du_currentEpoch_2212 v0
  = coe
      d_currentEpoch_1650 (coe d_'46'generalizedField'45'Γ_102799 v0)
-- Ledger.Ratify._.dreps
d_dreps_2214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102811 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2214 ~v0 v1 = du_dreps_2214 v1
du_dreps_2214 ::
  T_GeneralizeTel_102811 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2214 v0
  = coe d_dreps_1652 (coe d_'46'generalizedField'45'Γ_102799 v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102811 -> T_StakeDistrs_1630
d_stakeDistrs_2216 ~v0 v1 = du_stakeDistrs_2216 v1
du_stakeDistrs_2216 :: T_GeneralizeTel_102811 -> T_StakeDistrs_1630
du_stakeDistrs_2216 v0
  = coe
      d_stakeDistrs_1648 (coe d_'46'generalizedField'45'Γ_102799 v0)
-- Ledger.Ratify._.treasury
d_treasury_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102811 -> Integer
d_treasury_2218 ~v0 v1 = du_treasury_2218 v1
du_treasury_2218 :: T_GeneralizeTel_102811 -> Integer
du_treasury_2218 v0
  = coe d_treasury_1656 (coe d_'46'generalizedField'45'Γ_102799 v0)
-- Ledger.Ratify._.action
d_action_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102811 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510
d_action_2224 ~v0 v1 = du_action_2224 v1
du_action_2224 ::
  T_GeneralizeTel_102811 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510
du_action_2224 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_612
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_102801 v0))
-- Ledger.Ratify._.prevAction
d_prevAction_2228 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102811 -> AgdaAny
d_prevAction_2228 ~v0 v1 = du_prevAction_2228 v1
du_prevAction_2228 :: T_GeneralizeTel_102811 -> AgdaAny
du_prevAction_2228 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_614
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_102801 v0))
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103221 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2238 ~v0 v1 = du_ccHotKeys_2238 v1
du_ccHotKeys_2238 ::
  T_GeneralizeTel_103221 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2238 v0
  = coe d_ccHotKeys_1654 (coe d_'46'generalizedField'45'Γ_103211 v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103221 -> AgdaAny
d_currentEpoch_2240 ~v0 v1 = du_currentEpoch_2240 v1
du_currentEpoch_2240 :: T_GeneralizeTel_103221 -> AgdaAny
du_currentEpoch_2240 v0
  = coe
      d_currentEpoch_1650 (coe d_'46'generalizedField'45'Γ_103211 v0)
-- Ledger.Ratify._.dreps
d_dreps_2242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103221 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2242 ~v0 v1 = du_dreps_2242 v1
du_dreps_2242 ::
  T_GeneralizeTel_103221 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2242 v0
  = coe d_dreps_1652 (coe d_'46'generalizedField'45'Γ_103211 v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103221 -> T_StakeDistrs_1630
d_stakeDistrs_2244 ~v0 v1 = du_stakeDistrs_2244 v1
du_stakeDistrs_2244 :: T_GeneralizeTel_103221 -> T_StakeDistrs_1630
du_stakeDistrs_2244 v0
  = coe
      d_stakeDistrs_1648 (coe d_'46'generalizedField'45'Γ_103211 v0)
-- Ledger.Ratify._.treasury
d_treasury_2246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103221 -> Integer
d_treasury_2246 ~v0 v1 = du_treasury_2246 v1
du_treasury_2246 :: T_GeneralizeTel_103221 -> Integer
du_treasury_2246 v0
  = coe d_treasury_1656 (coe d_'46'generalizedField'45'Γ_103211 v0)
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2254 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103809 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2254 ~v0 v1 = du_ccHotKeys_2254 v1
du_ccHotKeys_2254 ::
  T_GeneralizeTel_103809 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2254 v0
  = coe d_ccHotKeys_1654 (coe d_'46'generalizedField'45'Γ_103799 v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103809 -> AgdaAny
d_currentEpoch_2256 ~v0 v1 = du_currentEpoch_2256 v1
du_currentEpoch_2256 :: T_GeneralizeTel_103809 -> AgdaAny
du_currentEpoch_2256 v0
  = coe
      d_currentEpoch_1650 (coe d_'46'generalizedField'45'Γ_103799 v0)
-- Ledger.Ratify._.dreps
d_dreps_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103809 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2258 ~v0 v1 = du_dreps_2258 v1
du_dreps_2258 ::
  T_GeneralizeTel_103809 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2258 v0
  = coe d_dreps_1652 (coe d_'46'generalizedField'45'Γ_103799 v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103809 -> T_StakeDistrs_1630
d_stakeDistrs_2260 ~v0 v1 = du_stakeDistrs_2260 v1
du_stakeDistrs_2260 :: T_GeneralizeTel_103809 -> T_StakeDistrs_1630
du_stakeDistrs_2260 v0
  = coe
      d_stakeDistrs_1648 (coe d_'46'generalizedField'45'Γ_103799 v0)
-- Ledger.Ratify._.treasury
d_treasury_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103809 -> Integer
d_treasury_2262 ~v0 v1 = du_treasury_2262 v1
du_treasury_2262 :: T_GeneralizeTel_103809 -> Integer
du_treasury_2262 v0
  = coe d_treasury_1656 (coe d_'46'generalizedField'45'Γ_103799 v0)
-- Ledger.Ratify._.action
d_action_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103809 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510
d_action_2268 ~v0 v1 = du_action_2268 v1
du_action_2268 ::
  T_GeneralizeTel_103809 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510
du_action_2268 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_612
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_103801 v0))
-- Ledger.Ratify._.prevAction
d_prevAction_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103809 -> AgdaAny
d_prevAction_2272 ~v0 v1 = du_prevAction_2272 v1
du_prevAction_2272 :: T_GeneralizeTel_103809 -> AgdaAny
du_prevAction_2272 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_614
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_103801 v0))
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1636 ->
  T_RatifyState_1658 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_1658 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2282 = erased
-- Ledger.Ratify..generalizedField-Γ
d_'46'generalizedField'45'Γ_102799 ::
  T_GeneralizeTel_102811 -> T_RatifyEnv_1636
d_'46'generalizedField'45'Γ_102799
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_102801 ::
  T_GeneralizeTel_102811 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_102801
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_102803 ::
  T_GeneralizeTel_102811 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_'46'generalizedField'45'es_102803
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_102805 ::
  T_GeneralizeTel_102811 -> Bool
d_'46'generalizedField'45'd_102805
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es'
d_'46'generalizedField'45'es''_102807 ::
  T_GeneralizeTel_102811 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_'46'generalizedField'45'es''_102807
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_102809 ::
  T_GeneralizeTel_102811 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_102809
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_102811 a0 = ()
data T_GeneralizeTel_102811
  = C_mkGeneralizeTel_102813 T_RatifyEnv_1636
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Ledger.Enact.T_EnactState_644 Bool
                             MAlonzo.Code.Ledger.Enact.T_EnactState_644
                             [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ratify..generalizedField-Γ
d_'46'generalizedField'45'Γ_103211 ::
  T_GeneralizeTel_103221 -> T_RatifyEnv_1636
d_'46'generalizedField'45'Γ_103211
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_103213 ::
  T_GeneralizeTel_103221 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_103213
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_103215 ::
  T_GeneralizeTel_103221 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_'46'generalizedField'45'es_103215
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_103217 ::
  T_GeneralizeTel_103221 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_103217
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_103219 ::
  T_GeneralizeTel_103221 -> Bool
d_'46'generalizedField'45'd_103219
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_103221 a0 = ()
data T_GeneralizeTel_103221
  = C_mkGeneralizeTel_103223 T_RatifyEnv_1636
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Ledger.Enact.T_EnactState_644
                             [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify..generalizedField-Γ
d_'46'generalizedField'45'Γ_103799 ::
  T_GeneralizeTel_103809 -> T_RatifyEnv_1636
d_'46'generalizedField'45'Γ_103799
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_103801 ::
  T_GeneralizeTel_103809 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_103801
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_103803 ::
  T_GeneralizeTel_103809 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_'46'generalizedField'45'es_103803
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_103805 ::
  T_GeneralizeTel_103809 -> Bool
d_'46'generalizedField'45'd_103805
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_103807 ::
  T_GeneralizeTel_103809 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_103807
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_103809 a0 = ()
data T_GeneralizeTel_103809
  = C_mkGeneralizeTel_103811 T_RatifyEnv_1636
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Ledger.Enact.T_EnactState_644 Bool
                             [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
