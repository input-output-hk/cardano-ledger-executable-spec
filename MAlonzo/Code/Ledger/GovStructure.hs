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

module MAlonzo.Code.Ledger.GovStructure where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.GovStructure.GovStructure
d_GovStructure_4 = ()
data T_GovStructure_4
  = C_GovStructure'46'constructor_2389 MAlonzo.Code.Interface.DecEq.T_DecEq_14
                                       MAlonzo.Code.Interface.DecEq.T_DecEq_14
                                       MAlonzo.Code.Ledger.Crypto.T_Crypto_148
                                       MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4
                                       MAlonzo.Code.Ledger.Script.T_ScriptStructure_278
                                       MAlonzo.Code.Ledger.PParams.T_GovParams_422
-- Ledger.GovStructure._.GovParams
d_GovParams_196 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.GovStructure.GovStructure.TxId
d_TxId_362 :: T_GovStructure_4 -> ()
d_TxId_362 = erased
-- Ledger.GovStructure.GovStructure.Network
d_Network_364 :: T_GovStructure_4 -> ()
d_Network_364 = erased
-- Ledger.GovStructure.GovStructure.DocHash
d_DocHash_366 :: T_GovStructure_4 -> ()
d_DocHash_366 = erased
-- Ledger.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_368 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'TxId_368 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2389 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovStructure.GovStructure.DecEq-Netw
d_DecEq'45'Netw_370 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Netw_370 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2389 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovStructure.GovStructure.crypto
d_crypto_372 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Crypto.T_Crypto_148
d_crypto_372 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2389 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_376 ::
  T_GovStructure_4 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'isSigned_376 v0
  = let v1 = d_crypto_372 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_146
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1)))
-- Ledger.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_378 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ScriptHash_378 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
      (coe d_crypto_372 (coe v0))
-- Ledger.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_380 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Ser_380 v0
  = let v1 = d_crypto_372 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_138
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1)))
-- Ledger.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_382 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Sig_382 v0
  = let v1 = d_crypto_372 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_136
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1)))
-- Ledger.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_384 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_384 v0
  = let v1 = d_crypto_372 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_216 (coe v1)))
-- Ledger.GovStructure.GovStructure._.THash
d_THash_386 :: T_GovStructure_4 -> ()
d_THash_386 = erased
-- Ledger.GovStructure.GovStructure._.KeyPair
d_KeyPair_388 :: T_GovStructure_4 -> ()
d_KeyPair_388 = erased
-- Ledger.GovStructure.GovStructure._.SKey
d_SKey_390 :: T_GovStructure_4 -> ()
d_SKey_390 = erased
-- Ledger.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_392 :: T_GovStructure_4 -> ()
d_ScriptHash_392 = erased
-- Ledger.GovStructure.GovStructure._.Ser
d_Ser_394 :: T_GovStructure_4 -> ()
d_Ser_394 = erased
-- Ledger.GovStructure.GovStructure._.Sig
d_Sig_396 :: T_GovStructure_4 -> ()
d_Sig_396 = erased
-- Ledger.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_398 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_398 v0
  = let v1 = d_crypto_372 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_216 (coe v1)))
-- Ledger.GovStructure.GovStructure._.VKey
d_VKey_400 :: T_GovStructure_4 -> ()
d_VKey_400 = erased
-- Ledger.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_402 :: T_GovStructure_4 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_402 = erased
-- Ledger.GovStructure.GovStructure._.isSigned
d_isSigned_404 ::
  T_GovStructure_4 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_404 = erased
-- Ledger.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_406 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_406 v0
  = let v1 = d_crypto_372 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_134
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1)))
-- Ledger.GovStructure.GovStructure._.isSigned?
d_isSigned'63'_408 ::
  T_GovStructure_4 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isSigned'63'_408 v0
  = let v1 = d_crypto_372 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'63'_122
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1)))
-- Ledger.GovStructure.GovStructure._.khs
d_khs_410 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_410 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_216 (coe d_crypto_372 (coe v0))
-- Ledger.GovStructure.GovStructure._.pkk
d_pkk_412 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_412 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe d_crypto_372 (coe v0))
-- Ledger.GovStructure.GovStructure._.sign
d_sign_414 :: T_GovStructure_4 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_414 v0
  = let v1 = d_crypto_372 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_108
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1)))
-- Ledger.GovStructure.GovStructure.epochStructure
d_epochStructure_416 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4
d_epochStructure_416 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2389 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__420 ::
  T_GovStructure_4 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__420 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d__'43''7497'__220
      (coe d_epochStructure_416 (coe v0))
-- Ledger.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_422 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Epoch_422 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Epoch_30
      (coe d_epochStructure_416 (coe v0))
-- Ledger.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_424 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Slot_424 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Slot_36
      (coe d_epochStructure_416 (coe v0))
-- Ledger.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_426 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_238
d_DecPo'45'Slot_426 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
      (coe d_epochStructure_416 (coe v0))
-- Ledger.GovStructure.GovStructure._.Epoch
d_Epoch_428 :: T_GovStructure_4 -> ()
d_Epoch_428 = erased
-- Ledger.GovStructure.GovStructure._.Slot
d_Slot_430 :: T_GovStructure_4 -> ()
d_Slot_430 = erased
-- Ledger.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_432 ::
  T_GovStructure_4 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_432 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_Slot'691'_26
      (coe d_epochStructure_416 (coe v0))
-- Ledger.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_434 :: T_GovStructure_4 -> AgdaAny
d_StabilityWindow_434 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_StabilityWindow_42
      (coe d_epochStructure_416 (coe v0))
-- Ledger.GovStructure.GovStructure._.addEpoch
d_addEpoch_436 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_436 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_addEpoch_230
      (coe d_epochStructure_416 (coe v0))
-- Ledger.GovStructure.GovStructure._.addSlot
d_addSlot_438 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_438 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_addSlot_228
      (coe d_epochStructure_416 (coe v0))
-- Ledger.GovStructure.GovStructure._.epoch
d_epoch_440 :: T_GovStructure_4 -> AgdaAny -> AgdaAny
d_epoch_440 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_epoch_38
      (coe d_epochStructure_416 (coe v0))
-- Ledger.GovStructure.GovStructure._.firstSlot
d_firstSlot_442 :: T_GovStructure_4 -> AgdaAny -> AgdaAny
d_firstSlot_442 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_firstSlot_40
      (coe d_epochStructure_416 (coe v0))
-- Ledger.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_444 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_444 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_preoEpoch_46
      (coe d_epochStructure_416 (coe v0))
-- Ledger.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_446 :: T_GovStructure_4 -> AgdaAny -> AgdaAny
d_suc'7497'_446 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_suc'7497'_44
      (coe d_epochStructure_416 (coe v0))
-- Ledger.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_448 :: T_GovStructure_4 -> Integer -> AgdaAny
d_ℕtoEpoch_448 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ℕtoEpoch_216
      (coe d_epochStructure_416 (coe v0))
-- Ledger.GovStructure.GovStructure.scriptStructure
d_scriptStructure_450 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278
d_scriptStructure_450 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2389 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovStructure.GovStructure._._∙_
d__'8729'__454 :: T_GovStructure_4 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__454 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe d_scriptStructure_450 (coe v0))))
-- Ledger.GovStructure.GovStructure._._≈_
d__'8776'__456 :: T_GovStructure_4 -> AgdaAny -> AgdaAny -> ()
d__'8776'__456 = erased
-- Ledger.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__458 ::
  T_GovStructure_4 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__458 = erased
-- Ledger.GovStructure.GovStructure._.CostModel
d_CostModel_460 :: T_GovStructure_4 -> ()
d_CostModel_460 = erased
-- Ledger.GovStructure.GovStructure._.T
d_T_462 :: T_GovStructure_4 -> ()
d_T_462 = erased
-- Ledger.GovStructure.GovStructure._.THash
d_THash_464 :: T_GovStructure_4 -> ()
d_THash_464 = erased
-- Ledger.GovStructure.GovStructure._.Dataʰ
d_Data'688'_466 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_466 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_202
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.Datum
d_Datum_468 :: T_GovStructure_4 -> ()
d_Datum_468 = erased
-- Ledger.GovStructure.GovStructure._.Dec-ValidP1Script
d_Dec'45'ValidP1Script_470 ::
  T_GovStructure_4 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'ValidP1Script_470 v0
  = let v1 = d_scriptStructure_450 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.du_Dec'45'ValidP1Script_122
         (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v1)))
-- Ledger.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_472 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEQ'45'Prices_472 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_474 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'CostModel_474 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_476 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ExUnits_476 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_478 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'LangDepView_478 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_222
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_480 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'P1Script_480 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-PlutusScript
d_DecEq'45'PlutusScript_482 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PlutusScript_482 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_484 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_484 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_294
                 (coe d_scriptStructure_450 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_486 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_486 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_294
                 (coe d_scriptStructure_450 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_488 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_488 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.Carrier
d_Carrier_490 :: T_GovStructure_4 -> ()
d_Carrier_490 = erased
-- Ledger.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_492 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_492 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_494 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_494 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_496 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_496 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_384
      (coe d_scriptStructure_450 (coe v0))
-- Ledger.GovStructure.GovStructure._.LangDepView
d_LangDepView_498 :: T_GovStructure_4 -> ()
d_LangDepView_498 = erased
-- Ledger.GovStructure.GovStructure._.Language
d_Language_500 :: T_GovStructure_4 -> ()
d_Language_500 = erased
-- Ledger.GovStructure.GovStructure._.P1Script
d_P1Script_502 :: T_GovStructure_4 -> ()
d_P1Script_502 = erased
-- Ledger.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_504 :: T_GovStructure_4 -> ()
d_PlutusScript_504 = erased
-- Ledger.GovStructure.GovStructure._.Prices
d_Prices_506 :: T_GovStructure_4 -> ()
d_Prices_506 = erased
-- Ledger.GovStructure.GovStructure._.Redeemer
d_Redeemer_508 :: T_GovStructure_4 -> ()
d_Redeemer_508 = erased
-- Ledger.GovStructure.GovStructure._.Script
d_Script_510 :: T_GovStructure_4 -> ()
d_Script_510 = erased
-- Ledger.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_512 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_512 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_294
                 (coe d_scriptStructure_450 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_514 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_514 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_202
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe d_scriptStructure_450 (coe v0))))
-- Ledger.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_516 ::
  T_GovStructure_4 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_516 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_302
      (coe d_scriptStructure_450 (coe v0))
-- Ledger.GovStructure.GovStructure._.language
d_language_518 :: T_GovStructure_4 -> AgdaAny -> AgdaAny
d_language_518 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_272
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.p1s
d_p1s_520 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_520 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_292
      (coe d_scriptStructure_450 (coe v0))
-- Ledger.GovStructure.GovStructure._.ps
d_ps_522 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124
d_ps_522 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_294
      (coe d_scriptStructure_450 (coe v0))
-- Ledger.GovStructure.GovStructure._.refl
d_refl_524 :: T_GovStructure_4 -> AgdaAny -> AgdaAny
d_refl_524 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_448
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_614
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_664
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                     (coe
                        MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
                        (coe
                           MAlonzo.Code.Ledger.Script.d_ps_294
                           (coe d_scriptStructure_450 (coe v0)))))))))
-- Ledger.GovStructure.GovStructure._.toData
d_toData_526 :: T_GovStructure_4 -> () -> AgdaAny -> AgdaAny
d_toData_526 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_276
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.validP1Script
d_validP1Script_528 ::
  T_GovStructure_4 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_528 = erased
-- Ledger.GovStructure.GovStructure._.validP1Script?
d_validP1Script'63'_530 ::
  T_GovStructure_4 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validP1Script'63'_530 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_532 ::
  T_GovStructure_4 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_532 = erased
-- Ledger.GovStructure.GovStructure._.validPlutusScript?
d_validPlutusScript'63'_534 ::
  T_GovStructure_4 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validPlutusScript'63'_534 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validPlutusScript'63'_270
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_450 (coe v0)))
-- Ledger.GovStructure.GovStructure._.ε
d_ε_536 :: T_GovStructure_4 -> AgdaAny
d_ε_536 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe d_scriptStructure_450 (coe v0))))
-- Ledger.GovStructure.GovStructure._.Acnt
d_Acnt_540 a0 = ()
-- Ledger.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_542 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'DrepThresholds_542 ~v0 = du_DecEq'45'DrepThresholds_542
du_DecEq'45'DrepThresholds_542 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'DrepThresholds_542
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_378
-- Ledger.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_544 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PParams_544 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_382
      (coe d_epochStructure_416 (coe v0))
      (coe d_scriptStructure_450 (coe v0))
-- Ledger.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_546 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PoolThresholds_546 ~v0 = du_DecEq'45'PoolThresholds_546
du_DecEq'45'PoolThresholds_546 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'PoolThresholds_546
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_380
-- Ledger.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_548 a0 = ()
-- Ledger.GovStructure.GovStructure._.GovParams
d_GovParams_552 a0 = ()
-- Ledger.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_558 a0 = ()
-- Ledger.GovStructure.GovStructure._.PParams
d_PParams_560 a0 = ()
-- Ledger.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_562 a0 = ()
-- Ledger.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_564 a0 = ()
-- Ledger.GovStructure.GovStructure._.ProtVer
d_ProtVer_566 :: T_GovStructure_4 -> ()
d_ProtVer_566 = erased
-- Ledger.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_570 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.PParams.T_PParams_210 -> ()
d_paramsWellFormed_570 = erased
-- Ledger.GovStructure.GovStructure._.Acnt.reserves
d_reserves_574 :: MAlonzo.Code.Ledger.PParams.T_Acnt_128 -> Integer
d_reserves_574 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_136 (coe v0)
-- Ledger.GovStructure.GovStructure._.Acnt.treasury
d_treasury_576 :: MAlonzo.Code.Ledger.PParams.T_Acnt_128 -> Integer
d_treasury_576 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_134 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_580 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_580 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_172 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_582 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_582 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_174 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_584 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_584 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_176 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_586 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_586 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_178 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_588 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_588 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_180 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_590 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_590 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_182 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_592 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_592 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_184 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_594 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_594 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_186 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_596 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_596 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_188 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_598 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_598 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_190 (coe v0)
-- Ledger.GovStructure.GovStructure._.GovParams.DecEq-T
d_DecEq'45'T_602 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_602 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470 (coe v0))
-- Ledger.GovStructure.GovStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_604 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_604 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470 (coe v0))
-- Ledger.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_606 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'UpdT_606 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_482 (coe v0)
-- Ledger.GovStructure.GovStructure._.GovParams.THash
d_THash_608 :: MAlonzo.Code.Ledger.PParams.T_GovParams_422 -> ()
d_THash_608 = erased
-- Ledger.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_610 :: MAlonzo.Code.Ledger.PParams.T_GovParams_422 -> ()
d_UpdateT_610 = erased
-- Ledger.GovStructure.GovStructure._.GovParams.T-Hashable
d_T'45'Hashable_612 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_612 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470 (coe v0))
-- Ledger.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_614 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_614 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_408
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_454 (coe v0))
-- Ledger.GovStructure.GovStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_616 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_616 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470 (coe v0)
-- Ledger.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_618 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384
d_ppUpd_618 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_454 (coe v0)
-- Ledger.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_620 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 -> AgdaAny -> Bool
d_ppdWellFormed_620 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_410
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_454 (coe v0))
-- Ledger.GovStructure.GovStructure._.GovParams.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_622 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_622 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_420
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_454 (coe v0))
-- Ledger.GovStructure.GovStructure._.GovParams.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_624 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_624 = erased
-- Ledger.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_626 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_626 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_406
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_454 (coe v0))
-- Ledger.GovStructure.GovStructure._.PParams.Emax
d_Emax_640 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_Emax_640 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_292 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.a
d_a_642 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_a_642 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_280 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.b
d_b_644 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_b_644 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_282 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_646 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_ccMaxTermLength_646 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_648 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_ccMinSize_648 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_310 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_650 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_coinsPerUTxOWord_650 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_288 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_652 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_collateralPercentage_652 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_294 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_654 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_costmdls_654 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_296 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_656 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_drepActivity_656 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_308 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_658 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_drepDeposit_658 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_306 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_660 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150
d_drepThresholds_660 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_662 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_govActionDeposit_662 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_664 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_govActionLifetime_664 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_666 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_maxBlockExUnits_666 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_278 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_668 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxBlockSize_668 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_264 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_670 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxCollateralInputs_670 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_272 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_672 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxHeaderSize_672 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_268 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_674 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_maxTxExUnits_674 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_276 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_676 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxTxSize_676 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_266 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_678 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxValSize_678 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_270 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_680 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_minUTxOValue_680 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.minimumAVS
d_minimumAVS_682 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_minimumAVS_682 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minimumAVS_314 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_684 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_poolDeposit_684 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_286 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_686 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192
d_poolThresholds_686 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_300 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.prices
d_prices_688 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_prices_688 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_290 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.pv
d_pv_690 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_690 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_274 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_694 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 -> ()
d_UpdateT_694 = erased
-- Ledger.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_696 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_408 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_698 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 -> AgdaAny -> Bool
d_ppdWellFormed_698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_410 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_700 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_700 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_420 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_702 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_702 = erased
-- Ledger.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_704 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_704 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_406 (coe v0)
-- Ledger.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_708 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_708 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_202 (coe v0)
-- Ledger.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_710 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_710 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_204 (coe v0)
-- Ledger.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_712 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_712 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_206 (coe v0)
-- Ledger.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_714 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_714 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_208 (coe v0)
-- Ledger.GovStructure.GovStructure.govParams
d_govParams_716 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.PParams.T_GovParams_422
d_govParams_716 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2389 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_720 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_720 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470
         (coe d_govParams_716 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_722 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_722 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470
         (coe d_govParams_716 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_724 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'UpdT_724 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_482
      (coe d_govParams_716 (coe v0))
-- Ledger.GovStructure.GovStructure._.THash
d_THash_726 :: T_GovStructure_4 -> ()
d_THash_726 = erased
-- Ledger.GovStructure.GovStructure._.UpdateT
d_UpdateT_728 :: T_GovStructure_4 -> ()
d_UpdateT_728 = erased
-- Ledger.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_730 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_730 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470
         (coe d_govParams_716 (coe v0)))
-- Ledger.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_732 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_732 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_408
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_454
         (coe d_govParams_716 (coe v0)))
-- Ledger.GovStructure.GovStructure._.ppHashingScheme
d_ppHashingScheme_734 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_734 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470
      (coe d_govParams_716 (coe v0))
-- Ledger.GovStructure.GovStructure._.ppUpd
d_ppUpd_736 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384
d_ppUpd_736 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_454
      (coe d_govParams_716 (coe v0))
-- Ledger.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_738 :: T_GovStructure_4 -> AgdaAny -> Bool
d_ppdWellFormed_738 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_410
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_454
         (coe d_govParams_716 (coe v0)))
-- Ledger.GovStructure.GovStructure._.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_740 ::
  T_GovStructure_4 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_740 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_420
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_454
         (coe d_govParams_716 (coe v0)))
-- Ledger.GovStructure.GovStructure._.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_742 ::
  T_GovStructure_4 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_742 = erased
-- Ledger.GovStructure.GovStructure._.updateGroups
d_updateGroups_744 ::
  T_GovStructure_4 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_744 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_406
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_454
         (coe d_govParams_716 (coe v0)))
-- Ledger.GovStructure.GovStructure._.Addr
d_Addr_748 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Addr_748 = erased
-- Ledger.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_750 a0 a1 a2 a3 = ()
-- Ledger.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_752 a0 a1 a2 a3 = ()
-- Ledger.GovStructure.GovStructure._.Credential
d_Credential_754 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_754 = erased
-- Ledger.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_756 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'BaseAddr_756 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_756 v1 v2 v3
du_DecEq'45'BaseAddr_756 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'BaseAddr_756 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140 (coe v0)
      (coe v1) (coe v2)
-- Ledger.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_758 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'BootstrapAddr_758 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_758 v1 v2 v3
du_DecEq'45'BootstrapAddr_758 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'BootstrapAddr_758 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142 (coe v0)
      (coe v1) (coe v2)
-- Ledger.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_760 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'RwdAddr_760 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_760 v1 v2 v3
du_DecEq'45'RwdAddr_760 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'RwdAddr_760 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144 (coe v0)
      (coe v1) (coe v2)
-- Ledger.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_762 a0 a1 a2 a3 = ()
-- Ledger.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_766 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_ScriptAddr_766 = erased
-- Ledger.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_768 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_ScriptBaseAddr_768 = erased
-- Ledger.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_770 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_ScriptBootstrapAddr_770 = erased
-- Ledger.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_772 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_VKeyAddr_772 = erased
-- Ledger.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_774 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_VKeyBaseAddr_774 = erased
-- Ledger.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_776 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_VKeyBootstrapAddr_776 = erased
-- Ledger.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_780 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
d_getScriptHash_780 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_780
du_getScriptHash_780 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
du_getScriptHash_780
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_134
-- Ledger.GovStructure.GovStructure._.isScript
d_isScript_782 a0 a1 a2 a3 a4 = ()
-- Ledger.GovStructure.GovStructure._.isScript?
d_isScript'63'_784 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isScript'63'_784 ~v0 ~v1 ~v2 ~v3 = du_isScript'63'_784
du_isScript'63'_784 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isScript'63'_784
  = coe MAlonzo.Code.Ledger.Address.du_isScript'63'_120
-- Ledger.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_786 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_786 = erased
-- Ledger.GovStructure.GovStructure._.isScriptAddr?
d_isScriptAddr'63'_788 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isScriptAddr'63'_788 ~v0 ~v1 ~v2 ~v3 = du_isScriptAddr'63'_788
du_isScriptAddr'63'_788 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isScriptAddr'63'_788
  = coe MAlonzo.Code.Ledger.Address.du_isScriptAddr'63'_126
-- Ledger.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_790 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> ()
d_isScriptRwdAddr_790 = erased
-- Ledger.GovStructure.GovStructure._.isScriptRwdAddr?
d_isScriptRwdAddr'63'_792 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isScriptRwdAddr'63'_792 ~v0 ~v1 ~v2 ~v3
  = du_isScriptRwdAddr'63'_792
du_isScriptRwdAddr'63'_792 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isScriptRwdAddr'63'_792
  = coe MAlonzo.Code.Ledger.Address.du_isScriptRwdAddr'63'_130
-- Ledger.GovStructure.GovStructure._.isVKey
d_isVKey_794 a0 a1 a2 a3 a4 = ()
-- Ledger.GovStructure.GovStructure._.isVKey?
d_isVKey'63'_796 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isVKey'63'_796 ~v0 ~v1 ~v2 ~v3 = du_isVKey'63'_796
du_isVKey'63'_796 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isVKey'63'_796
  = coe MAlonzo.Code.Ledger.Address.du_isVKey'63'_110
-- Ledger.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_798 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_798 = erased
-- Ledger.GovStructure.GovStructure._.isVKeyAddr?
d_isVKeyAddr'63'_800 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isVKeyAddr'63'_800 ~v0 ~v1 ~v2 ~v3 = du_isVKeyAddr'63'_800
du_isVKeyAddr'63'_800 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isVKeyAddr'63'_800
  = coe MAlonzo.Code.Ledger.Address.du_isVKeyAddr'63'_116
-- Ledger.GovStructure.GovStructure._.netId
d_netId_802 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_802 ~v0 ~v1 ~v2 ~v3 = du_netId_802
du_netId_802 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_802 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.GovStructure.GovStructure._.payCred
d_payCred_804 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_payCred_804 ~v0 ~v1 ~v2 ~v3 = du_payCred_804
du_payCred_804 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_payCred_804 = coe MAlonzo.Code.Ledger.Address.du_payCred_90
-- Ledger.GovStructure.GovStructure._.BaseAddr.net
d_net_808 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_30 -> AgdaAny
d_net_808 v0 = coe MAlonzo.Code.Ledger.Address.d_net_38 (coe v0)
-- Ledger.GovStructure.GovStructure._.BaseAddr.pay
d_pay_810 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_810 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_40 (coe v0)
-- Ledger.GovStructure.GovStructure._.BaseAddr.stake
d_stake_812 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_812 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_42 (coe v0)
-- Ledger.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_816 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> Integer
d_attrsSize_816 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_56 (coe v0)
-- Ledger.GovStructure.GovStructure._.BootstrapAddr.net
d_net_818 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> AgdaAny
d_net_818 v0 = coe MAlonzo.Code.Ledger.Address.d_net_52 (coe v0)
-- Ledger.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_820 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_820 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_54 (coe v0)
-- Ledger.GovStructure.GovStructure._.RwdAddr.net
d_net_824 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> AgdaAny
d_net_824 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.GovStructure.GovStructure._.RwdAddr.stake
d_stake_826 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_826 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)
