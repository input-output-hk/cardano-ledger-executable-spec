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
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Level
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
d_PParams_268 a0 = ()
-- _.ScriptHash
d_ScriptHash_324 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_324 = erased
-- _.Slot
d_Slot_334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_334 = erased
-- _.Tx
d_Tx_364 a0 = ()
-- _.TxBody
d_TxBody_366 a0 = ()
-- _.TxOut
d_TxOut_372 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_372 = erased
-- _.UTxO
d_UTxO_376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_376 = erased
-- _.Value
d_Value_392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_392 = erased
-- _.coin
d_coin_422 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_422 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
-- _.getValue
d_getValue_464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_464 ~v0 = du_getValue_464
du_getValue_464 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_464
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2406
-- _.inject
d_inject_474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_474 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
-- _.netId
d_netId_504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_504 ~v0 ~v1 ~v2 ~v3 = du_netId_504
du_netId_504 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_504 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.Utxo._.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_1408 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2004
      (coe v0) (coe v1)
-- Ledger.Utxo._.evalScripts
d_evalScripts_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Bool
d_evalScripts_1418 v0 v1
  = coe
      MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2022 (coe v0)
      (coe v1)
-- Ledger.Utxo.HasCoin-Map
d_HasCoin'45'Map_1492 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1492 ~v0 ~v1 ~v2 v3 = du_HasCoin'45'Map_1492 v3
du_HasCoin'45'Map_1492 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1492 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1042 (coe v0)
              (coe
                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
              (coe
                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                 (coe
                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
              (coe (\ v2 -> v2)) (coe v1)))
-- Ledger.Utxo._*↓_
d__'42''8595'__1498 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
d__'42''8595'__1498 ~v0 v1 v2 = du__'42''8595'__1498 v1 v2
du__'42''8595'__1498 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 -> Integer -> Integer
du__'42''8595'__1498 v0 v1
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
d_isTwoPhaseScriptAddress_1504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isTwoPhaseScriptAddress_1504 v0 ~v1 v2 v3 v4
  = du_isTwoPhaseScriptAddress_1504 v0 v2 v3 v4
du_isTwoPhaseScriptAddress_1504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isTwoPhaseScriptAddress_1504 v0 v1 v2 v3
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
                 MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2490 (coe v0)
                 (coe
                    MAlonzo.Code.Ledger.Address.du_getScriptHash_148 (coe v3) (coe v4))
                 (coe v1) (coe v2))
              (coe
                 MAlonzo.Code.Level.C_lift_20
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
              (coe
                 (\ v5 ->
                    coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2504 (coe v5)))
              (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
-- Ledger.Utxo.getDataHashes
d_getDataHashes_1516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1516 ~v0 ~v1 v2 = du_getDataHashes_1516 v2
du_getDataHashes_1516 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1516 v0
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
d_getInputHashes_1520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1520 v0 ~v1 v2 v3
  = du_getInputHashes_1520 v0 v2 v3
du_getInputHashes_1520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1520 v0 v1 v2
  = coe
      du_getDataHashes_1516
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_filter'738'_1012
         (\ v3 ->
            coe
              MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
              (coe
                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                 (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946))
              (coe
                 du_isTwoPhaseScriptAddress_1504 (coe v0) (coe v1) (coe v2)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
         (coe
            MAlonzo.Code.Interface.IsSet.du_range_492
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1120
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0))))
               (coe v2)
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2330
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v1))))))
-- Ledger.Utxo.totExUnits
d_totExUnits_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> AgdaAny
d_totExUnits_1574 v0 ~v1 v2 = du_totExUnits_1574 v0 v2
du_totExUnits_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> AgdaAny
du_totExUnits_1574 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1042
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
               (coe
                  MAlonzo.Code.Ledger.Script.d_Data'688'_164
                  (coe
                     MAlonzo.Code.Ledger.Script.d_ps_414
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_190
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_414
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_414
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526 (coe v0))))
      (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2384
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2400 (coe v1)))
-- Ledger.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 -> Integer
d_utxoEntrySizeWithoutVal_1586 ~v0 ~v1
  = du_utxoEntrySizeWithoutVal_1586
du_utxoEntrySizeWithoutVal_1586 :: Integer
du_utxoEntrySizeWithoutVal_1586 = coe (8 :: Integer)
-- Ledger.Utxo.utxoEntrySize
d_utxoEntrySize_1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1588 v0 ~v1 v2 = du_utxoEntrySize_1588 v0 v2
du_utxoEntrySize_1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1588 v0 v1
  = coe
      addInt (coe du_utxoEntrySizeWithoutVal_1586)
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_212
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.du_getValue_2406 (coe v1)))
-- Ledger.Utxo._._.outs
d_outs_1600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1600 ~v0 ~v1 v2 = du_outs_1600 v2
du_outs_1600 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1600 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_854
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2360 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2334 (coe v0))
-- Ledger.Utxo._._.balance
d_balance_1606 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1606 v0 ~v1 v2 = du_balance_1606 v0 v2
du_balance_1606 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1606 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1042
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0)))))
         (coe
            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0)))
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
                                 MAlonzo.Code.Ledger.Script.d_ps_414
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                    (coe v0))))))
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                           (coe
                              MAlonzo.Code.Ledger.Script.d_Data'688'_164
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_414
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                    (coe v0))))))))
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                     (coe
                        MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_238
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0)))
                     (coe
                        MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_182
                        (coe
                           MAlonzo.Code.Ledger.Script.d_ps_414
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                              (coe v0)))))))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0)))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue_2406) (coe v1)
-- Ledger.Utxo._._.cbalance
d_cbalance_1612 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1612 v0 ~v1 v2 = du_cbalance_1612 v0 v2
du_cbalance_1612 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1612 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
      (coe du_balance_1606 (coe v0) (coe v1))
-- Ledger.Utxo._._.minfee
d_minfee_1616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> Integer
d_minfee_1616 v0 v1 v2 v3 v4
  = coe
      addInt
      (coe
         addInt
         (coe
            addInt
            (coe
               MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1406 v1
               (MAlonzo.Code.Ledger.PParams.d_prices_304 (coe v2))
               (coe du_totExUnits_1574 (coe v0) (coe v4)))
            (coe MAlonzo.Code.Ledger.PParams.d_b_294 (coe v2)))
         (coe
            MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
            (coe
               MAlonzo.Code.Data.Rational.Base.d_floor_344
               (coe
                  MAlonzo.Code.Data.Rational.Base.d__'42'__274
                  (coe
                     MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_302
                     (coe v2))
                  (coe
                     MAlonzo.Code.Data.Rational.Base.du__'47'__156
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum''_1048
                        (coe
                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                           (coe
                              MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_238
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_182
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_414
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                    (coe v0)))))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                        (coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1414 (coe v1))
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_refScripts_2430 (coe v0) (coe v4)
                           (coe v3)))
                     (coe (1 :: Integer)))))))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_292 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_2358
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v4))))
-- Ledger.Utxo._.DepositPurpose
d_DepositPurpose_1630 a0 a1 = ()
data T_DepositPurpose_1630
  = C_CredentialDeposit_1632 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_PoolDeposit_1634 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_DRepDeposit_1636 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GovActionDeposit_1638 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1640 v0 ~v1
  = du_DecEq'45'DepositPurpose_1640 v0
du_DecEq'45'DepositPurpose_1640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1640 v0
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v1 ->
            case coe v1 of
              C_CredentialDeposit_1632 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1632 v4
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
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_PoolDeposit_1634 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_1636 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_1638 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_PoolDeposit_1634 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1632 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_1634 v4
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
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_DRepDeposit_1636 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_1638 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRepDeposit_1636 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1632 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_1634 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_1636 v4
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
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_GovActionDeposit_1638 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovActionDeposit_1638 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1632 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_1634 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_1636 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_1638 v4
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
                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998
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
d_HasCoin'45'UTxO_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1642 v0 ~v1 = du_HasCoin'45'UTxO_1642 v0
du_HasCoin'45'UTxO_1642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1642 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_1612 (coe v0))
-- Ledger.Utxo.updateCertDeposits
d_updateCertDeposits_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1644 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_1644 v0 v2 v3 v4
du_updateCertDeposits_1644 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1644 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1128
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1430
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             (coe
                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                (coe du_DecEq'45'DepositPurpose_1640 (coe v0)))
             (coe
                MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__526
                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'monoid_3194
                (coe du_DecEq'45'DepositPurpose_1640 (coe v0))
                (coe
                   du_updateCertDeposits_1644 (coe v0) (coe v1) (coe v5) (coe v3))
                (coe du_certDeposit_1662 (coe v4) (coe v1)))
             (coe du_certRefund_1676 (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._.certDeposit
d_certDeposit_1662 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1662 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_certDeposit_1662 v6 v7
du_certDeposit_1662 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1662 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_510
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)) in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Deleg.C_delegate_636 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_678
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_CredentialDeposit_1632 (coe v3)) (coe v6))
         MAlonzo.Code.Ledger.Deleg.C_regpool_640 v3 v4
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_678
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_PoolDeposit_1634 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_298 (coe v1)))
         MAlonzo.Code.Ledger.Deleg.C_regdrep_644 v3 v4 v5
           -> coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_678
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_DRepDeposit_1636 (coe v3)) (coe v4))
         _ -> coe v2)
-- Ledger.Utxo._.certRefund
d_certRefund_1676 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 -> [T_DepositPurpose_1630]
d_certRefund_1676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_certRefund_1676 v6
du_certRefund_1676 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 -> [T_DepositPurpose_1630]
du_certRefund_1676 v0
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
                erased (coe C_CredentialDeposit_1632 (coe v2))
         MAlonzo.Code.Ledger.Deleg.C_deregdrep_646 v2
           -> coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                (MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                erased (coe C_DRepDeposit_1636 (coe v2))
         _ -> coe v1)
-- Ledger.Utxo.updateProposalDeposits
d_updateProposalDeposits_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1682 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1682 v0 v2 v3 v4 v5
du_updateProposalDeposits_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1682 v0 v1 v2 v3 v4
  = case coe v1 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__526
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'monoid_3194
             (coe du_DecEq'45'DepositPurpose_1640 (coe v0))
             (coe
                du_updateProposalDeposits_1682 (coe v0) (coe v6) (coe v2) (coe v3)
                (coe v4))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_678
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1430
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      C_GovActionDeposit_1638
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                         (coe MAlonzo.Code.Data.List.Base.du_length_304 v6)))
                   (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.updateDeposits
d_updateDeposits_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1694 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1694 v0 v2 v3 v4
du_updateDeposits_1694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1694 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_1644 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2342 (coe v2))
      (coe
         du_updateProposalDeposits_1682 (coe v0)
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2348 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2360 (coe v2))
         (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_322 (coe v1))
         (coe v3))
-- Ledger.Utxo.depositsChange
d_depositsChange_1744 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1744 v0 ~v1 v2 v3 v4
  = du_depositsChange_1744 v0 v2 v3 v4
du_depositsChange_1744 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1744 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1042
         (coe du_DecEq'45'DepositPurpose_1640 (coe v0))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
         (coe (\ v4 -> v4))
         (coe du_updateDeposits_1694 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1042
         (coe du_DecEq'45'DepositPurpose_1640 (coe v0))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
         (coe (\ v4 -> v4)) (coe v3))
-- Ledger.Utxo.inInterval
d_inInterval_1754 a0 a1 a2 a3 = ()
data T_inInterval_1754
  = C_both_1762 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_1766 AgdaAny | C_upper_1770 AgdaAny | C_none_1772
-- Ledger.Utxo._=>ᵇ_
d__'61''62''7495'__1774 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1774 ~v0 v1 v2 = du__'61''62''7495'__1774 v1 v2
du__'61''62''7495'__1774 :: Bool -> Bool -> Bool
du__'61''62''7495'__1774 v0 v1
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94) (coe v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe (\ v2 -> v1))
      (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
-- Ledger.Utxo._≤ᵇ_
d__'8804''7495'__1780 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1780 ~v0 ~v1 v2 v3 = du__'8804''7495'__1780 v2 v3
du__'8804''7495'__1780 :: Integer -> Integer -> Bool
du__'8804''7495'__1780 v0 v1
  = coe
      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191''7495'_46 (coe ())
      (coe
         MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
         (coe
            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664 (coe v0)
            (coe v1)))
-- Ledger.Utxo._≥ᵇ_
d__'8805''7495'__1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1782 ~v0 ~v1 v2 v3 = du__'8805''7495'__1782 v2 v3
du__'8805''7495'__1782 :: Integer -> Integer -> Bool
du__'8805''7495'__1782 v0 v1
  = coe du__'8804''7495'__1780 (coe v1) (coe v0)
-- Ledger.Utxo.≟-∅ᵇ
d_'8799''45''8709''7495'_1794 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  () -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1794 ~v0 ~v1 v2 v3
  = du_'8799''45''8709''7495'_1794 v2 v3
du_'8799''45''8709''7495'_1794 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1794 v0 v1
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
d_coinPolicies_1798 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 -> [AgdaAny]
d_coinPolicies_1798 v0 ~v1 = du_coinPolicies_1798 v0
du_coinPolicies_1798 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1798 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
         (1 :: Integer))
-- Ledger.Utxo.isAdaOnlyᵇ
d_isAdaOnly'7495'_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1800 v0 ~v1 v2 = du_isAdaOnly'7495'_1800 v0 v2
du_isAdaOnly'7495'_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1800 v0 v1
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
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0)))
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
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                               (coe v3) (coe du_coinPolicies_1798 (coe v0)))))
                    v2))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0)) v1))
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.Axiom.Set.d_all'63'_1568
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                       (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0)))
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
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                               (coe v3)
                               (coe
                                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
                                  v1))))
                    v2))
            (coe du_coinPolicies_1798 (coe v0))))
-- Ledger.Utxo.feesOK
d_feesOK_1804 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1804 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         du__'8804''7495'__1780
         (coe d_minfee_1616 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txfee_2336
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v3))))
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
                              (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0)))
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_ps_414
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                             (coe v0))))))
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_190
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_ps_414
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                       (coe v0))))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_480
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2384
                        (coe MAlonzo.Code.Ledger.Transaction.d_wits_2400 (coe v3))))
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
                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012 (coe v0)))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
                             (coe
                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012 (coe v0)))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0)))))
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                          (coe
                             MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                             (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0)))
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
                                               MAlonzo.Code.Ledger.Script.d_ps_414
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                  (coe v0))))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                            (coe
                                               MAlonzo.Code.Ledger.Script.d_ps_414
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                  (coe v0))))))))
                             (coe
                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                (coe
                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                   (coe
                                      MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_238
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1032 (coe v0))
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_182
                                      (coe
                                         MAlonzo.Code.Ledger.Script.d_ps_414
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                            (coe v0)))))))))
                    (coe
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                            (coe
                               MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_108
                               (coe
                                  MAlonzo.Code.Ledger.Address.du_payCred_90
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))))
                    (coe du_collateralRange_1936 (coe v0) (coe v3) (coe v4)))
                 (coe
                    MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                    (coe
                       du_isAdaOnly'7495'_1800 (coe v0)
                       (coe du_bal_1938 (coe v0) (coe v3) (coe v4)))
                    (coe
                       MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                       (coe
                          du__'8805''7495'__1782
                          (coe
                             mulInt
                             (coe
                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
                                (coe du_bal_1938 (coe v0) (coe v3) (coe v4)))
                             (coe (100 :: Integer)))
                          (coe
                             mulInt
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_txfee_2336
                                (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v3)))
                             (coe
                                MAlonzo.Code.Ledger.PParams.d_collateralPercentage_312 (coe v2))))
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
                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_collateral_2362
                                   (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v3)))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'8709'_424
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                      (coe
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))))))
         (coe (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Utxo._.collateralRange
d_collateralRange_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_1936 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_1936 v0 v3 v4
du_collateralRange_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_1936 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.IsSet.du_range_492
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1120
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2362
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v1))))
-- Ledger.Utxo._.bal
d_bal_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_1938 v0 ~v1 ~v2 v3 v4 = du_bal_1938 v0 v3 v4
du_bal_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_1938 v0 v1 v2
  = coe
      du_balance_1606 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1120
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2362
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v1))))
-- Ledger.Utxo.Deposits
d_Deposits_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 -> ()
d_Deposits_1944 = erased
-- Ledger.Utxo.UTxOEnv
d_UTxOEnv_1946 a0 a1 = ()
data T_UTxOEnv_1946
  = C_UTxOEnv'46'constructor_51851 AgdaAny
                                   MAlonzo.Code.Ledger.PParams.T_PParams_218
-- Ledger.Utxo.UTxOEnv.slot
d_slot_1952 :: T_UTxOEnv_1946 -> AgdaAny
d_slot_1952 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_51851 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.pparams
d_pparams_1954 ::
  T_UTxOEnv_1946 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1954 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_51851 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState
d_UTxOState_1956 a0 a1 = ()
data T_UTxOState_1956
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_1974 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Utxo.UTxOState.utxo
d_utxo_1966 ::
  T_UTxOState_1956 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1966 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1974 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.fees
d_fees_1968 :: T_UTxOState_1956 -> Integer
d_fees_1968 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1974 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.deposits
d_deposits_1970 ::
  T_UTxOState_1956 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1970 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1974 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.donations
d_donations_1972 :: T_UTxOState_1956 -> Integer
d_donations_1972 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1974 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.⟦_⟧
d_'10214'_'10215'_1978 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  () -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1978 ~v0 ~v1 v2 = du_'10214'_'10215'_1978 v2
du_'10214'_'10215'_1978 :: AgdaAny -> AgdaAny
du_'10214'_'10215'_1978 v0 = coe v0
-- Ledger.Utxo.Dec-inInterval
d_Dec'45'inInterval_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'inInterval_1980 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_1980 v0 v2 v3
du_Dec'45'inInterval_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'inInterval_1980 v0 v1 v2
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
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
                                                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
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
                                                                                    C_both_1762
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
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
                                                         (coe C_lower_1766 v9))
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
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
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
                                                         (coe C_upper_1770 v9))
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
                                 (coe C_none_1772))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_2082 v0 ~v1
  = du_HasCoin'45'UTxOState_2082 v0
du_HasCoin'45'UTxOState_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_2082 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe d_donations_1972 (coe v1)) (coe d_fees_1968 (coe v1)))
                 (coe du_cbalance_1612 (coe v0) (coe d_utxo_1966 (coe v1))))
              (coe
                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1042
                 (coe du_DecEq'45'DepositPurpose_1640 (coe v0))
                 (coe
                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                 (coe
                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                    (coe
                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                 (coe (\ v2 -> v2)) (coe d_deposits_1970 (coe v1)))))
-- Ledger.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__2086 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__2086
  = C_UTXO'45'inductive_2380 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._._.depositRefunds
d_depositRefunds_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 -> Integer
d_depositRefunds_2096 v0 ~v1 v2 v3 v4
  = du_depositRefunds_2096 v0 v2 v3 v4
du_depositRefunds_2096 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 -> Integer
du_depositRefunds_2096 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_1744 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1970 (coe v2)))
-- Ledger.Utxo._._.newDeposits
d_newDeposits_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 -> Integer
d_newDeposits_2104 v0 ~v1 v2 v3 v4
  = du_newDeposits_2104 v0 v2 v3 v4
du_newDeposits_2104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 -> Integer
du_newDeposits_2104 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_1744 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1970 (coe v2)))
-- Ledger.Utxo._._.consumed
d_consumed_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 -> AgdaAny
d_consumed_2112 v0 ~v1 v2 v3 v4 = du_consumed_2112 v0 v2 v3 v4
du_consumed_2112 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 -> AgdaAny
du_consumed_2112 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0)))
         (coe
            du_balance_1606 (coe v0)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1120
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0))))
               (coe d_utxo_1966 (coe v2))
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2330 (coe v3))))
         (MAlonzo.Code.Ledger.Transaction.d_mint_2338 (coe v3)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
         (coe du_depositRefunds_2096 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Utxo._._.produced
d_produced_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 -> AgdaAny
d_produced_2120 v0 ~v1 v2 v3 v4 = du_produced_2120 v0 v2 v3 v4
du_produced_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290 -> AgdaAny
du_produced_2120 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0)))
            (coe du_balance_1606 (coe v0) (coe du_outs_1600 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_2336 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
            (coe du_newDeposits_2104 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2350 (coe v3)))
-- Ledger.Utxo._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__2128 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOS'10632'__2128
  = C_Scripts'45'Yes_2204 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Scripts'45'No_2280 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._.txdonation
d_txdonation_2164 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> Integer
d_txdonation_2164 ~v0 ~v1 ~v2 v3 = du_txdonation_2164 v3
du_txdonation_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> Integer
du_txdonation_2164 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2350
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v0))
-- Ledger.Utxo._.txfee
d_txfee_2166 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> Integer
d_txfee_2166 ~v0 ~v1 ~v2 v3 = du_txfee_2166 v3
du_txfee_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> Integer
du_txfee_2166 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2336
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v0))
-- Ledger.Utxo._.txins
d_txins_2170 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2170 ~v0 ~v1 ~v2 v3 = du_txins_2170 v3
du_txins_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2170 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2330
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v0))
-- Ledger.Utxo._.pparams
d_pparams_2188 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2188 ~v0 v1 ~v2 ~v3 = du_pparams_2188 v1
du_pparams_2188 ::
  T_UTxOEnv_1946 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_2188 v0 = coe d_pparams_1954 (coe v0)
-- Ledger.Utxo._.slot
d_slot_2190 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> AgdaAny
d_slot_2190 ~v0 v1 ~v2 ~v3 = du_slot_2190 v1
du_slot_2190 :: T_UTxOEnv_1946 -> AgdaAny
du_slot_2190 v0 = coe d_slot_1952 (coe v0)
-- Ledger.Utxo._.deposits
d_deposits_2194 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2194 ~v0 ~v1 v2 ~v3 = du_deposits_2194 v2
du_deposits_2194 ::
  T_UTxOState_1956 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2194 v0 = coe d_deposits_1970 (coe v0)
-- Ledger.Utxo._.donations
d_donations_2196 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> Integer
d_donations_2196 ~v0 ~v1 v2 ~v3 = du_donations_2196 v2
du_donations_2196 :: T_UTxOState_1956 -> Integer
du_donations_2196 v0 = coe d_donations_1972 (coe v0)
-- Ledger.Utxo._.fees
d_fees_2198 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> Integer
d_fees_2198 ~v0 ~v1 v2 ~v3 = du_fees_2198 v2
du_fees_2198 :: T_UTxOState_1956 -> Integer
du_fees_2198 v0 = coe d_fees_1968 (coe v0)
-- Ledger.Utxo._.utxo
d_utxo_2200 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2200 ~v0 ~v1 v2 ~v3 = du_utxo_2200 v2
du_utxo_2200 ::
  T_UTxOState_1956 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2200 v0 = coe d_utxo_1966 (coe v0)
-- Ledger.Utxo._.collateral
d_collateral_2224 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2224 ~v0 ~v1 ~v2 v3 = du_collateral_2224 v3
du_collateral_2224 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2224 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2362
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v0))
-- Ledger.Utxo._.pparams
d_pparams_2264 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2264 ~v0 v1 ~v2 ~v3 = du_pparams_2264 v1
du_pparams_2264 ::
  T_UTxOEnv_1946 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_2264 v0 = coe d_pparams_1954 (coe v0)
-- Ledger.Utxo._.slot
d_slot_2266 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> AgdaAny
d_slot_2266 ~v0 v1 ~v2 ~v3 = du_slot_2266 v1
du_slot_2266 :: T_UTxOEnv_1946 -> AgdaAny
du_slot_2266 v0 = coe d_slot_1952 (coe v0)
-- Ledger.Utxo._.deposits
d_deposits_2270 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2270 ~v0 ~v1 v2 ~v3 = du_deposits_2270 v2
du_deposits_2270 ::
  T_UTxOState_1956 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2270 v0 = coe d_deposits_1970 (coe v0)
-- Ledger.Utxo._.donations
d_donations_2272 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> Integer
d_donations_2272 ~v0 ~v1 v2 ~v3 = du_donations_2272 v2
du_donations_2272 :: T_UTxOState_1956 -> Integer
du_donations_2272 v0 = coe d_donations_1972 (coe v0)
-- Ledger.Utxo._.fees
d_fees_2274 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 -> Integer
d_fees_2274 ~v0 ~v1 v2 ~v3 = du_fees_2274 v2
du_fees_2274 :: T_UTxOState_1956 -> Integer
du_fees_2274 v0 = coe d_fees_1968 (coe v0)
-- Ledger.Utxo._.utxo
d_utxo_2276 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2276 ~v0 ~v1 v2 ~v3 = du_utxo_2276 v2
du_utxo_2276 ::
  T_UTxOState_1956 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2276 v0 = coe d_utxo_1966 (coe v0)
-- Ledger.Utxo.Scripts-Yes-premises
d_Scripts'45'Yes'45'premises_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'Yes'45'premises_2282 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2022 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2004
                  (coe v0) (coe v1) (coe d_pparams_1954 (coe v2)) (coe v4)
                  (coe d_utxo_1966 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2402 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2402 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
-- Ledger.Utxo.Scripts-No-premises
d_Scripts'45'No'45'premises_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Scripts'45'No'45'premises_2284 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946)
            (coe
               MAlonzo.Code.Ledger.ScriptValidation.d_evalScripts_2022 (coe v0)
               (coe v1) (coe v4)
               (coe
                  MAlonzo.Code.Ledger.ScriptValidation.d_collectPhaseTwoScriptInputs_2004
                  (coe v0) (coe v1) (coe d_pparams_1954 (coe v2)) (coe v4)
                  (coe d_utxo_1966 (coe v3))))
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2402 (coe v4)))
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
            (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946)
            (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2402 (coe v4))
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)))
-- Ledger.Utxo._.body
d_body_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290
d_body_2300 ~v0 ~v1 v2 = du_body_2300 v2
du_body_2300 ::
  T_GeneralizeTel_84801 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2290
du_body_2300 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2398
      (coe d_'46'generalizedField'45'tx_84793 v0)
-- Ledger.Utxo._.mint
d_mint_2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 -> AgdaAny
d_mint_2308 ~v0 ~v1 v2 = du_mint_2308 v2
du_mint_2308 :: T_GeneralizeTel_84801 -> AgdaAny
du_mint_2308 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2338
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2398
         (coe d_'46'generalizedField'45'tx_84793 v0))
-- Ledger.Utxo._.refInputs
d_refInputs_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2312 ~v0 ~v1 v2 = du_refInputs_2312 v2
du_refInputs_2312 ::
  T_GeneralizeTel_84801 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2312 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2332
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2398
         (coe d_'46'generalizedField'45'tx_84793 v0))
-- Ledger.Utxo._.txins
d_txins_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2328 ~v0 ~v1 v2 = du_txins_2328 v2
du_txins_2328 ::
  T_GeneralizeTel_84801 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2328 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2330
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2398
         (coe d_'46'generalizedField'45'tx_84793 v0))
-- Ledger.Utxo._.txouts
d_txouts_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2330 ~v0 ~v1 v2 = du_txouts_2330 v2
du_txouts_2330 ::
  T_GeneralizeTel_84801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2330 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2334
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2398
         (coe d_'46'generalizedField'45'tx_84793 v0))
-- Ledger.Utxo._.txsize
d_txsize_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 -> Integer
d_txsize_2334 ~v0 ~v1 v2 = du_txsize_2334 v2
du_txsize_2334 :: T_GeneralizeTel_84801 -> Integer
du_txsize_2334 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2358
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2398
         (coe d_'46'generalizedField'45'tx_84793 v0))
-- Ledger.Utxo._.txvldt
d_txvldt_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2338 ~v0 ~v1 v2 = du_txvldt_2338 v2
du_txvldt_2338 ::
  T_GeneralizeTel_84801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2338 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2340
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2398
         (coe d_'46'generalizedField'45'tx_84793 v0))
-- Ledger.Utxo._.txwdrls
d_txwdrls_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2342 ~v0 ~v1 v2 = du_txwdrls_2342 v2
du_txwdrls_2342 ::
  T_GeneralizeTel_84801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2342 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2344
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2398
         (coe d_'46'generalizedField'45'tx_84793 v0))
-- Ledger.Utxo._.pparams
d_pparams_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2346 ~v0 ~v1 v2 = du_pparams_2346 v2
du_pparams_2346 ::
  T_GeneralizeTel_84801 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_2346 v0
  = coe d_pparams_1954 (coe d_'46'generalizedField'45'Γ_84795 v0)
-- Ledger.Utxo._.slot
d_slot_2348 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 -> AgdaAny
d_slot_2348 ~v0 ~v1 v2 = du_slot_2348 v2
du_slot_2348 :: T_GeneralizeTel_84801 -> AgdaAny
du_slot_2348 v0
  = coe d_slot_1952 (coe d_'46'generalizedField'45'Γ_84795 v0)
-- Ledger.Utxo._.deposits
d_deposits_2352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2352 ~v0 ~v1 v2 = du_deposits_2352 v2
du_deposits_2352 ::
  T_GeneralizeTel_84801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2352 v0
  = coe d_deposits_1970 (coe d_'46'generalizedField'45's_84797 v0)
-- Ledger.Utxo._.donations
d_donations_2354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 -> Integer
d_donations_2354 ~v0 ~v1 v2 = du_donations_2354 v2
du_donations_2354 :: T_GeneralizeTel_84801 -> Integer
du_donations_2354 v0
  = coe d_donations_1972 (coe d_'46'generalizedField'45's_84797 v0)
-- Ledger.Utxo._.fees
d_fees_2356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 -> Integer
d_fees_2356 ~v0 ~v1 v2 = du_fees_2356 v2
du_fees_2356 :: T_GeneralizeTel_84801 -> Integer
du_fees_2356 v0
  = coe d_fees_1968 (coe d_'46'generalizedField'45's_84797 v0)
-- Ledger.Utxo._.utxo
d_utxo_2358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  T_GeneralizeTel_84801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2358 ~v0 ~v1 v2 = du_utxo_2358 v2
du_utxo_2358 ::
  T_GeneralizeTel_84801 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2358 v0
  = coe d_utxo_1966 (coe d_'46'generalizedField'45's_84797 v0)
-- Ledger.Utxo.UTXO-premises
d_UTXO'45'premises_2418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1394 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2388 ->
  T_UTxOEnv_1946 ->
  T_UTxOState_1956 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2418 v0 v1 v2 v3 v4
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
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0))
                        (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0)))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2330
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2)))
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
                          (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0))
                          (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0)))
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
                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998
                                           (coe v0))
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996
                                           (coe v0))))
                                  (coe v6)
                                  (coe
                                     MAlonzo.Code.Interface.IsSet.du_dom_490
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                     (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498)
                                     (coe d_utxo_1966 (coe v4))))))
                       v5))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2330
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2))))
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
                             (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998 (coe v0))
                             (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996 (coe v0)))
                          erased
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                             (coe
                                (\ v6 ->
                                   coe
                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                        erased
                                        (coe
                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_998
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996
                                              (coe v0))))
                                     (coe v6)
                                     (coe
                                        MAlonzo.Code.Interface.IsSet.du_dom_490
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1430
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498)
                                        (coe d_utxo_1966 (coe v4))))))
                          v5))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_refInputs_2332
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     du_Dec'45'inInterval_1980 (coe v0) (coe d_slot_1952 (coe v3))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txvldt_2340
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                        (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946)
                        (coe
                           d_feesOK_1804 (coe v0) (coe v1) (coe d_pparams_1954 (coe v3))
                           (coe v2) (coe d_utxo_1966 (coe v4)))
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
                                    MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))))
                           (coe
                              du_consumed_2112 (coe v0) (coe d_pparams_1954 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2)))
                           (coe
                              du_produced_2120 (coe v0) (coe d_pparams_1954 (coe v3)) (coe v4)
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                           (coe
                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                              (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                              (coe
                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838 (coe v0))
                                 (MAlonzo.Code.Ledger.Transaction.d_mint_2338
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2))))
                              (coe (0 :: Integer)))
                           (coe
                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                              (coe
                                 MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txsize_2358
                                       (coe MAlonzo.Code.Ledger.Transaction.d_body_2398 (coe v2)))
                                    (coe
                                       MAlonzo.Code.Ledger.PParams.d_maxTxSize_278
                                       (coe d_pparams_1954 (coe v3)))))
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
                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012
                                                              (coe v0)))
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
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012
                                                              (coe v0)))
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
                                                              (coe v0)))))
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                     (coe
                                                        MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838
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
                                                                          MAlonzo.Code.Ledger.Script.d_ps_414
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                                             (coe v0))))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_ps_414
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                                             (coe v0))))))))
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_238
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                                    (coe v0))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_182
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Script.d_ps_414
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                                       (coe v0))))))))))
                                            erased
                                            (coe
                                               MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                               (coe
                                                  (\ v6 ->
                                                     coe
                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_226
                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838
                                                             (coe v0))
                                                          (mulInt
                                                             (coe
                                                                du_utxoEntrySize_1588 (coe v0)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v6)))
                                                             (coe
                                                                MAlonzo.Code.Ledger.PParams.d_minUTxOValue_296
                                                                (coe d_pparams_1954 (coe v3)))))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.du_getValue_2406
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             (coe v6))))))
                                            v5))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_txouts_2334
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_body_2398
                                             (coe v2)))))
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
                                                     MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_996
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012
                                                                 (coe v0)))
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
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012
                                                                 (coe v0)))
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
                                                                 (coe v0)))))
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                        (coe
                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838
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
                                                                             MAlonzo.Code.Ledger.Script.d_ps_414
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                                                (coe v0))))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_ps_414
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                                                (coe v0))))))))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_238
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                                       (coe v0))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_182
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Script.d_ps_414
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                                          (coe v0))))))))))
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
                                                                MAlonzo.Code.Ledger.Abstract.d_serSize_1408
                                                                v1
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.du_getValue_2406
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v6))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.PParams.d_maxValSize_282
                                                                (coe d_pparams_1954 (coe v3)))))))
                                               v5))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2334
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2398
                                                (coe v2)))))
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
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012
                                                                 (coe v0)))
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
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012
                                                                 (coe v0)))
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
                                                                 (coe v0)))))
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                        (coe
                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838
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
                                                                             MAlonzo.Code.Ledger.Script.d_ps_414
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                                                (coe v0))))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_ps_414
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                                                (coe v0))))))))
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_238
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                                       (coe v0))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
                                                                       (coe v0)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_182
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Script.d_ps_414
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                                          (coe v0)))))))))
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
                                             MAlonzo.Code.Interface.IsSet.du_range_492
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498)
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2334
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2398
                                                   (coe v2)))))
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
                                                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012
                                                                    (coe v0)))
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
                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012
                                                                    (coe v0)))
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
                                                                    (coe v0)))))
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                           (coe
                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1838
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
                                                                                MAlonzo.Code.Ledger.Script.d_ps_414
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                                                   (coe v0))))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Script.d_ps_414
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                                                   (coe v0))))))))
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_238
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1032
                                                                          (coe v0))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1276
                                                                          (coe v0)))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_182
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Script.d_ps_414
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1526
                                                                             (coe v0)))))))))
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
                                                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012
                                                                         (coe v0))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Address.du_netId_92
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v6)))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_networkId_1956
                                                                   (coe v0)))))
                                                     v5))
                                             (coe
                                                MAlonzo.Code.Interface.IsSet.du_range_492
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498)
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2334
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2398
                                                      (coe v2)))))
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
                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012
                                                              (coe v0)))
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
                                                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1012
                                                                         (coe v0))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Address.d_net_64
                                                                   (coe v6))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_networkId_1956
                                                                   (coe v0)))))
                                                     v5))
                                             (coe
                                                MAlonzo.Code.Interface.IsSet.du_dom_490
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498)
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_txwdrls_2344
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_body_2398
                                                      (coe v2)))))))))))))))))
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_84793 ::
  T_GeneralizeTel_84801 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2388
d_'46'generalizedField'45'tx_84793
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_84795 ::
  T_GeneralizeTel_84801 -> T_UTxOEnv_1946
d_'46'generalizedField'45'Γ_84795 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s
d_'46'generalizedField'45's_84797 ::
  T_GeneralizeTel_84801 -> T_UTxOState_1956
d_'46'generalizedField'45's_84797 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s'
d_'46'generalizedField'45's''_84799 ::
  T_GeneralizeTel_84801 -> T_UTxOState_1956
d_'46'generalizedField'45's''_84799
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_84801 a0 a1 = ()
data T_GeneralizeTel_84801
  = C_mkGeneralizeTel_84803 MAlonzo.Code.Ledger.Transaction.T_Tx_2388
                            T_UTxOEnv_1946 T_UTxOState_1956 T_UTxOState_1956
