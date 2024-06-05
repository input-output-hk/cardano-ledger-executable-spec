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
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.GovStructure

-- Ledger.Abstract._.CostModel
d_CostModel_64 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_CostModel_64 = erased
-- Ledger.Abstract._.DCert
d_DCert_68 a0 = ()
-- Ledger.Abstract._.T
d_T_78 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_T_78 = erased
-- Ledger.Abstract._.ExUnits
d_ExUnits_180 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ExUnits_180 = erased
-- Ledger.Abstract._.GovProposal
d_GovProposal_200 a0 = ()
-- Ledger.Abstract._.MemoryEstimate
d_MemoryEstimate_238 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_MemoryEstimate_238 = erased
-- Ledger.Abstract._.PlutusScript
d_PlutusScript_264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_PlutusScript_264 = erased
-- Ledger.Abstract._.Prices
d_Prices_290 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Prices_290 = erased
-- Ledger.Abstract._.RwdAddr
d_RwdAddr_314 a0 a1 a2 a3 = ()
-- Ledger.Abstract._.Script
d_Script_322 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Script_322 = erased
-- Ledger.Abstract._.ScriptHash
d_ScriptHash_330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_330 = erased
-- Ledger.Abstract._.TxIn
d_TxIn_376 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxIn_376 = erased
-- Ledger.Abstract._.Value
d_Value_402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_402 = erased
-- Ledger.Abstract._.Voter
d_Voter_408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_408 = erased
-- Ledger.Abstract._.Wdrl
d_Wdrl_410 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Wdrl_410 = erased
-- Ledger.Abstract.indexOf
d_indexOf_1452 a0 = ()
data T_indexOf_1452
  = C_indexOf'46'constructor_2479 (MAlonzo.Code.Ledger.Certs.T_DCert_718 ->
                                   [MAlonzo.Code.Ledger.Certs.T_DCert_718] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (AgdaAny -> [AgdaAny] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny)
                                  (MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650 ->
                                   [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650] ->
                                   Maybe AgdaAny)
-- Ledger.Abstract.indexOf.indexOfDCert
d_indexOfDCert_1466 ::
  T_indexOf_1452 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_718 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_718] -> Maybe AgdaAny
d_indexOfDCert_1466 v0
  = case coe v0 of
      C_indexOf'46'constructor_2479 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1468 ::
  T_indexOf_1452 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_indexOfRwdAddr_1468 v0
  = case coe v0 of
      C_indexOf'46'constructor_2479 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfTxIn
d_indexOfTxIn_1470 ::
  T_indexOf_1452 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfTxIn_1470 v0
  = case coe v0 of
      C_indexOf'46'constructor_2479 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfPolicyId
d_indexOfPolicyId_1472 ::
  T_indexOf_1452 -> AgdaAny -> [AgdaAny] -> Maybe AgdaAny
d_indexOfPolicyId_1472 v0
  = case coe v0 of
      C_indexOf'46'constructor_2479 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfVote
d_indexOfVote_1474 ::
  T_indexOf_1452 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe AgdaAny
d_indexOfVote_1474 v0
  = case coe v0 of
      C_indexOf'46'constructor_2479 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.indexOf.indexOfProposal
d_indexOfProposal_1476 ::
  T_indexOf_1452 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650] ->
  Maybe AgdaAny
d_indexOfProposal_1476 v0
  = case coe v0 of
      C_indexOf'46'constructor_2479 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions
d_AbstractFunctions_1478 a0 = ()
data T_AbstractFunctions_1478
  = C_AbstractFunctions'46'constructor_2741 (AgdaAny ->
                                             AgdaAny -> Integer)
                                            (AgdaAny -> Integer) T_indexOf_1452
                                            (AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool)
                                            (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer)
-- Ledger.Abstract.AbstractFunctions.txscriptfee
d_txscriptfee_1490 ::
  T_AbstractFunctions_1478 -> AgdaAny -> AgdaAny -> Integer
d_txscriptfee_1490 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2741 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.serSize
d_serSize_1492 :: T_AbstractFunctions_1478 -> AgdaAny -> Integer
d_serSize_1492 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2741 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.indexOfImp
d_indexOfImp_1494 :: T_AbstractFunctions_1478 -> T_indexOf_1452
d_indexOfImp_1494 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2741 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.runPLCScript
d_runPLCScript_1496 ::
  T_AbstractFunctions_1478 ->
  AgdaAny -> AgdaAny -> AgdaAny -> [AgdaAny] -> Bool
d_runPLCScript_1496 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2741 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Abstract.AbstractFunctions.scriptSize
d_scriptSize_1498 ::
  T_AbstractFunctions_1478 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_1498 v0
  = case coe v0 of
      C_AbstractFunctions'46'constructor_2741 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
