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
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
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
  = C_GovStructure'46'constructor_2381 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                       MAlonzo.Code.Ledger.Crypto.T_Crypto_128
                                       MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
                                       MAlonzo.Code.Ledger.Script.T_ScriptStructure_362
                                       MAlonzo.Code.Ledger.PParams.T_GovParams_496
-- Ledger.Types.GovStructure._.GovParams
d_GovParams_190 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Types.GovStructure.GovStructure.TxId
d_TxId_380 :: T_GovStructure_6 -> ()
d_TxId_380 = erased
-- Ledger.Types.GovStructure.GovStructure.Network
d_Network_382 :: T_GovStructure_6 -> ()
d_Network_382 = erased
-- Ledger.Types.GovStructure.GovStructure.DocHash
d_DocHash_384 :: T_GovStructure_6 -> ()
d_DocHash_384 = erased
-- Ledger.Types.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_386 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_386 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2381 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure.DecEq-Netw
d_DecEq'45'Netw_388 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_388 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2381 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure.crypto
d_crypto_390 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_crypto_390 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2381 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_394 ::
  T_GovStructure_6 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_394 v0
  = let v1 = d_crypto_390 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_396 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_396 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
      (coe d_crypto_390 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_398 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_398 v0
  = let v1 = d_crypto_390 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_126
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_400 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_400 v0
  = let v1 = d_crypto_390 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_402 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_402 v0
  = let v1 = d_crypto_390 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_404 :: T_GovStructure_6 -> ()
d_THash_404 = erased
-- Ledger.Types.GovStructure.GovStructure._.KeyPair
d_KeyPair_406 :: T_GovStructure_6 -> ()
d_KeyPair_406 = erased
-- Ledger.Types.GovStructure.GovStructure._.SKey
d_SKey_408 :: T_GovStructure_6 -> ()
d_SKey_408 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_410 :: T_GovStructure_6 -> ()
d_ScriptHash_410 = erased
-- Ledger.Types.GovStructure.GovStructure._.Ser
d_Ser_412 :: T_GovStructure_6 -> ()
d_Ser_412 = erased
-- Ledger.Types.GovStructure.GovStructure._.Sig
d_Sig_414 :: T_GovStructure_6 -> ()
d_Sig_414 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_416 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_416 v0
  = let v1 = d_crypto_390 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.VKey
d_VKey_418 :: T_GovStructure_6 -> ()
d_VKey_418 = erased
-- Ledger.Types.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_420 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_420 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned
d_isSigned_422 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_422 = erased
-- Ledger.Types.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_424 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_424 v0
  = let v1 = d_crypto_390 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_122
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.khs
d_khs_426 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_426 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_390 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.pkk
d_pkk_428 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_428 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe d_crypto_390 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sign
d_sign_430 :: T_GovStructure_6 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_430 v0
  = let v1 = d_crypto_390 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_102
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure.epochStructure
d_epochStructure_432 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_432 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2381 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__436 ::
  T_GovStructure_6 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__436 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
      (coe d_epochStructure_432 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_438 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_438 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
      (coe d_epochStructure_432 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_440 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_440 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_38
      (coe d_epochStructure_432 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_442 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_442 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
      (coe d_epochStructure_432 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Epoch
d_Epoch_444 :: T_GovStructure_6 -> ()
d_Epoch_444 = erased
-- Ledger.Types.GovStructure.GovStructure._.Slot
d_Slot_446 :: T_GovStructure_6 -> ()
d_Slot_446 = erased
-- Ledger.Types.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_448 ::
  T_GovStructure_6 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_448 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
      (coe d_epochStructure_432 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_450 :: T_GovStructure_6 -> AgdaAny
d_StabilityWindow_450 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_44
      (coe d_epochStructure_432 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addEpoch
d_addEpoch_452 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_452 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe d_epochStructure_432 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.addSlot
d_addSlot_454 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_454 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_214
      (coe d_epochStructure_432 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.epoch
d_epoch_456 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_epoch_456 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe d_epochStructure_432 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.firstSlot
d_firstSlot_458 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_firstSlot_458 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
      (coe d_epochStructure_432 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_460 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_460 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe d_epochStructure_432 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_462 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_suc'7497'_462 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_46
      (coe d_epochStructure_432 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_464 :: T_GovStructure_6 -> Integer -> AgdaAny
d_ℕtoEpoch_464 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
      (coe d_epochStructure_432 (coe v0))
-- Ledger.Types.GovStructure.GovStructure.scriptStructure
d_scriptStructure_466 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362
d_scriptStructure_466 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2381 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__470 ::
  T_GovStructure_6 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__470 = erased
-- Ledger.Types.GovStructure.GovStructure._.CostModel
d_CostModel_472 :: T_GovStructure_6 -> ()
d_CostModel_472 = erased
-- Ledger.Types.GovStructure.GovStructure._.T
d_T_474 :: T_GovStructure_6 -> ()
d_T_474 = erased
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_476 :: T_GovStructure_6 -> ()
d_THash_476 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dataʰ
d_Data'688'_478 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_478 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_164
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_466 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Datum
d_Datum_480 :: T_GovStructure_6 -> ()
d_Datum_480 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dec-validP1Script
d_Dec'45'validP1Script_482 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_224 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_482 v0
  = let v1 = d_crypto_390 (coe v0) in
    coe
      (let v2 = d_epochStructure_432 (coe v0) in
       coe
         (let v3 = d_scriptStructure_466 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_96
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_400 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_484 ::
  T_GovStructure_6 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_484 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_466 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_486 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_486 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_192
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_466 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_488 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_488 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_184
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_466 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_490 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_490 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_466 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_492 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_492 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_186
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_466 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_494 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_494 v0
  = let v1 = d_crypto_390 (coe v0) in
    coe
      (let v2 = d_epochStructure_432 (coe v0) in
       coe
         (let v3 = d_scriptStructure_466 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_100
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_400 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PlutusScript
d_DecEq'45'PlutusScript_496 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PlutusScript_496 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_182
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_466 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_498 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_498 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_414
                 (coe d_scriptStructure_466 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_500 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_500 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_414
                 (coe d_scriptStructure_466 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_502 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_502 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_466 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ExUnits
d_ExUnits_504 :: T_GovStructure_6 -> ()
d_ExUnits_504 = erased
-- Ledger.Types.GovStructure.GovStructure._.Hash-Timelock
d_Hash'45'Timelock_506 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_506 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_398
      (coe d_scriptStructure_466 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_508 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_508 v0
  = let v1 = d_crypto_390 (coe v0) in
    coe
      (let v2 = d_epochStructure_432 (coe v0) in
       coe
         (let v3 = d_scriptStructure_466 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_98
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_400 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_510 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_510 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_466 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_512 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_512 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_474
      (coe d_crypto_390 (coe v0)) (coe d_epochStructure_432 (coe v0))
      (coe d_scriptStructure_466 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.LangDepView
d_LangDepView_514 :: T_GovStructure_6 -> ()
d_LangDepView_514 = erased
-- Ledger.Types.GovStructure.GovStructure._.Language
d_Language_516 :: T_GovStructure_6 -> ()
d_Language_516 = erased
-- Ledger.Types.GovStructure.GovStructure._.P1Script
d_P1Script_518 :: T_GovStructure_6 -> ()
d_P1Script_518 = erased
-- Ledger.Types.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_520 :: T_GovStructure_6 -> ()
d_PlutusScript_520 = erased
-- Ledger.Types.GovStructure.GovStructure._.Prices
d_Prices_522 :: T_GovStructure_6 -> ()
d_Prices_522 = erased
-- Ledger.Types.GovStructure.GovStructure._.Redeemer
d_Redeemer_524 :: T_GovStructure_6 -> ()
d_Redeemer_524 = erased
-- Ledger.Types.GovStructure.GovStructure._.Script
d_Script_526 :: T_GovStructure_6 -> ()
d_Script_526 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_528 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_528 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_414
                 (coe d_scriptStructure_466 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Types.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_530 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_530 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_164
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_414
            (coe d_scriptStructure_466 (coe v0))))
-- Ledger.Types.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_532 ::
  T_GovStructure_6 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_532 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_396
      (coe d_scriptStructure_466 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.language
d_language_534 :: T_GovStructure_6 -> AgdaAny -> AgdaAny
d_language_534 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_466 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.p1s
d_p1s_536 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80
d_p1s_536 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_400 (coe d_crypto_390 (coe v0))
      (coe d_epochStructure_432 (coe v0))
      (coe d_scriptStructure_466 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ps
d_ps_538 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102
d_ps_538 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_414
      (coe d_scriptStructure_466 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.toData
d_toData_540 :: T_GovStructure_6 -> () -> AgdaAny -> AgdaAny
d_toData_540 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_222
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_466 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.validP1Script
d_validP1Script_542 ::
  T_GovStructure_6 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_224 -> ()
d_validP1Script_542 = erased
-- Ledger.Types.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_544 ::
  T_GovStructure_6 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_544 = erased
-- Ledger.Types.GovStructure.GovStructure._.Acnt
d_Acnt_548 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_550 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_550 ~v0 = du_DecEq'45'DrepThresholds_550
du_DecEq'45'DrepThresholds_550 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_550
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_398
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_552 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_552 ~v0 = du_DecEq'45'PParamGroup_552
du_DecEq'45'PParamGroup_552 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_552
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_404
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_554 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_554 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_402
      (coe d_epochStructure_432 (coe v0))
      (coe d_scriptStructure_466 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_556 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_556 ~v0 = du_DecEq'45'PoolThresholds_556
du_DecEq'45'PoolThresholds_556 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_556
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_400
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_558 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.GovParams
d_GovParams_562 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_568 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParams
d_PParams_570 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_572 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_574 a0 = ()
-- Ledger.Types.GovStructure.GovStructure._.ProtVer
d_ProtVer_576 :: T_GovStructure_6 -> ()
d_ProtVer_576 = erased
-- Ledger.Types.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_586 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParams_218 -> ()
d_paramsWellFormed_586 = erased
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow
d_pvCanFollow_588 a0 a1 a2 = ()
-- Ledger.Types.GovStructure.GovStructure._.pvCanFollow?
d_pvCanFollow'63'_590 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_590 ~v0 = du_pvCanFollow'63'_590
du_pvCanFollow'63'_590 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_590
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_410
-- Ledger.Types.GovStructure.GovStructure._.Acnt.reserves
d_reserves_594 :: MAlonzo.Code.Ledger.PParams.T_Acnt_124 -> Integer
d_reserves_594 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_132 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.Acnt.treasury
d_treasury_596 :: MAlonzo.Code.Ledger.PParams.T_Acnt_124 -> Integer
d_treasury_596 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_130 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_600 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_600 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_176 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_602 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_602 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_178 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_604 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_604 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_180 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_606 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_606 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_182 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_608 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_608 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_184 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_610 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_610 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_186 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_612 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_612 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_188 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_614 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_614 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_190 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_616 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_616 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_192 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_618 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_618 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_194 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-T
d_DecEq'45'T_622 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_622 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_544 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_624 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_624 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_544 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_626 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_626 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_556 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.THash
d_THash_628 :: MAlonzo.Code.Ledger.PParams.T_GovParams_496 -> ()
d_THash_628 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_630 :: MAlonzo.Code.Ledger.PParams.T_GovParams_496 -> ()
d_UpdateT_630 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.T-Hashable
d_T'45'Hashable_632 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_632 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_544 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_634 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_634 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_482
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_528 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_636 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_636 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_544 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_638 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_458
d_ppUpd_638 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_528 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_640 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 -> AgdaAny -> Bool
d_ppdWellFormed_640 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_484
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_528 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_642 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_642 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_494
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_528 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.GovParams.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_644 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_644 = erased
-- Ledger.Types.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_646 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_646 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_480
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_528 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.PParams.Emax
d_Emax_662 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_Emax_662 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_308 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a
d_a_664 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_a_664 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_292 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.a0
d_a0_666 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_666 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_306 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.b
d_b_668 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_b_668 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_294 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_670 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_ccMaxTermLength_670 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_330 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_672 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_ccMinSize_672 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_328 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_674 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_coinsPerUTxOWord_674 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_300 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_676 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_collateralPercentage_676 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_312 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_678 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_costmdls_678 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_314 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_680 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_drepActivity_680 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_326 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_682 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_drepDeposit_682 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_324 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_684 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154
d_drepThresholds_684 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_316 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_686 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_govActionDeposit_686 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_322 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_688 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_govActionLifetime_688 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_320 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_690 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_maxBlockExUnits_690 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_290 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_692 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxBlockSize_692 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_276 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_694 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxCollateralInputs_694 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_284 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_696 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxHeaderSize_696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_280 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_698 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_maxTxExUnits_698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_288 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_700 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxTxSize_700 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_278 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_702 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxValSize_702 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_282 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_704 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_704 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_302
      (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_706 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_minUTxOValue_706 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_296 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.nopt
d_nopt_708 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_nopt_708 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_310 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_710 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_poolDeposit_710 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_298 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_712 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196
d_poolThresholds_712 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_318 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.prices
d_prices_714 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_prices_714 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_304 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParams.pv
d_pv_716 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_716 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_286 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_720 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_458 -> ()
d_UpdateT_720 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_722 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_458 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_722 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_482 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_724 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_458 -> AgdaAny -> Bool
d_ppdWellFormed_724 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_484 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_726 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_458 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_726 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_494 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_728 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_458 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_728 = erased
-- Ledger.Types.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_730 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_458 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_730 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_480 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_734 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_734 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_208 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_736 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_736 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_210 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_738 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_738 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_212 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_740 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_740 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_214 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.PoolThresholds.Q5e
d_Q5e_742 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_742 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_216 (coe v0)
-- Ledger.Types.GovStructure.GovStructure.govParams
d_govParams_750 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_GovParams_496
d_govParams_750 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2381 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Types.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_754 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_754 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_544
         (coe d_govParams_750 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_756 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_756 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_544
         (coe d_govParams_750 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_758 ::
  T_GovStructure_6 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_758 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_556
      (coe d_govParams_750 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.THash
d_THash_760 :: T_GovStructure_6 -> ()
d_THash_760 = erased
-- Ledger.Types.GovStructure.GovStructure._.UpdateT
d_UpdateT_762 :: T_GovStructure_6 -> ()
d_UpdateT_762 = erased
-- Ledger.Types.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_764 ::
  T_GovStructure_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_764 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_544
         (coe d_govParams_750 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_766 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_766 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_482
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_528
         (coe d_govParams_750 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppHashingScheme
d_ppHashingScheme_768 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_768 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_544
      (coe d_govParams_750 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppUpd
d_ppUpd_770 ::
  T_GovStructure_6 -> MAlonzo.Code.Ledger.PParams.T_PParamsDiff_458
d_ppUpd_770 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_528
      (coe d_govParams_750 (coe v0))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_772 :: T_GovStructure_6 -> AgdaAny -> Bool
d_ppdWellFormed_772 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_484
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_528
         (coe d_govParams_750 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_774 ::
  T_GovStructure_6 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_774 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_494
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_528
         (coe d_govParams_750 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_776 ::
  T_GovStructure_6 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_776 = erased
-- Ledger.Types.GovStructure.GovStructure._.updateGroups
d_updateGroups_778 ::
  T_GovStructure_6 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_778 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_480
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_528
         (coe d_govParams_750 (coe v0)))
-- Ledger.Types.GovStructure.GovStructure._.Addr
d_Addr_782 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_782 = erased
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_784 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_786 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.Credential
d_Credential_788 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_788 = erased
-- Ledger.Types.GovStructure.GovStructure._.Dec-isScript
d_Dec'45'isScript_790 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_790 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_790
du_Dec'45'isScript_790 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_790
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
-- Ledger.Types.GovStructure.GovStructure._.Dec-isVKey
d_Dec'45'isVKey_792 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_792 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_792
du_Dec'45'isVKey_792 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_792
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_108
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_794 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_794 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_794 v1 v2 v3
du_DecEq'45'BaseAddr_794 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_794 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_796 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_796 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_796 v1 v2 v3
du_DecEq'45'BootstrapAddr_796 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_796 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_798 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_798 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_798 v1 v2 v3
du_DecEq'45'RwdAddr_798 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_798 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_800 a0 a1 a2 a3 = ()
-- Ledger.Types.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_804 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_804 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_806 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_806 = erased
-- Ledger.Types.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_808 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_808 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_810 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_810 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_812 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_812 = erased
-- Ledger.Types.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_814 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_814 = erased
-- Ledger.Types.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_818 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
d_getScriptHash_818 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_818
du_getScriptHash_818 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
du_getScriptHash_818
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_148
-- Ledger.Types.GovStructure.GovStructure._.isScript
d_isScript_820 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_822 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_822 = erased
-- Ledger.Types.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_824 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> ()
d_isScriptRwdAddr_824 = erased
-- Ledger.Types.GovStructure.GovStructure._.isVKey
d_isVKey_826 a0 a1 a2 a3 a4 = ()
-- Ledger.Types.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_828 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_828 = erased
-- Ledger.Types.GovStructure.GovStructure._.netId
d_netId_830 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_830 ~v0 ~v1 ~v2 ~v3 = du_netId_830
du_netId_830 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_830 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.Types.GovStructure.GovStructure._.payCred
d_payCred_832 ::
  T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_payCred_832 ~v0 ~v1 ~v2 ~v3 = du_payCred_832
du_payCred_832 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_payCred_832 = coe MAlonzo.Code.Ledger.Address.du_payCred_90
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.net
d_net_836 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_30 -> AgdaAny
d_net_836 v0 = coe MAlonzo.Code.Ledger.Address.d_net_38 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.pay
d_pay_838 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_838 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_40 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BaseAddr.stake
d_stake_840 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_840 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_42 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_844 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> Integer
d_attrsSize_844 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_56 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.net
d_net_846 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> AgdaAny
d_net_846 v0 = coe MAlonzo.Code.Ledger.Address.d_net_52 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_848 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_848 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_54 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.net
d_net_852 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> AgdaAny
d_net_852 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Types.GovStructure.GovStructure._.RwdAddr.stake
d_stake_854 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_854 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)
