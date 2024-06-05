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
d_Credential_66 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_66 = erased
-- _.Epoch
d_Epoch_176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_176 = erased
-- _.GovAction
d_GovAction_190 a0 = ()
-- _.GovActionID
d_GovActionID_192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_192 = erased
-- _.GovActionState
d_GovActionState_194 a0 = ()
-- _.GovRole
d_GovRole_202 a0 = ()
-- _.NeedsHash
d_NeedsHash_240 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 -> ()
d_NeedsHash_240 = erased
-- _.PParamGroup
d_PParamGroup_272 a0 = ()
-- _.PParams
d_PParams_274 a0 = ()
-- _.UpdateT
d_UpdateT_388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UpdateT_388 = erased
-- _.VDeleg
d_VDeleg_390 a0 = ()
-- _.preoEpoch
d_preoEpoch_556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_556 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
-- Ledger.Ratify._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1454 a0 a1 a2 a3 a4 = ()
-- Ledger.Ratify._.EnactEnv
d_EnactEnv_1470 a0 = ()
-- Ledger.Ratify._.EnactState
d_EnactState_1472 a0 = ()
-- Ledger.Ratify._.Vote
d_Vote_1520 a0 = ()
-- Ledger.Ratify._∧_
d__'8743'__1530 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> () -> ()
d__'8743'__1530 = erased
-- Ledger.Ratify._
d___1532 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d___1532 ~v0 = du___1532
du___1532 :: MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du___1532
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204
-- Ledger.Ratify.∣_∣_∣_∣
d_'8739'_'8739'_'8739'_'8739'_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 -> AgdaAny
d_'8739'_'8739'_'8739'_'8739'_1536 ~v0 ~v1 v2 v3 v4 v5
  = du_'8739'_'8739'_'8739'_'8739'_1536 v2 v3 v4 v5
du_'8739'_'8739'_'8739'_'8739'_1536 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 -> AgdaAny
du_'8739'_'8739'_'8739'_'8739'_1536 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_564 -> coe v0
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_566 -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_568 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.∣_∥_∣
d_'8739'_'8741'_'8739'_1548 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 -> AgdaAny
d_'8739'_'8741'_'8739'_1548 ~v0 ~v1 v2 v3
  = du_'8739'_'8741'_'8739'_1548 v2 v3
du_'8739'_'8741'_'8739'_1548 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 -> AgdaAny
du_'8739'_'8741'_'8739'_1548 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             (\ v4 ->
                case coe v4 of
                  MAlonzo.Code.Ledger.GovernanceActions.C_CC_564 -> coe v0
                  MAlonzo.Code.Ledger.GovernanceActions.C_DRep_566 -> coe v2
                  MAlonzo.Code.Ledger.GovernanceActions.C_SPO_568 -> coe v3
                  _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.vote
d_vote_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_vote_1558 ~v0 = du_vote_1558
du_vote_1558 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_vote_1558 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
-- Ledger.Ratify.defer
d_defer_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_1560 ~v0 = du_defer_1560
du_defer_1560 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_1560
  = coe
      MAlonzo.Code.Data.Rational.Base.d__'43'__270
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
      (coe MAlonzo.Code.Data.Rational.Base.d_1ℚ_180)
-- Ledger.Ratify.maxThreshold
d_maxThreshold_1562 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maxThreshold_1562 ~v0 v1 = du_maxThreshold_1562 v1
du_maxThreshold_1562 ::
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maxThreshold_1562 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256 (coe du_comb_1570)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe MAlonzo.Code.Ledger.Set.Theory.du_finiteness_214 v0))
-- Ledger.Ratify._.comb
d_comb_1570 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_comb_1570 ~v0 ~v1 v2 v3 = du_comb_1570 v2 v3
du_comb_1570 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_comb_1570 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
               -> coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Data.Rational.Base.d__'8852'__322 (coe v2) (coe v3))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v0
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.─
d_'9472'_1580 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'9472'_1580 ~v0 = du_'9472'_1580
du_'9472'_1580 :: Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'9472'_1580 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
-- Ledger.Ratify.✓†
d_'10003''8224'_1582 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003''8224'_1582 ~v0 = du_'10003''8224'_1582
du_'10003''8224'_1582 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003''8224'_1582 = coe du_vote_1558 (coe du_defer_1560)
-- Ledger.Ratify.threshold
d_threshold_1584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_1584 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_594
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1536 (coe du_'9472'_1580)
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_P1_178
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_322 (coe v1))))
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_Q1_210
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_324 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_596 v4 v5 v6
        -> coe
             du_'8739'_'8741'_'8739'_1548 (coe du_'9472'_1580)
             (coe du_P'47'Q2a'47'b_1690 (coe v1) (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_598 v4 v5
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1536 (coe v2)
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_P3_184
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_322 (coe v1))))
             (coe du_'9472'_1580)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_600 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1536 (coe v2)
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_P4_186
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_322 (coe v1))))
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_Q4_216
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_324 (coe v1))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_602 v4
        -> coe
             du_'8739'_'8741'_'8739'_1548 (coe v2)
             (coe du_P'47'Q5_1696 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_604 v4
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1536 (coe v2)
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_P6_196
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_322 (coe v1))))
             (coe du_'9472'_1580)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_606
        -> coe
             du_'8739'_'8739'_'8739'_'8739'_1536 (coe du_'10003''8224'_1582)
             (coe du_'10003''8224'_1582) (coe du_'10003''8224'_1582)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.✓
d_'10003'_1688 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_'10003'_1688 ~v0 ~v1 v2 = du_'10003'_1688 v2
du_'10003'_1688 ::
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_'10003'_1688 v0 = coe v0
-- Ledger.Ratify._.P/Q2a/b
d_P'47'Q2a'47'b_1690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q2a'47'b_1690 ~v0 v1 v2 = du_P'47'Q2a'47'b_1690 v1 v2
du_P'47'Q2a'47'b_1690 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q2a'47'b_1690 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_P2a_180
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_322 (coe v0))))
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_Q2a_212
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_324 (coe v0))))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_P2b_182
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_322 (coe v0))))
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_Q2b_214
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_324 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.pparamThreshold
d_pparamThreshold_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparamThreshold_1694 ~v0 v1 ~v2 v3
  = du_pparamThreshold_1694 v1 v3
du_pparamThreshold_1694 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.PParams.T_PParamGroup_144 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparamThreshold_1694 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.PParams.C_NetworkGroup_146
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_P5a_188
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_322 (coe v0))))
             (coe du_'9472'_1580)
      MAlonzo.Code.Ledger.PParams.C_EconomicGroup_148
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_P5b_190
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_322 (coe v0))))
             (coe du_'9472'_1580)
      MAlonzo.Code.Ledger.PParams.C_TechnicalGroup_150
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_P5c_192
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_322 (coe v0))))
             (coe du_'9472'_1580)
      MAlonzo.Code.Ledger.PParams.C_GovernanceGroup_152
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_P5d_194
                   (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_322 (coe v0))))
             (coe du_'9472'_1580)
      MAlonzo.Code.Ledger.PParams.C_SecurityGroup_154
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe du_'9472'_1580)
             (coe
                du_vote_1558
                (MAlonzo.Code.Ledger.PParams.d_Q5e_218
                   (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_324 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.P/Q5
d_P'47'Q5_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_P'47'Q5_1696 v0 v1 ~v2 v3 = du_P'47'Q5_1696 v0 v1 v3
du_P'47'Q5_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_P'47'Q5_1696 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_maxThreshold_1562
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe du_pparamThreshold_1694 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1122
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1166
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1962 (coe v0)))
               v2)))
      (coe
         du_maxThreshold_1562
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe du_pparamThreshold_1694 (coe v1) (coe v3)))
            (coe
               MAlonzo.Code.Ledger.PParams.d_updateGroups_1122
               (MAlonzo.Code.Ledger.PParams.d_ppUpd_1166
                  (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1962 (coe v0)))
               v2)))
-- Ledger.Ratify.canVote
d_canVote_1704 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 -> ()
d_canVote_1704 = erased
-- Ledger.Ratify.StakeDistrs
d_StakeDistrs_1712 a0 = ()
newtype T_StakeDistrs_1712
  = C_StakeDistrs'46'constructor_10711 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ratify.StakeDistrs.stakeDistr
d_stakeDistr_1716 ::
  T_StakeDistrs_1712 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1716 v0
  = case coe v0 of
      C_StakeDistrs'46'constructor_10711 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv
d_RatifyEnv_1718 a0 = ()
data T_RatifyEnv_1718
  = C_RatifyEnv'46'constructor_11133 T_StakeDistrs_1712 AgdaAny
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
-- Ledger.Ratify.RatifyEnv.stakeDistrs
d_stakeDistrs_1730 :: T_RatifyEnv_1718 -> T_StakeDistrs_1712
d_stakeDistrs_1730 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11133 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.currentEpoch
d_currentEpoch_1732 :: T_RatifyEnv_1718 -> AgdaAny
d_currentEpoch_1732 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11133 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.dreps
d_dreps_1734 ::
  T_RatifyEnv_1718 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1734 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11133 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.ccHotKeys
d_ccHotKeys_1736 ::
  T_RatifyEnv_1718 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1736 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11133 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyEnv.treasury
d_treasury_1738 :: T_RatifyEnv_1718 -> Integer
d_treasury_1738 v0
  = case coe v0 of
      C_RatifyEnv'46'constructor_11133 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState
d_RatifyState_1740 a0 = ()
data T_RatifyState_1740
  = C_'10214'_'44'_'44'_'10215''691'_1754 MAlonzo.Code.Ledger.Enact.T_EnactState_728
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify.RatifyState.es
d_es_1748 ::
  T_RatifyState_1740 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_es_1748 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1754 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.removed
d_removed_1750 ::
  T_RatifyState_1740 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1750 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1754 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.RatifyState.delay
d_delay_1752 :: T_RatifyState_1740 -> Bool
d_delay_1752 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''691'_1754 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.CCData
d_CCData_1756 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CCData_1756 = erased
-- Ledger.Ratify.govRole
d_govRole_1758 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562
d_govRole_1758 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_576 v1 v2
        -> coe v1
      MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_578
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_566
      MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_580
        -> coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_566
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.IsCC
d_IsCC_1762 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574 -> ()
d_IsCC_1762 = erased
-- Ledger.Ratify.IsDRep
d_IsDRep_1764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574 -> ()
d_IsDRep_1764 = erased
-- Ledger.Ratify.IsSPO
d_IsSPO_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574 -> ()
d_IsSPO_1766 = erased
-- Ledger.Ratify.coinThreshold
d_coinThreshold_1774 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_coinThreshold_1774 ~v0 = du_coinThreshold_1774
du_coinThreshold_1774 :: Integer
du_coinThreshold_1774 = coe (1000000000 :: Integer)
-- Ledger.Ratify.rankThreshold
d_rankThreshold_1776 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer
d_rankThreshold_1776 ~v0 = du_rankThreshold_1776
du_rankThreshold_1776 :: Integer
du_rankThreshold_1776 = coe (1000 :: Integer)
-- Ledger.Ratify.mostStakeDRepDist
d_mostStakeDRepDist_1778 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist_1778 ~v0 v1 v2
  = du_mostStakeDRepDist_1778 v1 v2
du_mostStakeDRepDist_1778 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist_1778 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du__'8638'''__1130 (coe v0)
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672 (coe v1)
                 (coe v2))))
-- Ledger.Ratify.mostStakeDRepDist-0
d_mostStakeDRepDist'45'0_1788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45'0_1788 ~v0 v1
  = du_mostStakeDRepDist'45'0_1788 v1
du_mostStakeDRepDist'45'0_1788 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mostStakeDRepDist'45'0_1788 v0
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
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v0))
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
                                     MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672
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
                    (\ v3 v4 -> v4) (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532)
                    (coe du_mostStakeDRepDist_1778 (coe v0) (coe (0 :: Integer))) v0)
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
                                  MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2672
                                  (coe (0 :: Integer)) (coe v3)))))
                    (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                 (coe v1))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_26) (coe v2))))
-- Ledger.Ratify.mostStakeDRepDist-∅
d_mostStakeDRepDist'45''8709'_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mostStakeDRepDist'45''8709'_1796 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         addInt (coe (1 :: Integer))
         (coe
            MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1136
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
            (coe
               MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
            (coe (\ v2 -> v2)) (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_430
         (coe
            (\ v2 v3 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
-- Ledger.Ratify._.helper
d_helper_1810 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_helper_1810 = erased
-- Ledger.Ratify.∃topNDRepDist
d_'8707'topNDRepDist_1838 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'topNDRepDist_1838 v0 v1 v2 ~v3 ~v4
  = du_'8707'topNDRepDist_1838 v0 v1 v2
du_'8707'topNDRepDist_1838 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'topNDRepDist_1838 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
            (coe
               (\ v3 ->
                  MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
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
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                       (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_528)
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
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                              (\ v5 ->
                                                 coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
                                                   (coe v3))
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                 (coe
                                                    MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                    (coe v3) (coe v4))
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                       (coe v3) (coe v4))))))))
                                (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))))
                    (coe v1)))
            (coe
               MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
               (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72) erased
               (d_mostStakeDRepDist'45''8709'_1796 (coe v0) (coe v2)))))
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
                        MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
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
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                                (coe
                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_528)
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
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                    (\ v5 ->
                                                       coe
                                                         MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
                                                         (coe v3))
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                          (coe v3) (coe v4))
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                          (coe
                                                             MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                             (coe v3) (coe v4))))))))
                                      (\ v4 ->
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))))
                          (coe v1)))
                  (coe
                     MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                     (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72) erased
                     (d_mostStakeDRepDist'45''8709'_1796 (coe v0) (coe v2))))))
         (coe
            MAlonzo.Code.Data.Nat.Properties.du_'8816''8658''62'_2758 (coe v1)
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
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_528)
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
                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
                                           (coe
                                              addInt (coe (1 :: Integer))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                                                    (coe
                                                       (\ v5 ->
                                                          MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
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
                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                                              (coe v0))))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                                           (coe v0))))
                                                                  (coe
                                                                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                                                               (coe
                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_528)
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
                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                      (\ v7 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
                                                                                           (coe v5))
                                                                                      (coe
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                         (coe
                                                                                            MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                            (coe v5)
                                                                                            (coe
                                                                                               v6))
                                                                                         (coe
                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                                            (coe
                                                                                               MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                               (coe
                                                                                                  v5)
                                                                                               (coe
                                                                                                  v6))))))))
                                                                        (\ v6 ->
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe v6))))))
                                                            (coe v1)))
                                                    (coe
                                                       MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                       (coe
                                                          MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                       erased
                                                       (d_mostStakeDRepDist'45''8709'_1796
                                                          (coe v0) (coe v2)))))))
                                      (coe
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                         (coe
                                            MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                            (coe
                                               addInt (coe (1 :: Integer))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                                                     (coe
                                                        (\ v4 ->
                                                           MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
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
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                      (coe
                                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                                                                (coe
                                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_528)
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
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                       (\ v6 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
                                                                                            (coe
                                                                                               v4))
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                             (coe
                                                                                                v4)
                                                                                             (coe
                                                                                                v5))
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                                (coe
                                                                                                   v4)
                                                                                                (coe
                                                                                                   v5))))))))
                                                                         (\ v5 ->
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe v5))))))
                                                             (coe v1)))
                                                     (coe
                                                        MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                        (coe
                                                           MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                        erased
                                                        (d_mostStakeDRepDist'45''8709'_1796
                                                           (coe v0) (coe v2))))))
                                            (coe v3))
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                            (coe
                                               MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                               (coe
                                                  addInt (coe (1 :: Integer))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Data.Nat.Properties.Ext.du_negInduction_14
                                                        (coe
                                                           (\ v4 ->
                                                              MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
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
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                         (coe
                                                                            MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_528)
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
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                          (\ v6 ->
                                                                                             coe
                                                                                               MAlonzo.Code.Data.Nat.Properties.du_'8804''7495''8658''8804'_2616
                                                                                               (coe
                                                                                                  v4))
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                                (coe
                                                                                                   v4)
                                                                                                (coe
                                                                                                   v5))
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Nat.Base.d__'8804''7495'__14
                                                                                                   (coe
                                                                                                      v4)
                                                                                                   (coe
                                                                                                      v5))))))))
                                                                            (\ v5 ->
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                 (coe v5))))))
                                                                (coe v1)))
                                                        (coe
                                                           MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                           (coe
                                                              MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                           erased
                                                           (d_mostStakeDRepDist'45''8709'_1796
                                                              (coe v0) (coe v2))))))
                                               (coe v3))))))))
                        (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))))))
-- Ledger.Ratify.topNDRepDist
d_topNDRepDist_1864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_topNDRepDist_1864 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (MAlonzo.Code.Data.Nat.Properties.d__'8805''63'__2678
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
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                          (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_528)
                    (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2)))
                 (coe v1))
              (MAlonzo.Code.Data.Nat.Properties.d__'62''63'__2906
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
                                                  du_mostStakeDRepDist_1778 (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        du_'8707'topNDRepDist_1838 (coe v0) (coe v1)
                                                        (coe v2)))))
                                     else coe seq (coe v9) (coe seq (coe v7) (coe v2))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v7)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Ratify.restrictedDists
d_restrictedDists_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> T_StakeDistrs_1712 -> T_StakeDistrs_1712
d_restrictedDists_1876 ~v0 ~v1 ~v2 v3 = du_restrictedDists_1876 v3
du_restrictedDists_1876 :: T_StakeDistrs_1712 -> T_StakeDistrs_1712
du_restrictedDists_1876 v0 = coe v0
-- Ledger.Ratify._._.stakeDistr
d_stakeDistr_1890 ::
  T_StakeDistrs_1712 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDistr_1890 v0 = coe d_stakeDistr_1716 (coe v0)
-- Ledger.Ratify.actualVotes
d_actualVotes_1896 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualVotes_1896 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_852
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_576
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_564))
         (coe
            du_actualCCVotes_2024 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0))))
         (coe du_actualPDRepVotes_2032 (coe v0) (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0))))
            (coe du_actualDRepVotes_2034 (coe v0) (coe v1) (coe v5))
            (coe du_actualSPOVotes_2036 (coe v0) (coe v1) (coe v5) (coe v4))))
-- Ledger.Ratify._._.ccHotKeys
d_ccHotKeys_1914 ::
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1914 v0 ~v1 ~v2 ~v3 ~v4 = du_ccHotKeys_1914 v0
du_ccHotKeys_1914 ::
  T_RatifyEnv_1718 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1914 v0 = coe d_ccHotKeys_1736 (coe v0)
-- Ledger.Ratify._._.currentEpoch
d_currentEpoch_1916 ::
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_currentEpoch_1916 v0 ~v1 ~v2 ~v3 ~v4 = du_currentEpoch_1916 v0
du_currentEpoch_1916 :: T_RatifyEnv_1718 -> AgdaAny
du_currentEpoch_1916 v0 = coe d_currentEpoch_1732 (coe v0)
-- Ledger.Ratify._._.dreps
d_dreps_1918 ::
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1918 v0 ~v1 ~v2 ~v3 ~v4 = du_dreps_1918 v0
du_dreps_1918 ::
  T_RatifyEnv_1718 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1918 v0 = coe d_dreps_1734 (coe v0)
-- Ledger.Ratify._._.stakeDistrs
d_stakeDistrs_1920 ::
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_StakeDistrs_1712
d_stakeDistrs_1920 v0 ~v1 ~v2 ~v3 ~v4 = du_stakeDistrs_1920 v0
du_stakeDistrs_1920 :: T_RatifyEnv_1718 -> T_StakeDistrs_1712
du_stakeDistrs_1920 v0 = coe d_stakeDistrs_1730 (coe v0)
-- Ledger.Ratify._._.treasury
d_treasury_1922 ::
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_treasury_1922 v0 ~v1 ~v2 ~v3 ~v4 = du_treasury_1922 v0
du_treasury_1922 :: T_RatifyEnv_1718 -> Integer
du_treasury_1922 v0 = coe d_treasury_1738 (coe v0)
-- Ledger.Ratify._.roleVotes
d_roleVotes_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_roleVotes_1984 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_roleVotes_1984 v5 v6
du_roleVotes_1984 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_roleVotes_1984 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Data.Product.Base.du_uncurry_244
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_576))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1114
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
              (coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_698))
              (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))))
         v0)
-- Ledger.Ratify._.activeDReps
d_activeDReps_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_activeDReps_1992 v0 v1 ~v2 ~v3 ~v4 ~v5
  = du_activeDReps_1992 v0 v1
du_activeDReps_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_activeDReps_1992 v0 v1
  = coe
      MAlonzo.Code.Interface.IsSet.du_dom_524
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1114
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
              (coe
                 MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                 (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
                 (coe
                    MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
                    (\ v3 v4 -> v3) (d_currentEpoch_1732 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                 (coe
                    MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                    (\ v3 v4 -> v4)
                    (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
                    (d_currentEpoch_1732 (coe v1))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
              (coe
                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))))
                 (coe d_currentEpoch_1732 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
         (d_dreps_1734 (coe v1)))
-- Ledger.Ratify._.spos
d_spos_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574]
d_spos_1998 ~v0 v1 ~v2 ~v3 ~v4 ~v5 = du_spos_1998 v1
du_spos_1998 ::
  T_RatifyEnv_1718 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574]
du_spos_1998 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1106
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_698))
           (coe d_govRole_1758 (coe v1))
           (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_568))
      (coe
         MAlonzo.Code.Interface.IsSet.du_dom_524
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
         (coe d_stakeDistr_1716 (coe d_stakeDistrs_1730 (coe v0))))
-- Ledger.Ratify._.getCCHotCred
d_getCCHotCred_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getCCHotCred_2000 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_getCCHotCred_2000 v0 v1 v6
du_getCCHotCred_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getCCHotCred_2000 v0 v1 v2
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
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
                           (coe
                              MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
                              (\ v5 v6 -> v5) (d_currentEpoch_1732 (coe v1)) v4)
                           (coe
                              MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                              (\ v5 v6 -> v6)
                              (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
                              (d_currentEpoch_1732 (coe v1)) v4))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352
                                    (coe v0))))
                           (coe d_currentEpoch_1732 (coe v1)) (coe v4))) in
           coe
             (let v6
                    = coe
                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1542
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe d_ccHotKeys_1736 (coe v1)) (coe v3)
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
                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0)))))
                           (coe v3)
                           (let v6
                                  = MAlonzo.Code.Axiom.Set.d_th_1430
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v6
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                    (coe d_ccHotKeys_1736 (coe v1)))))) in
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
d_actualCCVote_2010 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_624
d_actualCCVote_2010 v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_actualCCVote_2010 v0 v1 v5 v6 v7
du_actualCCVote_2010 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  AgdaAny -> MAlonzo.Code.Ledger.GovernanceActions.T_Vote_624
du_actualCCVote_2010 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_getCCHotCred_2000 (coe v0) (coe v1)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Data.Maybe.Base.du_maybe_36 (coe (\ v7 -> v7))
                (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_628)
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1542
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_564) (coe v6))
                   (coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                      (coe
                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                         (coe
                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                            (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_698)
                            (coe
                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_564) (coe v6))
                      (let v7
                             = MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                       coe
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v7
                            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2))))))
         _ -> coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_630)
-- Ledger.Ratify._.activeCC
d_activeCC_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_activeCC_2020 v0 v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_activeCC_2020 v0 v1 v6
du_activeCC_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_activeCC_2020 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_getCCHotCred_2000 (coe v0) (coe v1))
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 (coe v2))
-- Ledger.Ratify._.actualCCVotes
d_actualCCVotes_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualCCVotes_2024 v0 v1 v2 v3 ~v4 v5
  = du_actualCCVotes_2024 v0 v1 v2 v3 v5
du_actualCCVotes_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualCCVotes_2024 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Interface.ToBool.du_if_then_else__46
                    (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74
                       (MAlonzo.Code.Ledger.PParams.d_ccMinSize_334 (coe v2))
                       (coe
                          MAlonzo.Code.Ledger.Set.Theory.du_length'738'_222
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_528)
                          (coe du_activeCC_2020 (coe v0) (coe v1) (coe v6))))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1074
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1430
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe du_actualCCVote_2010 (coe v0) (coe v1) (coe v4)) (coe v6)))
                    (coe
                       (\ v8 ->
                          coe
                            MAlonzo.Code.Axiom.Set.Map.du_constMap_1110
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1430
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_524
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532) (coe v6))
                            (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_628)))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1430
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify._.actualPDRepVotes
d_actualPDRepVotes_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualPDRepVotes_2032 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_actualPDRepVotes_2032 v0 v6
du_actualPDRepVotes_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualPDRepVotes_2032 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_578)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_630)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_580)
                    (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_628))) in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_594
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstainRep_578)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_630)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_noConfidenceRep_580)
                      (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_626)))
         _ -> coe v2)
-- Ledger.Ratify._.actualDRepVotes
d_actualDRepVotes_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualDRepVotes_2034 v0 v1 ~v2 ~v3 ~v4 v5
  = du_actualDRepVotes_2034 v0 v1 v5
du_actualDRepVotes_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualDRepVotes_2034 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0))))
      (coe
         du_roleVotes_1984 (coe v2)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_566))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_constMap_1110
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Ledger.GovernanceActions.C_credVoter_576
               (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_566))
            (coe du_activeDReps_1992 (coe v0) (coe v1)))
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_628))
-- Ledger.Ratify._.actualSPOVotes
d_actualSPOVotes_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_actualSPOVotes_2036 v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_actualSPOVotes_2036 v0 v1 v5 v6
du_actualSPOVotes_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_actualSPOVotes_2036 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0))))
              (coe
                 du_roleVotes_1984 (coe v2)
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_568))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_constMap_1110
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_spos_1998 (coe v1))
                 (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_630)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_600 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0))))
                (coe
                   du_roleVotes_1984 (coe v2)
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_568))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du_constMap_1110
                   (coe
                      MAlonzo.Code.Axiom.Set.d_th_1430
                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                   (coe du_spos_1998 (coe v1))
                   (coe MAlonzo.Code.Ledger.GovernanceActions.C_no_628))
         _ -> coe v4)
-- Ledger.Ratify._/₀_
d__'47''8320'__2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d__'47''8320'__2038 ~v0 v1 v2 = du__'47''8320'__2038 v1 v2
du__'47''8320'__2038 ::
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du__'47''8320'__2038 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
      _ -> coe
             MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v0) (coe v1)
-- Ledger.Ratify.getStakeDist
d_getStakeDist_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574] ->
  T_StakeDistrs_1712 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getStakeDist_2046 ~v0 v1 v2 v3 = du_getStakeDist_2046 v1 v2 v3
du_getStakeDist_2046 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574] ->
  T_StakeDistrs_1712 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getStakeDist_2046 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_CC_564
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_constMap_1110
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1430
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1106
                (\ v3 ->
                   coe
                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                        (coe
                           MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_698))
                     (coe d_govRole_1758 (coe v3)) (coe v0))
                v1)
             (coe (1 :: Integer))
      MAlonzo.Code.Ledger.GovernanceActions.C_DRep_566
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1122
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_698))
                  (coe d_govRole_1758 (coe v3)) (coe v0))
             (d_stakeDistr_1716 (coe v2))
      MAlonzo.Code.Ledger.GovernanceActions.C_SPO_568
        -> coe
             MAlonzo.Code.Ledger.Set.Theory.du_filterKeys_1122
             (\ v3 ->
                coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_698))
                  (coe d_govRole_1758 (coe v3)) (coe v0))
             (d_stakeDistr_1716 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.acceptedStakeRatio
d_acceptedStakeRatio_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574] ->
  T_StakeDistrs_1712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_acceptedStakeRatio_2056 v0 v1 v2 v3 v4
  = coe
      du__'47''8320'__2038
      (coe
         d_acceptedStake_2070 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         d_totalStake_2072 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Ledger.Ratify._.acceptedStake
d_acceptedStake_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574] ->
  T_StakeDistrs_1712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_acceptedStake_2070 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1136
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1246
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0))))
         (coe du_getStakeDist_2046 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1592
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_700))
            (coe v4) (coe MAlonzo.Code.Ledger.GovernanceActions.C_yes_626)))
-- Ledger.Ratify._.totalStake
d_totalStake_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574] ->
  T_StakeDistrs_1712 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_totalStake_2072 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1136
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (coe (\ v5 -> v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1254
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0))))
         (coe du_getStakeDist_2046 (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1592
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_700))
            (coe v4)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_abstain_630)))
-- Ledger.Ratify.acceptedBy
d_acceptedBy_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 -> ()
d_acceptedBy_2078 = erased
-- Ledger.Ratify.accepted
d_accepted_2106 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 -> ()
d_accepted_2106 = erased
-- Ledger.Ratify.expired
d_expired_2114 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 -> ()
d_expired_2114 = erased
-- Ledger.Ratify.verifyPrev
d_verifyPrev_2122 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_728 -> ()
d_verifyPrev_2122 = erased
-- Ledger.Ratify.delayingAction
d_delayingAction_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 -> Bool
d_delayingAction_2144 ~v0 v1 = du_delayingAction_2144 v1
du_delayingAction_2144 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 -> Bool
du_delayingAction_2144 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_594
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_596 v1 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_598 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_600 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_602 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_604 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_606
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed
d_delayed_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_728 -> Bool -> ()
d_delayed_2148 = erased
-- Ledger.Ratify.verifyPrev?
d_verifyPrev'63'_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_verifyPrev'63'_2164 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_594
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0)))
                   (coe (\ v4 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_740 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_596 v4 v5 v6
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0)))
                   (coe (\ v7 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_cc_740 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_598 v4 v5
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0)))
                   (coe (\ v6 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_constitution_742 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_600 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0)))
                   (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pv_744 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_602 v4
        -> coe
             MAlonzo.Code.Class.Decidable.Core.d_dec_16
             (coe
                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                (coe
                   MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                   (coe
                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0)))
                   (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe MAlonzo.Code.Ledger.Enact.d_pparams_746 (coe v3))))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_604 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_606
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.delayed?
d_delayed'63'_2218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  Bool -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_delayed'63'_2218 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__84
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__94
         (coe d_verifyPrev'63'_2164 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2950) (coe v4)
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Ratify.acceptedBy?
d_acceptedBy'63'_2238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acceptedBy'63'_2238 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_1309 v5 v6 v7 v8 v9
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
               -> case coe v8 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                      -> coe
                           MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3402
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_maybe_36 (coe (\ v14 -> v14))
                              (coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178)
                              (coe
                                 d_threshold_1584 v0 v12
                                 (coe
                                    MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                                    MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 ()
                                    erased () erased
                                    (\ v14 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                                    v10)
                                 (MAlonzo.Code.Ledger.GovernanceActions.d_action_694 (coe v3)) v4))
                           (coe
                              d_acceptedStakeRatio_2056 (coe v0) (coe v4)
                              (coe
                                 MAlonzo.Code.Interface.IsSet.du_dom_524
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
                                 (coe
                                    d_actualVotes_1896 (coe v0) (coe v1) (coe v12) (coe v10)
                                    (coe
                                       MAlonzo.Code.Ledger.GovernanceActions.d_action_694 (coe v3))
                                    (coe
                                       MAlonzo.Code.Ledger.GovernanceActions.d_votes_688 (coe v3))))
                              (coe d_stakeDistrs_1730 (coe v1))
                              (coe
                                 d_actualVotes_1896 (coe v0) (coe v1) (coe v12) (coe v10)
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_694 (coe v3))
                                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_688 (coe v3))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.accepted?
d_accepted'63'_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_accepted'63'_2256 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
      (coe
         d_acceptedBy'63'_2238 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Ledger.GovernanceActions.C_CC_564))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
         (coe
            d_acceptedBy'63'_2238 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_DRep_566))
         (coe
            d_acceptedBy'63'_2238 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe MAlonzo.Code.Ledger.GovernanceActions.C_SPO_568)))
-- Ledger.Ratify.expired?
d_expired'63'_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_expired'63'_2270 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
      (coe
         MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
         (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
            (coe
               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
         (coe
            MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
            (\ v3 v4 -> v3)
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_692 (coe v2))
            v1)
         (coe
            MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
            (\ v3 v4 -> v4)
            (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
            (MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_692 (coe v2))
            v1))
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__2288 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2288
  = C_RATIFY'45'Accept_2316 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.Enact.T__'8866'_'8640''10631'_'44'ENACT'10632'__810 |
    C_RATIFY'45'Reject_2332 AgdaAny |
    C_RATIFY'45'Continue_2362 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2292 ~v0 v1 = du_ccHotKeys_2292 v1
du_ccHotKeys_2292 ::
  T_GeneralizeTel_102801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2292 v0
  = coe d_ccHotKeys_1736 (coe d_'46'generalizedField'45'Γ_102789 v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102801 -> AgdaAny
d_currentEpoch_2294 ~v0 v1 = du_currentEpoch_2294 v1
du_currentEpoch_2294 :: T_GeneralizeTel_102801 -> AgdaAny
du_currentEpoch_2294 v0
  = coe
      d_currentEpoch_1732 (coe d_'46'generalizedField'45'Γ_102789 v0)
-- Ledger.Ratify._.dreps
d_dreps_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2296 ~v0 v1 = du_dreps_2296 v1
du_dreps_2296 ::
  T_GeneralizeTel_102801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2296 v0
  = coe d_dreps_1734 (coe d_'46'generalizedField'45'Γ_102789 v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2298 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102801 -> T_StakeDistrs_1712
d_stakeDistrs_2298 ~v0 v1 = du_stakeDistrs_2298 v1
du_stakeDistrs_2298 :: T_GeneralizeTel_102801 -> T_StakeDistrs_1712
du_stakeDistrs_2298 v0
  = coe
      d_stakeDistrs_1730 (coe d_'46'generalizedField'45'Γ_102789 v0)
-- Ledger.Ratify._.treasury
d_treasury_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102801 -> Integer
d_treasury_2300 ~v0 v1 = du_treasury_2300 v1
du_treasury_2300 :: T_GeneralizeTel_102801 -> Integer
du_treasury_2300 v0
  = coe d_treasury_1738 (coe d_'46'generalizedField'45'Γ_102789 v0)
-- Ledger.Ratify._.action
d_action_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102801 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592
d_action_2306 ~v0 v1 = du_action_2306 v1
du_action_2306 ::
  T_GeneralizeTel_102801 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592
du_action_2306 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_694
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_102791 v0))
-- Ledger.Ratify._.prevAction
d_prevAction_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_102801 -> AgdaAny
d_prevAction_2310 ~v0 v1 = du_prevAction_2310 v1
du_prevAction_2310 :: T_GeneralizeTel_102801 -> AgdaAny
du_prevAction_2310 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_696
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_102791 v0))
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103211 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2320 ~v0 v1 = du_ccHotKeys_2320 v1
du_ccHotKeys_2320 ::
  T_GeneralizeTel_103211 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2320 v0
  = coe d_ccHotKeys_1736 (coe d_'46'generalizedField'45'Γ_103201 v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103211 -> AgdaAny
d_currentEpoch_2322 ~v0 v1 = du_currentEpoch_2322 v1
du_currentEpoch_2322 :: T_GeneralizeTel_103211 -> AgdaAny
du_currentEpoch_2322 v0
  = coe
      d_currentEpoch_1732 (coe d_'46'generalizedField'45'Γ_103201 v0)
-- Ledger.Ratify._.dreps
d_dreps_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103211 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2324 ~v0 v1 = du_dreps_2324 v1
du_dreps_2324 ::
  T_GeneralizeTel_103211 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2324 v0
  = coe d_dreps_1734 (coe d_'46'generalizedField'45'Γ_103201 v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103211 -> T_StakeDistrs_1712
d_stakeDistrs_2326 ~v0 v1 = du_stakeDistrs_2326 v1
du_stakeDistrs_2326 :: T_GeneralizeTel_103211 -> T_StakeDistrs_1712
du_stakeDistrs_2326 v0
  = coe
      d_stakeDistrs_1730 (coe d_'46'generalizedField'45'Γ_103201 v0)
-- Ledger.Ratify._.treasury
d_treasury_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103211 -> Integer
d_treasury_2328 ~v0 v1 = du_treasury_2328 v1
du_treasury_2328 :: T_GeneralizeTel_103211 -> Integer
du_treasury_2328 v0
  = coe d_treasury_1738 (coe d_'46'generalizedField'45'Γ_103201 v0)
-- Ledger.Ratify._.ccHotKeys
d_ccHotKeys_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103799 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2336 ~v0 v1 = du_ccHotKeys_2336 v1
du_ccHotKeys_2336 ::
  T_GeneralizeTel_103799 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2336 v0
  = coe d_ccHotKeys_1736 (coe d_'46'generalizedField'45'Γ_103789 v0)
-- Ledger.Ratify._.currentEpoch
d_currentEpoch_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103799 -> AgdaAny
d_currentEpoch_2338 ~v0 v1 = du_currentEpoch_2338 v1
du_currentEpoch_2338 :: T_GeneralizeTel_103799 -> AgdaAny
du_currentEpoch_2338 v0
  = coe
      d_currentEpoch_1732 (coe d_'46'generalizedField'45'Γ_103789 v0)
-- Ledger.Ratify._.dreps
d_dreps_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103799 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2340 ~v0 v1 = du_dreps_2340 v1
du_dreps_2340 ::
  T_GeneralizeTel_103799 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2340 v0
  = coe d_dreps_1734 (coe d_'46'generalizedField'45'Γ_103789 v0)
-- Ledger.Ratify._.stakeDistrs
d_stakeDistrs_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103799 -> T_StakeDistrs_1712
d_stakeDistrs_2342 ~v0 v1 = du_stakeDistrs_2342 v1
du_stakeDistrs_2342 :: T_GeneralizeTel_103799 -> T_StakeDistrs_1712
du_stakeDistrs_2342 v0
  = coe
      d_stakeDistrs_1730 (coe d_'46'generalizedField'45'Γ_103789 v0)
-- Ledger.Ratify._.treasury
d_treasury_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103799 -> Integer
d_treasury_2344 ~v0 v1 = du_treasury_2344 v1
du_treasury_2344 :: T_GeneralizeTel_103799 -> Integer
du_treasury_2344 v0
  = coe d_treasury_1738 (coe d_'46'generalizedField'45'Γ_103789 v0)
-- Ledger.Ratify._.action
d_action_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103799 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592
d_action_2350 ~v0 v1 = du_action_2350 v1
du_action_2350 ::
  T_GeneralizeTel_103799 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592
du_action_2350 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_action_694
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_103791 v0))
-- Ledger.Ratify._.prevAction
d_prevAction_2354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_103799 -> AgdaAny
d_prevAction_2354 ~v0 v1 = du_prevAction_2354 v1
du_prevAction_2354 :: T_GeneralizeTel_103799 -> AgdaAny
du_prevAction_2354 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_696
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_'46'generalizedField'45'a_103791 v0))
-- Ledger.Ratify._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2364 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_RatifyEnv_1718 ->
  T_RatifyState_1740 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  T_RatifyState_1740 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__2364 = erased
-- Ledger.Ratify..generalizedField-Γ
d_'46'generalizedField'45'Γ_102789 ::
  T_GeneralizeTel_102801 -> T_RatifyEnv_1718
d_'46'generalizedField'45'Γ_102789
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_102791 ::
  T_GeneralizeTel_102801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_102791
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_102793 ::
  T_GeneralizeTel_102801 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_'46'generalizedField'45'es_102793
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_102795 ::
  T_GeneralizeTel_102801 -> Bool
d_'46'generalizedField'45'd_102795
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es'
d_'46'generalizedField'45'es''_102797 ::
  T_GeneralizeTel_102801 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_'46'generalizedField'45'es''_102797
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_102799 ::
  T_GeneralizeTel_102801 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_102799
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_102801 a0 = ()
data T_GeneralizeTel_102801
  = C_mkGeneralizeTel_102803 T_RatifyEnv_1718
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Ledger.Enact.T_EnactState_728 Bool
                             MAlonzo.Code.Ledger.Enact.T_EnactState_728
                             [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ratify..generalizedField-Γ
d_'46'generalizedField'45'Γ_103201 ::
  T_GeneralizeTel_103211 -> T_RatifyEnv_1718
d_'46'generalizedField'45'Γ_103201
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_103203 ::
  T_GeneralizeTel_103211 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_103203
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_103205 ::
  T_GeneralizeTel_103211 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_'46'generalizedField'45'es_103205
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_103207 ::
  T_GeneralizeTel_103211 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_103207
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_103209 ::
  T_GeneralizeTel_103211 -> Bool
d_'46'generalizedField'45'd_103209
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_103211 a0 = ()
data T_GeneralizeTel_103211
  = C_mkGeneralizeTel_103213 T_RatifyEnv_1718
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Ledger.Enact.T_EnactState_728
                             [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Bool
-- Ledger.Ratify..generalizedField-Γ
d_'46'generalizedField'45'Γ_103789 ::
  T_GeneralizeTel_103799 -> T_RatifyEnv_1718
d_'46'generalizedField'45'Γ_103789
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-a
d_'46'generalizedField'45'a_103791 ::
  T_GeneralizeTel_103799 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'a_103791
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-es
d_'46'generalizedField'45'es_103793 ::
  T_GeneralizeTel_103799 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_'46'generalizedField'45'es_103793
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-d
d_'46'generalizedField'45'd_103795 ::
  T_GeneralizeTel_103799 -> Bool
d_'46'generalizedField'45'd_103795
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify..generalizedField-removed
d_'46'generalizedField'45'removed_103797 ::
  T_GeneralizeTel_103799 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'removed_103797
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ratify.GeneralizeTel
d_GeneralizeTel_103799 a0 = ()
data T_GeneralizeTel_103799
  = C_mkGeneralizeTel_103801 T_RatifyEnv_1718
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                             MAlonzo.Code.Ledger.Enact.T_EnactState_728 Bool
                             [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
