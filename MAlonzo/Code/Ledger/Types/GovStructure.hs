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

module MAlonzo.Code.Ledger.Types.GovStructure where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Types.GovStructure.GovStructure
d_GovStructure_6 = ()
data T_GovStructure_6
  = C_GovStructure'46'constructor_2981 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Crypto.T_Crypto_128
                                       MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
                                       MAlonzo.Code.Ledger.Script.T_ScriptStructure_360
                                       MAlonzo.Code.Ledger.PParams.T_GovParams_1136
-- Ledger.Types.GovStructure._.GovParams
d_GovParams_194 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Types.GovStructure.GovStructure.TxId
d_TxId_460 :: T_GovStructure_6 -> ()
d_TxId_460 = erased
-- Ledger.Types.GovStructure.GovStructure.Network
d_Network_462 :: T_GovStructure_6 -> ()
d_Network_462 = erased
-- Ledger.Types.GovStructure.GovStructure.DocHash
d_DocHash_464 :: T_GovStructure_6 -> ()
d_DocHash_464 = erased
-- Ledger.Types.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_466 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_466 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2981 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure.DecEq-Netw
d_DecEq'45'Netw_468 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_468 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2981 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure.crypto
d_crypto_470 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_crypto_470 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2981 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_474 ::
  T_GovStructure_6 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_474 v0
  = let v1 = d_crypto_470 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_476 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_476 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
      (coe d_crypto_470 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_478 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_478 v0
  = let v1 = d_crypto_470 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_126
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_480 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_480 v0
  = let v1 = d_crypto_470 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_482 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_482 v0
  = let v1 = d_crypto_470 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_484 :: T_GovStructure_6 -> ()
d_THash_484 = erased
-- Ledger.Types.GovStructure.GovStructure._.KeyPair
d_KeyPair_486 :: T_GovStructure_6 -> ()
d_KeyPair_486 = erased
-- Ledger.Types.GovStructure.GovStructure._.SKey
d_SKey_488 :: T_GovStructure_6 -> ()
d_SKey_488 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_490 :: T_GovStructure_6 -> ()
d_ScriptHash_490 = erased
-- Ledger.Types.GovStructure.GovStructure._.Ser
d_Ser_492 :: T_GovStructure_6 -> ()
d_Ser_492 = erased
-- Ledger.Types.GovStructure.GovStructure._.Sig
d_Sig_494 :: T_GovStructure_6 -> ()
d_Sig_494 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_496 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_496 v0
  = let v1 = d_crypto_470 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.VKey
d_VKey_498 :: T_GovStructure_6 -> ()
d_VKey_498 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_500 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_500 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned
d_isSigned_502 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_502 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_504 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_504 v0
  = let v1 = d_crypto_470 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_122
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.khs
d_khs_506 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_506 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_470 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.pkk
d_pkk_508 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_508 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe d_crypto_470 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sign
d_sign_510 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_510 v0
  = let v1 = d_crypto_470 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_102
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure.epochStructure
d_epochStructure_512 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_512 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2981 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__516 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__516 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_518 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_518 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_520 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_520 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_38
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_522 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_522 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Epoch
d_Epoch_524 :: T_GovStructure_6 -> ()
d_Epoch_524 = erased
-- Ledger.Types.GovStructure.GovStructure._.Number-Epoch
d_Number'45'Epoch_526 ::
  T_GovStructure_6 -> MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_526 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Slot
d_Slot_528 :: T_GovStructure_6 -> ()
d_Slot_528 = erased
-- Ledger.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_530 ::
  T_GovStructure_6 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_530 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_532 :: T_GovStructure_6 -> AgdaAny
d_StabilityWindow_532 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_44
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_534 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_534 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addSlot
d_addSlot_536 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_536 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_214
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.epoch
d_epoch_538 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_epoch_538 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_540 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_firstSlot_540 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_542 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_542 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_544 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_suc'7497'_544 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_46
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_546 :: T_GovStructure_6 -> Integer -> AgdaAny
d_ℕtoEpoch_546 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
      (coe d_epochStructure_512 (coe v0))
-- Ledger.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_548 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360
d_scriptStructure_548 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2981 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__552 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__552 = erased
-- Ledger.Types.GovStructure.GovStructure._.CostModel
d_CostModel_554 :: T_GovStructure_6 -> ()
d_CostModel_554 = erased
-- Ledger.Types.GovStructure.GovStructure._.T
d_T_556 :: T_GovStructure_6 -> ()
d_T_556 = erased
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_558 :: T_GovStructure_6 -> ()
d_THash_558 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_560 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_560 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_164
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_548 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Datum
d_Datum_562 :: T_GovStructure_6 -> ()
d_Datum_562 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_564 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_564 v0
  = let v1 = d_crypto_470 (coe v0) in
    coe
      (let v2 = d_epochStructure_512 (coe v0) in
       coe
         (let v3 = d_scriptStructure_548 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_566 ::
  T_GovStructure_6 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_566 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_548 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_568 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_568 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_548 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_570 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_570 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_548 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_572 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_572 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_548 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_574 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_574 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_184
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_548 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_576 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_576 v0
  = let v1 = d_crypto_470 (coe v0) in
    coe
      (let v2 = d_epochStructure_512 (coe v0) in
       coe
         (let v3 = d_scriptStructure_548 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_578 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_578 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_412
                 (coe d_scriptStructure_548 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_580 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_580 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_412
                 (coe d_scriptStructure_548 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_582 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_582 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_548 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_584 :: T_GovStructure_6 -> ()
d_ExUnits_584 = erased
-- Ledger.Types.GovStructure.GovStructure._.Hash-Timelock
d_Hash'45'Timelock_586 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_586 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_396
      (coe d_scriptStructure_548 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_588 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_588 v0
  = let v1 = d_crypto_470 (coe v0) in
    coe
      (let v2 = d_epochStructure_512 (coe v0) in
       coe
         (let v3 = d_scriptStructure_548 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_590 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_590 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_548 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_592 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_592 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_470
      (coe d_crypto_470 (coe v0)) (coe d_epochStructure_512 (coe v0))
      (coe d_scriptStructure_548 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_594 :: T_GovStructure_6 -> ()
d_LangDepView_594 = erased
-- Ledger.Types.GovStructure.GovStructure._.Language
d_Language_596 :: T_GovStructure_6 -> ()
d_Language_596 = erased
-- Ledger.Types.GovStructure.GovStructure._.P1Script
d_P1Script_598 :: T_GovStructure_6 -> ()
d_P1Script_598 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_600 :: T_GovStructure_6 -> ()
d_PlutusScript_600 = erased
-- Ledger.Types.GovStructure.GovStructure._.Prices
d_Prices_602 :: T_GovStructure_6 -> ()
d_Prices_602 = erased
-- Ledger.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_604 :: T_GovStructure_6 -> ()
d_Redeemer_604 = erased
-- Ledger.Types.GovStructure.GovStructure._.Script
d_Script_606 :: T_GovStructure_6 -> ()
d_Script_606 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_608 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_608 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_412
                 (coe d_scriptStructure_548 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_610 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_610 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_164
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe d_scriptStructure_548 (coe v0))))
-- Ledger.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_612 ::
  T_GovStructure_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_612 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_394
      (coe d_scriptStructure_548 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.language
d_language_614 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_language_614 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_548 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.p1s
d_p1s_616 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_616 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_398 (coe d_crypto_470 (coe v0))
      (coe d_epochStructure_512 (coe v0))
      (coe d_scriptStructure_548 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ps
d_ps_618 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_618 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_412
      (coe d_scriptStructure_548 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.toData
d_toData_620 :: T_GovStructure_6 -> () -> AgdaAny -> AgdaAny
d_toData_620 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe d_scriptStructure_548 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_622 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 -> ()
d_validP1Script_622 = erased
-- Ledger.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_624 ::
  T_GovStructure_6 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_624 = erased
-- Ledger.Types.GovStructure.GovStructure._._?↗_
d__'63''8599'__628 ::
  T_GovStructure_6 -> () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__628 ~v0 = du__'63''8599'__628
du__'63''8599'__628 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__628 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__864 v1 v2
-- Ledger.Types.GovStructure.GovStructure._.Acnt
d_Acnt_630 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_632 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_632 ~v0 = du_DecEq'45'DrepThresholds_632
du_DecEq'45'DrepThresholds_632 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_632
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_1042
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_634 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_634 ~v0 = du_DecEq'45'PParamGroup_634
du_DecEq'45'PParamGroup_634 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_634
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_1050
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_636 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_636 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_1046
      (coe d_epochStructure_512 (coe v0))
      (coe d_scriptStructure_548 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_638 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_638 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1048
      (coe d_epochStructure_512 (coe v0))
      (coe d_scriptStructure_548 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_640 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_640 ~v0 = du_DecEq'45'PoolThresholds_640
du_DecEq'45'PoolThresholds_640 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_640
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_1044
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_642 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.GovParams
d_GovParams_646 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_652 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParams
d_PParams_654 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_656 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate
d_PParamsUpdate_658 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_660 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_662 :: T_GovStructure_6 -> ()
d_ProtVer_662 = erased
-- Ledger.Types.GovStructure.GovStructure._.applyPParamsUpdate
d_applyPParamsUpdate_668 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220
d_applyPParamsUpdate_668 ~v0 = du_applyPParamsUpdate_668
du_applyPParamsUpdate_668 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220
du_applyPParamsUpdate_668
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_912
-- Ledger.Types.GovStructure.GovStructure._.modifiedUpdateGroups
d_modifiedUpdateGroups_674 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_144]
d_modifiedUpdateGroups_674 ~v0 = du_modifiedUpdateGroups_674
du_modifiedUpdateGroups_674 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_144]
du_modifiedUpdateGroups_674
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_848
-- Ledger.Types.GovStructure.GovStructure._.modifiesEconomicGroup
d_modifiesEconomicGroup_676 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Bool
d_modifiesEconomicGroup_676 ~v0 = du_modifiesEconomicGroup_676
du_modifiesEconomicGroup_676 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Bool
du_modifiesEconomicGroup_676
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_656
-- Ledger.Types.GovStructure.GovStructure._.modifiesGovernanceGroup
d_modifiesGovernanceGroup_678 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Bool
d_modifiesGovernanceGroup_678 ~v0 = du_modifiesGovernanceGroup_678
du_modifiesGovernanceGroup_678 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Bool
du_modifiesGovernanceGroup_678
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_784
-- Ledger.Types.GovStructure.GovStructure._.modifiesNetworkGroup
d_modifiesNetworkGroup_680 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Bool
d_modifiesNetworkGroup_680 ~v0 = du_modifiesNetworkGroup_680
du_modifiesNetworkGroup_680 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Bool
du_modifiesNetworkGroup_680
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_592
-- Ledger.Types.GovStructure.GovStructure._.modifiesTechnicalGroup
d_modifiesTechnicalGroup_682 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Bool
d_modifiesTechnicalGroup_682 ~v0 = du_modifiesTechnicalGroup_682
du_modifiesTechnicalGroup_682 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Bool
du_modifiesTechnicalGroup_682
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_720
-- Ledger.Types.GovStructure.GovStructure._.paramsUpdateWellFormed
d_paramsUpdateWellFormed_684 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> ()
d_paramsUpdateWellFormed_684 = erased
-- Ledger.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_686 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParams_220 -> ()
d_paramsWellFormed_686 = erased
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_688 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_690 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_690 ~v0 = du_pvCanFollow'63'_690
du_pvCanFollow'63'_690 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_690
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1056
-- Ledger.Types.GovStructure.GovStructure._.≡-update
d_'8801''45'update_692 ::
  T_GovStructure_6 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_692 ~v0 = du_'8801''45'update_692
du_'8801''45'update_692 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_692 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_878 v1
-- Ledger.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_696 :: MAlonzo.Code.Ledger.PParams.T_Acnt_126 -> Integer
d_reserves_696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_134 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_698 :: MAlonzo.Code.Ledger.PParams.T_Acnt_126 -> Integer
d_treasury_698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_132 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_702 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_702 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_178 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_704 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_704 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_180 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_706 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_706 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_182 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_708 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_708 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_184 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_710 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_710 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_186 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_712 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_712 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_188 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_714 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_714 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_190 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_716 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_716 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_192 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_718 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_718 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_194 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_720 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_720 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_196 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-T
d_DecEq'45'T_724 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_724 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_726 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_726 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_728 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_728 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1192 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.THash
d_THash_730 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1136 -> ()
d_THash_730 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.T-Hashable
d_T'45'Hashable_732 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_732 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_734 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1136 -> ()
d_UpdateT_734 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_736 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_applyUpdate_736 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1120
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1166 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_738 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_738 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_740 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104
d_ppUpd_740 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1166 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppWF?
d_ppWF'63'_742 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_742 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1128
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1166 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_744 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 -> AgdaAny -> ()
d_ppdWellFormed_744 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_746 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_144]
d_updateGroups_746 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1122
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1166 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_762 :: MAlonzo.Code.Ledger.PParams.T_PParams_220 -> AgdaAny
d_Emax_762 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_314 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a
d_a_764 :: MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_a_764 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_296 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a0
d_a0_766 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_766 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_312 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.b
d_b_768 :: MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_b_768 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_298 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_770 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_ccMaxTermLength_770 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_336 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_772 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_ccMinSize_772 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_334 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_774 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_coinsPerUTxOByte_774 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_304 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_776 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_collateralPercentage_776 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_318 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_778 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> AgdaAny
d_costmdls_778 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_320 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_780 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> AgdaAny
d_drepActivity_780 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_332 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_782 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_drepDeposit_782 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_330 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_784 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156
d_drepThresholds_784 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_322 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_786 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_govActionDeposit_786 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_328 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_788 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_govActionLifetime_788 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_326 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.keyDeposit
d_keyDeposit_790 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_keyDeposit_790 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_300 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_792 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> AgdaAny
d_maxBlockExUnits_792 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_292 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_794 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxBlockSize_794 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_280 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_796 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxCollateralInputs_796 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_288 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_798 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxHeaderSize_798 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_284 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_800 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> AgdaAny
d_maxTxExUnits_800 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_290 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_802 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxTxSize_802 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_282 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_804 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxValSize_804 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_286 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_806 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_806 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_306
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_808 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_minUTxOValue_808 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_310 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_810 :: MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_nopt_810 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_316 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_812 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_poolDeposit_812 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_302 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_814 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198
d_poolThresholds_814 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_324 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.prices
d_prices_816 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> AgdaAny
d_prices_816 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_308 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.pv
d_pv_818 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_818 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_294 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_822 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 -> ()
d_UpdateT_822 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_824 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_applyUpdate_824 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1120 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppWF?
d_ppWF'63'_826 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_826 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1128 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_828 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 -> AgdaAny -> ()
d_ppdWellFormed_828 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_830 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_144]
d_updateGroups_830 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1122 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.Emax
d_Emax_834 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe AgdaAny
d_Emax_834 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_500 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.a
d_a_836 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_a_836 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_482 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.a0
d_a0_838 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_838 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_498 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.b
d_b_840 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_b_840 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_484 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_842 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_ccMaxTermLength_842 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_522 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.ccMinSize
d_ccMinSize_844 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_ccMinSize_844 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_520 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_846 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_coinsPerUTxOByte_846 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_490 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.collateralPercentage
d_collateralPercentage_848 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_collateralPercentage_848 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_504 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.costmdls
d_costmdls_850 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe AgdaAny
d_costmdls_850 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_506 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.drepActivity
d_drepActivity_852 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe AgdaAny
d_drepActivity_852 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_518 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.drepDeposit
d_drepDeposit_854 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_drepDeposit_854 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_516 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.drepThresholds
d_drepThresholds_856 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156
d_drepThresholds_856 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_508 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.govActionDeposit
d_govActionDeposit_858 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_govActionDeposit_858 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_514 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.govActionLifetime
d_govActionLifetime_860 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_govActionLifetime_860 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_512 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.keyDeposit
d_keyDeposit_862 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_keyDeposit_862 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_486 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_864 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxBlockExUnits_864 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_478 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.maxBlockSize
d_maxBlockSize_866 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxBlockSize_866 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_466 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_868 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxCollateralInputs_868 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_474 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_870 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxHeaderSize_870 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_470 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_872 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxTxExUnits_872 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_476 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.maxTxSize
d_maxTxSize_874 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxTxSize_874 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_468 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.maxValSize
d_maxValSize_876 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxValSize_876 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_472 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_878 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_878 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_492
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.minUTxOValue
d_minUTxOValue_880 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_minUTxOValue_880 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_496 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.nopt
d_nopt_882 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_nopt_882 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_502 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.poolDeposit
d_poolDeposit_884 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_poolDeposit_884 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_488 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.poolThresholds
d_poolThresholds_886 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198
d_poolThresholds_886 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_510 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.prices
d_prices_888 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe AgdaAny
d_prices_888 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_494 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsUpdate.pv
d_pv_890 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_890 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_480 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_894 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_894 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_210 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_896 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_896 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_212 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_898 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_898 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_214 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_900 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_900 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_216 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q5e
d_Q5e_902 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_902 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_218 (coe v0)
-- Ledger.Types.GovStructure.GovStructure.govParams
d_govParams_910 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_GovParams_1136
d_govParams_910 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2981 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_914 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_914 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180
         (coe d_govParams_910 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_916 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_916 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180
         (coe d_govParams_910 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_918 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_918 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1192
      (coe d_govParams_910 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_920 :: T_GovStructure_6 -> ()
d_THash_920 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_922 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_922 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180
         (coe d_govParams_910 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_924 :: T_GovStructure_6 -> ()
d_UpdateT_924 = erased
-- Ledger.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_926 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_applyUpdate_926 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1120
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1166
         (coe d_govParams_910 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppHashingScheme
d_ppHashingScheme_928 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_928 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180
      (coe d_govParams_910 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_930 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104
d_ppUpd_930 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_1166
      (coe d_govParams_910 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppWF?
d_ppWF'63'_932 ::
  T_GovStructure_6 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_932 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1128
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1166
         (coe d_govParams_910 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_934 :: T_GovStructure_6 -> AgdaAny -> ()
d_ppdWellFormed_934 = erased
-- Ledger.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_936 ::
  T_GovStructure_6 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_144]
d_updateGroups_936 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1122
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1166
         (coe d_govParams_910 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Addr
d_Addr_940 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_940 = erased
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_942 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_944 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Credential
d_Credential_946 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_946 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_948 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_948 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_948
du_Dec'45'isScript_948 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_948
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
-- Ledger.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_950 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_950 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_950
du_Dec'45'isVKey_950 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_950
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_108
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_952 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_952 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_952 v1 v2 v3
du_DecEq'45'BaseAddr_952 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_952 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_954 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_954 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_954 v1 v2 v3
du_DecEq'45'BootstrapAddr_954 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_954 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_956 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_956 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_956 v1 v2 v3
du_DecEq'45'RwdAddr_956 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_956 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_958 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_962 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_962 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_964 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_964 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_966 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_966 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_968 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_968 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_970 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_970 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_972 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_972 = erased
-- Ledger.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_976 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
d_getScriptHash_976 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_976
du_getScriptHash_976 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
du_getScriptHash_976
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_148
-- Ledger.Types.GovStructure.GovStructure._.isScript
d_isScript_978 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_980 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_980 = erased
-- Ledger.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_982 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> ()
d_isScriptRwdAddr_982 = erased
-- Ledger.Types.GovStructure.GovStructure._.isVKey
d_isVKey_984 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_986 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_986 = erased
-- Ledger.Types.GovStructure.GovStructure._.netId
d_netId_988 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_988 ~v0 ~v1 ~v2 ~v3 = du_netId_988
du_netId_988 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_988 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.Types.GovStructure.GovStructure._.payCred
d_payCred_990 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_payCred_990 ~v0 ~v1 ~v2 ~v3 = du_payCred_990
du_payCred_990 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_payCred_990 = coe MAlonzo.Code.Ledger.Address.du_payCred_90
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_994 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_30 -> AgdaAny
d_net_994 v0 = coe MAlonzo.Code.Ledger.Address.d_net_38 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_996 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_996 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_40 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_998 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_998 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_42 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_1002 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> Integer
d_attrsSize_1002 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_56 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_1004 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> AgdaAny
d_net_1004 v0 = coe MAlonzo.Code.Ledger.Address.d_net_52 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_1006 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1006 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_54 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_1010 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> AgdaAny
d_net_1010 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_1012 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1012 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)
