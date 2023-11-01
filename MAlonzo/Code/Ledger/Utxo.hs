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
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Integer.Ext
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Properties
import qualified MAlonzo.Code.Data.Sum.Relation.Unary.All
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.Decidable.Instance
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovStructure
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- _._≤ᵗ_
d__'8804''7511'__18 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__18 = erased
-- _.Addr
d_Addr_40 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Addr_40 = erased
-- _.Credential
d_Credential_84 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_84 = erased
-- _.DCert
d_DCert_86 a0 = ()
-- _.Carrier
d_Carrier_204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Carrier_204 = erased
-- _.GovActionID
d_GovActionID_216 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_216 = erased
-- _.GovProposal
d_GovProposal_222 a0 = ()
-- _.MemoryEstimate
d_MemoryEstimate_258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_258 = erased
-- _.Network
d_Network_262 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Network_262 = erased
-- _.PParams
d_PParams_290 a0 = ()
-- _.ScriptHash
d_ScriptHash_346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_346 = erased
-- _.Slot
d_Slot_354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_354 = erased
-- _.Tx
d_Tx_384 a0 = ()
-- _.TxBody
d_TxBody_386 a0 = ()
-- _.TxOut
d_TxOut_392 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_392 = erased
-- _.UTxO
d_UTxO_396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_396 = erased
-- _.Carrier
d_Carrier_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Carrier_412 = erased
-- _.coin
d_coin_438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_438 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
-- _.getValue
d_getValue_480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_480 ~v0 = du_getValue_480
du_getValue_480 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_480
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2442
-- _.inject
d_inject_490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_490 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
-- _.netId
d_netId_532 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_532 ~v0 ~v1 ~v2 ~v3 = du_netId_532
du_netId_532 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_532 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.Utxo.HasCoin-Map
d_HasCoin'45'Map_1426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1426 ~v0 ~v1 ~v2 v3 = du_HasCoin'45'Map_1426 v3
du_HasCoin'45'Map_1426 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1426 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3206
              v0 MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v2 -> v2)
              (coe
                 MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976 (coe v1))))
-- Ledger.Utxo.isPhaseTwoScriptAddress
d_isPhaseTwoScriptAddress_1432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isPhaseTwoScriptAddress_1432 v0 ~v1 v2 v3
  = du_isPhaseTwoScriptAddress_1432 v0 v2 v3
du_isPhaseTwoScriptAddress_1432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isPhaseTwoScriptAddress_1432 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Address.du_isScriptAddr'63'_126 (coe v2) in
    case coe v3 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v4 v5
        -> if coe v4
             then case coe v5 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v6
                      -> let v7
                               = MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2466
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Ledger.Address.du_getScriptHash_134 (coe v2)
                                      (coe v6))
                                   (coe v1) in
                         case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                             -> coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2478 (coe v8)
                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                             -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe seq (coe v5) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.totExUnits
d_totExUnits_1470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 -> AgdaAny
d_totExUnits_1470 v0 ~v1 v2 = du_totExUnits_1470 v0 v2
du_totExUnits_1470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 -> AgdaAny
du_totExUnits_1470 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504'_862
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0))))
      (coe
         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0)))
      (coe
         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
               (coe
                  MAlonzo.Code.Ledger.Script.d_Data'688'_202
                  (coe
                     MAlonzo.Code.Ledger.Script.d_ps_294
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_294
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))))
      (coe
         (\ v2 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2424
            (coe MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v1))))
-- Ledger.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 -> Integer
d_utxoEntrySizeWithoutVal_1480 ~v0 ~v1
  = du_utxoEntrySizeWithoutVal_1480
du_utxoEntrySizeWithoutVal_1480 :: Integer
du_utxoEntrySizeWithoutVal_1480 = coe (8 :: Integer)
-- Ledger.Utxo.utxoEntrySize
d_utxoEntrySize_1482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_utxoEntrySize_1482 v0 ~v1 v2 = du_utxoEntrySize_1482 v0 v2
du_utxoEntrySize_1482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_utxoEntrySize_1482 v0 v1
  = coe
      addInt (coe du_utxoEntrySizeWithoutVal_1480)
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_216
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.du_getValue_2442 (coe v1)))
-- Ledger.Utxo._._.outs
d_outs_1494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1494 ~v0 ~v1 v2 = du_outs_1494 v2
du_outs_1494 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1494 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_834
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2400 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2374 (coe v0))
-- Ledger.Utxo._._.balance
d_balance_1500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1500 v0 ~v1 v2 = du_balance_1500 v0 v2
du_balance_1500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1500 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
      (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0)))
      (coe
         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0)))
      (coe
         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
         (coe
            MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
               (coe
                  MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_216
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
               (coe
                  MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_216
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0)))))
         (coe
            MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0)))
            (coe
               MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                     (coe
                        MAlonzo.Code.Ledger.Script.d_Data'688'_202
                        (coe
                           MAlonzo.Code.Ledger.Script.d_ps_294
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                              (coe v0)))))))))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue_2442)
      (coe MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976 (coe v1))
-- Ledger.Utxo._._.cbalance
d_cbalance_1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1506 v0 ~v1 v2 = du_cbalance_1506 v0 v2
du_cbalance_1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1506 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
      (coe du_balance_1500 (coe v0) (coe v1))
-- Ledger.Utxo._._.coinPolicies
d_coinPolicies_1510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 -> [AgdaAny]
d_coinPolicies_1510 v0 ~v1 = du_coinPolicies_1510 v0
du_coinPolicies_1510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1510 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
         (1 :: Integer))
-- Ledger.Utxo._._.isAdaOnlyᵇ
d_isAdaOnly'7495'_1512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1512 v0 ~v1 v2 = du_isAdaOnly'7495'_1512 v0 v2
du_isAdaOnly'7495'_1512 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1512 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_104 ()
      erased
      (coe
         MAlonzo.Code.Axiom.Set.du__'8801''7497''63'__1588
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0)) v1)
         (coe du_coinPolicies_1510 (coe v0)))
-- Ledger.Utxo._._.minfee
d_minfee_1516 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 -> Integer
d_minfee_1516 v0 v1 v2 v3
  = coe
      addInt
      (coe
         addInt
         (coe
            MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1440 v1
            (MAlonzo.Code.Ledger.PParams.d_prices_290 (coe v2))
            (coe du_totExUnits_1470 (coe v0) (coe v3)))
         (coe MAlonzo.Code.Ledger.PParams.d_b_282 (coe v2)))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_280 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_2398
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v3))))
-- Ledger.Utxo._._.DepositPurpose
d_DepositPurpose_1522 a0 a1 = ()
data T_DepositPurpose_1522
  = C_CredentialDeposit_1524 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_PoolDeposit_1526 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_DRepDeposit_1528 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GovActionDeposit_1530 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._._.certDeposit
d_certDeposit_1532 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1532 ~v0 ~v1 v2 v3 = du_certDeposit_1532 v2 v3
du_certDeposit_1532 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1532 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    case coe v1 of
      MAlonzo.Code.Ledger.Deleg.C_delegate_670 v3 v4 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe C_CredentialDeposit_1524 (coe v3)) (coe v6))
      MAlonzo.Code.Ledger.Deleg.C_regpool_672 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe C_PoolDeposit_1526 (coe v3))
                (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_286 (coe v0)))
      MAlonzo.Code.Ledger.Deleg.C_regdrep_676 v3 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe C_DRepDeposit_1528 (coe v3)) (coe v4))
      _ -> coe v2
-- Ledger.Utxo._._.certDepositᵐ
d_certDeposit'7504'_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit'7504'_1546 ~v0 ~v1 v2 v3
  = du_certDeposit'7504'_1546 v2 v3
du_certDeposit'7504'_1546 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit'7504'_1546 v0 v1
  = let v2 = coe du_certDeposit_1532 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> coe
             seq (coe v3)
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_658
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1414
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe v3))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
             (coe
                MAlonzo.Code.Axiom.Set.d_th_1414
                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._._.propDepositᵐ
d_propDeposit'7504'_1558 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_propDeposit'7504'_1558 ~v0 ~v1 v2 v3 v4
  = du_propDeposit'7504'_1558 v2 v3 v4
du_propDeposit'7504'_1558 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_propDeposit'7504'_1558 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovProposal'46'constructor_9083 v3 v4 v5 v6 v7
        -> coe
             seq (coe v3)
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_658
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1414
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_GovActionDeposit_1530 (coe v1))
                   (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._._.certRefund
d_certRefund_1566 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  Maybe T_DepositPurpose_1522
d_certRefund_1566 ~v0 ~v1 v2 = du_certRefund_1566 v2
du_certRefund_1566 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  Maybe T_DepositPurpose_1522
du_certRefund_1566 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    case coe v0 of
      MAlonzo.Code.Ledger.Deleg.C_delegate_670 v2 v3 v4 v5
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe C_CredentialDeposit_1524 (coe v2))
                    _ -> coe v1
             _ -> coe v1
      MAlonzo.Code.Ledger.Deleg.C_deregdrep_678 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe C_DRepDeposit_1528 (coe v2))
      _ -> coe v1
-- Ledger.Utxo._._.certRefundˢ
d_certRefund'738'_1574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 -> [T_DepositPurpose_1522]
d_certRefund'738'_1574 ~v0 ~v1 = du_certRefund'738'_1574
du_certRefund'738'_1574 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 -> [T_DepositPurpose_1522]
du_certRefund'738'_1574
  = coe
      MAlonzo.Code.Axiom.Set.du_partialToSet_454
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_certRefund_1566)
-- Ledger.Utxo.inInterval
d_inInterval_1578 a0 a1 a2 a3 = ()
data T_inInterval_1578
  = C_both_1586 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_1590 AgdaAny | C_upper_1594 AgdaAny | C_none_1596
-- Ledger.Utxo._=>ᵇ_
d__'61''62''7495'__1598 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1598 ~v0 v1 v2 = du__'61''62''7495'__1598 v1 v2
du__'61''62''7495'__1598 :: Bool -> Bool -> Bool
du__'61''62''7495'__1598 v0 v1
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__42 (coe v0) (coe v1)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
-- Ledger.Utxo._≤ᵇ_
d__'8804''7495'__1604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1604 ~v0 ~v1 v2 v3 = du__'8804''7495'__1604 v2 v3
du__'8804''7495'__1604 :: Integer -> Integer -> Bool
du__'8804''7495'__1604 v0 v1
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_'191'_'191''7495'_50
      (coe ())
      (coe
         MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612 (coe v0)
         (coe v1))
-- Ledger.Utxo._≥ᵇ_
d__'8805''7495'__1606 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1606 ~v0 ~v1 v2 v3 = du__'8805''7495'__1606 v2 v3
du__'8805''7495'__1606 :: Integer -> Integer -> Bool
du__'8805''7495'__1606 v0 v1
  = coe du__'8804''7495'__1604 (coe v1) (coe v0)
-- Ledger.Utxo.≟-∅ᵇ
d_'8799''45''8709''7495'_1618 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  () -> MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1618 ~v0 ~v1 v2 v3
  = du_'8799''45''8709''7495'_1618 v2 v3
du_'8799''45''8709''7495'_1618 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1618 v0 v1
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_'191'_'191''7495'_50
      (coe ())
      (coe
         MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
         (coe MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_258 (coe v0))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8709'_424
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
-- Ledger.Utxo.feesOK
d_feesOK_1622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1622 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         du__'8804''7495'__1604
         (coe d_minfee_1516 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txfee_2376
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v3))))
      (coe
         MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
         (coe
            MAlonzo.Code.Data.Bool.Base.d_not_22
            (coe
               MAlonzo.Code.Interface.Decidable.Instance.du_'191'_'191''7495'_50
               (coe ())
               (coe
                  MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_258
                     (coe
                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                        (coe
                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0)))
                        (coe
                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_Data'688'_202
                                    (coe
                                       MAlonzo.Code.Ledger.Script.d_ps_294
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                          (coe v0))))))
                           (coe
                              MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_294
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2424
                        (coe MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v3))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_'8709'_424
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1414
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
         (coe
            MAlonzo.Code.Data.Bool.Base.d__'8743'__24
            (coe
               MAlonzo.Code.Axiom.Set.du_all'7495'_1664
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
               (coe
                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                  (coe
                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                     (coe
                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010 (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_216
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010 (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_216
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0)))))
                  (coe
                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                     (coe
                        MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                        (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0)))
                     (coe
                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_Data'688'_202
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_ps_294
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                       (coe v0)))))))))
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Ledger.Address.du_isVKeyAddr'63'_116
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
               (coe du_collateralRange_1746 (coe v0) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
               (coe
                  du_isAdaOnly'7495'_1512 (coe v0)
                  (coe du_bal_1748 (coe v0) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                  (coe
                     du__'8805''7495'__1606
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
                           (coe du_bal_1748 (coe v0) (coe v3) (coe v4)))
                        (coe (100 :: Integer)))
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_txfee_2376
                           (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_collateralPercentage_294 (coe v2))))
                  (coe
                     MAlonzo.Code.Data.Bool.Base.d_not_22
                     (coe
                        MAlonzo.Code.Interface.Decidable.Instance.du_'191'_'191''7495'_50
                        (coe ())
                        (coe
                           MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                           (coe
                              MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_258
                              (coe
                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                 (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996 (coe v0))
                                 (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_collateral_2402
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v3)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'8709'_424
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1414
                                 (coe
                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))))))
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
-- Ledger.Utxo._.collateralRange
d_collateralRange_1746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_1746 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_1746 v0 v3 v4
du_collateralRange_1746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_1746 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.IsSet.du_range_480
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1088
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe
                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996 (coe v0))
                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Ledger.Transaction.d_collateral_2402
               (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v1)))))
-- Ledger.Utxo._.bal
d_bal_1748 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_1748 v0 ~v1 ~v2 v3 v4 = du_bal_1748 v0 v3 v4
du_bal_1748 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_1748 v0 v1 v2
  = coe
      du_balance_1500 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1088
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2402
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v1))))
-- Ledger.Utxo.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'DepositPurpose_1750 v0 ~v1
  = du_DecEq'45'DepositPurpose_1750 v0
du_DecEq'45'DepositPurpose_1750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'DepositPurpose_1750 v0
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v1 ->
            case coe v1 of
              C_CredentialDeposit_1524 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1524 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_PoolDeposit_1526 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_DRepDeposit_1528 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_GovActionDeposit_1530 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_PoolDeposit_1526 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1524 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_PoolDeposit_1526 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_DRepDeposit_1528 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_GovActionDeposit_1530 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRepDeposit_1528 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1524 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_PoolDeposit_1526 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_DRepDeposit_1528 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_GovActionDeposit_1530 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovActionDeposit_1530 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1524 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_PoolDeposit_1526 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_DRepDeposit_1528 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
                          C_GovActionDeposit_1530 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe
                                       MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996
                                             (coe v0)))
                                       (coe
                                          (\ v5 ->
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Utxo.HasCoin-UTxO
d_HasCoin'45'UTxO_1752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1752 v0 ~v1 = du_HasCoin'45'UTxO_1752 v0
du_HasCoin'45'UTxO_1752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1752 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_1506 (coe v0))
-- Ledger.Utxo.Deposits
d_Deposits_1754 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 -> ()
d_Deposits_1754 = erased
-- Ledger.Utxo.UTxOEnv
d_UTxOEnv_1756 a0 a1 = ()
data T_UTxOEnv_1756
  = C_UTxOEnv'46'constructor_44501 AgdaAny (Maybe AgdaAny)
                                   MAlonzo.Code.Ledger.PParams.T_PParams_210
-- Ledger.Utxo.UTxOEnv.slot
d_slot_1764 :: T_UTxOEnv_1756 -> AgdaAny
d_slot_1764 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_44501 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.ppolicy
d_ppolicy_1766 :: T_UTxOEnv_1756 -> Maybe AgdaAny
d_ppolicy_1766 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_44501 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.pparams
d_pparams_1768 ::
  T_UTxOEnv_1756 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_1768 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_44501 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState
d_UTxOState_1770 a0 a1 = ()
data T_UTxOState_1770
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_1788 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Utxo.UTxOState.utxo
d_utxo_1780 ::
  T_UTxOState_1770 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1780 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1788 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.fees
d_fees_1782 :: T_UTxOState_1770 -> Integer
d_fees_1782 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1788 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.deposits
d_deposits_1784 ::
  T_UTxOState_1770 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1784 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1788 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.donations
d_donations_1786 :: T_UTxOState_1770 -> Integer
d_donations_1786 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1788 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.⟦_⟧
d_'10214'_'10215'_1792 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  () -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1792 ~v0 ~v1 v2 = du_'10214'_'10215'_1792 v2
du_'10214'_'10215'_1792 :: AgdaAny -> AgdaAny
du_'10214'_'10215'_1792 v0 = coe v0
-- Ledger.Utxo.netId?
d_netId'63'_1802 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Interface.Decidable.Instance.T_Dec'8321'_14
d_netId'63'_1802 v0 ~v1 ~v2 v3 v4 = du_netId'63'_1802 v0 v3 v4
du_netId'63'_1802 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Interface.Decidable.Instance.T_Dec'8321'_14
du_netId'63'_1802 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.C_Dec'8321''46'constructor_103
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Interface.DecEq.d__'8799'__20
              (MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                 (coe
                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010 (coe v0)))
              (coe v2 v3) v1))
-- Ledger.Utxo.Dec-inInterval
d_Dec'45'inInterval_1814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'inInterval_1814 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_1814 v0 v2 v3
du_Dec'45'inInterval_1814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45'inInterval_1814 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                      -> let v7
                               = coe
                                   MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                                   (coe
                                      MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_260
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1280
                                            (coe v0))))
                                   (coe v5) (coe v1) in
                         let v8
                               = coe
                                   MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                                   (coe
                                      MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_260
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1280
                                            (coe v0))))
                                   (coe v1) (coe v6) in
                         case coe v7 of
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v9 v10
                             -> if coe v9
                                  then case coe v10 of
                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v11
                                           -> case coe v8 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v12 v13
                                                  -> if coe v12
                                                       then case coe v13 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v14
                                                                -> coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                     (coe v12)
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                                        (coe
                                                                           C_both_1586
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v11) (coe v14))))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v13)
                                                              (coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                 (coe v12)
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  else coe
                                         seq (coe v10)
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                            (coe v9)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> let v6
                               = coe
                                   MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                                   (coe
                                      MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_260
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1280
                                            (coe v0))))
                                   (coe v5) (coe v1) in
                         case coe v6 of
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v7 v8
                             -> if coe v7
                                  then case coe v8 of
                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v9
                                           -> coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                (coe v7)
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                   (coe C_lower_1590 v9))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  else coe
                                         seq (coe v8)
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                            (coe v7)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                      -> let v6
                               = coe
                                   MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                                   (coe
                                      MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_260
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1280
                                            (coe v0))))
                                   (coe v1) (coe v5) in
                         case coe v6 of
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v7 v8
                             -> if coe v7
                                  then case coe v8 of
                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v9
                                           -> coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                (coe v7)
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                   (coe C_upper_1594 v9))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  else coe
                                         seq (coe v8)
                                         (coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                            (coe v7)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                           (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                           (coe
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                              (coe C_none_1596))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1916 v0 ~v1
  = du_HasCoin'45'UTxOState_1916 v0
du_HasCoin'45'UTxOState_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1916 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe d_donations_1786 (coe v1)) (coe d_fees_1782 (coe v1)))
                 (coe du_cbalance_1506 (coe v0) (coe d_utxo_1780 (coe v1))))
              (coe
                 MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
                 MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3206
                 (coe du_DecEq'45'DepositPurpose_1750 (coe v0))
                 MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v2 -> v2)
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976
                    (coe d_deposits_1784 (coe v1))))))
-- Ledger.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1920 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXO'10632'__1920
  = C_UTXO'45'inductive_2098 (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                              MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                              MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34)
                             T_inInterval_1578 MAlonzo.Code.Data.Nat.Base.T__'8804'__18
                             MAlonzo.Code.Data.Nat.Base.T__'8804'__18
                             (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                              MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny)
                             (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                              MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                              MAlonzo.Code.Data.Nat.Base.T__'8804'__18)
                             (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                              MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                              MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44)
-- Ledger.Utxo._._.updateCertDeposits
d_updateCertDeposits_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_668] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1930 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_1930 v0 v2 v3 v4
du_updateCertDeposits_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_668] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1930 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__514
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'monoid_3204
             (coe du_DecEq'45'DepositPurpose_1750 (coe v0))
             (coe
                du_updateCertDeposits_1930 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1096
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1414
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (coe du_DecEq'45'DepositPurpose_1750 (coe v0)))
                (coe du_certDeposit'7504'_1546 (coe v1) (coe v4))
                (coe du_certRefund'738'_1574 v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._._.updateProposalDeposits
d_updateProposalDeposits_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1944 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1944 v0 v2 v3 v4 v5
du_updateProposalDeposits_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1944 v0 v1 v2 v3 v4
  = case coe v3 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__514
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'monoid_3204
             (coe du_DecEq'45'DepositPurpose_1750 (coe v0))
             (coe
                du_updateProposalDeposits_1944 (coe v0) (coe v1) (coe v2) (coe v6)
                (coe v4))
             (coe
                du_propDeposit'7504'_1558 (coe v1)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v6))
                (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._._.updateDeposits
d_updateDeposits_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1962 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1962 v0 v2 v3 v4
du_updateDeposits_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1962 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_1930 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2382 (coe v2))
      (coe
         du_updateProposalDeposits_1944 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2400 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2388 (coe v2))
         (coe v3))
-- Ledger.Utxo._._.depositsChange
d_depositsChange_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1968 v0 ~v1 v2 v3 v4
  = du_depositsChange_1968 v0 v2 v3 v4
du_depositsChange_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1968 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3206
         (coe du_DecEq'45'DepositPurpose_1750 (coe v0))
         MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v4 -> v4)
         (coe
            MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976
            (coe du_updateDeposits_1962 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_870
         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3206
         (coe du_DecEq'45'DepositPurpose_1750 (coe v0))
         MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v4 -> v4)
         (coe MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976 (coe v3)))
-- Ledger.Utxo._._.depositRefunds
d_depositRefunds_1976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> Integer
d_depositRefunds_1976 v0 ~v1 v2 v3 v4
  = du_depositRefunds_1976 v0 v2 v3 v4
du_depositRefunds_1976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> Integer
du_depositRefunds_1976 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_1968 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1784 (coe v2)))
-- Ledger.Utxo._._.newDeposits
d_newDeposits_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> Integer
d_newDeposits_1984 v0 ~v1 v2 v3 v4
  = du_newDeposits_1984 v0 v2 v3 v4
du_newDeposits_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> Integer
du_newDeposits_1984 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_1968 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1784 (coe v2)))
-- Ledger.Utxo._._.consumed
d_consumed_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> AgdaAny
d_consumed_1992 v0 ~v1 v2 v3 v4 = du_consumed_1992 v0 v2 v3 v4
du_consumed_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> AgdaAny
du_consumed_1992 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0)))
         (coe
            du_balance_1500 (coe v0)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1088
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0))))
               (coe d_utxo_1780 (coe v2))
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2372 (coe v3))))
         (MAlonzo.Code.Ledger.Transaction.d_mint_2378 (coe v3)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
         (coe du_depositRefunds_1976 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Utxo._._.produced
d_produced_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> AgdaAny
d_produced_2000 v0 ~v1 v2 v3 v4 = du_produced_2000 v0 v2 v3 v4
du_produced_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> AgdaAny
du_produced_2000 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
            (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0)))
            (coe du_balance_1500 (coe v0) (coe du_outs_1494 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_2376 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
            (coe du_newDeposits_1984 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2390 (coe v3)))
-- Ledger.Utxo._.body
d_body_2018 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334
d_body_2018 ~v0 ~v1 v2 = du_body_2018 v2
du_body_2018 ::
  T_GeneralizeTel_76039 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334
du_body_2018 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2436
      (coe d_'46'generalizedField'45'tx_76033 v0)
-- Ledger.Utxo._.mint
d_mint_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> AgdaAny
d_mint_2026 ~v0 ~v1 v2 = du_mint_2026 v2
du_mint_2026 :: T_GeneralizeTel_76039 -> AgdaAny
du_mint_2026 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2378
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2436
         (coe d_'46'generalizedField'45'tx_76033 v0))
-- Ledger.Utxo._.txdonation
d_txdonation_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> Integer
d_txdonation_2038 ~v0 ~v1 v2 = du_txdonation_2038 v2
du_txdonation_2038 :: T_GeneralizeTel_76039 -> Integer
du_txdonation_2038 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2390
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2436
         (coe d_'46'generalizedField'45'tx_76033 v0))
-- Ledger.Utxo._.txfee
d_txfee_2040 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> Integer
d_txfee_2040 ~v0 ~v1 v2 = du_txfee_2040 v2
du_txfee_2040 :: T_GeneralizeTel_76039 -> Integer
du_txfee_2040 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2376
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2436
         (coe d_'46'generalizedField'45'tx_76033 v0))
-- Ledger.Utxo._.txins
d_txins_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2044 ~v0 ~v1 v2 = du_txins_2044 v2
du_txins_2044 ::
  T_GeneralizeTel_76039 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2044 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2372
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2436
         (coe d_'46'generalizedField'45'tx_76033 v0))
-- Ledger.Utxo._.txouts
d_txouts_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2046 ~v0 ~v1 v2 = du_txouts_2046 v2
du_txouts_2046 ::
  T_GeneralizeTel_76039 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2046 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2374
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2436
         (coe d_'46'generalizedField'45'tx_76033 v0))
-- Ledger.Utxo._.txsize
d_txsize_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> Integer
d_txsize_2050 ~v0 ~v1 v2 = du_txsize_2050 v2
du_txsize_2050 :: T_GeneralizeTel_76039 -> Integer
du_txsize_2050 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2398
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2436
         (coe d_'46'generalizedField'45'tx_76033 v0))
-- Ledger.Utxo._.txvldt
d_txvldt_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2054 ~v0 ~v1 v2 = du_txvldt_2054 v2
du_txvldt_2054 ::
  T_GeneralizeTel_76039 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2054 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2380
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2436
         (coe d_'46'generalizedField'45'tx_76033 v0))
-- Ledger.Utxo._.txwdrls
d_txwdrls_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2058 ~v0 ~v1 v2 = du_txwdrls_2058 v2
du_txwdrls_2058 ::
  T_GeneralizeTel_76039 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2058 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2384
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2436
         (coe d_'46'generalizedField'45'tx_76033 v0))
-- Ledger.Utxo._.pparams
d_pparams_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_2062 ~v0 ~v1 v2 = du_pparams_2062 v2
du_pparams_2062 ::
  T_GeneralizeTel_76039 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
du_pparams_2062 v0
  = coe d_pparams_1768 (coe d_'46'generalizedField'45'Γ_76035 v0)
-- Ledger.Utxo._.ppolicy
d_ppolicy_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> Maybe AgdaAny
d_ppolicy_2064 ~v0 ~v1 v2 = du_ppolicy_2064 v2
du_ppolicy_2064 :: T_GeneralizeTel_76039 -> Maybe AgdaAny
du_ppolicy_2064 v0
  = coe d_ppolicy_1766 (coe d_'46'generalizedField'45'Γ_76035 v0)
-- Ledger.Utxo._.slot
d_slot_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> AgdaAny
d_slot_2066 ~v0 ~v1 v2 = du_slot_2066 v2
du_slot_2066 :: T_GeneralizeTel_76039 -> AgdaAny
du_slot_2066 v0
  = coe d_slot_1764 (coe d_'46'generalizedField'45'Γ_76035 v0)
-- Ledger.Utxo._.deposits
d_deposits_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2070 ~v0 ~v1 v2 = du_deposits_2070 v2
du_deposits_2070 ::
  T_GeneralizeTel_76039 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2070 v0
  = coe d_deposits_1784 (coe d_'46'generalizedField'45's_76037 v0)
-- Ledger.Utxo._.donations
d_donations_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> Integer
d_donations_2072 ~v0 ~v1 v2 = du_donations_2072 v2
du_donations_2072 :: T_GeneralizeTel_76039 -> Integer
du_donations_2072 v0
  = coe d_donations_1786 (coe d_'46'generalizedField'45's_76037 v0)
-- Ledger.Utxo._.fees
d_fees_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> Integer
d_fees_2074 ~v0 ~v1 v2 = du_fees_2074 v2
du_fees_2074 :: T_GeneralizeTel_76039 -> Integer
du_fees_2074 v0
  = coe d_fees_1782 (coe d_'46'generalizedField'45's_76037 v0)
-- Ledger.Utxo._.utxo
d_utxo_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_76039 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2076 ~v0 ~v1 v2 = du_utxo_2076 v2
du_utxo_2076 ::
  T_GeneralizeTel_76039 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2076 v0
  = coe d_utxo_1780 (coe d_'46'generalizedField'45's_76037 v0)
-- Ledger.Utxo.Computational-UTXO
d_Computational'45'UTXO_2100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'UTXO_2100 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_176
      (d_computeProof_2192 (coe v0) (coe v1))
-- Ledger.Utxo._.go._.pparams
d_pparams_2162 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_UTxOEnv_1756 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_2162 ~v0 v1 ~v2 ~v3 = du_pparams_2162 v1
du_pparams_2162 ::
  T_UTxOEnv_1756 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
du_pparams_2162 v0 = coe d_pparams_1768 (coe v0)
-- Ledger.Utxo._.go._.ppolicy
d_ppolicy_2164 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_UTxOEnv_1756 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 -> Maybe AgdaAny
d_ppolicy_2164 ~v0 v1 ~v2 ~v3 = du_ppolicy_2164 v1
du_ppolicy_2164 :: T_UTxOEnv_1756 -> Maybe AgdaAny
du_ppolicy_2164 v0 = coe d_ppolicy_1766 (coe v0)
-- Ledger.Utxo._.go._.slot
d_slot_2166 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_UTxOEnv_1756 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 -> AgdaAny
d_slot_2166 ~v0 v1 ~v2 ~v3 = du_slot_2166 v1
du_slot_2166 :: T_UTxOEnv_1756 -> AgdaAny
du_slot_2166 v0 = coe d_slot_1764 (coe v0)
-- Ledger.Utxo._.go._.deposits
d_deposits_2170 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_UTxOEnv_1756 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2170 ~v0 ~v1 v2 ~v3 = du_deposits_2170 v2
du_deposits_2170 ::
  T_UTxOState_1770 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2170 v0 = coe d_deposits_1784 (coe v0)
-- Ledger.Utxo._.go._.donations
d_donations_2172 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_UTxOEnv_1756 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 -> Integer
d_donations_2172 ~v0 ~v1 v2 ~v3 = du_donations_2172 v2
du_donations_2172 :: T_UTxOState_1770 -> Integer
du_donations_2172 v0 = coe d_donations_1786 (coe v0)
-- Ledger.Utxo._.go._.fees
d_fees_2174 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_UTxOEnv_1756 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 -> Integer
d_fees_2174 ~v0 ~v1 v2 ~v3 = du_fees_2174 v2
du_fees_2174 :: T_UTxOState_1770 -> Integer
du_fees_2174 v0 = coe d_fees_1782 (coe v0)
-- Ledger.Utxo._.go._.utxo
d_utxo_2176 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_UTxOEnv_1756 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2176 ~v0 ~v1 v2 ~v3 = du_utxo_2176 v2
du_utxo_2176 ::
  T_UTxOState_1770 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2176 v0 = coe d_utxo_1780 (coe v0)
-- Ledger.Utxo._.go.UTXO-premises
d_UTXO'45'premises_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_UTxOEnv_1756 ->
  T_UTxOState_1770 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2428 -> ()
d_UTXO'45'premises_2178 = erased
-- Ledger.Utxo._.go.UTXO-premises?
d_UTXO'45'premises'63'_2190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_UTxOEnv_1756 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_UTXO'45'premises'63'_2190 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__82
         (coe
            MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_258
               (coe
                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996 (coe v0))
                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Transaction.d_txins_2372
               (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4)))
            (coe
               MAlonzo.Code.Axiom.Set.du_'8709'_424
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
            (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
            (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
         (coe
            MAlonzo.Code.Axiom.Set.d_all'63'_1550
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0)))
            erased
            (\ v5 ->
               coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (coe
                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                    (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996 (coe v0))
                    (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0)))
                 v5
                 (coe
                    MAlonzo.Code.Interface.IsSet.du_dom_478
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1414
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                    (coe d_utxo_1780 (coe v3))))
            (MAlonzo.Code.Ledger.Transaction.d_txins_2372
               (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
            (coe
               du_Dec'45'inInterval_1814 (coe v0) (coe d_slot_1764 (coe v2))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txvldt_2380
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
               (coe
                  MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612
                  (coe
                     d_minfee_1516 (coe v0) (coe v1) (coe d_pparams_1768 (coe v2))
                     (coe v4))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txfee_2376
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4))))
               (coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                  (coe
                     MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                     (coe
                        MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                        (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0)))
                     (coe
                        du_consumed_1992 (coe v0) (coe d_pparams_1768 (coe v2)) (coe v3)
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4)))
                     (coe
                        du_produced_2000 (coe v0) (coe d_pparams_1768 (coe v2)) (coe v3)
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4))))
                  (coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                     (coe
                        MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                        (coe
                           MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
                           (MAlonzo.Code.Ledger.Transaction.d_mint_2378
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4))))
                        (coe (0 :: Integer)))
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_txsize_2398
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4)))
                           (coe
                              MAlonzo.Code.Ledger.PParams.d_maxTxSize_266
                              (coe d_pparams_1768 (coe v2))))
                        (coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                           (coe
                              MAlonzo.Code.Axiom.Set.d_all'63'_1550
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (coe
                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                 (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0))
                                 (coe
                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                    (coe
                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                (coe v0)))))
                                    (coe
                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                       (coe
                                          MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                (coe
                                                   MAlonzo.Code.Ledger.Script.d_Data'688'_202
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_ps_294
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                                         (coe v0))))))))))
                              erased
                              (\ v5 ->
                                 coe
                                   MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
                                   (coe
                                      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
                                      (mulInt
                                         (coe
                                            du_utxoEntrySize_1482 (coe v0)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                                         (coe
                                            MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284
                                            (coe d_pparams_1768 (coe v2)))))
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.du_getValue_2442
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_txouts_2374
                                    (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4)))))
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                 (coe
                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                    (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0))
                                    (coe
                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_Data'688'_202
                                                      (coe
                                                         MAlonzo.Code.Ledger.Script.d_ps_294
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                                            (coe v0))))))))))
                                 erased
                                 (\ v5 ->
                                    MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612
                                      (coe
                                         MAlonzo.Code.Ledger.Abstract.d_serSize_1442 v1
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.du_getValue_2442
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                                      (coe
                                         MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                         (coe d_pparams_1768 (coe v2))))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txouts_2374
                                       (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4)))))
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                    (coe
                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                   (coe
                                                      MAlonzo.Code.Ledger.Script.d_Data'688'_202
                                                      (coe
                                                         MAlonzo.Code.Ledger.Script.d_ps_294
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                                            (coe v0)))))))))
                                    erased
                                    (\ v5 ->
                                       coe
                                         MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'SumAll_176
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                         (coe
                                            (\ v6 ->
                                               coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                    (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                         (coe
                                            (\ v6 ->
                                               MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612
                                                 (coe
                                                    MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                    (coe v6))
                                                 (coe (64 :: Integer)))))
                                    (coe
                                       MAlonzo.Code.Interface.IsSet.du_range_480
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1414
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                       (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2374
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2436
                                                (coe v4))))))
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                       erased
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                          (coe
                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                      (coe v0)))))
                                          (coe
                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                             (coe
                                                MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                      (coe
                                                         MAlonzo.Code.Ledger.Script.d_Data'688'_202
                                                         (coe
                                                            MAlonzo.Code.Ledger.Script.d_ps_294
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                                               (coe v0)))))))))
                                       erased
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Ledger.Address.du_netId_92
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v5)))
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_networkId_1952
                                               (coe v0)))
                                       (coe
                                          MAlonzo.Code.Interface.IsSet.du_range_480
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1414
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2374
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2436
                                                   (coe v4))))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                       erased
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                                (coe v0))))
                                       erased
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010
                                                  (coe v0)))
                                            (coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v5))
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_networkId_1952
                                               (coe v0)))
                                       (coe
                                          MAlonzo.Code.Interface.IsSet.du_dom_478
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1414
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txwdrls_2384
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2436
                                                   (coe v4))))))))))))))))
-- Ledger.Utxo._.go.computeProof
d_computeProof_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_UTxOEnv_1756 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeProof_2192 v0 v1 v2 v3 v4
  = let v5
          = d_UTXO'45'premises'63'_2190
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    case coe v5 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v6 v7
        -> if coe v6
             then case coe v7 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v8
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                             -> case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> case coe v12 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                           -> case coe v14 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                  -> case coe v16 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                         -> case coe v18 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                -> case coe v20 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                       -> case coe v22 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                              -> case coe v24 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                     -> case coe
                                                                                               v26 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                            -> coe
                                                                                                 seq
                                                                                                 (coe
                                                                                                    v28)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                       (coe
                                                                                                          C_'10214'_'44'_'44'_'44'_'10215''7512'_1788
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                   erased
                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                         erased
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                  erased
                                                                                                                                  erased
                                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                     (coe
                                                                                                                                        d_utxo_1780
                                                                                                                                        (coe
                                                                                                                                           v3)))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                     (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                     erased
                                                                                                                                     erased
                                                                                                                                     erased
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                        erased
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                           erased
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996
                                                                                                                                                 (coe
                                                                                                                                                    v0))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994
                                                                                                                                                 (coe
                                                                                                                                                    v0)))
                                                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_txins_2372
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2436
                                                                                                                                                 (coe
                                                                                                                                                    v4)))))
                                                                                                                                     (\ v29 ->
                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                          (coe
                                                                                                                                             v29)))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                     erased
                                                                                                                                     erased
                                                                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                           erased
                                                                                                                                           erased
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Data.Product.Base.du_map_104
                                                                                                                                              (coe
                                                                                                                                                 (\ v29 ->
                                                                                                                                                    coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_txid_2400
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2436
                                                                                                                                                            (coe
                                                                                                                                                               v4)))
                                                                                                                                                      (coe
                                                                                                                                                         v29)))
                                                                                                                                              (coe
                                                                                                                                                 (\ v29
                                                                                                                                                    v30 ->
                                                                                                                                                    v30)))
                                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_txouts_2374
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2436
                                                                                                                                                    (coe
                                                                                                                                                       v4))))))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                        erased
                                                                                                                                        erased
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                           (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                           erased
                                                                                                                                           erased
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                              erased
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996
                                                                                                                                                    (coe
                                                                                                                                                       v0))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994
                                                                                                                                                    (coe
                                                                                                                                                       v0)))
                                                                                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                    erased
                                                                                                                                                    erased
                                                                                                                                                    (\ v29 ->
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                         (coe
                                                                                                                                                            v29))
                                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                          erased
                                                                                                                                                          erased
                                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                             (coe
                                                                                                                                                                d_utxo_1780
                                                                                                                                                                (coe
                                                                                                                                                                   v3)))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                                             (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                             erased
                                                                                                                                                             erased
                                                                                                                                                             erased
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                                erased
                                                                                                                                                                erased
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                                   erased
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996
                                                                                                                                                                         (coe
                                                                                                                                                                            v0))
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994
                                                                                                                                                                         (coe
                                                                                                                                                                            v0)))
                                                                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_txins_2372
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2436
                                                                                                                                                                         (coe
                                                                                                                                                                            v4)))))
                                                                                                                                                             (\ v29 ->
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                  (coe
                                                                                                                                                                     v29)))))))))
                                                                                                                                        (\ v29 ->
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                v29)))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                             erased)
                                                                                                          (coe
                                                                                                             addInt
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_txfee_2376
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2436
                                                                                                                   (coe
                                                                                                                      v4)))
                                                                                                             (coe
                                                                                                                d_fees_1782
                                                                                                                (coe
                                                                                                                   v3)))
                                                                                                          (coe
                                                                                                             du_updateCertDeposits_1930
                                                                                                             (coe
                                                                                                                v0)
                                                                                                             (coe
                                                                                                                d_pparams_1768
                                                                                                                (coe
                                                                                                                   v2))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_txcerts_2382
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2436
                                                                                                                   (coe
                                                                                                                      v4)))
                                                                                                             (coe
                                                                                                                du_updateProposalDeposits_1944
                                                                                                                (coe
                                                                                                                   v0)
                                                                                                                (coe
                                                                                                                   d_pparams_1768
                                                                                                                   (coe
                                                                                                                      v2))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txid_2400
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2436
                                                                                                                      (coe
                                                                                                                         v4)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txprop_2388
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2436
                                                                                                                      (coe
                                                                                                                         v4)))
                                                                                                                (coe
                                                                                                                   d_deposits_1784
                                                                                                                   (coe
                                                                                                                      v3))))
                                                                                                          (coe
                                                                                                             addInt
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_txdonation_2390
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2436
                                                                                                                   (coe
                                                                                                                      v4)))
                                                                                                             (coe
                                                                                                                d_donations_1786
                                                                                                                (coe
                                                                                                                   v3))))
                                                                                                       (coe
                                                                                                          C_UTXO'45'inductive_2098
                                                                                                          v11
                                                                                                          v13
                                                                                                          v15
                                                                                                          v21
                                                                                                          v23
                                                                                                          v25
                                                                                                          v27)))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v7) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._.go.completeness
d_completeness_2222 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_UTxOEnv_1756 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  T_UTxOState_1770 ->
  T__'8866'_'8640''10631'_'44'UTXO'10632'__1920 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2222 = erased
-- Ledger.Utxo._.go._.QED
d_QED_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_UTxOEnv_1756 ->
  T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  T_inInterval_1578 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Sum.Relation.Unary.All.T_All_44) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_QED_2256 = erased
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_76033 ::
  T_GeneralizeTel_76039 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2428
d_'46'generalizedField'45'tx_76033
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_76035 ::
  T_GeneralizeTel_76039 -> T_UTxOEnv_1756
d_'46'generalizedField'45'Γ_76035 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s
d_'46'generalizedField'45's_76037 ::
  T_GeneralizeTel_76039 -> T_UTxOState_1770
d_'46'generalizedField'45's_76037 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_76039 a0 a1 = ()
data T_GeneralizeTel_76039
  = C_mkGeneralizeTel_76041 MAlonzo.Code.Ledger.Transaction.T_Tx_2428
                            T_UTxOEnv_1756 T_UTxOState_1770
