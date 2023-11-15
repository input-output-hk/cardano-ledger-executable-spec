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
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Properties
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
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
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
d_Credential_70 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_70 = erased
-- _.DCert
d_DCert_72 a0 = ()
-- _.Carrier
d_Carrier_190 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Carrier_190 = erased
-- _.GovActionID
d_GovActionID_202 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_202 = erased
-- _.GovProposal
d_GovProposal_208 a0 = ()
-- _.MemoryEstimate
d_MemoryEstimate_244 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_244 = erased
-- _.Network
d_Network_248 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Network_248 = erased
-- _.PParams
d_PParams_276 a0 = ()
-- _.ScriptHash
d_ScriptHash_332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_332 = erased
-- _.Slot
d_Slot_340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_340 = erased
-- _.Tx
d_Tx_370 a0 = ()
-- _.TxBody
d_TxBody_372 a0 = ()
-- _.TxOut
d_TxOut_378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxOut_378 = erased
-- _.UTxO
d_UTxO_382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_382 = erased
-- _.Carrier
d_Carrier_398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Carrier_398 = erased
-- _.coin
d_coin_424 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_424 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
-- _.getValue
d_getValue_466 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_466 ~v0 = du_getValue_466
du_getValue_466 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_466
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2450
-- _.inject
d_inject_476 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny
d_inject_476 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
-- _.netId
d_netId_518 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_518 ~v0 ~v1 ~v2 ~v3 = du_netId_518
du_netId_518 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_518 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.Utxo.HasCoin-Map
d_HasCoin'45'Map_1428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1428 ~v0 ~v1 ~v2 v3 = du_HasCoin'45'Map_1428 v3
du_HasCoin'45'Map_1428 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1428 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_886
              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196
              v0 MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v2 -> v2)
              (coe
                 MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976 (coe v1))))
-- Ledger.Utxo.isPhaseTwoScriptAddress
d_isPhaseTwoScriptAddress_1432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isPhaseTwoScriptAddress_1432 v0 ~v1 v2 v3
  = du_isPhaseTwoScriptAddress_1432 v0 v2 v3
du_isPhaseTwoScriptAddress_1432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isPhaseTwoScriptAddress_1432 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Address.du_isScriptAddr'63'_126 (coe v2) in
    coe
      (case coe v3 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
           -> if coe v4
                then case coe v5 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                         -> let v7
                                  = MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2474
                                      (coe v0)
                                      (coe
                                         MAlonzo.Code.Ledger.Address.du_getScriptHash_134 (coe v2)
                                         (coe v6))
                                      (coe v1) in
                            coe
                              (case coe v7 of
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                                   -> coe
                                        MAlonzo.Code.Ledger.Transaction.du_isP2Script_2486 (coe v8)
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                   -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe seq (coe v5) (coe v4)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.totExUnits
d_totExUnits_1470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> AgdaAny
d_totExUnits_1470 v0 ~v1 v2 = du_totExUnits_1470 v0 v2
du_totExUnits_1470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> AgdaAny
du_totExUnits_1470 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504'_878
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552 (coe v0))))
      (coe
         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000 (coe v0)))
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
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                        (coe v0))))))
         (coe
            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_294
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552 (coe v0)))))
      (coe
         (\ v2 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2432
            (coe MAlonzo.Code.Ledger.Transaction.d_wits_2446 (coe v1))))
-- Ledger.Utxo.utxoEntrySizeWithoutVal
d_utxoEntrySizeWithoutVal_1480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 -> Integer
d_utxoEntrySizeWithoutVal_1480 ~v0 ~v1
  = du_utxoEntrySizeWithoutVal_1480
du_utxoEntrySizeWithoutVal_1480 :: Integer
du_utxoEntrySizeWithoutVal_1480 = coe (8 :: Integer)
-- Ledger.Utxo.utxoEntrySize
d_utxoEntrySize_1482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
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
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.du_getValue_2450 (coe v1)))
-- Ledger.Utxo._._.outs
d_outs_1494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1494 ~v0 ~v1 v2 = du_outs_1494 v2
du_outs_1494 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
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
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2408 (coe v0))
              (coe v1)))
      (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2382 (coe v0))
-- Ledger.Utxo._._.balance
d_balance_1500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1500 v0 ~v1 v2 = du_balance_1500 v0 v2
du_balance_1500 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1500 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_886
      (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0)))
      (coe
         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002 (coe v0))
         (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000 (coe v0)))
      (coe
         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
         (coe
            MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
               (coe
                  MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_216
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0))))
            (coe
               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
               (coe
                  MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016 (coe v0)))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_216
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0)))))
         (coe
            MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0)))
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
                              MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                              (coe v0)))))))))
      (coe MAlonzo.Code.Ledger.Transaction.du_getValue_2450)
      (coe MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976 (coe v1))
-- Ledger.Utxo._._.cbalance
d_cbalance_1504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1504 v0 ~v1 v2 = du_cbalance_1504 v0 v2
du_cbalance_1504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1504 v0 v1
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
      (coe du_balance_1500 (coe v0) (coe v1))
-- Ledger.Utxo._._.coinPolicies
d_coinPolicies_1508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 -> [AgdaAny]
d_coinPolicies_1508 v0 ~v1 = du_coinPolicies_1508 v0
du_coinPolicies_1508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny]
du_coinPolicies_1508 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214
      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
         (1 :: Integer))
-- Ledger.Utxo._._.isAdaOnlyᵇ
d_isAdaOnly'7495'_1510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  AgdaAny -> Bool
d_isAdaOnly'7495'_1510 v0 ~v1 v2 = du_isAdaOnly'7495'_1510 v0 v2
du_isAdaOnly'7495'_1510 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Bool
du_isAdaOnly'7495'_1510 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_106 ()
      erased
      (coe
         MAlonzo.Code.Axiom.Set.du__'8801''7497''63'__1588
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0)) v1)
         (coe du_coinPolicies_1508 (coe v0)))
-- Ledger.Utxo._._.minfee
d_minfee_1514 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 -> Integer
d_minfee_1514 v0 v1 v2 v3
  = coe
      addInt
      (coe
         addInt
         (coe
            MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1442 v1
            (MAlonzo.Code.Ledger.PParams.d_prices_290 (coe v2))
            (coe du_totExUnits_1470 (coe v0) (coe v3)))
         (coe MAlonzo.Code.Ledger.PParams.d_b_282 (coe v2)))
      (coe
         mulInt (coe MAlonzo.Code.Ledger.PParams.d_a_280 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txsize_2406
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v3))))
-- Ledger.Utxo._._.DepositPurpose
d_DepositPurpose_1520 a0 a1 = ()
data T_DepositPurpose_1520
  = C_CredentialDeposit_1522 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_PoolDeposit_1524 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_DRepDeposit_1526 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GovActionDeposit_1528 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._._.certDeposit
d_certDeposit_1530 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_676 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1530 ~v0 ~v1 v2 v3 = du_certDeposit_1530 v2 v3
du_certDeposit_1530 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_676 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit_1530 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v1 of
         MAlonzo.Code.Ledger.Deleg.C_delegate_678 v3 v4 v5 v6
           -> coe
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_CredentialDeposit_1522 (coe v3)) (coe v6))
         MAlonzo.Code.Ledger.Deleg.C_regpool_680 v3 v4
           -> coe
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_PoolDeposit_1524 (coe v3))
                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_286 (coe v0)))
         MAlonzo.Code.Ledger.Deleg.C_regdrep_684 v3 v4 v5
           -> coe
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_DRepDeposit_1526 (coe v3)) (coe v4))
         _ -> coe v2)
-- Ledger.Utxo._._.certDepositᵐ
d_certDeposit'7504'_1544 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit'7504'_1544 ~v0 ~v1 v2 v3
  = du_certDeposit'7504'_1544 v2 v3
du_certDeposit'7504'_1544 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposit'7504'_1544 v0 v1
  = let v2 = coe du_certDeposit_1530 (coe v0) (coe v1) in
    coe
      (case coe v2 of
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
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo._._.propDepositᵐ
d_propDeposit'7504'_1556 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_propDeposit'7504'_1556 ~v0 ~v1 v2 v3 v4
  = du_propDeposit'7504'_1556 v2 v3 v4
du_propDeposit'7504'_1556 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_propDeposit'7504'_1556 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovProposal'46'constructor_9155 v3 v4 v5 v6 v7
        -> coe
             seq (coe v3)
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_658
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1414
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe C_GovActionDeposit_1528 (coe v1))
                   (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304 (coe v0))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._._.certRefund
d_certRefund_1564 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_676 ->
  Maybe T_DepositPurpose_1520
d_certRefund_1564 ~v0 ~v1 v2 = du_certRefund_1564 v2
du_certRefund_1564 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_676 ->
  Maybe T_DepositPurpose_1520
du_certRefund_1564 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Deleg.C_delegate_678 v2 v3 v4 v5
           -> case coe v3 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe C_CredentialDeposit_1522 (coe v2))
                       _ -> coe v1
                _ -> coe v1
         MAlonzo.Code.Ledger.Deleg.C_deregdrep_686 v2
           -> coe
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                (coe C_DRepDeposit_1526 (coe v2))
         _ -> coe v1)
-- Ledger.Utxo._._.certRefundˢ
d_certRefund'738'_1572 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_676 -> [T_DepositPurpose_1520]
d_certRefund'738'_1572 ~v0 ~v1 = du_certRefund'738'_1572
du_certRefund'738'_1572 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_676 -> [T_DepositPurpose_1520]
du_certRefund'738'_1572
  = coe
      MAlonzo.Code.Axiom.Set.du_partialToSet_454
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe du_certRefund_1564)
-- Ledger.Utxo.inInterval
d_inInterval_1576 a0 a1 a2 a3 = ()
data T_inInterval_1576
  = C_both_1584 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_lower_1588 AgdaAny | C_upper_1592 AgdaAny | C_none_1594
-- Ledger.Utxo._=>ᵇ_
d__'61''62''7495'__1596 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  Bool -> Bool -> Bool
d__'61''62''7495'__1596 ~v0 v1 v2 = du__'61''62''7495'__1596 v1 v2
du__'61''62''7495'__1596 :: Bool -> Bool -> Bool
du__'61''62''7495'__1596 v0 v1
  = coe
      MAlonzo.Code.Data.Bool.Base.du_if_then_else__42 (coe v0) (coe v1)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
-- Ledger.Utxo._≤ᵇ_
d__'8804''7495'__1602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  Integer -> Integer -> Bool
d__'8804''7495'__1602 ~v0 ~v1 v2 v3 = du__'8804''7495'__1602 v2 v3
du__'8804''7495'__1602 :: Integer -> Integer -> Bool
du__'8804''7495'__1602 v0 v1
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_'191'_'191''7495'_56
      (coe ())
      (coe
         MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664 (coe v0)
         (coe v1))
-- Ledger.Utxo._≥ᵇ_
d__'8805''7495'__1604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  Integer -> Integer -> Bool
d__'8805''7495'__1604 ~v0 ~v1 v2 v3 = du__'8805''7495'__1604 v2 v3
du__'8805''7495'__1604 :: Integer -> Integer -> Bool
du__'8805''7495'__1604 v0 v1
  = coe du__'8804''7495'__1602 (coe v1) (coe v0)
-- Ledger.Utxo.≟-∅ᵇ
d_'8799''45''8709''7495'_1616 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  () -> MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> [AgdaAny] -> Bool
d_'8799''45''8709''7495'_1616 ~v0 ~v1 v2 v3
  = du_'8799''45''8709''7495'_1616 v2 v3
du_'8799''45''8709''7495'_1616 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> [AgdaAny] -> Bool
du_'8799''45''8709''7495'_1616 v0 v1
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_'191'_'191''7495'_56
      (coe ())
      (coe
         MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
         (coe MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_258 (coe v0))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8709'_424
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
-- Ledger.Utxo.feesOK
d_feesOK_1620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool
d_feesOK_1620 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Bool.Base.d__'8743'__24
      (coe
         du__'8804''7495'__1602
         (coe d_minfee_1514 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txfee_2384
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v3))))
      (coe
         MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
         (coe
            MAlonzo.Code.Data.Bool.Base.d_not_22
            (coe
               MAlonzo.Code.Interface.Decidable.Instance.du_'191'_'191''7495'_56
               (coe ())
               (coe
                  MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_258
                     (coe
                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                        (coe
                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000 (coe v0)))
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
                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                          (coe v0))))))
                           (coe
                              MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_ps_294
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                    (coe v0)))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2432
                        (coe MAlonzo.Code.Ledger.Transaction.d_wits_2446 (coe v3))))
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
                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016 (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_216
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016 (coe v0)))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_216
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0)))))
                  (coe
                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                     (coe
                        MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                        (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0)))
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
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                       (coe v0)))))))))
               (coe
                  (\ v5 ->
                     coe
                       MAlonzo.Code.Ledger.Address.du_isVKeyAddr'63'_116
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))
               (coe du_collateralRange_1744 (coe v0) (coe v3) (coe v4)))
            (coe
               MAlonzo.Code.Data.Bool.Base.d__'8743'__24
               (coe
                  du_isAdaOnly'7495'_1510 (coe v0)
                  (coe du_bal_1746 (coe v0) (coe v3) (coe v4)))
               (coe
                  MAlonzo.Code.Data.Bool.Base.d__'8743'__24
                  (coe
                     du__'8805''7495'__1604
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
                           (coe du_bal_1746 (coe v0) (coe v3) (coe v4)))
                        (coe (100 :: Integer)))
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Ledger.Transaction.d_txfee_2384
                           (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v3)))
                        (coe
                           MAlonzo.Code.Ledger.PParams.d_collateralPercentage_294 (coe v2))))
                  (coe
                     MAlonzo.Code.Data.Bool.Base.d_not_22
                     (coe
                        MAlonzo.Code.Interface.Decidable.Instance.du_'191'_'191''7495'_56
                        (coe ())
                        (coe
                           MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                           (coe
                              MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_258
                              (coe
                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                 (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002 (coe v0))
                                 (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000 (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_collateral_2410
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v3)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'8709'_424
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1414
                                 (coe
                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))))))
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
-- Ledger.Utxo._.collateralRange
d_collateralRange_1744 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralRange_1744 v0 ~v1 ~v2 v3 v4
  = du_collateralRange_1744 v0 v3 v4
du_collateralRange_1744 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateralRange_1744 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.IsSet.du_range_480
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2410
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v1))))
-- Ledger.Utxo._.bal
d_bal_1746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_bal_1746 v0 ~v1 ~v2 v3 v4 = du_bal_1746 v0 v3 v4
du_bal_1746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_bal_1746 v0 v1 v2
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
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002 (coe v0))
               (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000 (coe v0))))
         (coe v2)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_collateral_2410
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v1))))
-- Ledger.Utxo.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1748 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'DepositPurpose_1748 v0 ~v1
  = du_DecEq'45'DepositPurpose_1748 v0
du_DecEq'45'DepositPurpose_1748 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'DepositPurpose_1748 v0
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v1 ->
            case coe v1 of
              C_CredentialDeposit_1522 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1522 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
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
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_PoolDeposit_1524 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_1526 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_1528 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_PoolDeposit_1524 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1522 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_1524 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
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
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_DRepDeposit_1526 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_1528 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_DRepDeposit_1526 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1522 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_1524 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_1526 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
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
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                (coe v0))))
                                       (coe v4) (coe v2)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_GovActionDeposit_1528 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovActionDeposit_1528 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_CredentialDeposit_1522 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_PoolDeposit_1524 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_DRepDeposit_1526 v4
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovActionDeposit_1528 v4
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
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
                                          MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002
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
d_HasCoin'45'UTxO_1750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxO_1750 v0 ~v1 = du_HasCoin'45'UTxO_1750 v0
du_HasCoin'45'UTxO_1750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxO_1750 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe du_cbalance_1504 (coe v0))
-- Ledger.Utxo.Deposits
d_Deposits_1752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 -> ()
d_Deposits_1752 = erased
-- Ledger.Utxo.UTxOEnv
d_UTxOEnv_1754 a0 a1 = ()
data T_UTxOEnv_1754
  = C_UTxOEnv'46'constructor_38939 AgdaAny (Maybe AgdaAny)
                                   MAlonzo.Code.Ledger.PParams.T_PParams_210
-- Ledger.Utxo.UTxOEnv.slot
d_slot_1762 :: T_UTxOEnv_1754 -> AgdaAny
d_slot_1762 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_38939 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.ppolicy
d_ppolicy_1764 :: T_UTxOEnv_1754 -> Maybe AgdaAny
d_ppolicy_1764 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_38939 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOEnv.pparams
d_pparams_1766 ::
  T_UTxOEnv_1754 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_1766 v0
  = case coe v0 of
      C_UTxOEnv'46'constructor_38939 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState
d_UTxOState_1768 a0 a1 = ()
data T_UTxOState_1768
  = C_'10214'_'44'_'44'_'44'_'10215''7512'_1786 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                Integer
-- Ledger.Utxo.UTxOState.utxo
d_utxo_1778 ::
  T_UTxOState_1768 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1778 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1786 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.fees
d_fees_1780 :: T_UTxOState_1768 -> Integer
d_fees_1780 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1786 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.deposits
d_deposits_1782 ::
  T_UTxOState_1768 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1782 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1786 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.UTxOState.donations
d_donations_1784 :: T_UTxOState_1768 -> Integer
d_donations_1784 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7512'_1786 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.⟦_⟧
d_'10214'_'10215'_1790 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  () -> AgdaAny -> AgdaAny
d_'10214'_'10215'_1790 ~v0 ~v1 v2 = du_'10214'_'10215'_1790 v2
du_'10214'_'10215'_1790 :: AgdaAny -> AgdaAny
du_'10214'_'10215'_1790 v0 = coe v0
-- Ledger.Utxo.netId?
d_netId'63'_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Interface.Decidable.Instance.T_Dec'8321'_20
d_netId'63'_1800 v0 ~v1 ~v2 v3 v4 = du_netId'63'_1800 v0 v3 v4
du_netId'63'_1800 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Interface.Decidable.Instance.T_Dec'8321'_20
du_netId'63'_1800 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.C_Dec'8321''46'constructor_153
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Interface.DecEq.d__'8799'__20
              (MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                 (coe
                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016 (coe v0)))
              (coe v2 v3) v1))
-- Ledger.Utxo.Dec-inInterval
d_Dec'45'inInterval_1812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'inInterval_1812 v0 ~v1 v2 v3
  = du_Dec'45'inInterval_1812 v0 v2 v3
du_Dec'45'inInterval_1812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45'inInterval_1812 v0 v1 v2
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
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1286
                                            (coe v0))))
                                   (coe v5) (coe v1) in
                         coe
                           (let v8
                                  = coe
                                      MAlonzo.Code.Interface.HasOrder.du__'8804''63'__60
                                      (coe
                                         MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_260
                                         (coe
                                            MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_epochStructure_1286
                                               (coe v0))))
                                      (coe v1) (coe v6) in
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
                                                                                 C_both_1584
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
                                   (coe
                                      MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_260
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1286
                                            (coe v0))))
                                   (coe v5) (coe v1) in
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
                                                      (coe C_lower_1588 v9))
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
                                   (coe
                                      MAlonzo.Code.Interface.HasOrder.d_dec'45''8804'_260
                                      (coe
                                         MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1286
                                            (coe v0))))
                                   (coe v1) (coe v5) in
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
                                                      (coe C_upper_1592 v9))
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
                              (coe C_none_1594))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1914 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1914 v0 ~v1
  = du_HasCoin'45'UTxOState_1914 v0
du_HasCoin'45'UTxOState_1914 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1914 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt (coe d_donations_1784 (coe v1)) (coe d_fees_1780 (coe v1)))
                 (coe du_cbalance_1504 (coe v0) (coe d_utxo_1778 (coe v1))))
              (coe
                 MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_886
                 MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196
                 (coe du_DecEq'45'DepositPurpose_1748 (coe v0))
                 MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v2 -> v2)
                 (coe
                    MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976
                    (coe d_deposits_1782 (coe v1))))))
-- Ledger.Utxo._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1918 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXO'10632'__1918
  = C_UTXO'45'inductive_2096 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxo._._.updateCertDeposits
d_updateCertDeposits_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_676] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1928 v0 ~v1 v2 v3 v4
  = du_updateCertDeposits_1928 v0 v2 v3 v4
du_updateCertDeposits_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_676] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1928 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__514
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'monoid_3194
             (coe du_DecEq'45'DepositPurpose_1748 (coe v0))
             (coe
                du_updateCertDeposits_1928 (coe v0) (coe v1) (coe v5) (coe v3))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1096
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1414
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe
                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (coe du_DecEq'45'DepositPurpose_1748 (coe v0)))
                (coe du_certDeposit'7504'_1544 (coe v1) (coe v4))
                (coe du_certRefund'738'_1572 v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._._.updateProposalDeposits
d_updateProposalDeposits_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_698] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1942 v0 ~v1 v2 v3 v4 v5
  = du_updateProposalDeposits_1942 v0 v2 v3 v4 v5
du_updateProposalDeposits_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_698] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1942 v0 v1 v2 v3 v4
  = case coe v3 of
      [] -> coe v4
      (:) v5 v6
        -> coe
             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__514
             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
             MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'monoid_3194
             (coe du_DecEq'45'DepositPurpose_1748 (coe v0))
             (coe
                du_updateProposalDeposits_1942 (coe v0) (coe v1) (coe v2) (coe v6)
                (coe v4))
             (coe
                du_propDeposit'7504'_1556 (coe v1)
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v6))
                (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo._._.updateDeposits
d_updateDeposits_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1960 v0 ~v1 v2 v3 v4
  = du_updateDeposits_1960 v0 v2 v3 v4
du_updateDeposits_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1960 v0 v1 v2 v3
  = coe
      du_updateCertDeposits_1928 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2390 (coe v2))
      (coe
         du_updateProposalDeposits_1942 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Transaction.d_txid_2408 (coe v2))
         (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2396 (coe v2))
         (coe v3))
-- Ledger.Utxo._._.depositsChange
d_depositsChange_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_depositsChange_1966 v0 ~v1 v2 v3 v4
  = du_depositsChange_1966 v0 v2 v3 v4
du_depositsChange_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_depositsChange_1966 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Base.d__'8854'__258
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_886
         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196
         (coe du_DecEq'45'DepositPurpose_1748 (coe v0))
         MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v4 -> v4)
         (coe
            MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976
            (coe du_updateDeposits_1960 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''7515'_886
         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196
         (coe du_DecEq'45'DepositPurpose_1748 (coe v0))
         MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30 (\ v4 -> v4)
         (coe MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_976 (coe v3)))
-- Ledger.Utxo._._.depositRefunds
d_depositRefunds_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1768 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> Integer
d_depositRefunds_1974 v0 ~v1 v2 v3 v4
  = du_depositRefunds_1974 v0 v2 v3 v4
du_depositRefunds_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1768 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> Integer
du_depositRefunds_1974 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_negPart_24
      (coe
         du_depositsChange_1966 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1782 (coe v2)))
-- Ledger.Utxo._._.newDeposits
d_newDeposits_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1768 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> Integer
d_newDeposits_1982 v0 ~v1 v2 v3 v4
  = du_newDeposits_1982 v0 v2 v3 v4
du_newDeposits_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1768 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> Integer
du_newDeposits_1982 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Integer.Ext.d_posPart_10
      (coe
         du_depositsChange_1966 (coe v0) (coe v1) (coe v3)
         (coe d_deposits_1782 (coe v2)))
-- Ledger.Utxo._._.consumed
d_consumed_1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1768 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> AgdaAny
d_consumed_1990 v0 ~v1 v2 v3 v4 = du_consumed_1990 v0 v2 v3 v4
du_consumed_1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1768 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> AgdaAny
du_consumed_1990 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0)))
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000 (coe v0))))
               (coe d_utxo_1778 (coe v2))
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2380 (coe v3))))
         (MAlonzo.Code.Ledger.Transaction.d_mint_2386 (coe v3)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
         (coe du_depositRefunds_1974 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Utxo._._.produced
d_produced_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1768 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> AgdaAny
d_produced_1998 v0 ~v1 v2 v3 v4 = du_produced_1998 v0 v2 v3 v4
du_produced_1998 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  T_UTxOState_1768 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> AgdaAny
du_produced_1998 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0)))
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
            (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
            (MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
               (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0)))
            (coe du_balance_1500 (coe v0) (coe du_outs_1494 (coe v3)))
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
               (MAlonzo.Code.Ledger.Transaction.d_txfee_2384 (coe v3))))
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
            (coe du_newDeposits_1982 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txdonation_2398 (coe v3)))
-- Ledger.Utxo._.body
d_body_2016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342
d_body_2016 ~v0 ~v1 v2 = du_body_2016 v2
du_body_2016 ::
  T_GeneralizeTel_70645 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342
du_body_2016 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2444
      (coe d_'46'generalizedField'45'tx_70639 v0)
-- Ledger.Utxo._.mint
d_mint_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> AgdaAny
d_mint_2024 ~v0 ~v1 v2 = du_mint_2024 v2
du_mint_2024 :: T_GeneralizeTel_70645 -> AgdaAny
du_mint_2024 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2386
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_70639 v0))
-- Ledger.Utxo._.txdonation
d_txdonation_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> Integer
d_txdonation_2036 ~v0 ~v1 v2 = du_txdonation_2036 v2
du_txdonation_2036 :: T_GeneralizeTel_70645 -> Integer
du_txdonation_2036 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2398
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_70639 v0))
-- Ledger.Utxo._.txfee
d_txfee_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> Integer
d_txfee_2038 ~v0 ~v1 v2 = du_txfee_2038 v2
du_txfee_2038 :: T_GeneralizeTel_70645 -> Integer
du_txfee_2038 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2384
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_70639 v0))
-- Ledger.Utxo._.txins
d_txins_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2042 ~v0 ~v1 v2 = du_txins_2042 v2
du_txins_2042 ::
  T_GeneralizeTel_70645 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2042 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2380
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_70639 v0))
-- Ledger.Utxo._.txouts
d_txouts_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2044 ~v0 ~v1 v2 = du_txouts_2044 v2
du_txouts_2044 ::
  T_GeneralizeTel_70645 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2044 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2382
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_70639 v0))
-- Ledger.Utxo._.txsize
d_txsize_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> Integer
d_txsize_2048 ~v0 ~v1 v2 = du_txsize_2048 v2
du_txsize_2048 :: T_GeneralizeTel_70645 -> Integer
du_txsize_2048 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txsize_2406
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_70639 v0))
-- Ledger.Utxo._.txvldt
d_txvldt_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2052 ~v0 ~v1 v2 = du_txvldt_2052 v2
du_txvldt_2052 ::
  T_GeneralizeTel_70645 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2052 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2388
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_70639 v0))
-- Ledger.Utxo._.txwdrls
d_txwdrls_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2056 ~v0 ~v1 v2 = du_txwdrls_2056 v2
du_txwdrls_2056 ::
  T_GeneralizeTel_70645 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2056 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_70639 v0))
-- Ledger.Utxo._.pparams
d_pparams_2060 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_2060 ~v0 ~v1 v2 = du_pparams_2060 v2
du_pparams_2060 ::
  T_GeneralizeTel_70645 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
du_pparams_2060 v0
  = coe d_pparams_1766 (coe d_'46'generalizedField'45'Γ_70641 v0)
-- Ledger.Utxo._.ppolicy
d_ppolicy_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> Maybe AgdaAny
d_ppolicy_2062 ~v0 ~v1 v2 = du_ppolicy_2062 v2
du_ppolicy_2062 :: T_GeneralizeTel_70645 -> Maybe AgdaAny
du_ppolicy_2062 v0
  = coe d_ppolicy_1764 (coe d_'46'generalizedField'45'Γ_70641 v0)
-- Ledger.Utxo._.slot
d_slot_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> AgdaAny
d_slot_2064 ~v0 ~v1 v2 = du_slot_2064 v2
du_slot_2064 :: T_GeneralizeTel_70645 -> AgdaAny
du_slot_2064 v0
  = coe d_slot_1762 (coe d_'46'generalizedField'45'Γ_70641 v0)
-- Ledger.Utxo._.deposits
d_deposits_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2068 ~v0 ~v1 v2 = du_deposits_2068 v2
du_deposits_2068 ::
  T_GeneralizeTel_70645 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2068 v0
  = coe d_deposits_1782 (coe d_'46'generalizedField'45's_70643 v0)
-- Ledger.Utxo._.donations
d_donations_2070 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> Integer
d_donations_2070 ~v0 ~v1 v2 = du_donations_2070 v2
du_donations_2070 :: T_GeneralizeTel_70645 -> Integer
du_donations_2070 v0
  = coe d_donations_1784 (coe d_'46'generalizedField'45's_70643 v0)
-- Ledger.Utxo._.fees
d_fees_2072 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> Integer
d_fees_2072 ~v0 ~v1 v2 = du_fees_2072 v2
du_fees_2072 :: T_GeneralizeTel_70645 -> Integer
du_fees_2072 v0
  = coe d_fees_1780 (coe d_'46'generalizedField'45's_70643 v0)
-- Ledger.Utxo._.utxo
d_utxo_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_70645 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2074 ~v0 ~v1 v2 = du_utxo_2074 v2
du_utxo_2074 ::
  T_GeneralizeTel_70645 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2074 v0
  = coe d_utxo_1778 (coe d_'46'generalizedField'45's_70643 v0)
-- Ledger.Utxo.UTXO-premises
d_UTXO'45'premises_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  T_UTxOEnv_1754 ->
  T_UTxOState_1768 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXO'45'premises_2130 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__88
            (coe
               MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
               (coe
                  MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_258
                  (coe
                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_txins_2380
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_424
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1414
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
               (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
               (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
            (coe
               MAlonzo.Code.Axiom.Set.d_all'63'_1550
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (coe
                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002 (coe v0))
                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000 (coe v0)))
               erased
               (\ v5 ->
                  coe
                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (coe
                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                       (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002 (coe v0))
                       (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000 (coe v0)))
                    v5
                    (coe
                       MAlonzo.Code.Interface.IsSet.du_dom_478
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1414
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                       (coe d_utxo_1778 (coe v4))))
               (MAlonzo.Code.Ledger.Transaction.d_txins_2380
                  (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v2))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
               (coe
                  du_Dec'45'inInterval_1812 (coe v0) (coe d_slot_1762 (coe v3))
                  (coe
                     MAlonzo.Code.Ledger.Transaction.d_txvldt_2388
                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v2))))
               (coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                  (coe
                     MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                     (coe
                        d_minfee_1514 (coe v0) (coe v1) (coe d_pparams_1766 (coe v3))
                        (coe v2))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txfee_2384
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v2))))
                  (coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                     (coe
                        MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                        (coe
                           MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                           (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0)))
                        (coe
                           du_consumed_1990 (coe v0) (coe d_pparams_1766 (coe v3)) (coe v4)
                           (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v2)))
                        (coe
                           du_produced_1998 (coe v0) (coe d_pparams_1766 (coe v3)) (coe v4)
                           (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v2))))
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                        (coe
                           MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                           (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                           (coe
                              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
                              (MAlonzo.Code.Ledger.Transaction.d_mint_2386
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v2))))
                           (coe (0 :: Integer)))
                        (coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txsize_2406
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v2)))
                              (coe
                                 MAlonzo.Code.Ledger.PParams.d_maxTxSize_266
                                 (coe d_pparams_1766 (coe v3))))
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                 (coe
                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000 (coe v0))
                                    (coe
                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                   (coe v0)))))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                          (coe
                                             MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                            (coe v0))))))))))
                                 erased
                                 (\ v5 ->
                                    coe
                                      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
                                      (coe
                                         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
                                         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                            (coe v0))
                                         (mulInt
                                            (coe
                                               du_utxoEntrySize_1482 (coe v0)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v5)))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284
                                               (coe d_pparams_1766 (coe v3)))))
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                       (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v2)))))
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                    (coe
                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                          (coe
                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                      (coe v0)))))
                                          (coe
                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                             (coe
                                                MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                               (coe v0))))))))))
                                    erased
                                    (\ v5 ->
                                       MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                         (coe
                                            MAlonzo.Code.Ledger.Abstract.d_serSize_1444 v1
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v5))))
                                         (coe
                                            MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                            (coe d_pparams_1766 (coe v3))))
                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_body_2444
                                             (coe v2)))))
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                (coe
                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                      (coe v0)))))
                                          (coe
                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                             (coe
                                                MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                               (coe v0)))))))))
                                       erased
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'SumAll_182
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                            (coe
                                               (\ v6 ->
                                                  coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                            (coe
                                               (\ v6 ->
                                                  MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
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
                                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                (coe v2)))))
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                   (coe
                                                      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                         (coe v0)))))
                                             (coe
                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                (coe
                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                  (coe v0)))))))))
                                          erased
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Address.du_netId_92
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v5)))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                  (coe v0)))
                                          (coe
                                             MAlonzo.Code.Interface.IsSet.du_range_480
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1414
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                   (coe v2)))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                          erased
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                   (coe v0))))
                                          erased
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                     (coe v0)))
                                               (coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v5))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                  (coe v0)))
                                          (coe
                                             MAlonzo.Code.Interface.IsSet.du_dom_478
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1414
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                   (coe v2))))))))))))))))
-- Ledger.Utxo.dm
d_dm_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  () ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_dm_2136 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 = du_dm_2136 v4 v5
du_dm_2136 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_dm_2136 v0 v1
  = let v2
          = case coe v1 of
              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
                -> coe
                     seq (coe v2)
                     (coe
                        seq (coe v3)
                        (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased))
              _ -> MAlonzo.RTE.mazUnreachableError in
    coe
      (case coe v0 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
           -> let v5
                    = case coe v1 of
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                          -> case coe v5 of
                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                                 -> case coe v6 of
                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
                                      _ -> coe v2
                               _ -> coe v2
                        _ -> MAlonzo.RTE.mazUnreachableError in
              coe
                (if coe v3
                   then case coe v1 of
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
                            -> if coe v6
                                 then case coe v4 of
                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                                          -> case coe v7 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                                 -> coe
                                                      MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
                                               _ -> coe v5
                                        _ -> coe v5
                                 else (case coe v7 of
                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                           -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 erased
                                         _ -> coe v5)
                          _ -> MAlonzo.RTE.mazUnreachableError
                   else (case coe v4 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                             -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
                           _ -> coe v5))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.Computational-UTXO
d_Computational'45'UTXO_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'UTXO_2152 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_176
      (d_computeProof_2170 (coe v0) (coe v1))
-- Ledger.Utxo._.Go.computeProof
d_computeProof_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_UTxOEnv_1754 ->
  T_UTxOState_1768 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeProof_2170 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 d_UTXO'45'premises_2130 (coe v0) (coe v1) (coe v4) (coe v2)
                 (coe v3)) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                 (coe
                                    C_'10214'_'44'_'44'_'44'_'10215''7512'_1786
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
                                                            erased erased
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe d_utxo_1778 (coe v3)))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                               (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1414
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                               erased erased erased
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                  (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1414
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                  erased erased
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                     erased
                                                                     (coe
                                                                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002
                                                                           (coe v0))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                           (coe v0)))
                                                                     (MAlonzo.Code.Ledger.Transaction.d_txins_2380
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                           (coe v4)))))
                                                               (\ v9 ->
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v9)))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_specification_174
                                                               (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                               erased erased
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                     erased erased
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_map_128
                                                                        (coe
                                                                           (\ v9 ->
                                                                              coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_txid_2408
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                      (coe v4)))
                                                                                (coe v9)))
                                                                        (coe (\ v9 v10 -> v10)))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                              (coe v4))))))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                  (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_th_1414
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                  erased erased erased
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                     (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                     erased erased
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                        erased
                                                                        (coe
                                                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002
                                                                              (coe v0))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                              (coe v0)))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                              (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                              erased erased
                                                                              (\ v9 ->
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe v9))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                    erased erased
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          d_utxo_1778
                                                                                          (coe v3)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                       (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                       erased erased
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
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002
                                                                                                   (coe
                                                                                                      v0))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                                   (coe
                                                                                                      v0)))
                                                                                             (MAlonzo.Code.Ledger.Transaction.d_txins_2380
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                   (coe
                                                                                                      v4)))))
                                                                                       (\ v9 ->
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               v9)))))))))
                                                                  (\ v9 ->
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v9)))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                       erased)
                                    (coe
                                       addInt
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_txfee_2384
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4)))
                                       (coe d_fees_1780 (coe v3)))
                                    (coe
                                       du_updateCertDeposits_1928 (coe v0)
                                       (coe d_pparams_1766 (coe v2))
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_txcerts_2390
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4)))
                                       (coe
                                          du_updateProposalDeposits_1942 (coe v0)
                                          (coe d_pparams_1766 (coe v2))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txid_2408
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                (coe v4)))
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_txprop_2396
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                (coe v4)))
                                          (coe d_deposits_1782 (coe v3))))
                                    (coe
                                       addInt
                                       (coe
                                          MAlonzo.Code.Ledger.Transaction.d_txdonation_2398
                                          (coe
                                             MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4)))
                                       (coe d_donations_1784 (coe v3))))
                                 (coe C_UTXO'45'inductive_2096 v8))
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v7)
                       (let v8
                              = coe
                                  du_dm_2136
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__88
                                     (coe
                                        MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.du_DecEq'45'ℙ_258
                                           (coe
                                              MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002
                                                 (coe v0))
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txins_2380
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v4)))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_'8709'_424
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe v6)
                                        (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                  (coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                        erased
                                        (coe
                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002
                                              (coe v0))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                              (coe v0)))
                                        erased
                                        (\ v8 ->
                                           coe
                                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                             erased
                                             (coe
                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                   (coe v0)))
                                             v8
                                             (coe
                                                MAlonzo.Code.Interface.IsSet.du_dom_478
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1414
                                                   (coe
                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                (coe
                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                (coe d_utxo_1778 (coe v3))))
                                        (MAlonzo.Code.Ledger.Transaction.d_txins_2380
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2444
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                        (coe
                                           du_Dec'45'inInterval_1812 (coe v0)
                                           (coe d_slot_1762 (coe v2))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txvldt_2388
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                 (coe v4))))
                                        (coe
                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                           (coe
                                              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                              (coe
                                                 d_minfee_1514 (coe v0) (coe v1)
                                                 (coe d_pparams_1766 (coe v2)) (coe v4))
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_txfee_2384
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                    (coe v4))))
                                           (coe
                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                              (coe
                                                 MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                 (coe
                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                       (coe v0)))
                                                 (coe
                                                    du_consumed_1990 (coe v0)
                                                    (coe d_pparams_1766 (coe v2)) (coe v3)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                       (coe v4)))
                                                 (coe
                                                    du_produced_1998 (coe v0)
                                                    (coe d_pparams_1766 (coe v2)) (coe v3)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                       (coe v4))))
                                              (coe
                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                 (coe
                                                    MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                    (coe
                                                       MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                                    (coe
                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                          (coe v0))
                                                       (MAlonzo.Code.Ledger.Transaction.d_mint_2386
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                             (coe v4))))
                                                    (coe (0 :: Integer)))
                                                 (coe
                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_txsize_2406
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                             (coe v4)))
                                                       (coe
                                                          MAlonzo.Code.Ledger.PParams.d_maxTxSize_266
                                                          (coe d_pparams_1766 (coe v2))))
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                (coe v0))
                                                             (coe
                                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                (coe
                                                                   MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                            (coe v0)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                            (coe v0)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                            (coe v0)))))
                                                                (coe
                                                                   MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                                                     MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                     (coe
                                                                                        v0))))))))))
                                                          erased
                                                          (\ v8 ->
                                                             coe
                                                               MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
                                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                  (coe v0))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
                                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                     (coe v0))
                                                                  (mulInt
                                                                     (coe
                                                                        du_utxoEntrySize_1482
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v8)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284
                                                                        (coe
                                                                           d_pparams_1766
                                                                           (coe v2)))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                     (coe v8))))
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                   (coe v4)))))
                                                       (coe
                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                             erased
                                                             (coe
                                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                   (coe v0))
                                                                (coe
                                                                   MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                   (coe
                                                                      MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                               (coe v0)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                               (coe v0)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                               (coe v0)))))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                                                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                        (coe
                                                                                           v0))))))))))
                                                             erased
                                                             (\ v8 ->
                                                                MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Abstract.d_serSize_1444
                                                                     v1
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v8))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                                                     (coe d_pparams_1766 (coe v2))))
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                      (coe v4)))))
                                                          (coe
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                               (coe v0)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                               (coe v0)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                               (coe v0)))))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                                                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                        (coe
                                                                                           v0)))))))))
                                                                erased
                                                                (\ v8 ->
                                                                   coe
                                                                     MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'SumAll_182
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v8))
                                                                     (coe
                                                                        (\ v9 ->
                                                                           coe
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                             (coe
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                     (coe
                                                                        (\ v9 ->
                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                                                (coe v9))
                                                                             (coe
                                                                                (64 :: Integer)))))
                                                                (coe
                                                                   MAlonzo.Code.Interface.IsSet.du_range_480
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1414
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                         (coe v4)))))
                                                             (coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                  (coe v0)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                     (coe v0))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                  (coe v0)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                     (coe v0))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                  (coe v0)))))
                                                                      (coe
                                                                         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                                                           MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                           (coe
                                                                                              v0)))))))))
                                                                   erased
                                                                   (\ v8 ->
                                                                      coe
                                                                        MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                              (coe v0)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.du_netId_92
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v8)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                           (coe v0)))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.IsSet.du_range_480
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1414
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                      (coe
                                                                         MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                            (coe v4)))))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                   erased
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                            (coe v0)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                            (coe v0))))
                                                                   erased
                                                                   (\ v8 ->
                                                                      coe
                                                                        MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                              (coe v0)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Address.d_net_64
                                                                           (coe v8))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                           (coe v0)))
                                                                   (coe
                                                                      MAlonzo.Code.Interface.IsSet.du_dom_478
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1414
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                      (coe
                                                                         MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                            (coe
                                                                               v4))))))))))))))) in
                        coe
                          (case coe v8 of
                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                               -> coe
                                    MAlonzo.Code.Ledger.Prelude.d_error_8 () erased
                                    ("\172 TxBody.txins (Tx.body tx) \8802 \8709" :: Data.Text.Text)
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                               -> let v10
                                        = coe
                                            du_dm_2136
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                               erased
                                               (coe
                                                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                     (coe v0)))
                                               erased
                                               (\ v10 ->
                                                  coe
                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                          (coe v0)))
                                                    v10
                                                    (coe
                                                       MAlonzo.Code.Interface.IsSet.du_dom_478
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1414
                                                          (coe
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                       (coe
                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                       (coe d_utxo_1778 (coe v3))))
                                               (MAlonzo.Code.Ledger.Transaction.d_txins_2380
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                     (coe v4))))
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                               (coe
                                                  du_Dec'45'inInterval_1812 (coe v0)
                                                  (coe d_slot_1762 (coe v2))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_txvldt_2388
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                        (coe v4))))
                                               (coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                     (coe
                                                        d_minfee_1514 (coe v0) (coe v1)
                                                        (coe d_pparams_1766 (coe v2)) (coe v4))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_txfee_2384
                                                        (coe
                                                           MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                           (coe v4))))
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                     (coe
                                                        MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                        (coe
                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                              (coe v0)))
                                                        (coe
                                                           du_consumed_1990 (coe v0)
                                                           (coe d_pparams_1766 (coe v2)) (coe v3)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                              (coe v4)))
                                                        (coe
                                                           du_produced_1998 (coe v0)
                                                           (coe d_pparams_1766 (coe v2)) (coe v3)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                              (coe v4))))
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                        (coe
                                                           MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                           (coe
                                                              MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                                           (coe
                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                 (coe v0))
                                                              (MAlonzo.Code.Ledger.Transaction.d_mint_2386
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                    (coe v4))))
                                                           (coe (0 :: Integer)))
                                                        (coe
                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                           (coe
                                                              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Transaction.d_txsize_2406
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                    (coe v4)))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.PParams.d_maxTxSize_266
                                                                 (coe d_pparams_1766 (coe v2))))
                                                           (coe
                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                       (coe v0))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                       (coe
                                                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                   (coe v0)))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                      (coe v0))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                   (coe v0))))
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                   (coe v0)))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                      (coe v0))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                   (coe v0)))))
                                                                       (coe
                                                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                            (coe
                                                                                               v0))))))))))
                                                                 erased
                                                                 (\ v10 ->
                                                                    coe
                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                         (coe v0))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
                                                                         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                            (coe v0))
                                                                         (mulInt
                                                                            (coe
                                                                               du_utxoEntrySize_1482
                                                                               (coe v0)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe v10)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284
                                                                               (coe
                                                                                  d_pparams_1766
                                                                                  (coe v2)))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe v10))))
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                          (coe v4)))))
                                                              (coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                          (coe v0))
                                                                       (coe
                                                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                          (coe
                                                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                      (coe v0)))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                      (coe v0))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                      (coe v0)))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                      (coe v0)))))
                                                                          (coe
                                                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                               (coe
                                                                                                  v0))))))))))
                                                                    erased
                                                                    (\ v10 ->
                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Abstract.d_serSize_1444
                                                                            v1
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe v10))))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                                                            (coe
                                                                               d_pparams_1766
                                                                               (coe v2))))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                             (coe v4)))))
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                      (coe v0)))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                      (coe v0))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                      (coe v0)))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                      (coe v0)))))
                                                                          (coe
                                                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                               (coe
                                                                                                  v0)))))))))
                                                                       erased
                                                                       (\ v10 ->
                                                                          coe
                                                                            MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'SumAll_182
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v10))
                                                                            (coe
                                                                               (\ v11 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                            (coe
                                                                               (\ v11 ->
                                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                                                       (coe v11))
                                                                                    (coe
                                                                                       (64 ::
                                                                                          Integer)))))
                                                                       (coe
                                                                          MAlonzo.Code.Interface.IsSet.du_range_480
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1414
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                          (coe
                                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                (coe v4)))))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                         (coe v0)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                            (coe
                                                                                               v0))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                         (coe v0)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                            (coe
                                                                                               v0))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                         (coe
                                                                                            v0)))))
                                                                             (coe
                                                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                  (coe
                                                                                                     v0)))))))))
                                                                          erased
                                                                          (\ v10 ->
                                                                             coe
                                                                               MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                     (coe v0)))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Address.du_netId_92
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v10)))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                  (coe v0)))
                                                                          (coe
                                                                             MAlonzo.Code.Interface.IsSet.du_range_480
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             (coe
                                                                                MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                   (coe v4)))))
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                          erased
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                   (coe v0)))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                      (coe v0))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                   (coe v0))))
                                                                          erased
                                                                          (\ v10 ->
                                                                             coe
                                                                               MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                     (coe v0)))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Address.d_net_64
                                                                                  (coe v10))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                  (coe v0)))
                                                                          (coe
                                                                             MAlonzo.Code.Interface.IsSet.du_dom_478
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             (coe
                                                                                MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                   (coe
                                                                                      v4)))))))))))))) in
                                  coe
                                    (case coe v10 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                                         -> coe
                                              MAlonzo.Code.Ledger.Prelude.d_error_8 () erased
                                              ("\172 TxBody.txins (Tx.body tx) \8838 dom (UTxOState.utxo s)"
                                               ::
                                               Data.Text.Text)
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                                         -> let v12
                                                  = coe
                                                      du_dm_2136
                                                      (coe
                                                         du_Dec'45'inInterval_1812 (coe v0)
                                                         (coe d_slot_1762 (coe v2))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_txvldt_2388
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                               (coe v4))))
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                            (coe
                                                               d_minfee_1514 (coe v0) (coe v1)
                                                               (coe d_pparams_1766 (coe v2))
                                                               (coe v4))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_txfee_2384
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                  (coe v4))))
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                            (coe
                                                               MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                               (coe
                                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                     (coe v0)))
                                                               (coe
                                                                  du_consumed_1990 (coe v0)
                                                                  (coe d_pparams_1766 (coe v2))
                                                                  (coe v3)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                     (coe v4)))
                                                               (coe
                                                                  du_produced_1998 (coe v0)
                                                                  (coe d_pparams_1766 (coe v2))
                                                                  (coe v3)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                     (coe v4))))
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                               (coe
                                                                  MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                  (coe
                                                                     MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                                                                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                        (coe v0))
                                                                     (MAlonzo.Code.Ledger.Transaction.d_mint_2386
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                           (coe v4))))
                                                                  (coe (0 :: Integer)))
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                  (coe
                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_txsize_2406
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                           (coe v4)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.PParams.d_maxTxSize_266
                                                                        (coe
                                                                           d_pparams_1766
                                                                           (coe v2))))
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                        erased
                                                                        (coe
                                                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                              (coe v0))
                                                                           (coe
                                                                              MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                              (coe
                                                                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                          (coe v0)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                             (coe
                                                                                                v0))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                          (coe
                                                                                             v0))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                          (coe v0)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                             (coe
                                                                                                v0))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                          (coe
                                                                                             v0)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                   (coe
                                                                                                      v0))))))))))
                                                                        erased
                                                                        (\ v12 ->
                                                                           coe
                                                                             MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
                                                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                (coe v0))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                   (coe v0))
                                                                                (mulInt
                                                                                   (coe
                                                                                      du_utxoEntrySize_1482
                                                                                      (coe v0)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                         (coe v12)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284
                                                                                      (coe
                                                                                         d_pparams_1766
                                                                                         (coe
                                                                                            v2)))))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                   (coe v12))))
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                 (coe v4)))))
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                           erased
                                                                           (coe
                                                                              MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                 (coe v0))
                                                                              (coe
                                                                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                             (coe
                                                                                                v0)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                (coe
                                                                                                   v0))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                             (coe
                                                                                                v0))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                             (coe
                                                                                                v0)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                (coe
                                                                                                   v0))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                             (coe
                                                                                                v0)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                      (coe
                                                                                                         v0))))))))))
                                                                           erased
                                                                           (\ v12 ->
                                                                              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Abstract.d_serSize_1444
                                                                                   v1
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                         (coe
                                                                                            v12))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                                                                   (coe
                                                                                      d_pparams_1766
                                                                                      (coe v2))))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                    (coe v4)))))
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                             (coe
                                                                                                v0)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                (coe
                                                                                                   v0))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                             (coe
                                                                                                v0))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                             (coe
                                                                                                v0)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                (coe
                                                                                                   v0))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                             (coe
                                                                                                v0)))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
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
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                      (coe
                                                                                                         v0)))))))))
                                                                              erased
                                                                              (\ v12 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'SumAll_182
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe v12))
                                                                                   (coe
                                                                                      (\ v13 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                                   (coe
                                                                                      (\ v13 ->
                                                                                         MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                                                              (coe
                                                                                                 v13))
                                                                                           (coe
                                                                                              (64 ::
                                                                                                 Integer)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                       (coe v4)))))
                                                                           (coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                (coe
                                                                                                   v0)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                   (coe
                                                                                                      v0))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                (coe
                                                                                                   v0))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                (coe
                                                                                                   v0)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                   (coe
                                                                                                      v0))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                (coe
                                                                                                   v0)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                             (coe
                                                                                                v0)))
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
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                         (coe
                                                                                                            v0)))))))))
                                                                                 erased
                                                                                 (\ v12 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                            (coe
                                                                                               v0)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Address.du_netId_92
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               v12)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                         (coe v0)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                          (coe
                                                                                             v4)))))
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                 erased
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                          (coe v0)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                             (coe
                                                                                                v0))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                          (coe
                                                                                             v0))))
                                                                                 erased
                                                                                 (\ v12 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                            (coe
                                                                                               v0)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Address.d_net_64
                                                                                         (coe v12))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                         (coe v0)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.IsSet.du_dom_478
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                          (coe
                                                                                             v4))))))))))))) in
                                            coe
                                              (case coe v12 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                   -> coe
                                                        MAlonzo.Code.Ledger.Prelude.d_error_8 ()
                                                        erased
                                                        ("\172 inInterval (UTxOEnv.slot \915) (txvldt (Tx.body tx))"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                   -> let v14
                                                            = coe
                                                                du_dm_2136
                                                                (coe
                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                   (coe
                                                                      d_minfee_1514 (coe v0)
                                                                      (coe v1)
                                                                      (coe d_pparams_1766 (coe v2))
                                                                      (coe v4))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_txfee_2384
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                         (coe v4))))
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                   (coe
                                                                      MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                            (coe v0)))
                                                                      (coe
                                                                         du_consumed_1990 (coe v0)
                                                                         (coe
                                                                            d_pparams_1766 (coe v2))
                                                                         (coe v3)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                            (coe v4)))
                                                                      (coe
                                                                         du_produced_1998 (coe v0)
                                                                         (coe
                                                                            d_pparams_1766 (coe v2))
                                                                         (coe v3)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                            (coe v4))))
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                      (coe
                                                                         MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                         (coe
                                                                            MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                               (coe v0))
                                                                            (MAlonzo.Code.Ledger.Transaction.d_mint_2386
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                  (coe v4))))
                                                                         (coe (0 :: Integer)))
                                                                      (coe
                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                         (coe
                                                                            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_txsize_2406
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                  (coe v4)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.PParams.d_maxTxSize_266
                                                                               (coe
                                                                                  d_pparams_1766
                                                                                  (coe v2))))
                                                                         (coe
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                               erased
                                                                               (coe
                                                                                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                     (coe v0))
                                                                                  (coe
                                                                                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                     (coe
                                                                                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                 (coe
                                                                                                    v0)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                    (coe
                                                                                                       v0))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                 (coe
                                                                                                    v0))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                 (coe
                                                                                                    v0)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                    (coe
                                                                                                       v0))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                 (coe
                                                                                                    v0)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                              (coe
                                                                                                 v0)))
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
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                          (coe
                                                                                                             v0))))))))))
                                                                               erased
                                                                               (\ v14 ->
                                                                                  coe
                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                       (coe v0))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
                                                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                          (coe v0))
                                                                                       (mulInt
                                                                                          (coe
                                                                                             du_utxoEntrySize_1482
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                (coe
                                                                                                   v14)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284
                                                                                             (coe
                                                                                                d_pparams_1766
                                                                                                (coe
                                                                                                   v2)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe
                                                                                             v14))))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                        (coe v4)))))
                                                                            (coe
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                        (coe v0))
                                                                                     (coe
                                                                                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                        (coe
                                                                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                    (coe
                                                                                                       v0)))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                       (coe
                                                                                                          v0))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                    (coe
                                                                                                       v0))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                    (coe
                                                                                                       v0)))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                       (coe
                                                                                                          v0))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                    (coe
                                                                                                       v0)))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                 (coe
                                                                                                    v0)))
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
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                             (coe
                                                                                                                v0))))))))))
                                                                                  erased
                                                                                  (\ v14 ->
                                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Abstract.d_serSize_1444
                                                                                          v1
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                (coe
                                                                                                   v14))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                                                                          (coe
                                                                                             d_pparams_1766
                                                                                             (coe
                                                                                                v2))))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                           (coe
                                                                                              v4)))))
                                                                               (coe
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                    (coe
                                                                                                       v0)))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                       (coe
                                                                                                          v0))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                    (coe
                                                                                                       v0))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                    (coe
                                                                                                       v0)))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                       (coe
                                                                                                          v0))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                    (coe
                                                                                                       v0)))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                 (coe
                                                                                                    v0)))
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
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                             (coe
                                                                                                                v0)))))))))
                                                                                     erased
                                                                                     (\ v14 ->
                                                                                        coe
                                                                                          MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'SumAll_182
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                v14))
                                                                                          (coe
                                                                                             (\ v15 ->
                                                                                                coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                                          (coe
                                                                                             (\ v15 ->
                                                                                                MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                                                                     (coe
                                                                                                        v15))
                                                                                                  (coe
                                                                                                     (64 ::
                                                                                                        Integer)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                        (coe
                                                                                           MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                              (coe
                                                                                                 v4)))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                          (coe
                                                                                                             v0))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                       (coe
                                                                                                          v0))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                       (coe
                                                                                                          v0)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                          (coe
                                                                                                             v0))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                       (coe
                                                                                                          v0)))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                    (coe
                                                                                                       v0)))
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
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                (coe
                                                                                                                   v0)))))))))
                                                                                        erased
                                                                                        (\ v14 ->
                                                                                           coe
                                                                                             MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                   (coe
                                                                                                      v0)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.du_netId_92
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v14)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                (coe
                                                                                                   v0)))
                                                                                        (coe
                                                                                           MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           (coe
                                                                                              MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                 (coe
                                                                                                    v4)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                        erased
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                 (coe
                                                                                                    v0)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                    (coe
                                                                                                       v0))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                 (coe
                                                                                                    v0))))
                                                                                        erased
                                                                                        (\ v14 ->
                                                                                           coe
                                                                                             MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                   (coe
                                                                                                      v0)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Address.d_net_64
                                                                                                (coe
                                                                                                   v14))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                (coe
                                                                                                   v0)))
                                                                                        (coe
                                                                                           MAlonzo.Code.Interface.IsSet.du_dom_478
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           (coe
                                                                                              MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                 (coe
                                                                                                    v4)))))))))))) in
                                                      coe
                                                        (case coe v14 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v15
                                                             -> coe
                                                                  MAlonzo.Code.Ledger.Prelude.d_error_8
                                                                  () erased
                                                                  ("\172(minfee (UTxOEnv.pparams \915) tx \8804 txfee (Tx.body tx))"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v15
                                                             -> let v16
                                                                      = coe
                                                                          du_dm_2136
                                                                          (coe
                                                                             MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                   (coe v0)))
                                                                             (coe
                                                                                du_consumed_1990
                                                                                (coe v0)
                                                                                (coe
                                                                                   d_pparams_1766
                                                                                   (coe v2))
                                                                                (coe v3)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                   (coe v4)))
                                                                             (coe
                                                                                du_produced_1998
                                                                                (coe v0)
                                                                                (coe
                                                                                   d_pparams_1766
                                                                                   (coe v2))
                                                                                (coe v3)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                   (coe v4))))
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                             (coe
                                                                                MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                      (coe v0))
                                                                                   (MAlonzo.Code.Ledger.Transaction.d_mint_2386
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                         (coe v4))))
                                                                                (coe
                                                                                   (0 :: Integer)))
                                                                             (coe
                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                (coe
                                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_txsize_2406
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                         (coe v4)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.PParams.d_maxTxSize_266
                                                                                      (coe
                                                                                         d_pparams_1766
                                                                                         (coe v2))))
                                                                                (coe
                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                            (coe
                                                                                               v0))
                                                                                         (coe
                                                                                            MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                            (coe
                                                                                               MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                        (coe
                                                                                                           v0)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                           (coe
                                                                                                              v0))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                        (coe
                                                                                                           v0))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                        (coe
                                                                                                           v0)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                           (coe
                                                                                                              v0))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                        (coe
                                                                                                           v0)))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                     (coe
                                                                                                        v0)))
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
                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                 (coe
                                                                                                                    v0))))))))))
                                                                                      erased
                                                                                      (\ v16 ->
                                                                                         coe
                                                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
                                                                                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                              (coe
                                                                                                 v0))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
                                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                 (coe
                                                                                                    v0))
                                                                                              (mulInt
                                                                                                 (coe
                                                                                                    du_utxoEntrySize_1482
                                                                                                    (coe
                                                                                                       v0)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                       (coe
                                                                                                          v16)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284
                                                                                                    (coe
                                                                                                       d_pparams_1766
                                                                                                       (coe
                                                                                                          v2)))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                 (coe
                                                                                                    v16))))
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                               (coe
                                                                                                  v4)))))
                                                                                   (coe
                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                               (coe
                                                                                                  v0))
                                                                                            (coe
                                                                                               MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                               (coe
                                                                                                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                           (coe
                                                                                                              v0)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                              (coe
                                                                                                                 v0))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                           (coe
                                                                                                              v0))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                           (coe
                                                                                                              v0)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                              (coe
                                                                                                                 v0))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                           (coe
                                                                                                              v0)))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                        (coe
                                                                                                           v0)))
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
                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                    (coe
                                                                                                                       v0))))))))))
                                                                                         erased
                                                                                         (\ v16 ->
                                                                                            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Abstract.d_serSize_1444
                                                                                                 v1
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                       (coe
                                                                                                          v16))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                                                                                 (coe
                                                                                                    d_pparams_1766
                                                                                                    (coe
                                                                                                       v2))))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                  (coe
                                                                                                     v4)))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                           MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                           (coe
                                                                                                              v0)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                              (coe
                                                                                                                 v0))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                           (coe
                                                                                                              v0))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                           (coe
                                                                                                              v0)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                              (coe
                                                                                                                 v0))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                           (coe
                                                                                                              v0)))))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                        (coe
                                                                                                           v0)))
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
                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                    (coe
                                                                                                                       v0)))))))))
                                                                                            erased
                                                                                            (\ v16 ->
                                                                                               coe
                                                                                                 MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'SumAll_182
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       v16))
                                                                                                 (coe
                                                                                                    (\ v17 ->
                                                                                                       coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                                                 (coe
                                                                                                    (\ v17 ->
                                                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                                                                            (coe
                                                                                                               v17))
                                                                                                         (coe
                                                                                                            (64 ::
                                                                                                               Integer)))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                     (coe
                                                                                                        v4)))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                              (coe
                                                                                                                 v0)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                 (coe
                                                                                                                    v0))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                              (coe
                                                                                                                 v0))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                              (coe
                                                                                                                 v0)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                 (coe
                                                                                                                    v0))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                              (coe
                                                                                                                 v0)))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                           (coe
                                                                                                              v0)))
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
                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                       (coe
                                                                                                                          v0)))))))))
                                                                                               erased
                                                                                               (\ v16 ->
                                                                                                  coe
                                                                                                    MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Address.du_netId_92
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                          (coe
                                                                                                             v16)))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                       (coe
                                                                                                          v0)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                        (coe
                                                                                                           v4)))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                               erased
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                        (coe
                                                                                                           v0)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                           (coe
                                                                                                              v0))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                        (coe
                                                                                                           v0))))
                                                                                               erased
                                                                                               (\ v16 ->
                                                                                                  coe
                                                                                                    MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Address.d_net_64
                                                                                                       (coe
                                                                                                          v16))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                       (coe
                                                                                                          v0)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Interface.IsSet.du_dom_478
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                        (coe
                                                                                                           v4))))))))))) in
                                                                coe
                                                                  (case coe v16 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v17
                                                                       -> coe
                                                                            MAlonzo.Code.Ledger.Prelude.d_error_8
                                                                            () erased
                                                                            (coe
                                                                               MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                               ("\172consumed (UTxOEnv.pparams \915) s (Tx.body tx) \8801 produced (UTxOEnv.pparams \915) s (Tx.body tx)"
                                                                                ::
                                                                                Data.Text.Text)
                                                                               (coe
                                                                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                  ("\n  consumed =\t\t"
                                                                                   ::
                                                                                   Data.Text.Text)
                                                                                  (coe
                                                                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                                                                                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                              (coe
                                                                                                 v0))
                                                                                           (coe
                                                                                              du_consumed_1990
                                                                                              (coe
                                                                                                 v0)
                                                                                              (coe
                                                                                                 d_pparams_1766
                                                                                                 (coe
                                                                                                    v2))
                                                                                              (coe
                                                                                                 v3)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                 (coe
                                                                                                    v4)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                        ("\n    ins  =\t\t"
                                                                                         ::
                                                                                         Data.Text.Text)
                                                                                        (coe
                                                                                           MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                                                                                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                    (coe
                                                                                                       v0))
                                                                                                 (coe
                                                                                                    du_balance_1500
                                                                                                    (coe
                                                                                                       v0)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1088
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                          erased
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002
                                                                                                                (coe
                                                                                                                   v0))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                                                (coe
                                                                                                                   v0))))
                                                                                                       (coe
                                                                                                          d_utxo_1778
                                                                                                          (coe
                                                                                                             v3))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txins_2380
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                             (coe
                                                                                                                v4)))))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                              ("\n    mint =\t\t"
                                                                                               ::
                                                                                               Data.Text.Text)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_mint_2386
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                             (coe
                                                                                                                v4)))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                    ("\n    depositRefunds =\t"
                                                                                                     ::
                                                                                                     Data.Text.Text)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                                                                                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                (coe
                                                                                                                   v0))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
                                                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                   (coe
                                                                                                                      v0))
                                                                                                                (coe
                                                                                                                   du_depositRefunds_1974
                                                                                                                   (coe
                                                                                                                      v0)
                                                                                                                   (coe
                                                                                                                      d_pparams_1766
                                                                                                                      (coe
                                                                                                                         v2))
                                                                                                                   (coe
                                                                                                                      v3)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                      (coe
                                                                                                                         v4))))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                          ("\n  produced =\t\t"
                                                                                                           ::
                                                                                                           Data.Text.Text)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                      (coe
                                                                                                                         v0))
                                                                                                                   (coe
                                                                                                                      du_produced_1998
                                                                                                                      (coe
                                                                                                                         v0)
                                                                                                                      (coe
                                                                                                                         d_pparams_1766
                                                                                                                         (coe
                                                                                                                            v2))
                                                                                                                      (coe
                                                                                                                         v3)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                         (coe
                                                                                                                            v4)))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                                ("\n    outs =\t\t"
                                                                                                                 ::
                                                                                                                 Data.Text.Text)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                                                                                                                         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                            (coe
                                                                                                                               v0))
                                                                                                                         (coe
                                                                                                                            du_balance_1500
                                                                                                                            (coe
                                                                                                                               v0)
                                                                                                                            (coe
                                                                                                                               du_outs_1494
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                  (coe
                                                                                                                                     v4))))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                                      ("\n    fee  =\t\t"
                                                                                                                       ::
                                                                                                                       Data.Text.Text)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_txfee_2384
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                  (coe
                                                                                                                                     v4))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                                            ("\n    newDeposits  =\t"
                                                                                                                             ::
                                                                                                                             Data.Text.Text)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                                                  (coe
                                                                                                                                     du_newDeposits_1982
                                                                                                                                     (coe
                                                                                                                                        v0)
                                                                                                                                     (coe
                                                                                                                                        d_pparams_1766
                                                                                                                                        (coe
                                                                                                                                           v2))
                                                                                                                                     (coe
                                                                                                                                        v3)
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                        (coe
                                                                                                                                           v4))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                                                  ("\n    donation  =\t\t"
                                                                                                                                   ::
                                                                                                                                   Data.Text.Text)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                                                     (MAlonzo.Code.Ledger.Transaction.d_txdonation_2398
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                           (coe
                                                                                                                                              v4))))))))))))))))))))))
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v17
                                                                       -> let v18
                                                                                = coe
                                                                                    du_dm_2136
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                             (coe
                                                                                                v0))
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_mint_2386
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                (coe
                                                                                                   v4))))
                                                                                       (coe
                                                                                          (0 ::
                                                                                             Integer)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_txsize_2406
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                (coe
                                                                                                   v4)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.PParams.d_maxTxSize_266
                                                                                             (coe
                                                                                                d_pparams_1766
                                                                                                (coe
                                                                                                   v2))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                             erased
                                                                                             (coe
                                                                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                                   (coe
                                                                                                      v0))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                               (coe
                                                                                                                  v0)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                  (coe
                                                                                                                     v0))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                               (coe
                                                                                                                  v0))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                               (coe
                                                                                                                  v0)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                  (coe
                                                                                                                     v0))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                               (coe
                                                                                                                  v0)))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                            (coe
                                                                                                               v0)))
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
                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                        (coe
                                                                                                                           v0))))))))))
                                                                                             erased
                                                                                             (\ v18 ->
                                                                                                coe
                                                                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
                                                                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                     (coe
                                                                                                        v0))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
                                                                                                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                        (coe
                                                                                                           v0))
                                                                                                     (mulInt
                                                                                                        (coe
                                                                                                           du_utxoEntrySize_1482
                                                                                                           (coe
                                                                                                              v0)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 v18)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284
                                                                                                           (coe
                                                                                                              d_pparams_1766
                                                                                                              (coe
                                                                                                                 v2)))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                        (coe
                                                                                                           v18))))
                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                      (coe
                                                                                                         v4)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                erased
                                                                                                (coe
                                                                                                   MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                                      (coe
                                                                                                         v0))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                  (coe
                                                                                                                     v0)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                     (coe
                                                                                                                        v0))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                  (coe
                                                                                                                     v0))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                  (coe
                                                                                                                     v0)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                     (coe
                                                                                                                        v0))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                  (coe
                                                                                                                     v0)))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                               (coe
                                                                                                                  v0)))
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
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                           (coe
                                                                                                                              v0))))))))))
                                                                                                erased
                                                                                                (\ v18 ->
                                                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Abstract.d_serSize_1444
                                                                                                        v1
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                              (coe
                                                                                                                 v18))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                                                                                        (coe
                                                                                                           d_pparams_1766
                                                                                                           (coe
                                                                                                              v2))))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                         (coe
                                                                                                            v4)))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                  (coe
                                                                                                                     v0)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                     (coe
                                                                                                                        v0))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                  (coe
                                                                                                                     v0))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                  (coe
                                                                                                                     v0)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                     (coe
                                                                                                                        v0))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                  (coe
                                                                                                                     v0)))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                               (coe
                                                                                                                  v0)))
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
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                           (coe
                                                                                                                              v0)))))))))
                                                                                                   erased
                                                                                                   (\ v18 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'SumAll_182
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                           (coe
                                                                                                              v18))
                                                                                                        (coe
                                                                                                           (\ v19 ->
                                                                                                              coe
                                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                                                        (coe
                                                                                                           (\ v19 ->
                                                                                                              MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                                                                                   (coe
                                                                                                                      v19))
                                                                                                                (coe
                                                                                                                   (64 ::
                                                                                                                      Integer)))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                            (coe
                                                                                                               v4)))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                     (coe
                                                                                                                        v0)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                        (coe
                                                                                                                           v0))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                     (coe
                                                                                                                        v0))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                     (coe
                                                                                                                        v0)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                        (coe
                                                                                                                           v0))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                     (coe
                                                                                                                        v0)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                  (coe
                                                                                                                     v0)))
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
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                              (coe
                                                                                                                                 v0)))))))))
                                                                                                      erased
                                                                                                      (\ v18 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                 (coe
                                                                                                                    v0)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Address.du_netId_92
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                 (coe
                                                                                                                    v18)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                              (coe
                                                                                                                 v0)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                               (coe
                                                                                                                  v4)))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                      erased
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                               (coe
                                                                                                                  v0)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                  (coe
                                                                                                                     v0))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                               (coe
                                                                                                                  v0))))
                                                                                                      erased
                                                                                                      (\ v18 ->
                                                                                                         coe
                                                                                                           MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                 (coe
                                                                                                                    v0)))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Address.d_net_64
                                                                                                              (coe
                                                                                                                 v18))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                              (coe
                                                                                                                 v0)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Interface.IsSet.du_dom_478
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                               (coe
                                                                                                                  v4)))))))))) in
                                                                          coe
                                                                            (case coe v18 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v19
                                                                                 -> coe
                                                                                      MAlonzo.Code.Ledger.Prelude.d_error_8
                                                                                      () erased
                                                                                      ("\172 coin (TxBody.mint (Tx.body tx)) \8801 0"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v19
                                                                                 -> let v20
                                                                                          = coe
                                                                                              du_dm_2136
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txsize_2406
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                       (coe
                                                                                                          v4)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.PParams.d_maxTxSize_266
                                                                                                    (coe
                                                                                                       d_pparams_1766
                                                                                                       (coe
                                                                                                          v2))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                      (coe
                                                                                                                         v0)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                         (coe
                                                                                                                            v0))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                      (coe
                                                                                                                         v0))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                      (coe
                                                                                                                         v0)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                         (coe
                                                                                                                            v0))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                      (coe
                                                                                                                         v0)))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                   (coe
                                                                                                                      v0)))
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
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                               (coe
                                                                                                                                  v0))))))))))
                                                                                                    erased
                                                                                                    (\ v20 ->
                                                                                                       coe
                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
                                                                                                         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                               (coe
                                                                                                                  v0))
                                                                                                            (mulInt
                                                                                                               (coe
                                                                                                                  du_utxoEntrySize_1482
                                                                                                                  (coe
                                                                                                                     v0)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                     (coe
                                                                                                                        v20)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284
                                                                                                                  (coe
                                                                                                                     d_pparams_1766
                                                                                                                     (coe
                                                                                                                        v2)))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                               (coe
                                                                                                                  v20))))
                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                             (coe
                                                                                                                v4)))))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                         (coe
                                                                                                                            v0)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                            (coe
                                                                                                                               v0))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                         (coe
                                                                                                                            v0))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                         (coe
                                                                                                                            v0)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                            (coe
                                                                                                                               v0))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                         (coe
                                                                                                                            v0)))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                      (coe
                                                                                                                         v0)))
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
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                                  (coe
                                                                                                                                     v0))))))))))
                                                                                                       erased
                                                                                                       (\ v20 ->
                                                                                                          MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Abstract.d_serSize_1444
                                                                                                               v1
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                     (coe
                                                                                                                        v20))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                                                                                               (coe
                                                                                                                  d_pparams_1766
                                                                                                                  (coe
                                                                                                                     v2))))
                                                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                (coe
                                                                                                                   v4)))))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                         (coe
                                                                                                                            v0)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                            (coe
                                                                                                                               v0))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                         (coe
                                                                                                                            v0))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                         (coe
                                                                                                                            v0)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                            (coe
                                                                                                                               v0))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                         (coe
                                                                                                                            v0)))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                      (coe
                                                                                                                         v0)))
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
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                                  (coe
                                                                                                                                     v0)))))))))
                                                                                                          erased
                                                                                                          (\ v20 ->
                                                                                                             coe
                                                                                                               MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'SumAll_182
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v20))
                                                                                                               (coe
                                                                                                                  (\ v21 ->
                                                                                                                     coe
                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                                                               (coe
                                                                                                                  (\ v21 ->
                                                                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                                                                                          (coe
                                                                                                                             v21))
                                                                                                                       (coe
                                                                                                                          (64 ::
                                                                                                                             Integer)))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                   (coe
                                                                                                                      v4)))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                            (coe
                                                                                                                               v0)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                               (coe
                                                                                                                                  v0))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                            (coe
                                                                                                                               v0))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                            (coe
                                                                                                                               v0)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                               (coe
                                                                                                                                  v0))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                            (coe
                                                                                                                               v0)))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                         (coe
                                                                                                                            v0)))
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
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                                     (coe
                                                                                                                                        v0)))))))))
                                                                                                             erased
                                                                                                             (\ v20 ->
                                                                                                                coe
                                                                                                                  MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                        (coe
                                                                                                                           v0)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_netId_92
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           v20)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                                     (coe
                                                                                                                        v0)))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                      (coe
                                                                                                                         v4)))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                             erased
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                      (coe
                                                                                                                         v0)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                         (coe
                                                                                                                            v0))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                      (coe
                                                                                                                         v0))))
                                                                                                             erased
                                                                                                             (\ v20 ->
                                                                                                                coe
                                                                                                                  MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                        (coe
                                                                                                                           v0)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.d_net_64
                                                                                                                     (coe
                                                                                                                        v20))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                                     (coe
                                                                                                                        v0)))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Interface.IsSet.du_dom_478
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                      (coe
                                                                                                                         v4))))))))) in
                                                                                    coe
                                                                                      (case coe
                                                                                              v20 of
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v21
                                                                                           -> coe
                                                                                                MAlonzo.Code.Ledger.Prelude.d_error_8
                                                                                                ()
                                                                                                erased
                                                                                                ("\172(TxBody.txsize (Tx.body tx) Data.Nat.Base.\8804 maxTxSize (UTxOEnv.pparams \915))"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v21
                                                                                           -> let v22
                                                                                                    = coe
                                                                                                        du_dm_2136
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                           erased
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                                                 (coe
                                                                                                                    v0))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                             (coe
                                                                                                                                v0)))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                (coe
                                                                                                                                   v0))))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                             (coe
                                                                                                                                v0))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                             (coe
                                                                                                                                v0)))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                (coe
                                                                                                                                   v0))))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                             (coe
                                                                                                                                v0)))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                          (coe
                                                                                                                             v0)))
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
                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                                      (coe
                                                                                                                                         v0))))))))))
                                                                                                           erased
                                                                                                           (\ v22 ->
                                                                                                              coe
                                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
                                                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                   (coe
                                                                                                                      v0))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                      (coe
                                                                                                                         v0))
                                                                                                                   (mulInt
                                                                                                                      (coe
                                                                                                                         du_utxoEntrySize_1482
                                                                                                                         (coe
                                                                                                                            v0)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                            (coe
                                                                                                                               v22)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284
                                                                                                                         (coe
                                                                                                                            d_pparams_1766
                                                                                                                            (coe
                                                                                                                               v2)))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                      (coe
                                                                                                                         v22))))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                    (coe
                                                                                                                       v4)))))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                              erased
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                                                    (coe
                                                                                                                       v0))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                (coe
                                                                                                                                   v0)))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                   (coe
                                                                                                                                      v0))))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                (coe
                                                                                                                                   v0))))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                (coe
                                                                                                                                   v0)))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                   (coe
                                                                                                                                      v0))))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                (coe
                                                                                                                                   v0)))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                             (coe
                                                                                                                                v0)))
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
                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                                         (coe
                                                                                                                                            v0))))))))))
                                                                                                              erased
                                                                                                              (\ v22 ->
                                                                                                                 MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Abstract.d_serSize_1444
                                                                                                                      v1
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                            (coe
                                                                                                                               v22))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                                                                                                      (coe
                                                                                                                         d_pparams_1766
                                                                                                                         (coe
                                                                                                                            v2))))
                                                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                       (coe
                                                                                                                          v4)))))
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                (coe
                                                                                                                                   v0)))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                   (coe
                                                                                                                                      v0))))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                (coe
                                                                                                                                   v0))))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                (coe
                                                                                                                                   v0)))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                   (coe
                                                                                                                                      v0))))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                (coe
                                                                                                                                   v0)))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                             (coe
                                                                                                                                v0)))
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
                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                                         (coe
                                                                                                                                            v0)))))))))
                                                                                                                 erased
                                                                                                                 (\ v22 ->
                                                                                                                    coe
                                                                                                                      MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'SumAll_182
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            v22))
                                                                                                                      (coe
                                                                                                                         (\ v23 ->
                                                                                                                            coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                                                                      (coe
                                                                                                                         (\ v23 ->
                                                                                                                            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                                                                                                 (coe
                                                                                                                                    v23))
                                                                                                                              (coe
                                                                                                                                 (64 ::
                                                                                                                                    Integer)))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                          (coe
                                                                                                                             v4)))))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                   (coe
                                                                                                                                      v0)))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                      (coe
                                                                                                                                         v0))))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                   (coe
                                                                                                                                      v0))))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                   (coe
                                                                                                                                      v0)))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                      (coe
                                                                                                                                         v0))))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                   (coe
                                                                                                                                      v0)))))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                                (coe
                                                                                                                                   v0)))
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
                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                                            (coe
                                                                                                                                               v0)))))))))
                                                                                                                    erased
                                                                                                                    (\ v22 ->
                                                                                                                       coe
                                                                                                                         MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                               (coe
                                                                                                                                  v0)))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Address.du_netId_92
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v22)))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                                            (coe
                                                                                                                               v0)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                             (coe
                                                                                                                                v4)))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                    erased
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                             (coe
                                                                                                                                v0)))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                (coe
                                                                                                                                   v0))))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                             (coe
                                                                                                                                v0))))
                                                                                                                    erased
                                                                                                                    (\ v22 ->
                                                                                                                       coe
                                                                                                                         MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                               (coe
                                                                                                                                  v0)))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Address.d_net_64
                                                                                                                            (coe
                                                                                                                               v22))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                                            (coe
                                                                                                                               v0)))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Interface.IsSet.du_dom_478
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                             (coe
                                                                                                                                v4)))))))) in
                                                                                              coe
                                                                                                (case coe
                                                                                                        v22 of
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v23
                                                                                                     -> coe
                                                                                                          MAlonzo.Code.Ledger.Prelude.d_error_8
                                                                                                          ()
                                                                                                          erased
                                                                                                          ("\8704[ (_ , txout) \8712 txouts .proj\8321 ] inject (utxoEntrySize txout * minUTxOValue pp) \8804\7511 getValue txout"
                                                                                                           ::
                                                                                                           Data.Text.Text)
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v23
                                                                                                     -> let v24
                                                                                                              = coe
                                                                                                                  du_dm_2136
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                     erased
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000
                                                                                                                           (coe
                                                                                                                              v0))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                       (coe
                                                                                                                                          v0)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                          (coe
                                                                                                                                             v0))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                       (coe
                                                                                                                                          v0))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                       (coe
                                                                                                                                          v0)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                          (coe
                                                                                                                                             v0))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                       (coe
                                                                                                                                          v0)))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                                    (coe
                                                                                                                                       v0)))
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
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                                                (coe
                                                                                                                                                   v0))))))))))
                                                                                                                     erased
                                                                                                                     (\ v24 ->
                                                                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Abstract.d_serSize_1444
                                                                                                                             v1
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Transaction.du_getValue_2450
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                   (coe
                                                                                                                                      v24))))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                                                                                                             (coe
                                                                                                                                d_pparams_1766
                                                                                                                                (coe
                                                                                                                                   v2))))
                                                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                              (coe
                                                                                                                                 v4)))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                       (coe
                                                                                                                                          v0)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                          (coe
                                                                                                                                             v0))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                       (coe
                                                                                                                                          v0))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                       (coe
                                                                                                                                          v0)))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                          (coe
                                                                                                                                             v0))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                       (coe
                                                                                                                                          v0)))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                                    (coe
                                                                                                                                       v0)))
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
                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                                                (coe
                                                                                                                                                   v0)))))))))
                                                                                                                        erased
                                                                                                                        (\ v24 ->
                                                                                                                           coe
                                                                                                                             MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'SumAll_182
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                (coe
                                                                                                                                   v24))
                                                                                                                             (coe
                                                                                                                                (\ v25 ->
                                                                                                                                   coe
                                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                                                                             (coe
                                                                                                                                (\ v25 ->
                                                                                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                                                                                                        (coe
                                                                                                                                           v25))
                                                                                                                                     (coe
                                                                                                                                        (64 ::
                                                                                                                                           Integer)))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                 (coe
                                                                                                                                    v4)))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                          (coe
                                                                                                                                             v0)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                             (coe
                                                                                                                                                v0))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                          (coe
                                                                                                                                             v0))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                          (coe
                                                                                                                                             v0)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                             (coe
                                                                                                                                                v0))))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                          (coe
                                                                                                                                             v0)))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                                       (coe
                                                                                                                                          v0)))
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
                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                                                   (coe
                                                                                                                                                      v0)))))))))
                                                                                                                           erased
                                                                                                                           (\ v24 ->
                                                                                                                              coe
                                                                                                                                MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                      (coe
                                                                                                                                         v0)))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Address.du_netId_92
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                      (coe
                                                                                                                                         v24)))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                                                   (coe
                                                                                                                                      v0)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                    (coe
                                                                                                                                       v4)))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                           erased
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                    (coe
                                                                                                                                       v0)))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                       (coe
                                                                                                                                          v0))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                    (coe
                                                                                                                                       v0))))
                                                                                                                           erased
                                                                                                                           (\ v24 ->
                                                                                                                              coe
                                                                                                                                MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                      (coe
                                                                                                                                         v0)))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Address.d_net_64
                                                                                                                                   (coe
                                                                                                                                      v24))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                                                   (coe
                                                                                                                                      v0)))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Interface.IsSet.du_dom_478
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                    (coe
                                                                                                                                       v4))))))) in
                                                                                                        coe
                                                                                                          (case coe
                                                                                                                  v24 of
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v25
                                                                                                               -> coe
                                                                                                                    MAlonzo.Code.Ledger.Prelude.d_error_8
                                                                                                                    ()
                                                                                                                    erased
                                                                                                                    ("\8704[ (_ , txout) \8712 txouts .proj\8321 ] serSize (getValue txout) \8804 maxValSize pp"
                                                                                                                     ::
                                                                                                                     Data.Text.Text)
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v25
                                                                                                               -> let v26
                                                                                                                        = coe
                                                                                                                            du_dm_2136
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
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                              (coe
                                                                                                                                                 v0)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                                 (coe
                                                                                                                                                    v0))))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                              (coe
                                                                                                                                                 v0))))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                              (coe
                                                                                                                                                 v0)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                                 (coe
                                                                                                                                                    v0))))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                              (coe
                                                                                                                                                 v0)))))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                                           (coe
                                                                                                                                              v0)))
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
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                                                       (coe
                                                                                                                                                          v0)))))))))
                                                                                                                               erased
                                                                                                                               (\ v26 ->
                                                                                                                                  coe
                                                                                                                                    MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'SumAll_182
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          v26))
                                                                                                                                    (coe
                                                                                                                                       (\ v27 ->
                                                                                                                                          coe
                                                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                                                                                                                                    (coe
                                                                                                                                       (\ v27 ->
                                                                                                                                          MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                                                                                                               (coe
                                                                                                                                                  v27))
                                                                                                                                            (coe
                                                                                                                                               (64 ::
                                                                                                                                                  Integer)))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                        (coe
                                                                                                                                           v4)))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
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
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                                 (coe
                                                                                                                                                    v0)))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                                    (coe
                                                                                                                                                       v0))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                                 (coe
                                                                                                                                                    v0))))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                                 (coe
                                                                                                                                                    v0)))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                                    (coe
                                                                                                                                                       v0))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                                 (coe
                                                                                                                                                    v0)))))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848
                                                                                                                                              (coe
                                                                                                                                                 v0)))
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
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                                                                                                                                          (coe
                                                                                                                                                             v0)))))))))
                                                                                                                                  erased
                                                                                                                                  (\ v26 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                             (coe
                                                                                                                                                v0)))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Address.du_netId_92
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                v26)))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                                                          (coe
                                                                                                                                             v0)))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_txouts_2382
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                           (coe
                                                                                                                                              v4)))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                  erased
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                              (coe
                                                                                                                                                 v0))))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1036
                                                                                                                                           (coe
                                                                                                                                              v0))))
                                                                                                                                  erased
                                                                                                                                  (\ v26 ->
                                                                                                                                     coe
                                                                                                                                       MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1016
                                                                                                                                             (coe
                                                                                                                                                v0)))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Address.d_net_64
                                                                                                                                          (coe
                                                                                                                                             v26))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_networkId_1964
                                                                                                                                          (coe
                                                                                                                                             v0)))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Interface.IsSet.du_dom_478
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2444
                                                                                                                                           (coe
                                                                                                                                              v4)))))) in
                                                                                                                  coe
                                                                                                                    (case coe
                                                                                                                            v26 of
                                                                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v27
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Prelude.d_error_8
                                                                                                                              ()
                                                                                                                              erased
                                                                                                                              ("\8704[ (a , _) \8712 range txouts ] Sum.All (const \8868) (\955 a \8594 a .BootstrapAddr.attrsSize \8804 64) a"
                                                                                                                               ::
                                                                                                                               Data.Text.Text)
                                                                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v27
                                                                                                                         -> coe
                                                                                                                              MAlonzo.Code.Ledger.Prelude.d_error_8
                                                                                                                              ()
                                                                                                                              erased
                                                                                                                              ("something else broke"
                                                                                                                               ::
                                                                                                                               Data.Text.Text)
                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo._.Go.completeness
d_completeness_2250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_UTxOEnv_1754 ->
  T_UTxOState_1768 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  T_UTxOState_1768 ->
  T__'8866'_'8640''10631'_'44'UTXO'10632'__1918 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2250 = erased
-- Ledger.Utxo._.Go._.QED
d_QED_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_UTxOEnv_1754 ->
  T_UTxOState_1768 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_QED_2260 = erased
-- Ledger.Utxo..generalizedField-tx
d_'46'generalizedField'45'tx_70639 ::
  T_GeneralizeTel_70645 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2436
d_'46'generalizedField'45'tx_70639
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-Γ
d_'46'generalizedField'45'Γ_70641 ::
  T_GeneralizeTel_70645 -> T_UTxOEnv_1754
d_'46'generalizedField'45'Γ_70641 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo..generalizedField-s
d_'46'generalizedField'45's_70643 ::
  T_GeneralizeTel_70645 -> T_UTxOState_1768
d_'46'generalizedField'45's_70643 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.GeneralizeTel
d_GeneralizeTel_70645 a0 a1 = ()
data T_GeneralizeTel_70645
  = C_mkGeneralizeTel_70647 MAlonzo.Code.Ledger.Transaction.T_Tx_2436
                            T_UTxOEnv_1754 T_UTxOState_1768
