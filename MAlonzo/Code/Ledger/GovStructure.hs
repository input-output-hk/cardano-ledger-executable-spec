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
  = C_GovStructure'46'constructor_2341 MAlonzo.Code.Interface.DecEq.T_DecEq_14
                                       MAlonzo.Code.Interface.DecEq.T_DecEq_14
                                       MAlonzo.Code.Ledger.Crypto.T_Crypto_148
                                       MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4
                                       MAlonzo.Code.Ledger.Script.T_ScriptStructure_278
                                       MAlonzo.Code.Ledger.PParams.T_GovParams_414
-- Ledger.GovStructure._.GovParams
d_GovParams_196 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.GovStructure.GovStructure.TxId
d_TxId_358 :: T_GovStructure_4 -> ()
d_TxId_358 = erased
-- Ledger.GovStructure.GovStructure.Network
d_Network_360 :: T_GovStructure_4 -> ()
d_Network_360 = erased
-- Ledger.GovStructure.GovStructure.DocHash
d_DocHash_362 :: T_GovStructure_4 -> ()
d_DocHash_362 = erased
-- Ledger.GovStructure.GovStructure.DecEq-TxId
d_DecEq'45'TxId_364 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'TxId_364 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2341 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovStructure.GovStructure.DecEq-Netw
d_DecEq'45'Netw_366 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Netw_366 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2341 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovStructure.GovStructure.crypto
d_crypto_368 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Crypto.T_Crypto_148
d_crypto_368 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2341 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovStructure.GovStructure._.Dec-isSigned
d_Dec'45'isSigned_372 ::
  T_GovStructure_4 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'isSigned_372 v0
  = let v1 = d_crypto_368 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_146
      (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1))
-- Ledger.GovStructure.GovStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_374 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ScriptHash_374 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
      (coe d_crypto_368 (coe v0))
-- Ledger.GovStructure.GovStructure._.DecEq-Ser
d_DecEq'45'Ser_376 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Ser_376 v0
  = let v1 = d_crypto_368 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_138
      (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1))
-- Ledger.GovStructure.GovStructure._.DecEq-Sig
d_DecEq'45'Sig_378 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Sig_378 v0
  = let v1 = d_crypto_368 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_136
      (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1))
-- Ledger.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_380 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_380 v0
  = let v1 = d_crypto_368 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.Crypto.d_khs_216 (coe v1))
-- Ledger.GovStructure.GovStructure._.THash
d_THash_382 :: T_GovStructure_4 -> ()
d_THash_382 = erased
-- Ledger.GovStructure.GovStructure._.KeyPair
d_KeyPair_384 :: T_GovStructure_4 -> ()
d_KeyPair_384 = erased
-- Ledger.GovStructure.GovStructure._.SKey
d_SKey_386 :: T_GovStructure_4 -> ()
d_SKey_386 = erased
-- Ledger.GovStructure.GovStructure._.ScriptHash
d_ScriptHash_388 :: T_GovStructure_4 -> ()
d_ScriptHash_388 = erased
-- Ledger.GovStructure.GovStructure._.Ser
d_Ser_390 :: T_GovStructure_4 -> ()
d_Ser_390 = erased
-- Ledger.GovStructure.GovStructure._.Sig
d_Sig_392 :: T_GovStructure_4 -> ()
d_Sig_392 = erased
-- Ledger.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_394 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_394 v0
  = let v1 = d_crypto_368 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.Crypto.d_khs_216 (coe v1))
-- Ledger.GovStructure.GovStructure._.VKey
d_VKey_396 :: T_GovStructure_4 -> ()
d_VKey_396 = erased
-- Ledger.GovStructure.GovStructure._.isKeyPair
d_isKeyPair_398 :: T_GovStructure_4 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_398 = erased
-- Ledger.GovStructure.GovStructure._.isSigned
d_isSigned_400 ::
  T_GovStructure_4 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_400 = erased
-- Ledger.GovStructure.GovStructure._.isSigned-correct
d_isSigned'45'correct_402 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_402 v0
  = let v1 = d_crypto_368 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_134
      (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1))
-- Ledger.GovStructure.GovStructure._.isSigned?
d_isSigned'63'_404 ::
  T_GovStructure_4 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isSigned'63'_404 v0
  = let v1 = d_crypto_368 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_isSigned'63'_122
      (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1))
-- Ledger.GovStructure.GovStructure._.khs
d_khs_406 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_406 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_216 (coe d_crypto_368 (coe v0))
-- Ledger.GovStructure.GovStructure._.pkk
d_pkk_408 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_408 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe d_crypto_368 (coe v0))
-- Ledger.GovStructure.GovStructure._.sign
d_sign_410 :: T_GovStructure_4 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_410 v0
  = let v1 = d_crypto_368 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_sign_108
      (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1))
-- Ledger.GovStructure.GovStructure.epochStructure
d_epochStructure_412 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4
d_epochStructure_412 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2341 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovStructure.GovStructure._._+ᵉ_
d__'43''7497'__416 ::
  T_GovStructure_4 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__416 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d__'43''7497'__220
      (coe d_epochStructure_412 (coe v0))
-- Ledger.GovStructure.GovStructure._.DecEq-Epoch
d_DecEq'45'Epoch_418 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Epoch_418 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Epoch_30
      (coe d_epochStructure_412 (coe v0))
-- Ledger.GovStructure.GovStructure._.DecEq-Slot
d_DecEq'45'Slot_420 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Slot_420 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Slot_36
      (coe d_epochStructure_412 (coe v0))
-- Ledger.GovStructure.GovStructure._.DecPo-Slot
d_DecPo'45'Slot_422 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_238
d_DecPo'45'Slot_422 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
      (coe d_epochStructure_412 (coe v0))
-- Ledger.GovStructure.GovStructure._.Epoch
d_Epoch_424 :: T_GovStructure_4 -> ()
d_Epoch_424 = erased
-- Ledger.GovStructure.GovStructure._.Slot
d_Slot_426 :: T_GovStructure_4 -> ()
d_Slot_426 = erased
-- Ledger.GovStructure.GovStructure._.Slotʳ
d_Slot'691'_428 ::
  T_GovStructure_4 -> MAlonzo.Code.Algebra.Bundles.T_Semiring_1986
d_Slot'691'_428 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_Slot'691'_26
      (coe d_epochStructure_412 (coe v0))
-- Ledger.GovStructure.GovStructure._.StabilityWindow
d_StabilityWindow_430 :: T_GovStructure_4 -> AgdaAny
d_StabilityWindow_430 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_StabilityWindow_42
      (coe d_epochStructure_412 (coe v0))
-- Ledger.GovStructure.GovStructure._.addEpoch
d_addEpoch_432 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_432 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_addEpoch_230
      (coe d_epochStructure_412 (coe v0))
-- Ledger.GovStructure.GovStructure._.addSlot
d_addSlot_434 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_434 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_addSlot_228
      (coe d_epochStructure_412 (coe v0))
-- Ledger.GovStructure.GovStructure._.epoch
d_epoch_436 :: T_GovStructure_4 -> AgdaAny -> AgdaAny
d_epoch_436 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_epoch_38
      (coe d_epochStructure_412 (coe v0))
-- Ledger.GovStructure.GovStructure._.firstSlot
d_firstSlot_438 :: T_GovStructure_4 -> AgdaAny -> AgdaAny
d_firstSlot_438 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_firstSlot_40
      (coe d_epochStructure_412 (coe v0))
-- Ledger.GovStructure.GovStructure._.preoEpoch
d_preoEpoch_440 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_440 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_preoEpoch_46
      (coe d_epochStructure_412 (coe v0))
-- Ledger.GovStructure.GovStructure._.sucᵉ
d_suc'7497'_442 :: T_GovStructure_4 -> AgdaAny -> AgdaAny
d_suc'7497'_442 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_suc'7497'_44
      (coe d_epochStructure_412 (coe v0))
-- Ledger.GovStructure.GovStructure._.ℕtoEpoch
d_ℕtoEpoch_444 :: T_GovStructure_4 -> Integer -> AgdaAny
d_ℕtoEpoch_444 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ℕtoEpoch_216
      (coe d_epochStructure_412 (coe v0))
-- Ledger.GovStructure.GovStructure.scriptStructure
d_scriptStructure_446 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278
d_scriptStructure_446 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2341 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovStructure.GovStructure._._∙_
d__'8729'__450 :: T_GovStructure_4 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__450 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe d_scriptStructure_446 (coe v0))))
-- Ledger.GovStructure.GovStructure._._≈_
d__'8776'__452 :: T_GovStructure_4 -> AgdaAny -> AgdaAny -> ()
d__'8776'__452 = erased
-- Ledger.GovStructure.GovStructure._._≥ᵉ_
d__'8805''7497'__454 ::
  T_GovStructure_4 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__454 = erased
-- Ledger.GovStructure.GovStructure._.CostModel
d_CostModel_456 :: T_GovStructure_4 -> ()
d_CostModel_456 = erased
-- Ledger.GovStructure.GovStructure._.T
d_T_458 :: T_GovStructure_4 -> ()
d_T_458 = erased
-- Ledger.GovStructure.GovStructure._.THash
d_THash_460 :: T_GovStructure_4 -> ()
d_THash_460 = erased
-- Ledger.GovStructure.GovStructure._.Dataʰ
d_Data'688'_462 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_462 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_202
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.Datum
d_Datum_464 :: T_GovStructure_4 -> ()
d_Datum_464 = erased
-- Ledger.GovStructure.GovStructure._.Dec-ValidP1Script
d_Dec'45'ValidP1Script_466 ::
  T_GovStructure_4 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'ValidP1Script_466 v0
  = let v1 = d_scriptStructure_446 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Script.du_Dec'45'ValidP1Script_122
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v1))
-- Ledger.GovStructure.GovStructure._.DecEQ-Prices
d_DecEQ'45'Prices_468 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEQ'45'Prices_468 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-CostModel
d_DecEq'45'CostModel_470 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'CostModel_470 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_472 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ExUnits_472 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_474 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'LangDepView_474 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_222
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-P1Script
d_DecEq'45'P1Script_476 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'P1Script_476 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-PlutusScript
d_DecEq'45'PlutusScript_478 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PlutusScript_478 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_480 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_480 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_294
                 (coe d_scriptStructure_446 (coe v0))) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_482 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_482 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_294
                 (coe d_scriptStructure_446 (coe v0))) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.GovStructure.GovStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_484 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_484 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.Carrier
d_Carrier_486 :: T_GovStructure_4 -> ()
d_Carrier_486 = erased
-- Ledger.GovStructure.GovStructure._.Hashable-P1Script
d_Hashable'45'P1Script_488 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_488 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_490 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_490 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.Hashable-Script
d_Hashable'45'Script_492 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_492 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_384
      (coe d_scriptStructure_446 (coe v0))
-- Ledger.GovStructure.GovStructure._.LangDepView
d_LangDepView_494 :: T_GovStructure_4 -> ()
d_LangDepView_494 = erased
-- Ledger.GovStructure.GovStructure._.Language
d_Language_496 :: T_GovStructure_4 -> ()
d_Language_496 = erased
-- Ledger.GovStructure.GovStructure._.P1Script
d_P1Script_498 :: T_GovStructure_4 -> ()
d_P1Script_498 = erased
-- Ledger.GovStructure.GovStructure._.PlutusScript
d_PlutusScript_500 :: T_GovStructure_4 -> ()
d_PlutusScript_500 = erased
-- Ledger.GovStructure.GovStructure._.Prices
d_Prices_502 :: T_GovStructure_4 -> ()
d_Prices_502 = erased
-- Ledger.GovStructure.GovStructure._.Redeemer
d_Redeemer_504 :: T_GovStructure_4 -> ()
d_Redeemer_504 = erased
-- Ledger.GovStructure.GovStructure._.Script
d_Script_506 :: T_GovStructure_4 -> ()
d_Script_506 = erased
-- Ledger.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_508 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_508 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_294
                 (coe d_scriptStructure_446 (coe v0))) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.GovStructure.GovStructure._.T-isHashable
d_T'45'isHashable_510 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_510 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_202
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe d_scriptStructure_446 (coe v0))))
-- Ledger.GovStructure.GovStructure._.hashRespectsUnion
d_hashRespectsUnion_512 ::
  T_GovStructure_4 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_512 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_302
      (coe d_scriptStructure_446 (coe v0))
-- Ledger.GovStructure.GovStructure._.language
d_language_514 :: T_GovStructure_4 -> AgdaAny -> AgdaAny
d_language_514 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_272
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.p1s
d_p1s_516 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_516 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_292
      (coe d_scriptStructure_446 (coe v0))
-- Ledger.GovStructure.GovStructure._.ps
d_ps_518 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124
d_ps_518 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_294
      (coe d_scriptStructure_446 (coe v0))
-- Ledger.GovStructure.GovStructure._.refl
d_refl_520 :: T_GovStructure_4 -> AgdaAny -> AgdaAny
d_refl_520 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_148
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_444
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_610
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_660
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                     (coe
                        MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
                        (coe
                           MAlonzo.Code.Ledger.Script.d_ps_294
                           (coe d_scriptStructure_446 (coe v0)))))))))
-- Ledger.GovStructure.GovStructure._.toData
d_toData_522 :: T_GovStructure_4 -> () -> AgdaAny -> AgdaAny
d_toData_522 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_276
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.validP1Script
d_validP1Script_524 ::
  T_GovStructure_4 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_524 = erased
-- Ledger.GovStructure.GovStructure._.validP1Script?
d_validP1Script'63'_526 ::
  T_GovStructure_4 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validP1Script'63'_526 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.validPlutusScript
d_validPlutusScript_528 ::
  T_GovStructure_4 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_528 = erased
-- Ledger.GovStructure.GovStructure._.validPlutusScript?
d_validPlutusScript'63'_530 ::
  T_GovStructure_4 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validPlutusScript'63'_530 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validPlutusScript'63'_270
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_446 (coe v0)))
-- Ledger.GovStructure.GovStructure._.ε
d_ε_532 :: T_GovStructure_4 -> AgdaAny
d_ε_532 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe d_scriptStructure_446 (coe v0))))
-- Ledger.GovStructure.GovStructure._.Acnt
d_Acnt_536 a0 = ()
-- Ledger.GovStructure.GovStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_538 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'DrepThresholds_538 ~v0 = du_DecEq'45'DrepThresholds_538
du_DecEq'45'DrepThresholds_538 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'DrepThresholds_538
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_378
-- Ledger.GovStructure.GovStructure._.DecEq-PParams
d_DecEq'45'PParams_540 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PParams_540 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_382
      (coe d_epochStructure_412 (coe v0))
      (coe d_scriptStructure_446 (coe v0))
-- Ledger.GovStructure.GovStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_542 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PoolThresholds_542 ~v0 = du_DecEq'45'PoolThresholds_542
du_DecEq'45'PoolThresholds_542 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'PoolThresholds_542
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_380
-- Ledger.GovStructure.GovStructure._.DrepThresholds
d_DrepThresholds_544 a0 = ()
-- Ledger.GovStructure.GovStructure._.GovParams
d_GovParams_548 a0 = ()
-- Ledger.GovStructure.GovStructure._.PParamGroup
d_PParamGroup_554 a0 = ()
-- Ledger.GovStructure.GovStructure._.PParams
d_PParams_556 a0 = ()
-- Ledger.GovStructure.GovStructure._.PParamsDiff
d_PParamsDiff_558 a0 = ()
-- Ledger.GovStructure.GovStructure._.PoolThresholds
d_PoolThresholds_560 a0 = ()
-- Ledger.GovStructure.GovStructure._.ProtVer
d_ProtVer_562 :: T_GovStructure_4 -> ()
d_ProtVer_562 = erased
-- Ledger.GovStructure.GovStructure._.paramsWellFormed
d_paramsWellFormed_566 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.PParams.T_PParams_210 -> ()
d_paramsWellFormed_566 = erased
-- Ledger.GovStructure.GovStructure._.Acnt.reserves
d_reserves_570 :: MAlonzo.Code.Ledger.PParams.T_Acnt_130 -> Integer
d_reserves_570 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_138 (coe v0)
-- Ledger.GovStructure.GovStructure._.Acnt.treasury
d_treasury_572 :: MAlonzo.Code.Ledger.PParams.T_Acnt_130 -> Integer
d_treasury_572 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_136 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P1
d_P1_576 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_576 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_172 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P2a
d_P2a_578 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_578 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_174 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P2b
d_P2b_580 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_580 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_176 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P3
d_P3_582 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_582 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_178 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P4
d_P4_584 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_584 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_180 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P5a
d_P5a_586 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_586 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_182 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P5b
d_P5b_588 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_588 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_184 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P5c
d_P5c_590 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_590 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_186 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P5d
d_P5d_592 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_592 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_188 (coe v0)
-- Ledger.GovStructure.GovStructure._.DrepThresholds.P6
d_P6_594 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_594 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_190 (coe v0)
-- Ledger.GovStructure.GovStructure._.GovParams.DecEq-T
d_DecEq'45'T_598 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_598 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458 (coe v0))
-- Ledger.GovStructure.GovStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_600 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_600 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458 (coe v0))
-- Ledger.GovStructure.GovStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_602 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'UpdT_602 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_470 (coe v0)
-- Ledger.GovStructure.GovStructure._.GovParams.THash
d_THash_604 :: MAlonzo.Code.Ledger.PParams.T_GovParams_414 -> ()
d_THash_604 = erased
-- Ledger.GovStructure.GovStructure._.GovParams.UpdateT
d_UpdateT_606 :: MAlonzo.Code.Ledger.PParams.T_GovParams_414 -> ()
d_UpdateT_606 = erased
-- Ledger.GovStructure.GovStructure._.GovParams.T-Hashable
d_T'45'Hashable_608 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_608 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458 (coe v0))
-- Ledger.GovStructure.GovStructure._.GovParams.applyUpdate
d_applyUpdate_610 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_610 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_404
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.GovStructure.GovStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_612 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_612 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458 (coe v0)
-- Ledger.GovStructure.GovStructure._.GovParams.ppUpd
d_ppUpd_614 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384
d_ppUpd_614 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0)
-- Ledger.GovStructure.GovStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_616 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 -> AgdaAny -> Bool
d_ppdWellFormed_616 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_406
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.GovStructure.GovStructure._.GovParams.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_618 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_618 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_412
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.GovStructure.GovStructure._.GovParams.updateGroups
d_updateGroups_620 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_620 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_402
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.GovStructure.GovStructure._.PParams.Emax
d_Emax_634 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_Emax_634 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_292 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.a
d_a_636 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_a_636 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_280 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.b
d_b_638 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_b_638 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_282 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_640 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_ccMaxTermLength_640 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.ccMinSize
d_ccMinSize_642 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_ccMinSize_642 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_310 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_644 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_coinsPerUTxOWord_644 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_288 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.collateralPercentage
d_collateralPercentage_646 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_collateralPercentage_646 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_294 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.costmdls
d_costmdls_648 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_costmdls_648 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_296 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.drepActivity
d_drepActivity_650 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_drepActivity_650 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_308 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.drepDeposit
d_drepDeposit_652 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_drepDeposit_652 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_306 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.drepThresholds
d_drepThresholds_654 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150
d_drepThresholds_654 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.govActionDeposit
d_govActionDeposit_656 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_govActionDeposit_656 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.govActionLifetime
d_govActionLifetime_658 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_govActionLifetime_658 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_660 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_maxBlockExUnits_660 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_278 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxBlockSize
d_maxBlockSize_662 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxBlockSize_662 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_264 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_664 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxCollateralInputs_664 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_272 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxHeaderSize
d_maxHeaderSize_666 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxHeaderSize_666 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_268 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxTxExUnits
d_maxTxExUnits_668 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_maxTxExUnits_668 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_276 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxTxSize
d_maxTxSize_670 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxTxSize_670 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_266 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.maxValSize
d_maxValSize_672 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxValSize_672 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_270 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.minUTxOValue
d_minUTxOValue_674 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_minUTxOValue_674 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.minimumAVS
d_minimumAVS_676 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_minimumAVS_676 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minimumAVS_314 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.poolDeposit
d_poolDeposit_678 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_poolDeposit_678 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_286 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.poolThresholds
d_poolThresholds_680 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192
d_poolThresholds_680 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_300 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.prices
d_prices_682 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_prices_682 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_290 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParams.pv
d_pv_684 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_684 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_274 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParamsDiff.UpdateT
d_UpdateT_688 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 -> ()
d_UpdateT_688 = erased
-- Ledger.GovStructure.GovStructure._.PParamsDiff.applyUpdate
d_applyUpdate_690 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_690 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_404 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_692 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 -> AgdaAny -> Bool
d_ppdWellFormed_692 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_406 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParamsDiff.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_694 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_694 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_412 (coe v0)
-- Ledger.GovStructure.GovStructure._.PParamsDiff.updateGroups
d_updateGroups_696 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_402 (coe v0)
-- Ledger.GovStructure.GovStructure._.PoolThresholds.Q1
d_Q1_700 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_700 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_202 (coe v0)
-- Ledger.GovStructure.GovStructure._.PoolThresholds.Q2a
d_Q2a_702 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_702 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_204 (coe v0)
-- Ledger.GovStructure.GovStructure._.PoolThresholds.Q2b
d_Q2b_704 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_704 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_206 (coe v0)
-- Ledger.GovStructure.GovStructure._.PoolThresholds.Q4
d_Q4_706 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_706 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_208 (coe v0)
-- Ledger.GovStructure.GovStructure.govParams
d_govParams_708 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.PParams.T_GovParams_414
d_govParams_708 v0
  = case coe v0 of
      C_GovStructure'46'constructor_2341 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.GovStructure.GovStructure._.DecEq-T
d_DecEq'45'T_712 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_712 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458
         (coe d_govParams_708 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-THash
d_DecEq'45'THash_714 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_714 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458
         (coe d_govParams_708 (coe v0)))
-- Ledger.GovStructure.GovStructure._.DecEq-UpdT
d_DecEq'45'UpdT_716 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'UpdT_716 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_470
      (coe d_govParams_708 (coe v0))
-- Ledger.GovStructure.GovStructure._.THash
d_THash_718 :: T_GovStructure_4 -> ()
d_THash_718 = erased
-- Ledger.GovStructure.GovStructure._.UpdateT
d_UpdateT_720 :: T_GovStructure_4 -> ()
d_UpdateT_720 = erased
-- Ledger.GovStructure.GovStructure._.T-Hashable
d_T'45'Hashable_722 ::
  T_GovStructure_4 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_722 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458
         (coe d_govParams_708 (coe v0)))
-- Ledger.GovStructure.GovStructure._.applyUpdate
d_applyUpdate_724 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_724 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_404
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_444
         (coe d_govParams_708 (coe v0)))
-- Ledger.GovStructure.GovStructure._.ppHashingScheme
d_ppHashingScheme_726 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_726 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458
      (coe d_govParams_708 (coe v0))
-- Ledger.GovStructure.GovStructure._.ppUpd
d_ppUpd_728 ::
  T_GovStructure_4 -> MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384
d_ppUpd_728 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_444
      (coe d_govParams_708 (coe v0))
-- Ledger.GovStructure.GovStructure._.ppdWellFormed
d_ppdWellFormed_730 :: T_GovStructure_4 -> AgdaAny -> Bool
d_ppdWellFormed_730 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_406
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_444
         (coe d_govParams_708 (coe v0)))
-- Ledger.GovStructure.GovStructure._.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_732 ::
  T_GovStructure_4 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_732 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_412
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_444
         (coe d_govParams_708 (coe v0)))
-- Ledger.GovStructure.GovStructure._.updateGroups
d_updateGroups_734 ::
  T_GovStructure_4 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_734 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_402
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_444
         (coe d_govParams_708 (coe v0)))
-- Ledger.GovStructure.GovStructure._.Addr
d_Addr_738 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Addr_738 = erased
-- Ledger.GovStructure.GovStructure._.BaseAddr
d_BaseAddr_740 a0 a1 a2 a3 = ()
-- Ledger.GovStructure.GovStructure._.BootstrapAddr
d_BootstrapAddr_742 a0 a1 a2 a3 = ()
-- Ledger.GovStructure.GovStructure._.Credential
d_Credential_744 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_744 = erased
-- Ledger.GovStructure.GovStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_746 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'BaseAddr_746 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_746 v1 v2 v3
du_DecEq'45'BaseAddr_746 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'BaseAddr_746 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140 (coe v0)
      (coe v1) (coe v2)
-- Ledger.GovStructure.GovStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_748 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'BootstrapAddr_748 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_748 v1 v2 v3
du_DecEq'45'BootstrapAddr_748 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'BootstrapAddr_748 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142 (coe v0)
      (coe v1) (coe v2)
-- Ledger.GovStructure.GovStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_750 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'RwdAddr_750 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_750 v1 v2 v3
du_DecEq'45'RwdAddr_750 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'RwdAddr_750 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144 (coe v0)
      (coe v1) (coe v2)
-- Ledger.GovStructure.GovStructure._.RwdAddr
d_RwdAddr_752 a0 a1 a2 a3 = ()
-- Ledger.GovStructure.GovStructure._.ScriptAddr
d_ScriptAddr_756 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_ScriptAddr_756 = erased
-- Ledger.GovStructure.GovStructure._.ScriptBaseAddr
d_ScriptBaseAddr_758 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_ScriptBaseAddr_758 = erased
-- Ledger.GovStructure.GovStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_760 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_ScriptBootstrapAddr_760 = erased
-- Ledger.GovStructure.GovStructure._.VKeyAddr
d_VKeyAddr_762 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_VKeyAddr_762 = erased
-- Ledger.GovStructure.GovStructure._.VKeyBaseAddr
d_VKeyBaseAddr_764 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_VKeyBaseAddr_764 = erased
-- Ledger.GovStructure.GovStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_766 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_VKeyBootstrapAddr_766 = erased
-- Ledger.GovStructure.GovStructure._.getScriptHash
d_getScriptHash_770 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
d_getScriptHash_770 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_770
du_getScriptHash_770 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
du_getScriptHash_770
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_134
-- Ledger.GovStructure.GovStructure._.isScript
d_isScript_772 a0 a1 a2 a3 a4 = ()
-- Ledger.GovStructure.GovStructure._.isScript?
d_isScript'63'_774 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isScript'63'_774 ~v0 ~v1 ~v2 ~v3 = du_isScript'63'_774
du_isScript'63'_774 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isScript'63'_774
  = coe MAlonzo.Code.Ledger.Address.du_isScript'63'_120
-- Ledger.GovStructure.GovStructure._.isScriptAddr
d_isScriptAddr_776 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_776 = erased
-- Ledger.GovStructure.GovStructure._.isScriptAddr?
d_isScriptAddr'63'_778 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isScriptAddr'63'_778 ~v0 ~v1 ~v2 ~v3 = du_isScriptAddr'63'_778
du_isScriptAddr'63'_778 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isScriptAddr'63'_778
  = coe MAlonzo.Code.Ledger.Address.du_isScriptAddr'63'_126
-- Ledger.GovStructure.GovStructure._.isScriptRwdAddr
d_isScriptRwdAddr_780 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> ()
d_isScriptRwdAddr_780 = erased
-- Ledger.GovStructure.GovStructure._.isScriptRwdAddr?
d_isScriptRwdAddr'63'_782 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isScriptRwdAddr'63'_782 ~v0 ~v1 ~v2 ~v3
  = du_isScriptRwdAddr'63'_782
du_isScriptRwdAddr'63'_782 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isScriptRwdAddr'63'_782
  = coe MAlonzo.Code.Ledger.Address.du_isScriptRwdAddr'63'_130
-- Ledger.GovStructure.GovStructure._.isVKey
d_isVKey_784 a0 a1 a2 a3 a4 = ()
-- Ledger.GovStructure.GovStructure._.isVKey?
d_isVKey'63'_786 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isVKey'63'_786 ~v0 ~v1 ~v2 ~v3 = du_isVKey'63'_786
du_isVKey'63'_786 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isVKey'63'_786
  = coe MAlonzo.Code.Ledger.Address.du_isVKey'63'_110
-- Ledger.GovStructure.GovStructure._.isVKeyAddr
d_isVKeyAddr_788 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_788 = erased
-- Ledger.GovStructure.GovStructure._.isVKeyAddr?
d_isVKeyAddr'63'_790 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isVKeyAddr'63'_790 ~v0 ~v1 ~v2 ~v3 = du_isVKeyAddr'63'_790
du_isVKeyAddr'63'_790 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isVKeyAddr'63'_790
  = coe MAlonzo.Code.Ledger.Address.du_isVKeyAddr'63'_116
-- Ledger.GovStructure.GovStructure._.netId
d_netId_792 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_792 ~v0 ~v1 ~v2 ~v3 = du_netId_792
du_netId_792 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_792 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.GovStructure.GovStructure._.payCred
d_payCred_794 ::
  T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_payCred_794 ~v0 ~v1 ~v2 ~v3 = du_payCred_794
du_payCred_794 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_payCred_794 = coe MAlonzo.Code.Ledger.Address.du_payCred_90
-- Ledger.GovStructure.GovStructure._.BaseAddr.net
d_net_798 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_30 -> AgdaAny
d_net_798 v0 = coe MAlonzo.Code.Ledger.Address.d_net_38 (coe v0)
-- Ledger.GovStructure.GovStructure._.BaseAddr.pay
d_pay_800 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_800 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_40 (coe v0)
-- Ledger.GovStructure.GovStructure._.BaseAddr.stake
d_stake_802 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_802 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_42 (coe v0)
-- Ledger.GovStructure.GovStructure._.BootstrapAddr.attrsSize
d_attrsSize_806 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> Integer
d_attrsSize_806 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_56 (coe v0)
-- Ledger.GovStructure.GovStructure._.BootstrapAddr.net
d_net_808 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> AgdaAny
d_net_808 v0 = coe MAlonzo.Code.Ledger.Address.d_net_52 (coe v0)
-- Ledger.GovStructure.GovStructure._.BootstrapAddr.pay
d_pay_810 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_810 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_54 (coe v0)
-- Ledger.GovStructure.GovStructure._.RwdAddr.net
d_net_814 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> AgdaAny
d_net_814 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.GovStructure.GovStructure._.RwdAddr.stake
d_stake_816 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_816 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)
