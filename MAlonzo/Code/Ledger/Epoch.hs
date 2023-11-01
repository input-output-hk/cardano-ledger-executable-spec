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

module MAlonzo.Code.Ledger.Epoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.HasOrder.Instance
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Ledger.Epoch.EpochStructure
d_EpochStructure_4 = ()
data T_EpochStructure_4
  = C_EpochStructure'46'constructor_233 MAlonzo.Code.Algebra.Bundles.T_Semiring_1986
                                        MAlonzo.Code.Interface.DecEq.T_DecEq_14
                                        MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_238
                                        MAlonzo.Code.Interface.DecEq.T_DecEq_14 (AgdaAny -> AgdaAny)
                                        (AgdaAny -> AgdaAny) AgdaAny (AgdaAny -> AgdaAny)
-- Ledger.Epoch.EpochStructure.Slotʳ
d_Slot'691'_26 ::
  T_EpochStructure_4 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_1986
d_Slot'691'_26 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_233 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochStructure.Epoch
d_Epoch_28 :: T_EpochStructure_4 -> ()
d_Epoch_28 = erased
-- Ledger.Epoch.EpochStructure.DecEq-Epoch
d_DecEq'45'Epoch_30 ::
  T_EpochStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Epoch_30 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_233 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochStructure.Slot
d_Slot_32 :: T_EpochStructure_4 -> ()
d_Slot_32 = erased
-- Ledger.Epoch.EpochStructure.DecPo-Slot
d_DecPo'45'Slot_34 ::
  T_EpochStructure_4 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_238
d_DecPo'45'Slot_34 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_233 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochStructure.DecEq-Slot
d_DecEq'45'Slot_36 ::
  T_EpochStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Slot_36 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_233 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochStructure.epoch
d_epoch_38 :: T_EpochStructure_4 -> AgdaAny -> AgdaAny
d_epoch_38 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_233 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochStructure.firstSlot
d_firstSlot_40 :: T_EpochStructure_4 -> AgdaAny -> AgdaAny
d_firstSlot_40 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_233 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochStructure.StabilityWindow
d_StabilityWindow_42 :: T_EpochStructure_4 -> AgdaAny
d_StabilityWindow_42 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_233 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochStructure.sucᵉ
d_suc'7497'_44 :: T_EpochStructure_4 -> AgdaAny -> AgdaAny
d_suc'7497'_44 v0
  = case coe v0 of
      C_EpochStructure'46'constructor_233 v1 v3 v4 v5 v6 v7 v8 v9
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochStructure.preoEpoch
d_preoEpoch_46 ::
  T_EpochStructure_4 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_46 v0
  = coe
      MAlonzo.Code.Interface.HasOrder.du_hasPreorderFromStrictPartialOrder_472
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C_IsStrictPartialOrder'46'constructor_12363
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Interface.HasOrder.du_'60''45'trans_210
              (coe
                 MAlonzo.Code.Interface.HasOrder.d_hasPartialOrder_254
                 (coe d_DecPo'45'Slot_34 (coe v0)))
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                 (d_firstSlot_40 (coe v0)) (\ v4 v5 -> v4) v1 v2)
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v4 v5 -> v5) (d_firstSlot_40 (coe v0)) v1 v2)
              (coe
                 MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                 (\ v4 v5 -> v5) (d_firstSlot_40 (coe v0)) v2 v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe (\ v1 v2 v3 v4 v5 -> v5)) (coe (\ v1 v2 v3 v4 v5 -> v5))))
-- Ledger.Epoch.EpochStructure.ℕtoEpoch
d_ℕtoEpoch_216 :: T_EpochStructure_4 -> Integer -> AgdaAny
d_ℕtoEpoch_216 v0 v1
  = case coe v1 of
      0 -> coe
             d_epoch_38 v0
             (MAlonzo.Code.Algebra.Bundles.d_0'35'_2014
                (coe d_Slot'691'_26 (coe v0)))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe d_suc'7497'_44 v0 (d_ℕtoEpoch_216 (coe v0) (coe v2))
-- Ledger.Epoch.EpochStructure._+ᵉ_
d__'43''7497'__220 ::
  T_EpochStructure_4 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__220 v0 v1 v2
  = case coe v1 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             d_suc'7497'_44 v0 (d__'43''7497'__220 (coe v0) (coe v3) (coe v2))
-- Ledger.Epoch.EpochStructure.addSlot
d_addSlot_228 ::
  T_EpochStructure_4 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_228 v0
  = coe
      MAlonzo.Code.Interface.HasAdd.C_HasAdd'46'constructor_7
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'43'__2010
         (coe d_Slot'691'_26 (coe v0)))
-- Ledger.Epoch.EpochStructure.addEpoch
d_addEpoch_230 ::
  T_EpochStructure_4 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_230 v0
  = coe
      MAlonzo.Code.Interface.HasAdd.C_HasAdd'46'constructor_7
      (coe
         (\ v1 v2 ->
            coe
              d_epoch_38 v0
              (coe
                 MAlonzo.Code.Algebra.Bundles.d__'43'__2010
                 (d_Slot'691'_26 (coe v0)) (coe d_firstSlot_40 v0 v1)
                 (coe d_firstSlot_40 v0 v2))))
-- Ledger.Epoch.GlobalConstants
d_GlobalConstants_236 = ()
data T_GlobalConstants_236
  = C_GlobalConstants'46'constructor_4991 MAlonzo.Code.Interface.DecEq.T_DecEq_14
                                          Integer MAlonzo.Code.Data.Nat.Base.T_NonZero_88 Integer
                                          Integer AgdaAny
-- Ledger.Epoch.GlobalConstants.Network
d_Network_252 :: T_GlobalConstants_236 -> ()
d_Network_252 = erased
-- Ledger.Epoch.GlobalConstants.DecEq-Netw
d_DecEq'45'Netw_254 ::
  T_GlobalConstants_236 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Netw_254 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_4991 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GlobalConstants.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_256 :: T_GlobalConstants_236 -> Integer
d_SlotsPerEpoch'7580'_256 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_4991 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GlobalConstants.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_258 ::
  T_GlobalConstants_236 -> MAlonzo.Code.Data.Nat.Base.T_NonZero_88
d_NonZero'45'SlotsPerEpoch'7580'_258 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_4991 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GlobalConstants.StabilityWindowᶜ
d_StabilityWindow'7580'_260 :: T_GlobalConstants_236 -> Integer
d_StabilityWindow'7580'_260 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_4991 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GlobalConstants.Quorum
d_Quorum_262 :: T_GlobalConstants_236 -> Integer
d_Quorum_262 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_4991 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GlobalConstants.NetworkId
d_NetworkId_264 :: T_GlobalConstants_236 -> AgdaAny
d_NetworkId_264 v0
  = case coe v0 of
      C_GlobalConstants'46'constructor_4991 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GlobalConstants.ℕEpochStructure
d_ℕEpochStructure_266 ::
  T_GlobalConstants_236 -> T_EpochStructure_4
d_ℕEpochStructure_266 v0
  = coe
      C_EpochStructure'46'constructor_233
      MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3648
      MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
      MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_36
      MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
      (\ v1 ->
         coe
           MAlonzo.Code.Data.Nat.Base.du__'47'__248 (coe v1)
           (coe d_SlotsPerEpoch'7580'_256 (coe v0)))
      (\ v1 -> mulInt (coe v1) (coe d_SlotsPerEpoch'7580'_256 (coe v0)))
      (d_StabilityWindow'7580'_260 (coe v0))
      (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))
