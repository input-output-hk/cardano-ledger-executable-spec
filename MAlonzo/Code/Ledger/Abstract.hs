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

module MAlonzo.Code.Ledger.Abstract where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.GovStructure
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Transaction

-- Ledger.Abstract._.DCert
d_DCert_86 a0 = ()
-- Ledger.Abstract._.Carrier
d_Carrier_204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Carrier_204 = erased
-- Ledger.Abstract._.GovProposal
d_GovProposal_222 a0 = ()
-- Ledger.Abstract._.GovVote
d_GovVote_226 a0 = ()
-- Ledger.Abstract._.MemoryEstimate
d_MemoryEstimate_258 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_258 = erased
-- Ledger.Abstract._.Prices
d_Prices_306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_306 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_330 a0 a1 a2 a3 = ()
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_346 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_390 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_390 = erased
-- Ledger.Abstract._.Carrier
d_Carrier_412 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Carrier_412 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_416 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_416 = erased
-- Ledger.Abstract.indexOf
d_indexOf_1406 a0 = ()
data T_indexOf_1406
  = C_indexOf'46'constructor_2553 (MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
                                   [MAlonzo.Code.Ledger.Deleg.T_DCert_668] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670] ->
                                   Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1420 ::
  T_indexOf_1406 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_668] -> Maybe AgdaAny
d_indexOfDCert_1420 v0
  = case coe v0 of
      C_indexOf'46'constructor_2553 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1422 ::
  T_indexOf_1406 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1422 v0
  = case coe v0 of
      C_indexOf'46'constructor_2553 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1424 ::
  T_indexOf_1406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1424 v0
  = case coe v0 of
      C_indexOf'46'constructor_2553 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1426 ::
  T_indexOf_1406 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1426 v0
  = case coe v0 of
      C_indexOf'46'constructor_2553 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1428 ::
  T_indexOf_1406 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670] ->
  Maybe AgdaAny
d_indexOfVote_1428 v0
  = case coe v0 of
      C_indexOf'46'constructor_2553 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1430 ::
  T_indexOf_1406 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692] ->
  Maybe AgdaAny
d_indexOfProposal_1430 v0
  = case coe v0 of
      C_indexOf'46'constructor_2553 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1432 a0 = ()
data T_AbstractFunctions_1432
  = C_AbstractFunctions'46'constructor_2755 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1406
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1440 ::
  T_AbstractFunctions_1432 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1440 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2755 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1442 :: T_AbstractFunctions_1432 -> AgdaAny -> Integer
d_serSize_1442 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2755 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1444 :: T_AbstractFunctions_1432 -> T_indexOf_1406
d_indexOfImp_1444 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2755 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
