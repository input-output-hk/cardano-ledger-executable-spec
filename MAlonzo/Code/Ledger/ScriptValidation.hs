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

module MAlonzo.Code.Ledger.ScriptValidation where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovStructure
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.CostModel
d_CostModel_82 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CostModel_82 = erased
-- _.DCert
d_DCert_86 a0 = ()
-- _.T
d_T_94 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_94 = erased
-- _.THash
d_THash_96 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_96 = erased
-- _.Datum
d_Datum_100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Datum_100 = erased
-- _.Carrier
d_Carrier_204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Carrier_204 = erased
-- _.GovProposal
d_GovProposal_222 a0 = ()
-- _.GovVote
d_GovVote_226 a0 = ()
-- _.THash
d_THash_250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_250 = erased
-- _.Language
d_Language_256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Language_256 = erased
-- _.PParams
d_PParams_290 a0 = ()
-- _.RdmrPtr
d_RdmrPtr_314 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_RdmrPtr_314 = erased
-- _.Redeemer
d_Redeemer_316 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Redeemer_316 = erased
-- _.RwdAddr
d_RwdAddr_330 a0 a1 a2 a3 = ()
-- _.Script
d_Script_338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_338 = erased
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
-- _.TxIn
d_TxIn_390 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_390 = erased
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
-- _.Wdrl
d_Wdrl_416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_416 = erased
-- Ledger.ScriptValidation.ScriptPurpose
d_ScriptPurpose_1436 a0 a1 = ()
data T_ScriptPurpose_1436
  = C_Cert_1438 MAlonzo.Code.Ledger.Deleg.T_DCert_668 |
    C_Rwrd_1440 MAlonzo.Code.Ledger.Address.T_RwdAddr_58 |
    C_Mint_1442 AgdaAny |
    C_Spend_1444 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_Vote_1446 MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 |
    C_Propose_1448 MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692
-- Ledger.ScriptValidation.rdptr
d_rdptr_1450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  T_ScriptPurpose_1436 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rdptr_1450 v0 v1 v2 v3
  = case coe v3 of
      C_Cert_1438 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Cert_10) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1420
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1444 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txcerts_2382 (coe v2)))
      C_Rwrd_1440 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Rewrd_12) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1422
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1444 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txwdrls_2384 (coe v2)))
      C_Mint_1442 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Mint_8) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1426
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1444 (coe v1)) v4
                (coe
                   MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214
                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
                   (MAlonzo.Code.Ledger.Transaction.d_mint_2378 (coe v2))))
      C_Spend_1444 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Spend_6) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1424
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1444 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txins_2372 (coe v2)))
      C_Vote_1446 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Vote_14) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1428
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1444 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txvote_2386 (coe v2)))
      C_Propose_1448 v4
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v5 ->
                coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe MAlonzo.Code.Ledger.Transaction.C_Propose_16) (coe v5))
             (coe
                MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1430
                (MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1444 (coe v1)) v4
                (MAlonzo.Code.Ledger.Transaction.d_txprop_2388 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.indexedRdmrs
d_indexedRdmrs_1522 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  T_ScriptPurpose_1436 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_indexedRdmrs_1522 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe_36
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1318
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1414
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              (coe
                 MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2424
                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v2)))
              (coe v4)
              (coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (coe
                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                    (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                    (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0)))
                 v4
                 (let v5
                        = MAlonzo.Code.Axiom.Set.d_th_1414
                            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                  coe
                    MAlonzo.Code.Axiom.Set.Rel.du_dom_294 v5
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2424
                          (coe MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v2))))))))
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      (coe
         d_rdptr_1450 (coe v0) (coe v1)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v2))
         (coe v3))
-- Ledger.ScriptValidation.getDatum
d_getDatum_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1436 -> [AgdaAny]
d_getDatum_1554 v0 ~v1 v2 v3 v4 = du_getDatum_1554 v0 v2 v3 v4
du_getDatum_1554 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  T_ScriptPurpose_1436 -> [AgdaAny]
du_getDatum_1554 v0 v1 v2 v3
  = let v4 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    case coe v3 of
      C_Spend_1444 v5
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_maybe_36
             (coe
                (\ v6 ->
                   case coe v6 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                       -> case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> case coe v10 of
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v11
                                     -> coe
                                          MAlonzo.Code.Data.Maybe.Base.du_maybe_36
                                          (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306)
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1318
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1414
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe
                                                MAlonzo.Code.Ledger.Transaction.d_txdats_2422
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_wits_2438
                                                   (coe v1)))
                                             (coe v11)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                erased
                                                (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                      (coe
                                                         MAlonzo.Code.Ledger.Script.d_Data'688'_202
                                                         (coe
                                                            MAlonzo.Code.Ledger.Script.d_ps_294
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                                               (coe v0))))))
                                                v11
                                                (let v12
                                                       = MAlonzo.Code.Axiom.Set.d_th_1414
                                                           (coe
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                 coe
                                                   MAlonzo.Code.Axiom.Set.Rel.du_dom_294 v12
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                                                      (coe
                                                         MAlonzo.Code.Ledger.Transaction.d_txdats_2422
                                                         (coe
                                                            MAlonzo.Code.Ledger.Transaction.d_wits_2438
                                                            (coe v1)))))))
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                     -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
                                   _ -> MAlonzo.RTE.mazUnreachableError
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError))
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
             (coe
                MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1318
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1414
                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                (coe v2) (coe v5)
                (coe
                   MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                   (coe
                      MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                      (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996 (coe v0))
                      (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0)))
                   v5
                   (let v6
                          = MAlonzo.Code.Axiom.Set.d_th_1414
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                    coe
                      MAlonzo.Code.Axiom.Set.Rel.du_dom_294 v6
                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_462 (coe v2)))))
      _ -> coe v4
-- Ledger.ScriptValidation.TxInfo
d_TxInfo_1592 a0 a1 = ()
data T_TxInfo_1592
  = C_TxInfo'46'constructor_13725 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  [MAlonzo.Code.Ledger.Deleg.T_DCert_668]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 [AgdaAny]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
-- Ledger.ScriptValidation.TxInfo.realizedInputs
d_realizedInputs_1614 ::
  T_TxInfo_1592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_realizedInputs_1614 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13725 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txouts
d_txouts_1616 ::
  T_TxInfo_1592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1616 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13725 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.fee
d_fee_1618 :: T_TxInfo_1592 -> AgdaAny
d_fee_1618 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13725 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.mint
d_mint_1620 :: T_TxInfo_1592 -> AgdaAny
d_mint_1620 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13725 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txcerts
d_txcerts_1622 ::
  T_TxInfo_1592 -> [MAlonzo.Code.Ledger.Deleg.T_DCert_668]
d_txcerts_1622 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13725 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txwdrls
d_txwdrls_1624 ::
  T_TxInfo_1592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1624 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13725 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txvldt
d_txvldt_1626 ::
  T_TxInfo_1592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1626 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13725 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.vkKey
d_vkKey_1628 :: T_TxInfo_1592 -> [AgdaAny]
d_vkKey_1628 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13725 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txdats
d_txdats_1630 ::
  T_TxInfo_1592 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_1630 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13725 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.TxInfo.txid
d_txid_1632 :: T_TxInfo_1592 -> AgdaAny
d_txid_1632 v0
  = case coe v0 of
      C_TxInfo'46'constructor_13725 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.txInfo
d_txInfo_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 -> T_TxInfo_1592
d_txInfo_1634 v0 ~v1 ~v2 ~v3 v4 v5 = du_txInfo_1634 v0 v4 v5
du_txInfo_1634 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 -> T_TxInfo_1592
du_txInfo_1634 v0 v1 v2
  = coe
      C_TxInfo'46'constructor_13725
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
         (coe v1)
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txins_2372
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txouts_2374
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
         (MAlonzo.Code.Ledger.Transaction.d_txfee_2376
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_mint_2378
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txcerts_2382
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2384
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txvldt_2380
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2404
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txdats_2422
         (coe MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txid_2400
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v2)))
-- Ledger.ScriptValidation.DelegateOrDeReg
d_DelegateOrDeReg_1748 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 -> ()
d_DelegateOrDeReg_1748 = erased
-- Ledger.ScriptValidation.DelegateOrDeReg?
d_DelegateOrDeReg'63'_1780 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_DelegateOrDeReg'63'_1780 ~v0 ~v1 v2
  = du_DelegateOrDeReg'63'_1780 v2
du_DelegateOrDeReg'63'_1780 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_DelegateOrDeReg'63'_1780 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Deleg.C_delegate_670 v1 v2 v3 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Deleg.C_regpool_672 v1 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
      MAlonzo.Code.Ledger.Deleg.C_retirepool_674 v1 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
      MAlonzo.Code.Ledger.Deleg.C_regdrep_676 v1 v2 v3
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
      MAlonzo.Code.Ledger.Deleg.C_deregdrep_678 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      MAlonzo.Code.Ledger.Deleg.C_ccreghot_680 v1 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.UTxOSH
d_UTxOSH_1810 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 -> ()
d_UTxOSH_1810 = erased
-- Ledger.ScriptValidation.scriptOutWithHash
d_scriptOutWithHash_1812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutWithHash_1812 ~v0 ~v1 ~v2 v3
  = du_scriptOutWithHash_1812 v3
du_scriptOutWithHash_1812 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutWithHash_1812 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> let v3
                 = coe
                     MAlonzo.Code.Ledger.Address.du_isScriptAddr'63'_126 (coe v1) in
           case coe v3 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v4 v5
               -> if coe v4
                    then case coe v5 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v6
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
                                     (coe
                                        MAlonzo.Code.Ledger.Address.du_getScriptHash_134 (coe v1)
                                        (coe v6)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v5) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.scriptOutsWithHash
d_scriptOutsWithHash_1840 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOutsWithHash_1840 ~v0 ~v1 v2
  = du_scriptOutsWithHash_1840 v2
du_scriptOutsWithHash_1840 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOutsWithHash_1840 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1018
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (\ v1 v2 -> coe du_scriptOutWithHash_1812 v2) (coe v0)
-- Ledger.ScriptValidation.spendScripts
d_spendScripts_1844 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_spendScripts_1844 v0 ~v1 v2 v3 = du_spendScripts_1844 v0 v2 v3
du_spendScripts_1844 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_spendScripts_1844 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
              (coe
                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                 (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996 (coe v0))
                 (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0)))
              v1
              (coe
                 MAlonzo.Code.Interface.IsSet.du_dom_478
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486) (coe v2)) in
    case coe v3 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v4 v5
        -> if coe v4
             then case coe v5 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v6
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe C_Spend_1444 (coe v1))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1314
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1414
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                    (coe v2) (coe v1) (coe v6))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v5) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.rwdScripts
d_rwdScripts_1866 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rwdScripts_1866 ~v0 ~v1 v2 = du_rwdScripts_1866 v2
du_rwdScripts_1866 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rwdScripts_1866 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.Address.du_isScriptRwdAddr'63'_130 (coe v0) in
    case coe v1 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v2 v3
        -> if coe v2
             then case coe v3 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v4
                      -> coe
                           seq (coe v4)
                           (case coe v0 of
                              MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_1057 v5 v6
                                -> case coe v6 of
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe C_Rwrd_1440 (coe v0)) (coe v7))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v3) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.certScripts
d_certScripts_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certScripts_1882 ~v0 ~v1 v2 = du_certScripts_1882 v2
du_certScripts_1882 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certScripts_1882 v0
  = let v1 = coe du_DelegateOrDeReg'63'_1780 (coe v0) in
    case coe v1 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v2 v3
        -> if coe v2
             then coe
                    seq (coe v3)
                    (case coe v0 of
                       MAlonzo.Code.Ledger.Deleg.C_delegate_670 v4 v5 v6 v7
                         -> case coe v4 of
                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                                -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                                -> coe
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe C_Cert_1438 (coe v0)) (coe v8))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       MAlonzo.Code.Ledger.Deleg.C_deregdrep_678 v4
                         -> case coe v4 of
                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
                                -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
                                -> coe
                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe C_Cert_1438 (coe v0)) (coe v5))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)
             else coe
                    seq (coe v3) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.scriptsNeeded
d_scriptsNeeded_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_scriptsNeeded_1922 v0 ~v1 v2 v3 = du_scriptsNeeded_1922 v0 v2 v3
du_scriptsNeeded_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_scriptsNeeded_1922 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_558
         (MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v3 ->
            coe
              du_spendScripts_1844 (coe v0) (coe v3)
              (coe du_scriptOutsWithHash_1840 (coe v1)))
         (MAlonzo.Code.Ledger.Transaction.d_txins_2372 (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_mapPartial_558
            (MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe du_rwdScripts_1866)
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_478
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2384 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.du_mapPartial_558
               (MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe du_certScripts_1882)
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_410
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1414
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2382 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_380
               (MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe C_Mint_1442 (coe v3)) (coe v3))
               (coe
                  MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214
                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
                  (MAlonzo.Code.Ledger.Transaction.d_mint_2378 (coe v2))))))
-- Ledger.ScriptValidation.valContext
d_valContext_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_TxInfo_1592 -> T_ScriptPurpose_1436 -> AgdaAny
d_valContext_1978 v0 ~v1 v2 v3 = du_valContext_1978 v0 v2 v3
du_valContext_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_TxInfo_1592 -> T_ScriptPurpose_1436 -> AgdaAny
du_valContext_1978 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_276
      (MAlonzo.Code.Ledger.Script.d_ps_294
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
      erased
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs'
d_collectPhaseTwoScriptInputs''_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_collectPhaseTwoScriptInputs''_1984 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> let v8
                 = MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2466
                     (coe v0) (coe v7) (coe v3) in
           case coe v8 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v9
               -> let v10
                        = coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v9) in
                  let v11
                        = d_indexedRdmrs_1522 (coe v0) (coe v1) (coe v3) (coe v6) in
                  case coe v10 of
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                      -> case coe v11 of
                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v13
                             -> case coe v13 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                  (coe
                                                     du_getDatum_1554 (coe v0) (coe v3) (coe v4)
                                                     (coe v6))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe v14)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           du_valContext_1978 (coe v0)
                                                           (coe
                                                              du_txInfo_1634 (coe v0) (coe v4)
                                                              (coe v3))
                                                           (coe v6))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v15)
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_costmdls_296
                                                     (coe v2)))))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                    _ -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v8
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.ScriptValidation.collectPhaseTwoScriptInputs
d_collectPhaseTwoScriptInputs_2060 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collectPhaseTwoScriptInputs_2060 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (d_collectPhaseTwoScriptInputs''_1984
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_scriptsNeeded_1922 (coe v0) (coe v4)
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v3)))
