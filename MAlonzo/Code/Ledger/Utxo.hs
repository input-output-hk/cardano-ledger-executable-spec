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

module MAlonzo.Code.Ledger.Utxo where

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
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Ext
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.Set.HashMap
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- _._≤ᵗ_
d__'8804''7511'__14 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__14 = erased
-- _.Addr
d_Addr_34 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_34 = erased
-- _.Credential
d_Credential_64 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_64 = erased
-- _.DCert
d_DCert_66 a0 = ()
-- _.THash
d_THash_78 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_78 = erased
-- _.Dec-isScript
d_Dec'45'isScript_86 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_86 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_86
du_Dec'45'isScript_86 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_86
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
-- _.ExUnits
d_ExUnits_176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_176 = erased
-- _.GovActionID
d_GovActionID_188 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_188 = erased
-- _.GovProposal
d_GovProposal_196 a0 = ()
-- _.MemoryEstimate
d_MemoryEstimate_234 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_234 = erased
-- _.PParams
d_PParams_270 a0 = ()
-- _.ScriptHash
d_ScriptHash_326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_326 = erased
-- _.Slot
d_Slot_336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_336 = erased
-- _.Tx
d_Tx_366 a0 = ()
-- _.TxBody
d_TxBody_368 a0 = ()
-- _.TxOut
d_TxOut_374 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_374 = erased
-- _.TxOutʰ
d_TxOut'688'_376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut'688'_376 = erased
-- _.UTxO
d_UTxO_380 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_380 = erased
-- _.Value
d_Value_396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_396 = erased
-- _.coin
d_coin_428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_428 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
-- _.getValueʰ
d_getValue'688'_472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_472 ~v0 = du_getValue'688'_472
du_getValue'688'_472 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_472
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2412
-- _.inject
d_inject_482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_482 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
-- _.netId
d_netId_512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_512 ~v0 ~v1 ~v2 ~v3 = du_netId_512
du_netId_512 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_512 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- _.txOutHash
d_txOutHash_574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_574 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2402 (coe v0)
-- Ledger.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1410 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2006
      (coe v0) (coe v1)
-- Ledger.Utxo._.evalScripts
d_evalScripts_1420 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1420 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2024 (coe v0)
      (coe v1)
-- Ledger.Utxo.HasCoin-Map
d_HasCoin'45'Map_1494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1494 ~v0 ~v1 ~v2 v3 = du_HasCoin'45'Map_1494 v3
du_HasCoin'45'Map_1494 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1494 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048 (coe v0)
              (coe
                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
              (coe
                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                 (coe
                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
              (coe (\ v2 -> v2)) (coe v1)))
-- Ledger.Utxo._*↓_
d__'42''8595'__1500 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1500 ~v0 v1 v2 = du__'42''8595'__1500 v1 v2
du__'42''8595'__1500 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1500 v0 v1
  = coe
      MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
      (coe
         MAlonzo.Code.Data.Rational.Base.d_floor_344
         (coe
            MAlonzo.Code.Data.Rational.Base.d__'42'__274 (coe v0)
            (coe
               MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v1)
               (coe (1 :: Integer)))))
-- Ledger.Utxo.isTwoPhaseScriptAddress
d_isTwoPhaseScriptAddress_1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1506 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress_1506 v0 v2 v3 v4
du_isTwoPhaseScriptAddress_1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1506 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
         (coe MAlonzo.Code.Ledger.Address.du_payCred_90 (coe v3)))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Interface.ToBool.du_if_then_else__46
              (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45'Maybe_106)
              (coe
                 MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2496 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Address.du_getScriptHash_148 (coe v3) (coe v4))
                 (coe v1) (coe v2))
              (coe
                 MAlonzo.Code.Level.C_lift_20
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              (coe
                 (\ v5 ->
                    coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2510 (coe v5)))
              (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
-- Ledger.Utxo.getDataHashes
d_getDataHashes_1518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1518 ~v0 ~v1 v2 = du_getDataHashes_1518 v2
du_getDataHashes_1518 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1518 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30)
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_558
         (MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v1 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))
         v0)
-- Ledger.Utxo.getInputHashes
d_getInputHashes_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1522 v0 ~v1 v2 v3
  = du_getInputHashes_1522 v0 v2 v3
du_getInputHashes_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1522 v0 v1 v2
  = coe
      du_getDataHashes_1518
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1018
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
              (coe
                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                 (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946))
              (coe
                 du_isTwoPhaseScriptAddress_1506 (coe v0) (coe v1) (coe v2)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
         (coe
            MAlonzo.Code.Interface.IsSet.du_range_494
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1190
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2320
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v1))))))
-- Ledger.Utxo.totExUnits
d_totExUnits_1576 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> AgdaAny
d_totExUnits_1576 v0 ~v1 v2 = du_totExUnits_1576 v0 v2
du_totExUnits_1576 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> AgdaAny
du_totExUnits_1576 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
               (coe
                  MAlonzo.Code.Ledger.Script.d_Data'688'_164
                  (coe
                     MAlonzo.Code.Ledger.Script.d_ps_412
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_412
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2374
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2390 (coe v1)))
-- Ledger.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 -> Integer
d_utxoEntrySizeWithoutVal_1588 ~v0 ~v1
  = du_utxoEntrySizeWithoutVal_1588
du_utxoEntrySizeWithoutVal_1588 :: Integer
du_utxoEntrySizeWithoutVal_1588 = coe (8 :: Integer)
-- Ledger.Utxo.utxoEntrySize
d_utxoEntrySize_1590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1590 v0 ~v1 v2 = du_utxoEntrySize_1590 v0 v2
du_utxoEntrySize_1590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1590 v0 v1
  = coe
      addInt (coe du_utxoEntrySizeWithoutVal_1588)
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_212
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2412 (coe v1)))
-- Ledger.Utxo._._.outs
d_outs_1602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1602 ~v0 ~v1 v2 = du_outs_1602 v2
du_outs_1602 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1602 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_802
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2350 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2324 (coe v0))
-- Ledger.Utxo._._.balance
d_balance_1608 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1608 v0 ~v1 v2 = du_balance_1608 v0 v2
du_balance_1608 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1608 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))))
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_164
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_412
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_164
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_412
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2412)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapValues_812
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2402 (coe v0))
         (coe v1))
-- Ledger.Utxo._._.cbalance
d_cbalance_1614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1614 v0 ~v1 v2 = du_cbalance_1614 v0 v2
du_cbalance_1614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1614 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
      (coe du_balance_1608 (coe v0) (coe v1))
-- Ledger.Utxo._._.minfee
d_minfee_1618 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Integer
d_minfee_1618 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1408 v1
               (MAlonzo.Code.Ledger.PParams.d_prices_308 (coe v2))
               (coe du_totExUnits_1576 (coe v0) (coe v4)))
            (coe MAlonzo.Code.Ledger.PParams.d_b_296 (coe v2)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
            (coe
               MAlonzo.Code.Data.Rational.Base.d_floor_344
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__274
                  (coe
                     MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_306
                     (coe v2))
                  (coe
                     MAlonzo.Code.Data.Rational.Base.du__'47'__156
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                        (coe (\ v5 -> v5))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_mapValues_812
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1416 (coe v1))
                           (coe
                              MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_394
                                 (MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0))
                                 erased erased erased
                                 (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_p1s_398
                                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                          (coe v0))))
                                 (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_412
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                          (coe v0)))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_refScripts_2436 (coe v0) (coe v4)
                                 (coe v3)))))
                     (coe (1 :: Integer)))))))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_294 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_2348
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v4))))
-- Ledger.Utxo._.DepositPurpose
d_DepositPurpose_1632 a0 a1 = ()
data T_DepositPurpose_1632
  = C_CredentialDeposit_1634 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_PoolDeposit_1636 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_DRepDeposit_1638 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GovActionDeposit_1640 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1642 v0 ~v1
  = du_DecEq'45'DepositPurpose_1642 v0
du_DecEq'45'DepositPurpose_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1642 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v1 ->
            case coe v1 of
              C_CredentialDeposit_1634 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1634 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_PoolDeposit_1636 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_1638 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_1640 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_PoolDeposit_1636 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1634 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_1636 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_DRepDeposit_1638 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_1640 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRepDeposit_1638 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1634 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_1636 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_1638 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_GovActionDeposit_1640 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovActionDeposit_1640 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1634 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_1636 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_1638 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_1640 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                             (coe v0)))
                                       (coe
                                          (\ v5 ->
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1644 v0 ~v1 = du_HasCoin'45'UTxO_1644 v0
du_HasCoin'45'UTxO_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1644 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_1614 (coe v0))
-- Ledger.Utxo.updateCertDeposits
d_updateCertDeposits_1646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1646 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_1646 v0 v2 v3 v4
du_updateCertDeposits_1646 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1646 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1430
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             (coe
                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                (coe du_DecEq'45'DepositPurpose_1642 (coe v0)))
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                (coe du_DecEq'45'DepositPurpose_1642 (coe v0))
                (coe
                   du_updateCertDeposits_1646 (coe v0) (coe v1) (coe v5) (coe v3))
                (coe du_certDeposit_1664 (coe v4) (coe v1)))
             (coe du_certRefund_1678 (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._.certDeposit
d_certDeposit_1664 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1664 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_certDeposit_1664 v6 v7
du_certDeposit_1664 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1664 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_512
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Deleg.C_delegate_636 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_CredentialDeposit_1634 (coe v3)) (coe v6))
         MAlonzo.Code.Ledger.Deleg.C_regpool_640 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_PoolDeposit_1636 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_300 (coe v1)))
         MAlonzo.Code.Ledger.Deleg.C_regdrep_644 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_DRepDeposit_1638 (coe v3)) (coe v4))
         _ -> coe v2)
-- Ledger.Utxo._.certRefund
d_certRefund_1678 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 -> [T_DepositPurpose_1632]
d_certRefund_1678 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_certRefund_1678 v6
du_certRefund_1678 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 -> [T_DepositPurpose_1632]
du_certRefund_1678 v0
  = let v1
          = coe
              MAlonzo.Code.Axiom.Set.du_'8709'_424
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Deleg.C_dereg_638 v2
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                (MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased (coe C_CredentialDeposit_1634 (coe v2))
         MAlonzo.Code.Ledger.Deleg.C_deregdrep_646 v2
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                (MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased (coe C_DRepDeposit_1638 (coe v2))
         _ -> coe v1)
-- Ledger.Utxo.updateProposalDeposits
d_updateProposalDeposits_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1684 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1684 v0 v2 v3 v4 v5
du_updateProposalDeposits_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1684 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             (coe
                MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
             (coe du_DecEq'45'DepositPurpose_1642 (coe v0))
             (coe
                du_updateProposalDeposits_1684 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      C_GovActionDeposit_1640
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_304 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateDeposits
d_updateDeposits_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1696 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1696 v0 v2 v3 v4
du_updateDeposits_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1696 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_1646 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2332 (coe v2))
      (coe
         du_updateProposalDeposits_1684 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2338 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2350 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326 (coe v1))
         (coe v3))
-- Ledger.Utxo.depositsChange
d_depositsChange_1746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1746 v0 ~v1 v2 v3 v4
  = du_depositsChange_1746 v0 v2 v3 v4
du_depositsChange_1746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1746 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
         (coe du_DecEq'45'DepositPurpose_1642 (coe v0))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_1696 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
         (coe du_DecEq'45'DepositPurpose_1642 (coe v0))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Utxo.inInterval
d_inInterval_1756 a0 a1 a2 a3 = ()
data T_inInterval_1756
  = C_both_1764 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_1768 AgdaAny | C_upper_1772 AgdaAny | C_none_1774
-- Ledger.Utxo._=>ᵇ_
d__'61''62''7495'__1776 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1776 ~v0 v1 v2 = du__'61''62''7495'__1776 v1 v2
du__'61''62''7495'__1776 :: Bool -> Bool -> Bool
du__'61''62''7495'__1776 v0 v1
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94) (coe v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe (\ v2 -> v1))
      (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
-- Ledger.Utxo._≤ᵇ_
d__'8804''7495'__1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1782 ~v0 ~v1 v2 v3 = du__'8804''7495'__1782 v2 v3
du__'8804''7495'__1782 :: Integer -> Integer -> Bool
du__'8804''7495'__1782 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
         (coe
            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664 (coe v0)
            (coe v1)))
-- Ledger.Utxo._≥ᵇ_
d__'8805''7495'__1784 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1784 ~v0 ~v1 v2 v3 = du__'8805''7495'__1784 v2 v3
du__'8805''7495'__1784 :: Integer -> Integer -> Bool
du__'8805''7495'__1784 v0 v1
  = coe du__'8804''7495'__1782 (coe v1) (coe v0)
-- Ledger.Utxo.≟-∅ᵇ
d_'8799''45''8709''7495'_1796 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1796 ~v0 ~v1 v2 v3
  = du_'8799''45''8709''7495'_1796 v2 v3
du_'8799''45''8709''7495'_1796 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1796 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
         (coe
            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
            (coe MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_252 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8709'_424
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
-- Ledger.Utxo.coinPolicies
d_coinPolicies_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 -> [AgdaAny]
d_coinPolicies_1800 v0 ~v1 = du_coinPolicies_1800 v0
du_coinPolicies_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1800 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
         (1 :: Integer))
-- Ledger.Utxo.isAdaOnlyᵇ
d_isAdaOnly'7495'_1802 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1802 v0 ~v1 v2 = du_isAdaOnly'7495'_1802 v0 v2
du_isAdaOnly'7495'_1802 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1802 v0 v1
  = coe
      MAlonzo.Code.Interface.ToBool.du_toBool_64
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.d_all'63'_1568
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))
                    erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                       (coe
                          (\ v3 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                               (coe
                                  MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                  (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                               (coe v3) (coe du_coinPolicies_1800 (coe v0)))))
                    v2))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)) v1))
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.d_all'63'_1568
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))
                    erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                       (coe
                          (\ v3 ->
                             coe
                               MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                               (coe
                                  MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                  (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                               (coe v3)
                               (coe
                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
                                  v1))))
                    v2))
            (coe du_coinPolicies_1800 (coe v0))))
-- Ledger.Utxo.feesOK
d_feesOK_1806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1806 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         du__'8804''7495'__1782
         (coe d_minfee_1618 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txfee_2326
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v3))))
      (coe
         MAlonzo.Code.Interface.ToBool.du_if_then_else__46
         (coe MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94)
         (coe
            MAlonzo.Code.Data.Bool.Base.d_not_22
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_252
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                              (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                              (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0)))
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_412
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                             (coe v0))))))
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_ps_412
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                       (coe v0))))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2374
                        (coe MAlonzo.Code.Ledger.Transaction.d_wits_2390 (coe v3))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_424
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
         (coe
            MAlonzo.Code.Level.C_lift_20
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         (coe
            (\ v5 ->
               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                 (coe
                    MAlonzo.Code.Axiom.Set.du_all'7495'_1618
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                          (coe
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154
                             (coe
                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
                             (coe
                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))))
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                          (coe
                             MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                             (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                             (coe
                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                (coe
                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                            (coe
                                               MAlonzo.Code.Ledger.Script.d_ps_412
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                                  (coe v0))))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                            (coe
                                               MAlonzo.Code.Ledger.Script.d_ps_412
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                                  (coe v0))))))))
                             (coe
                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))))))
                    (coe
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                            (coe
                               MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_108
                               (coe
                                  MAlonzo.Code.Ledger.Address.du_payCred_90
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))))
                    (coe du_collateralRange_1940 (coe v0) (coe v3) (coe v4)))
                 (coe
                    MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                    (coe
                       du_isAdaOnly'7495'_1802 (coe v0)
                       (coe du_bal_1942 (coe v0) (coe v3) (coe v4)))
                    (coe
                       MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                       (coe
                          du__'8805''7495'__1784
                          (coe
                             mulInt
                             (coe
                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
                                (coe du_bal_1942 (coe v0) (coe v3) (coe v4)))
                             (coe (100 :: Integer)))
                          (coe
                             mulInt
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v3)))
                             (coe
                                MAlonzo.Code.Ledger.PParams.d_collateralPercentage_316 (coe v2))))
                       (coe
                          MAlonzo.Code.Data.Bool.Base.d_not_22
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
                             (coe
                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                (coe
                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                   (coe
                                      MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_252
                                      (coe
                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_collateral_2352
                                   (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v3)))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'8709'_424
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))))))
         (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Utxo._.collateralRange
d_collateralRange_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_1940 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_1940 v0 v3 v4
du_collateralRange_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_1940 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.IsSet.du_range_494
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1190
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_812
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2402 (coe v0))
            (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2352
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v1))))
-- Ledger.Utxo._.bal
d_bal_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_1942 v0 ~v1 ~v2 v3 v4 = du_bal_1942 v0 v3 v4
du_bal_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_1942 v0 v1 v2
  = coe
      du_balance_1608 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1190
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2352
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v1))))
-- Ledger.Utxo.Deposits
d_Deposits_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 -> ()
d_Deposits_1948 = erased
-- Ledger.Utxo.UTxOEnv
d_UTxOEnv_1950 a0 a1 = ()
data T_UTxOEnv_1950
  = C_UTxOEnv'46'constructor_49789 AgdaAny
                                   MAlonzo.Code.Ledger.PParams.T_PParams_218
-- Ledger.Utxo.UTxOEnv.slot
d_slot_1956 :: T_UTxOEnv_1950 -> AgdaAny
d_slot_1956 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_49789 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.pparams
d_pparams_1958 ::
  T_UTxOEnv_1950 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1958 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_49789 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState
d_UTxOState_1960 a0 a1 = ()
data T_UTxOState_1960
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_1978 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Utxo.UTxOState.utxo
d_utxo_1970 ::
  T_UTxOState_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1970 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1978 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.fees
d_fees_1972 :: T_UTxOState_1960 -> Integer
d_fees_1972 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1978 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.deposits
d_deposits_1974 ::
  T_UTxOState_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1974 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1978 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.donations
d_donations_1976 :: T_UTxOState_1960 -> Integer
d_donations_1976 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1978 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.⟦_⟧
d_'10214'_'10215'_1982 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  () -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1982 ~v0 ~v1 v2 = du_'10214'_'10215'_1982 v2
du_'10214'_'10215'_1982 :: AgdaAny -> AgdaAny
du_'10214'_'10215'_1982 v0 = coe v0
-- Ledger.Utxo.Dec-inInterval
d_Dec'45'inInterval_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1984 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_1984 v0 v2 v3
du_Dec'45'inInterval_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1984 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v2 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
           -> case coe v3 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                  -> case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                         -> let v7
                                  = coe
                                      MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                                      (MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_230
                                         (coe
                                            MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
                                               (coe v0))))
                                      v5 v1 in
                            coe
                              (let v8
                                     = coe
                                         MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                                         (MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_230
                                            (coe
                                               MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
                                                  (coe v0))))
                                         v1 v6 in
                               coe
                                 (case coe v7 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                      -> if coe v9
                                           then case coe v10 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                    -> case coe v8 of
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                                           -> if coe v12
                                                                then case coe v13 of
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                                         -> coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                              (coe v12)
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                 (coe
                                                                                    C_both_1764
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe v11)
                                                                                       (coe v14))))
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                else coe
                                                                       seq (coe v13)
                                                                       (coe
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                          (coe v12)
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else coe
                                                  seq (coe v10)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                     (coe v9)
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                         -> let v6
                                  = coe
                                      MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                                      (MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_230
                                         (coe
                                            MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
                                               (coe v0))))
                                      v5 v1 in
                            coe
                              (case coe v6 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                   -> if coe v7
                                        then case coe v8 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                                 -> coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                      (coe v7)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                         (coe C_lower_1768 v9))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else coe
                                               seq (coe v8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                         -> let v6
                                  = coe
                                      MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                                      (MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_230
                                         (coe
                                            MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
                                               (coe v0))))
                                      v1 v5 in
                            coe
                              (case coe v6 of
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                   -> if coe v7
                                        then case coe v8 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                                 -> coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                      (coe v7)
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                         (coe C_upper_1772 v9))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        else coe
                                               seq (coe v8)
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                         -> coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                 (coe C_none_1774))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2086 v0 ~v1
  = du_HasCoin'45'UTxOState_2086 v0
du_HasCoin'45'UTxOState_2086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2086 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe d_donations_1976 (coe v1)) (coe d_fees_1972 (coe v1)))
                 (coe du_cbalance_1614 (coe v0) (coe d_utxo_1970 (coe v1))))
              (coe
                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                 (coe du_DecEq'45'DepositPurpose_1642 (coe v0))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                 (coe
                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                 (coe (\ v2 -> v2)) (coe d_deposits_1974 (coe v1)))))
-- Ledger.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2090 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2090
  = C_UTXO'45'inductive_2386 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._._.depositRefunds
d_depositRefunds_2100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Integer
d_depositRefunds_2100 v0 ~v1 v2 v3 v4
  = du_depositRefunds_2100 v0 v2 v3 v4
du_depositRefunds_2100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Integer
du_depositRefunds_2100 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_1746 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1974 (coe v2)))
-- Ledger.Utxo._._.newDeposits
d_newDeposits_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Integer
d_newDeposits_2108 v0 ~v1 v2 v3 v4
  = du_newDeposits_2108 v0 v2 v3 v4
du_newDeposits_2108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Integer
du_newDeposits_2108 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_1746 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1974 (coe v2)))
-- Ledger.Utxo._._.consumed
d_consumed_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> AgdaAny
d_consumed_2116 v0 ~v1 v2 v3 v4 = du_consumed_2116 v0 v2 v3 v4
du_consumed_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> AgdaAny
du_consumed_2116 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
         (coe
            du_balance_1608 (coe v0)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1190
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0))))
               (coe d_utxo_1970 (coe v2))
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2320 (coe v3))))
         (MAlonzo.Code.Ledger.Transaction.d_mint_2328 (coe v3)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
         (coe du_depositRefunds_2100 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Utxo._._.produced
d_produced_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> AgdaAny
d_produced_2124 v0 ~v1 v2 v3 v4 = du_produced_2124 v0 v2 v3 v4
du_produced_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> AgdaAny
du_produced_2124 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
            (coe du_balance_1608 (coe v0) (coe du_outs_1602 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_2326 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
            (coe du_newDeposits_2108 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2340 (coe v3)))
-- Ledger.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2132 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2132
  = C_Scripts'45'Yes_2208 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2284 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._.txdonation
d_txdonation_2168 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Integer
d_txdonation_2168 ~v0 ~v1 ~v2 v3 = du_txdonation_2168 v3
du_txdonation_2168 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Integer
du_txdonation_2168 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v0))
-- Ledger.Utxo._.txfee
d_txfee_2170 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Integer
d_txfee_2170 ~v0 ~v1 ~v2 v3 = du_txfee_2170 v3
du_txfee_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Integer
du_txfee_2170 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2326
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v0))
-- Ledger.Utxo._.txins
d_txins_2174 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2174 ~v0 ~v1 ~v2 v3 = du_txins_2174 v3
du_txins_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2174 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2320
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v0))
-- Ledger.Utxo._.pparams
d_pparams_2192 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2192 ~v0 v1 ~v2 ~v3 = du_pparams_2192 v1
du_pparams_2192 ::
  T_UTxOEnv_1950 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_2192 v0 = coe d_pparams_1958 (coe v0)
-- Ledger.Utxo._.slot
d_slot_2194 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> AgdaAny
d_slot_2194 ~v0 v1 ~v2 ~v3 = du_slot_2194 v1
du_slot_2194 :: T_UTxOEnv_1950 -> AgdaAny
du_slot_2194 v0 = coe d_slot_1956 (coe v0)
-- Ledger.Utxo._.deposits
d_deposits_2198 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2198 ~v0 ~v1 v2 ~v3 = du_deposits_2198 v2
du_deposits_2198 ::
  T_UTxOState_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2198 v0 = coe d_deposits_1974 (coe v0)
-- Ledger.Utxo._.donations
d_donations_2200 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Integer
d_donations_2200 ~v0 ~v1 v2 ~v3 = du_donations_2200 v2
du_donations_2200 :: T_UTxOState_1960 -> Integer
du_donations_2200 v0 = coe d_donations_1976 (coe v0)
-- Ledger.Utxo._.fees
d_fees_2202 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Integer
d_fees_2202 ~v0 ~v1 v2 ~v3 = du_fees_2202 v2
du_fees_2202 :: T_UTxOState_1960 -> Integer
du_fees_2202 v0 = coe d_fees_1972 (coe v0)
-- Ledger.Utxo._.utxo
d_utxo_2204 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2204 ~v0 ~v1 v2 ~v3 = du_utxo_2204 v2
du_utxo_2204 ::
  T_UTxOState_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2204 v0 = coe d_utxo_1970 (coe v0)
-- Ledger.Utxo._.collateral
d_collateral_2228 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2228 ~v0 ~v1 ~v2 v3 = du_collateral_2228 v3
du_collateral_2228 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2228 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2352
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v0))
-- Ledger.Utxo._.pparams
d_pparams_2268 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2268 ~v0 v1 ~v2 ~v3 = du_pparams_2268 v1
du_pparams_2268 ::
  T_UTxOEnv_1950 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_2268 v0 = coe d_pparams_1958 (coe v0)
-- Ledger.Utxo._.slot
d_slot_2270 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> AgdaAny
d_slot_2270 ~v0 v1 ~v2 ~v3 = du_slot_2270 v1
du_slot_2270 :: T_UTxOEnv_1950 -> AgdaAny
du_slot_2270 v0 = coe d_slot_1956 (coe v0)
-- Ledger.Utxo._.deposits
d_deposits_2274 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2274 ~v0 ~v1 v2 ~v3 = du_deposits_2274 v2
du_deposits_2274 ::
  T_UTxOState_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2274 v0 = coe d_deposits_1974 (coe v0)
-- Ledger.Utxo._.donations
d_donations_2276 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Integer
d_donations_2276 ~v0 ~v1 v2 ~v3 = du_donations_2276 v2
du_donations_2276 :: T_UTxOState_1960 -> Integer
du_donations_2276 v0 = coe d_donations_1976 (coe v0)
-- Ledger.Utxo._.fees
d_fees_2278 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Integer
d_fees_2278 ~v0 ~v1 v2 ~v3 = du_fees_2278 v2
du_fees_2278 :: T_UTxOState_1960 -> Integer
du_fees_2278 v0 = coe d_fees_1972 (coe v0)
-- Ledger.Utxo._.utxo
d_utxo_2280 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2280 ~v0 ~v1 v2 ~v3 = du_utxo_2280 v2
du_utxo_2280 ::
  T_UTxOState_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2280 v0 = coe d_utxo_1970 (coe v0)
-- Ledger.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2286 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2024 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2006
                  (coe v0) (coe v1) (coe d_pparams_1958 (coe v2)) (coe v4)
                  (coe d_utxo_1970 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2392 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2392 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2288 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2024 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2006
                  (coe v0) (coe v1) (coe d_pparams_1958 (coe v2)) (coe v4)
                  (coe d_utxo_1970 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2392 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2392 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Utxo._.body
d_body_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280
d_body_2304 ~v0 ~v1 v2 = du_body_2304 v2
du_body_2304 ::
  T_GeneralizeTel_82889 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280
du_body_2304 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2388
      (coe d_'46'generalizedField'45'tx_82881 v0)
-- Ledger.Utxo._.mint
d_mint_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 -> AgdaAny
d_mint_2312 ~v0 ~v1 v2 = du_mint_2312 v2
du_mint_2312 :: T_GeneralizeTel_82889 -> AgdaAny
du_mint_2312 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2328
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_82881 v0))
-- Ledger.Utxo._.refInputs
d_refInputs_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2316 ~v0 ~v1 v2 = du_refInputs_2316 v2
du_refInputs_2316 ::
  T_GeneralizeTel_82889 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2316 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2322
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_82881 v0))
-- Ledger.Utxo._.txins
d_txins_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2332 ~v0 ~v1 v2 = du_txins_2332 v2
du_txins_2332 ::
  T_GeneralizeTel_82889 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2332 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2320
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_82881 v0))
-- Ledger.Utxo._.txouts
d_txouts_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2334 ~v0 ~v1 v2 = du_txouts_2334 v2
du_txouts_2334 ::
  T_GeneralizeTel_82889 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2334 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2324
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_82881 v0))
-- Ledger.Utxo._.txsize
d_txsize_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 -> Integer
d_txsize_2338 ~v0 ~v1 v2 = du_txsize_2338 v2
du_txsize_2338 :: T_GeneralizeTel_82889 -> Integer
du_txsize_2338 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2348
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_82881 v0))
-- Ledger.Utxo._.txvldt
d_txvldt_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2342 ~v0 ~v1 v2 = du_txvldt_2342 v2
du_txvldt_2342 ::
  T_GeneralizeTel_82889 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2342 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2330
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_82881 v0))
-- Ledger.Utxo._.txwdrls
d_txwdrls_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2346 ~v0 ~v1 v2 = du_txwdrls_2346 v2
du_txwdrls_2346 ::
  T_GeneralizeTel_82889 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2346 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2334
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_82881 v0))
-- Ledger.Utxo._.pparams
d_pparams_2350 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2350 ~v0 ~v1 v2 = du_pparams_2350 v2
du_pparams_2350 ::
  T_GeneralizeTel_82889 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_2350 v0
  = coe d_pparams_1958 (coe d_'46'generalizedField'45'Γ_82883 v0)
-- Ledger.Utxo._.slot
d_slot_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 -> AgdaAny
d_slot_2352 ~v0 ~v1 v2 = du_slot_2352 v2
du_slot_2352 :: T_GeneralizeTel_82889 -> AgdaAny
du_slot_2352 v0
  = coe d_slot_1956 (coe d_'46'generalizedField'45'Γ_82883 v0)
-- Ledger.Utxo._.deposits
d_deposits_2356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2356 ~v0 ~v1 v2 = du_deposits_2356 v2
du_deposits_2356 ::
  T_GeneralizeTel_82889 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2356 v0
  = coe d_deposits_1974 (coe d_'46'generalizedField'45's_82885 v0)
-- Ledger.Utxo._.donations
d_donations_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 -> Integer
d_donations_2358 ~v0 ~v1 v2 = du_donations_2358 v2
du_donations_2358 :: T_GeneralizeTel_82889 -> Integer
du_donations_2358 v0
  = coe d_donations_1976 (coe d_'46'generalizedField'45's_82885 v0)
-- Ledger.Utxo._.fees
d_fees_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 -> Integer
d_fees_2360 ~v0 ~v1 v2 = du_fees_2360 v2
du_fees_2360 :: T_GeneralizeTel_82889 -> Integer
du_fees_2360 v0
  = coe d_fees_1972 (coe d_'46'generalizedField'45's_82885 v0)
-- Ledger.Utxo._.utxo
d_utxo_2362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_82889 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2362 ~v0 ~v1 v2 = du_utxo_2362 v2
du_utxo_2362 ::
  T_GeneralizeTel_82889 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2362 v0
  = coe d_utxo_1970 (coe d_'46'generalizedField'45's_82885 v0)
-- Ledger.Utxo.UTXO-premises
d_UTXO'45'premises_2424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  T_UTxOEnv_1950 ->
  T_UTxOState_1960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2424 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
               (coe
                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_252
                     (coe
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0)))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2320
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_424
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
            (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Axiom.Set.d_all'63'_1568
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                          (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
                          (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0)))
                       erased
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                          (coe
                             (\ v6 ->
                                coe
                                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                     (coe
                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                           (coe v0))
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                           (coe v0))))
                                  (coe v6)
                                  (coe
                                     MAlonzo.Code.Interface.IsSet.du_dom_492
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                     (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                     (coe d_utxo_1970 (coe v4))))))
                       v5))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__662
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txins_2320
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2322
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_252
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du__'8745'__686
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                        (coe
                           MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txins_2320
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2)))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_refInputs_2322
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_424
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_1984 (coe v0) (coe d_slot_1956 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2330
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                        (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946)
                        (coe
                           d_feesOK_1806 (coe v0) (coe v1) (coe d_pparams_1958 (coe v3))
                           (coe v2) (coe d_utxo_1970 (coe v4)))
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))))
                           (coe
                              du_consumed_2116 (coe v0) (coe d_pparams_1958 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2)))
                           (coe
                              du_produced_2124 (coe v0) (coe d_pparams_1958 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                              (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2328
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txsize_2348
                                       (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2)))
                                    (coe
                                       MAlonzo.Code.Ledger.PParams.d_maxTxSize_280
                                       (coe d_pparams_1958 (coe v3)))))
                              (coe
                                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            erased
                                            (coe
                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                              (coe v0)))
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
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                              (coe v0)))
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
                                                              (coe v0)))))
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                     (coe
                                                        MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                           (coe v0)))
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_ps_412
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                                                             (coe v0))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_ps_412
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                                                             (coe v0))))))))
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                 (coe v0))))))))
                                            erased
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                               (coe
                                                  (\ v6 ->
                                                     coe
                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_226
                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                             (coe v0))
                                                          (mulInt
                                                             (coe
                                                                du_utxoEntrySize_1590 (coe v0)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v6)))
                                                             (coe
                                                                MAlonzo.Code.Ledger.PParams.d_minUTxOValue_298
                                                                (coe d_pparams_1958 (coe v3)))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2412
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe v6))))))
                                            v5))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du_mapValues_812
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txOutHash_2402
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2324
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                (coe v2))))))
                                 (coe
                                    MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                       (coe
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                               erased
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                                 (coe v0)))
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
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                                 (coe v0)))
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
                                                                 (coe v0)))))
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                        (coe
                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_ps_412
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                                                                (coe v0))))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_ps_412
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                                                                (coe v0))))))))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                    (coe v0))))))))
                                               erased
                                               (coe
                                                  MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                  (coe
                                                     (\ v6 ->
                                                        coe
                                                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                          (coe
                                                             MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                             (coe
                                                                MAlonzo.Code.Ledger.Abstract.d_serSize_1410
                                                                v1
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2412
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v6))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.PParams.d_maxValSize_284
                                                                (coe d_pparams_1958 (coe v3)))))))
                                               v5))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_812
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txOutHash_2402
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2324
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                   (coe v2))))))
                                    (coe
                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                          (coe
                                             (\ v5 ->
                                                coe
                                                  MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                                 (coe v0)))
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
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                                 (coe v0)))
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
                                                                 (coe v0)))))
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                        (coe
                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                              (coe v0)))
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_ps_412
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                                                                (coe v0))))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_ps_412
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                                                                (coe v0))))))))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                    (coe v0)))))))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                     (coe
                                                        (\ v6 ->
                                                           coe
                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'All_28
                                                             (coe
                                                                (\ v7 ->
                                                                   MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                                                             (coe
                                                                (\ v7 ->
                                                                   coe
                                                                     MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                                           (coe v7))
                                                                        (coe (64 :: Integer)))))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v6)))))
                                                  v5))
                                          (coe
                                             MAlonzo.Code.Interface.IsSet.du_range_494
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_812
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txOutHash_2402
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2324
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                      (coe v2))))))
                                       (coe
                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                                    (coe v0)))
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
                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                                    (coe v0)))
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
                                                                    (coe v0)))))
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                           (coe
                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Script.d_ps_412
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                                                                   (coe v0))))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Script.d_ps_412
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                                                                                   (coe v0))))))))
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                       (coe v0)))))))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                        (coe
                                                           (\ v6 ->
                                                              coe
                                                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                (coe
                                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                                         (coe v0))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Address.du_netId_92
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v6)))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_networkId_1944
                                                                   (coe v0)))))
                                                     v5))
                                             (coe
                                                MAlonzo.Code.Interface.IsSet.du_range_494
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_mapValues_812
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2402
                                                      (coe v0))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2324
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                         (coe v2))))))
                                          (coe
                                             MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                             (coe
                                                (\ v5 ->
                                                   coe
                                                     MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                              (coe v0)))
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
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                        (coe
                                                           (\ v6 ->
                                                              coe
                                                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                (coe
                                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                                         (coe v0))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Address.d_net_64
                                                                   (coe v6))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_networkId_1944
                                                                   (coe v0)))))
                                                     v5))
                                             (coe
                                                MAlonzo.Code.Interface.IsSet.du_dom_492
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txwdrls_2334
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                      (coe v2)))))))))))))))))
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_82881 ::
  T_GeneralizeTel_82889 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2378
d_'46'generalizedField'45'tx_82881
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_82883 ::
  T_GeneralizeTel_82889 -> T_UTxOEnv_1950
d_'46'generalizedField'45'Γ_82883 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s
d_'46'generalizedField'45's_82885 ::
  T_GeneralizeTel_82889 -> T_UTxOState_1960
d_'46'generalizedField'45's_82885 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_82887 ::
  T_GeneralizeTel_82889 -> T_UTxOState_1960
d_'46'generalizedField'45's''_82887
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_82889 a0 a1 = ()
data T_GeneralizeTel_82889
  = C_mkGeneralizeTel_82891 MAlonzo.Code.Ledger.Transaction.T_Tx_2378
                            T_UTxOEnv_1950 T_UTxOState_1960 T_UTxOState_1960
