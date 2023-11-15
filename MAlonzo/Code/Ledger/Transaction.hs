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

module MAlonzo.Code.Ledger.Transaction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.Decidable.Instance
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovStructure
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.HashMap
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- Ledger.Transaction.Tag
d_Tag_4 = ()
data T_Tag_4
  = C_Spend_6 | C_Mint_8 | C_Cert_10 | C_Rewrd_12 | C_Vote_14 |
    C_Propose_16
-- Ledger.Transaction.DecEq-Tag
d_DecEq'45'Tag_18 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Tag_18
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v0 ->
            case coe v0 of
              C_Spend_6
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Mint_8
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Cert_10
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Rewrd_12
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Vote_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Vote_14
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_14
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_Propose_16
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_Propose_16
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Mint_8
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Cert_10
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Rewrd_12
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Vote_14
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_Propose_16
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Transaction.TransactionStructure
d_TransactionStructure_20 = ()
data T_TransactionStructure_20
  = C_TransactionStructure'46'constructor_12247 MAlonzo.Code.Interface.DecEq.T_DecEq_14
                                                MAlonzo.Code.Interface.DecEq.T_DecEq_14
                                                MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                                MAlonzo.Code.Ledger.Epoch.T_GlobalConstants_236
                                                MAlonzo.Code.Ledger.Crypto.T_Crypto_148
                                                MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4
                                                MAlonzo.Code.Ledger.Script.T_ScriptStructure_278
                                                MAlonzo.Code.Ledger.PParams.T_GovParams_422
                                                MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
                                                (AgdaAny -> AgdaAny) AgdaAny
-- Ledger.Transaction._.Ser
d_Ser_86 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6 ->
  MAlonzo.Code.Ledger.Epoch.T_GlobalConstants_236 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_148 -> ()
d_Ser_86 = erased
-- Ledger.Transaction._.TokenAlgebra
d_TokenAlgebra_110 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Transaction._.ScriptStructure
d_ScriptStructure_368 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
-- Ledger.Transaction.TransactionStructure.Ix
d_Ix_994 :: T_TransactionStructure_20 -> ()
d_Ix_994 = erased
-- Ledger.Transaction.TransactionStructure.TxId
d_TxId_996 :: T_TransactionStructure_20 -> ()
d_TxId_996 = erased
-- Ledger.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_998 :: T_TransactionStructure_20 -> ()
d_AuxiliaryData_998 = erased
-- Ledger.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_1000 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Ix_1000 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12247 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_1002 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'TxId_1002 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12247 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1004 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1004 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12247 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1008 :: T_TransactionStructure_20 -> ()
d_THash_1008 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1010 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_1010 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe d_adHashingScheme_1004 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1012 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1012 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe d_adHashingScheme_1004 (coe v0))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1014 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1014 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe d_adHashingScheme_1004 (coe v0))
-- Ledger.Transaction.TransactionStructure.globalConstants
d_globalConstants_1016 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_GlobalConstants_236
d_globalConstants_1016 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12247 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1020 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Netw_1020 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
      (coe d_globalConstants_1016 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Network
d_Network_1022 :: T_TransactionStructure_20 -> ()
d_Network_1022 = erased
-- Ledger.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1024 :: T_TransactionStructure_20 -> AgdaAny
d_NetworkId_1024 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_NetworkId_264
      (coe d_globalConstants_1016 (coe v0))
-- Ledger.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1026 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_NonZero'45'SlotsPerEpoch'7580'_1026 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_258
      (coe d_globalConstants_1016 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Quorum
d_Quorum_1028 :: T_TransactionStructure_20 -> Integer
d_Quorum_1028 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_Quorum_262
      (coe d_globalConstants_1016 (coe v0))
-- Ledger.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1030 :: T_TransactionStructure_20 -> Integer
d_SlotsPerEpoch'7580'_1030 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_SlotsPerEpoch'7580'_256
      (coe d_globalConstants_1016 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1032 ::
  T_TransactionStructure_20 -> Integer
d_StabilityWindow'7580'_1032 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_StabilityWindow'7580'_260
      (coe d_globalConstants_1016 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1034 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4
d_ℕEpochStructure_1034 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ℕEpochStructure_266
      (coe d_globalConstants_1016 (coe v0))
-- Ledger.Transaction.TransactionStructure.crypto
d_crypto_1036 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_148
d_crypto_1036 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12247 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1040 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'isSigned_1040 v0
  = let v1 = d_crypto_1036 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_146
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1042 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ScriptHash_1042 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
      (coe d_crypto_1036 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1044 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Ser_1044 v0
  = let v1 = d_crypto_1036 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_138
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1046 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Sig_1046 v0
  = let v1 = d_crypto_1036 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_136
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1048 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1048 v0
  = let v1 = d_crypto_1036 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_216 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1050 :: T_TransactionStructure_20 -> ()
d_THash_1050 = erased
-- Ledger.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1052 :: T_TransactionStructure_20 -> ()
d_KeyPair_1052 = erased
-- Ledger.Transaction.TransactionStructure._.SKey
d_SKey_1054 :: T_TransactionStructure_20 -> ()
d_SKey_1054 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1056 :: T_TransactionStructure_20 -> ()
d_ScriptHash_1056 = erased
-- Ledger.Transaction.TransactionStructure._.Ser
d_Ser_1058 :: T_TransactionStructure_20 -> ()
d_Ser_1058 = erased
-- Ledger.Transaction.TransactionStructure._.Sig
d_Sig_1060 :: T_TransactionStructure_20 -> ()
d_Sig_1060 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1062 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1062 v0
  = let v1 = d_crypto_1036 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_216 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.VKey
d_VKey_1064 :: T_TransactionStructure_20 -> ()
d_VKey_1064 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1066 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1066 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned
d_isSigned_1068 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1068 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1070 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1070 v0
  = let v1 = d_crypto_1036 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_134
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.isSigned?
d_isSigned'63'_1072 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isSigned'63'_1072 v0
  = let v1 = d_crypto_1036 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'63'_122
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.khs
d_khs_1074 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1074 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_216 (coe d_crypto_1036 (coe v0))
-- Ledger.Transaction.TransactionStructure._.pkk
d_pkk_1076 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_1076 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe d_crypto_1036 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sign
d_sign_1078 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1078 v0
  = let v1 = d_crypto_1036 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_108
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_186 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1082 a0 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1086 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1086 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1088 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1088 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1090 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1090 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.AssetName
d_AssetName_1092 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_AssetName_1092 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1094 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8804''7511'_1094 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1096 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Value_1096 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1098 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1100 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1102 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.MemoryEstimate
d_MemoryEstimate_1104 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_MemoryEstimate_1104 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Carrier
d_Carrier_1106 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_Carrier_1106 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1108 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1108 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1110 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1110 ~v0 = du_addValue_1110
du_addValue_1110 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
du_addValue_1110
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_236
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1112 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_coin_1112 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1114 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1114 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1116 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> AgdaAny
d_inject_1116 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1118 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1118 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1120 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> [AgdaAny]
d_policies_1120 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.property
d_property_1122 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1122 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1124 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1124 v0
  = let v1
          = MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.refl
d_refl_1126 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny
d_refl_1126 v0
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
                        MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                        (coe v0)))))))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1128 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_size_1128 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.specialAsset
d_specialAsset_1130 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_specialAsset_1130 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_222 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1132 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1132 ~v0 = du_sum'7515'_1132
du_sum'7515'_1132 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1132
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_238
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1134 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_ε_1134 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1138 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1138 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1140 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1140 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1142 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1144 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1144 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1146 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1146 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1150 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1152 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1152 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1154 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1156 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1156 ~v0 = du_isMagmaIsomorphism_1156
du_isMagmaIsomorphism_1156 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1156 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1158 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1158 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1158 v2
du_isMagmaMonomorphism_1158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1158 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1160 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1164 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
               (coe v0))))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1166 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1166 ~v0 ~v1 v2 = du_isRelIsomorphism_1166 v2
du_isRelIsomorphism_1166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1166 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1168 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1168 ~v0 ~v1 v2 = du_isRelMonomorphism_1168 v2
du_isRelMonomorphism_1168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1168 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_1170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1170 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1172 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1174 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1178 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1180 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1184 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1184 ~v0 = du_isMagmaMonomorphism_1184
du_isMagmaMonomorphism_1184 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1184 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1186 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1188 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1190 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1190 ~v0 ~v1 v2 = du_isRelMonomorphism_1190 v2
du_isRelMonomorphism_1190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1190 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1192 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1192 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1194 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1194 = erased
-- Ledger.Transaction.TransactionStructure._.Addr
d_Addr_1198 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Addr_1198 = erased
-- Ledger.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1200 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1202 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.Credential
d_Credential_1204 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_1204 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1206 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'BaseAddr_1206 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1206 v1 v2 v3
du_DecEq'45'BaseAddr_1206 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'BaseAddr_1206 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_140 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1208 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'BootstrapAddr_1208 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1208 v1 v2 v3
du_DecEq'45'BootstrapAddr_1208 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'BootstrapAddr_1208 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_142 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1210 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'RwdAddr_1210 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1210 v1 v2 v3
du_DecEq'45'RwdAddr_1210 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'RwdAddr_1210 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1212 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1216 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_ScriptAddr_1216 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1218 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_ScriptBaseAddr_1218 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1220 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_ScriptBootstrapAddr_1220 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1222 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_VKeyAddr_1222 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1224 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_VKeyBaseAddr_1224 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1226 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_VKeyBootstrapAddr_1226 = erased
-- Ledger.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1230 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
d_getScriptHash_1230 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1230
du_getScriptHash_1230 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
du_getScriptHash_1230
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_134
-- Ledger.Transaction.TransactionStructure._.isScript
d_isScript_1232 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.isScript?
d_isScript'63'_1234 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isScript'63'_1234 ~v0 ~v1 ~v2 ~v3 = du_isScript'63'_1234
du_isScript'63'_1234 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isScript'63'_1234
  = coe MAlonzo.Code.Ledger.Address.du_isScript'63'_120
-- Ledger.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1236 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1236 = erased
-- Ledger.Transaction.TransactionStructure._.isScriptAddr?
d_isScriptAddr'63'_1238 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isScriptAddr'63'_1238 ~v0 ~v1 ~v2 ~v3 = du_isScriptAddr'63'_1238
du_isScriptAddr'63'_1238 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isScriptAddr'63'_1238
  = coe MAlonzo.Code.Ledger.Address.du_isScriptAddr'63'_126
-- Ledger.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1240 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> ()
d_isScriptRwdAddr_1240 = erased
-- Ledger.Transaction.TransactionStructure._.isScriptRwdAddr?
d_isScriptRwdAddr'63'_1242 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isScriptRwdAddr'63'_1242 ~v0 ~v1 ~v2 ~v3
  = du_isScriptRwdAddr'63'_1242
du_isScriptRwdAddr'63'_1242 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isScriptRwdAddr'63'_1242
  = coe MAlonzo.Code.Ledger.Address.du_isScriptRwdAddr'63'_130
-- Ledger.Transaction.TransactionStructure._.isVKey
d_isVKey_1244 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.isVKey?
d_isVKey'63'_1246 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isVKey'63'_1246 ~v0 ~v1 ~v2 ~v3 = du_isVKey'63'_1246
du_isVKey'63'_1246 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isVKey'63'_1246
  = coe MAlonzo.Code.Ledger.Address.du_isVKey'63'_110
-- Ledger.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1248 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1248 = erased
-- Ledger.Transaction.TransactionStructure._.isVKeyAddr?
d_isVKeyAddr'63'_1250 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isVKeyAddr'63'_1250 ~v0 ~v1 ~v2 ~v3 = du_isVKeyAddr'63'_1250
du_isVKeyAddr'63'_1250 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isVKeyAddr'63'_1250
  = coe MAlonzo.Code.Ledger.Address.du_isVKeyAddr'63'_116
-- Ledger.Transaction.TransactionStructure._.netId
d_netId_1252 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1252 ~v0 ~v1 ~v2 ~v3 = du_netId_1252
du_netId_1252 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1252 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.Transaction.TransactionStructure._.payCred
d_payCred_1254 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_payCred_1254 ~v0 ~v1 ~v2 ~v3 = du_payCred_1254
du_payCred_1254 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_payCred_1254 = coe MAlonzo.Code.Ledger.Address.du_payCred_90
-- Ledger.Transaction.TransactionStructure._.BaseAddr.net
d_net_1258 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_30 -> AgdaAny
d_net_1258 v0 = coe MAlonzo.Code.Ledger.Address.d_net_38 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1260 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1260 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_40 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1262 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1262 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_42 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1266 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> Integer
d_attrsSize_1266 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_56 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1268 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> AgdaAny
d_net_1268 v0 = coe MAlonzo.Code.Ledger.Address.d_net_52 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1270 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1270 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_54 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.net
d_net_1274 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> AgdaAny
d_net_1274 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1276 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1276 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)
-- Ledger.Transaction.TransactionStructure.epochStructure
d_epochStructure_1286 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4
d_epochStructure_1286 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12247 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1290 ::
  T_TransactionStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1290 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d__'43''7497'__220
      (coe d_epochStructure_1286 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1292 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Epoch_1292 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Epoch_30
      (coe d_epochStructure_1286 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1294 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Slot_1294 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Slot_36
      (coe d_epochStructure_1286 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1296 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_238
d_DecPo'45'Slot_1296 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
      (coe d_epochStructure_1286 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Epoch
d_Epoch_1298 :: T_TransactionStructure_20 -> ()
d_Epoch_1298 = erased
-- Ledger.Transaction.TransactionStructure._.Slot
d_Slot_1300 :: T_TransactionStructure_20 -> ()
d_Slot_1300 = erased
-- Ledger.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1302 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_1302 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_Slot'691'_26
      (coe d_epochStructure_1286 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1304 :: T_TransactionStructure_20 -> AgdaAny
d_StabilityWindow_1304 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_StabilityWindow_42
      (coe d_epochStructure_1286 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1306 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1306 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_addEpoch_230
      (coe d_epochStructure_1286 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addSlot
d_addSlot_1308 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1308 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_addSlot_228
      (coe d_epochStructure_1286 (coe v0))
-- Ledger.Transaction.TransactionStructure._.epoch
d_epoch_1310 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_epoch_1310 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_epoch_38
      (coe d_epochStructure_1286 (coe v0))
-- Ledger.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1312 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_firstSlot_1312 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_firstSlot_40
      (coe d_epochStructure_1286 (coe v0))
-- Ledger.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1314 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1314 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_preoEpoch_46
      (coe d_epochStructure_1286 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1316 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_suc'7497'_1316 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_suc'7497'_44
      (coe d_epochStructure_1286 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1318 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_ℕtoEpoch_1318 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ℕtoEpoch_216
      (coe d_epochStructure_1286 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1322 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> Bool) ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Timelock_1322 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Script.du_DecEq'45'Timelock_498
      (coe d_crypto_1036 (coe v0)) (coe d_epochStructure_1286 (coe v0))
      v2
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1324 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1326 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1340 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Timelock
d_Timelock_1342 a0 = ()
-- Ledger.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1356 a0 a1 a2 a3 a4 a5 = ()
-- Ledger.Transaction.TransactionStructure._.evalTimelockᵇ
d_evalTimelock'7495'_1358 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> Bool) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_386 -> Bool
d_evalTimelock'7495'_1358 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Script.du_evalTimelock'7495'_452
      (coe d_crypto_1036 (coe v0)) v2 v3 v4 v5
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Dec-ValidP1Script
d_Dec'45'ValidP1Script_1362 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'ValidP1Script_1362 ~v0 = du_Dec'45'ValidP1Script_1362
du_Dec'45'ValidP1Script_1362 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45'ValidP1Script_1362
  = coe MAlonzo.Code.Ledger.Script.du_Dec'45'ValidP1Script_122
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1364 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'P1Script_1364 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1366 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1366 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1368 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 -> ()
d_P1Script_1368 = erased
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1370 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1370 = erased
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script?
d_validP1Script'63'_1372 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validP1Script'63'_1372 v0
  = coe MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._∙_
d__'8729'__1376 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1376 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._≈_
d__'8776'__1378 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1378 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1380 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1380 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1382 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_CostModel_1382 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1384 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_T_1384 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1386 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_THash_1386 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1388 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1388 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1390 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Datum_1390 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1392 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEQ'45'Prices_1392 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1394 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'CostModel_1394 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1396 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ExUnits_1396 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1398 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'LangDepView_1398 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_222 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-PlutusScript
d_DecEq'45'PlutusScript_1400 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PlutusScript_1400 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_218 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1402 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_1402 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1404 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1404 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1406 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_1406 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Carrier
d_Carrier_1408 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Carrier_1408 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1410 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1410 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1412 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_LangDepView_1412 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1414 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Language_1414 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1416 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_PlutusScript_1416 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1418 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Prices_1418 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1420 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Redeemer_1420 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1422 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1422 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1424 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1424 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1426 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny
d_language_1426 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_272 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.refl
d_refl_1428 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny
d_refl_1428 v0
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
                        (coe v0)))))))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1430 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  () -> AgdaAny -> AgdaAny
d_toData_1430 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_276 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1432 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1432 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript?
d_validPlutusScript'63'_1434 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validPlutusScript'63'_1434 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validPlutusScript'63'_270 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ε
d_ε_1436 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> AgdaAny
d_ε_1436 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._∙_
d__'8729'__1440 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1440 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._≈_
d__'8776'__1442 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1442 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1444 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1444 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1446 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_CostModel_1446 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1448 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_T_1448 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1450 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_THash_1450 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1452 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1452 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_202
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1454 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Datum_1454 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-ValidP1Script
d_Dec'45'ValidP1Script_1456 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'ValidP1Script_1456 ~v0 v1
  = du_Dec'45'ValidP1Script_1456 v1
du_Dec'45'ValidP1Script_1456 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45'ValidP1Script_1456 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Dec'45'ValidP1Script_122
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1458 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEQ'45'Prices_1458 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1460 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'CostModel_1460 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1462 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ExUnits_1462 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1464 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'LangDepView_1464 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_222
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1466 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'P1Script_1466 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-PlutusScript
d_DecEq'45'PlutusScript_1468 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PlutusScript_1468 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1470 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_1470 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1472 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1472 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1474 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_1474 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Carrier
d_Carrier_1476 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Carrier_1476 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1478 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1478 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1480 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1480 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1482 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1482 ~v0 = du_Hashable'45'Script_1482
du_Hashable'45'Script_1482 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_1482
  = coe MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_384
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1484 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_LangDepView_1484 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1486 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Language_1486 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1488 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_P1Script_1488 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1490 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_PlutusScript_1490 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1492 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Prices_1492 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1494 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Redeemer_1494 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1496 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Script_1496 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1498 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1498 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1500 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1500 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_202
         (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1502 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1502 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_302 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1504 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny
d_language_1504 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_272
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1506 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1506 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1508 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124
d_ps_1508 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.refl
d_refl_1510 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny
d_refl_1510 v0
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
                        (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))))))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1512 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  () -> AgdaAny -> AgdaAny
d_toData_1512 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_276
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1514 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1514 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validP1Script?
d_validP1Script'63'_1516 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validP1Script'63'_1516 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1518 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1518 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript?
d_validPlutusScript'63'_1520 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validPlutusScript'63'_1520 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validPlutusScript'63'_270
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ε
d_ε_1522 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> AgdaAny
d_ε_1522 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)))
-- Ledger.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1552 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278
d_scriptStructure_1552 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12247 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._∙_
d__'8729'__1556 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1556 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe d_scriptStructure_1552 (coe v0))))
-- Ledger.Transaction.TransactionStructure._._≈_
d__'8776'__1558 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1558 = erased
-- Ledger.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1560 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1560 = erased
-- Ledger.Transaction.TransactionStructure._.CostModel
d_CostModel_1562 :: T_TransactionStructure_20 -> ()
d_CostModel_1562 = erased
-- Ledger.Transaction.TransactionStructure._.T
d_T_1564 :: T_TransactionStructure_20 -> ()
d_T_1564 = erased
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1566 :: T_TransactionStructure_20 -> ()
d_THash_1566 = erased
-- Ledger.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1568 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1568 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_202
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Datum
d_Datum_1570 :: T_TransactionStructure_20 -> ()
d_Datum_1570 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-ValidP1Script
d_Dec'45'ValidP1Script_1572 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'ValidP1Script_1572 v0
  = let v1 = d_scriptStructure_1552 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.du_Dec'45'ValidP1Script_122
         (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1574 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEQ'45'Prices_1574 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1576 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'CostModel_1576 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1578 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ExUnits_1578 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1580 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'LangDepView_1580 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_222
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1582 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'P1Script_1582 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-PlutusScript
d_DecEq'45'PlutusScript_1584 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PlutusScript_1584 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1586 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_1586 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_294
                 (coe d_scriptStructure_1552 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1588 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1588 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_294
                 (coe d_scriptStructure_1552 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1590 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_1590 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Carrier
d_Carrier_1592 :: T_TransactionStructure_20 -> ()
d_Carrier_1592 = erased
-- Ledger.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1594 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1594 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1596 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1596 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1598 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1598 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_384
      (coe d_scriptStructure_1552 (coe v0))
-- Ledger.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1600 :: T_TransactionStructure_20 -> ()
d_LangDepView_1600 = erased
-- Ledger.Transaction.TransactionStructure._.Language
d_Language_1602 :: T_TransactionStructure_20 -> ()
d_Language_1602 = erased
-- Ledger.Transaction.TransactionStructure._.P1Script
d_P1Script_1604 :: T_TransactionStructure_20 -> ()
d_P1Script_1604 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1606 :: T_TransactionStructure_20 -> ()
d_PlutusScript_1606 = erased
-- Ledger.Transaction.TransactionStructure._.Prices
d_Prices_1608 :: T_TransactionStructure_20 -> ()
d_Prices_1608 = erased
-- Ledger.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1610 :: T_TransactionStructure_20 -> ()
d_Redeemer_1610 = erased
-- Ledger.Transaction.TransactionStructure._.Script
d_Script_1612 :: T_TransactionStructure_20 -> ()
d_Script_1612 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1614 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1614 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_294
                 (coe d_scriptStructure_1552 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1616 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1616 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_202
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe d_scriptStructure_1552 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1618 ::
  T_TransactionStructure_20 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1618 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_302
      (coe d_scriptStructure_1552 (coe v0))
-- Ledger.Transaction.TransactionStructure._.language
d_language_1620 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_language_1620 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_272
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.p1s
d_p1s_1622 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1622 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_292
      (coe d_scriptStructure_1552 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ps
d_ps_1624 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124
d_ps_1624 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_294
      (coe d_scriptStructure_1552 (coe v0))
-- Ledger.Transaction.TransactionStructure._.refl
d_refl_1626 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_refl_1626 v0
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
                           (coe d_scriptStructure_1552 (coe v0)))))))))
-- Ledger.Transaction.TransactionStructure._.toData
d_toData_1628 ::
  T_TransactionStructure_20 -> () -> AgdaAny -> AgdaAny
d_toData_1628 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_276
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1630 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1630 = erased
-- Ledger.Transaction.TransactionStructure._.validP1Script?
d_validP1Script'63'_1632 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validP1Script'63'_1632 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1634 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1634 = erased
-- Ledger.Transaction.TransactionStructure._.validPlutusScript?
d_validPlutusScript'63'_1636 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validPlutusScript'63'_1636 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validPlutusScript'63'_270
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe d_scriptStructure_1552 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ε
d_ε_1638 :: T_TransactionStructure_20 -> AgdaAny
d_ε_1638 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe d_scriptStructure_1552 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.Acnt
d_Acnt_1642 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1644 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'DrepThresholds_1644 ~v0
  = du_DecEq'45'DrepThresholds_1644
du_DecEq'45'DrepThresholds_1644 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'DrepThresholds_1644
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_378
-- Ledger.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1646 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PParams_1646 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_382
      (coe d_epochStructure_1286 (coe v0))
      (coe d_scriptStructure_1552 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1648 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PoolThresholds_1648 ~v0
  = du_DecEq'45'PoolThresholds_1648
du_DecEq'45'PoolThresholds_1648 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'PoolThresholds_1648
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_380
-- Ledger.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1650 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovParams
d_GovParams_1654 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_1660 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParams
d_PParams_1662 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_1664 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_1666 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ProtVer
d_ProtVer_1668 :: T_TransactionStructure_20 -> ()
d_ProtVer_1668 = erased
-- Ledger.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_1672 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> ()
d_paramsWellFormed_1672 = erased
-- Ledger.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_1676 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_128 -> Integer
d_reserves_1676 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_136 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_1678 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_128 -> Integer
d_treasury_1678 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_134 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_1682 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1682 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_172 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_1684 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1684 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_174 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_1686 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1686 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_176 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_1688 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1688 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_178 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_1690 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1690 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_180 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_1692 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1692 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_182 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_1694 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1694 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_184 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_1696 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1696 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_186 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_1698 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1698 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_188 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_1700 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1700 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_190 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-T
d_DecEq'45'T_1704 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_1704 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_1706 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1706 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1708 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'UpdT_1708 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_482 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.THash
d_THash_1710 :: MAlonzo.Code.Ledger.PParams.T_GovParams_422 -> ()
d_THash_1710 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_1712 :: MAlonzo.Code.Ledger.PParams.T_GovParams_422 -> ()
d_UpdateT_1712 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.T-Hashable
d_T'45'Hashable_1714 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1714 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_1716 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_1716 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_408
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_1718 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1718 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_1720 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384
d_ppUpd_1720 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_454 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_1722 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 -> AgdaAny -> Bool
d_ppdWellFormed_1722 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_410
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_1724 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_1724 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_420
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_1726 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_1726 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_1728 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_422 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_1728 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_406
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_454 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParams.Emax
d_Emax_1742 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_Emax_1742 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_292 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a
d_a_1744 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_a_1744 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_280 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.b
d_b_1746 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_b_1746 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_282 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_1748 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_ccMaxTermLength_1748 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_1750 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_ccMinSize_1750 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_310 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_1752 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_coinsPerUTxOWord_1752 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_288 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_1754 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_collateralPercentage_1754 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_294 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_1756 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_costmdls_1756 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_296 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_1758 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_drepActivity_1758 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_308 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_1760 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_drepDeposit_1760 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_306 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_1762 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150
d_drepThresholds_1762 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_1764 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_govActionDeposit_1764 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_1766 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_govActionLifetime_1766 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_1768 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_maxBlockExUnits_1768 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_278 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_1770 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxBlockSize_1770 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_264 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_1772 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxCollateralInputs_1772 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_272 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_1774 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxHeaderSize_1774 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_268 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_1776 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_maxTxExUnits_1776 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_276 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_1778 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxTxSize_1778 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_1780 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxValSize_1780 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_270 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_1782 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_minUTxOValue_1782 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minimumAVS
d_minimumAVS_1784 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_minimumAVS_1784 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minimumAVS_314 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_1786 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_poolDeposit_1786 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_286 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_1788 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192
d_poolThresholds_1788 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_300 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.prices
d_prices_1790 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> AgdaAny
d_prices_1790 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_290 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.pv
d_pv_1792 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1792 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_274 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_1796 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 -> ()
d_UpdateT_1796 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1798 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_1798 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_408 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1800 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 -> AgdaAny -> Bool
d_ppdWellFormed_1800 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_410 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_1802 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_1802 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_420 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_1804 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_1804 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_1806 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_1806 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_406 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_1810 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1810 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_202 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_1812 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1812 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_204 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_1814 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1814 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_1816 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1816 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_208 (coe v0)
-- Ledger.Transaction.TransactionStructure.govParams
d_govParams_1818 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_422
d_govParams_1818 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12247 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1822 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_1822 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470
         (coe d_govParams_1818 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1824 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1824 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470
         (coe d_govParams_1818 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1826 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'UpdT_1826 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_482
      (coe d_govParams_1818 (coe v0))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1828 :: T_TransactionStructure_20 -> ()
d_THash_1828 = erased
-- Ledger.Transaction.TransactionStructure._.UpdateT
d_UpdateT_1830 :: T_TransactionStructure_20 -> ()
d_UpdateT_1830 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1832 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1832 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470
         (coe d_govParams_1818 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_1834 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_1834 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_408
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_454
         (coe d_govParams_1818 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppHashingScheme
d_ppHashingScheme_1836 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1836 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_470
      (coe d_govParams_1818 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppUpd
d_ppUpd_1838 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384
d_ppUpd_1838 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_454
      (coe d_govParams_1818 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_1840 ::
  T_TransactionStructure_20 -> AgdaAny -> Bool
d_ppdWellFormed_1840 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_410
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_454
         (coe d_govParams_1818 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_1842 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_1842 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_420
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_454
         (coe d_govParams_1818 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_1844 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_1844 = erased
-- Ledger.Transaction.TransactionStructure._.updateGroups
d_updateGroups_1846 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_1846 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_406
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_454
         (coe d_govParams_1818 (coe v0)))
-- Ledger.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_1848 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
d_tokenAlgebra_1848 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12247 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._∙_
d__'8729'__1852 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1852 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe d_tokenAlgebra_1848 (coe v0)))
-- Ledger.Transaction.TransactionStructure._._≈_
d__'8776'__1854 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1854 = erased
-- Ledger.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__1856 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1856 = erased
-- Ledger.Transaction.TransactionStructure._.AssetName
d_AssetName_1858 :: T_TransactionStructure_20 -> ()
d_AssetName_1858 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_1860 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8804''7511'_1860 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
      (coe d_tokenAlgebra_1848 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_1862 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Value_1862 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
      (coe d_tokenAlgebra_1848 (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1864 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1866 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1868 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1870 :: T_TransactionStructure_20 -> ()
d_MemoryEstimate_1870 = erased
-- Ledger.Transaction.TransactionStructure._.Carrier
d_Carrier_1872 :: T_TransactionStructure_20 -> ()
d_Carrier_1872 = erased
-- Ledger.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1874 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1874 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
      (coe d_tokenAlgebra_1848 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addValue
d_addValue_1876 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1876 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_236
      (coe d_tokenAlgebra_1848 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin
d_coin_1878 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_coin_1878 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
      (coe d_tokenAlgebra_1848 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1880 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1880 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_226
      (coe d_tokenAlgebra_1848 (coe v0))
-- Ledger.Transaction.TransactionStructure._.inject
d_inject_1882 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_inject_1882 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
      (coe d_tokenAlgebra_1848 (coe v0))
-- Ledger.Transaction.TransactionStructure._.monoid
d_monoid_1884 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1884 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe d_tokenAlgebra_1848 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.policies
d_policies_1886 ::
  T_TransactionStructure_20 -> AgdaAny -> [AgdaAny]
d_policies_1886 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214
      (coe d_tokenAlgebra_1848 (coe v0))
-- Ledger.Transaction.TransactionStructure._.property
d_property_1888 ::
  T_TransactionStructure_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1888 = erased
-- Ledger.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_1890 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1890 v0
  = let v1
          = MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
              (coe d_tokenAlgebra_1848 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.refl
d_refl_1892 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_refl_1892 v0
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
                        MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                        (coe d_tokenAlgebra_1848 (coe v0))))))))
-- Ledger.Transaction.TransactionStructure._.size
d_size_1894 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_size_1894 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_size_216
      (coe d_tokenAlgebra_1848 (coe v0))
-- Ledger.Transaction.TransactionStructure._.specialAsset
d_specialAsset_1896 :: T_TransactionStructure_20 -> AgdaAny
d_specialAsset_1896 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_222
      (coe d_tokenAlgebra_1848 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_1898 ::
  T_TransactionStructure_20 -> [AgdaAny] -> AgdaAny
d_sum'7515'_1898 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_238
      (coe d_tokenAlgebra_1848 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ε
d_ε_1900 :: T_TransactionStructure_20 -> AgdaAny
d_ε_1900 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe d_tokenAlgebra_1848 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_1904 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1904 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1906 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1906 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1908 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1908 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1910 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1910 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_1912 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1912 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_1916 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1916 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_1918 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1918 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1920 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1920 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1922 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1922 ~v0 = du_isMagmaIsomorphism_1922
du_isMagmaIsomorphism_1922 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1922 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1924 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1924 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1924 v2
du_isMagmaMonomorphism_1924 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1924 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1926 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1926 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1928 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1928 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1930 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1930 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
               (coe v0))))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1932 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1932 ~v0 ~v1 v2 = du_isRelIsomorphism_1932 v2
du_isRelIsomorphism_1932 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1932 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1934 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1934 ~v0 ~v1 v2 = du_isRelMonomorphism_1934 v2
du_isRelMonomorphism_1934 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1934 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.surjective
d_surjective_1936 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1936 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1938 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1938 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_1940 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1940 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_1944 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1944 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_1946 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1946 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1948 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1948 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1950 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1950 ~v0 = du_isMagmaMonomorphism_1950
du_isMagmaMonomorphism_1950 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1950 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1952 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1952 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1954 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1954 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1956 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1956 ~v0 ~v1 v2 = du_isRelMonomorphism_1956 v2
du_isRelMonomorphism_1956 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1956 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1958 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1958 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_1960 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1960 = erased
-- Ledger.Transaction.TransactionStructure.txidBytes
d_txidBytes_1962 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_txidBytes_1962 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12247 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.networkId
d_networkId_1964 :: T_TransactionStructure_20 -> AgdaAny
d_networkId_1964 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_12247 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.govStructure
d_govStructure_1966 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4
d_govStructure_1966 v0
  = coe
      MAlonzo.Code.Ledger.GovStructure.C_GovStructure'46'constructor_2389
      (d_DecEq'45'TxId_1002 (coe v0))
      (MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
         (coe d_globalConstants_1016 (coe v0)))
      (d_crypto_1036 (coe v0)) (d_epochStructure_1286 (coe v0))
      (d_scriptStructure_1552 (coe v0)) (d_govParams_1818 (coe v0))
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__1970 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.Anchor
d_Anchor_1972 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-GovRole
d_DecEq'45'GovRole_1980 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'GovRole_1980 ~v0 = du_DecEq'45'GovRole_1980
du_DecEq'45'GovRole_1980 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'GovRole_1980
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_792
-- Ledger.Transaction.TransactionStructure._.DecEq-VDeleg
d_DecEq'45'VDeleg_1982 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'VDeleg_1982 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_796
      (coe d_govStructure_1966 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Vote
d_DecEq'45'Vote_1984 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Vote_1984 ~v0 = du_DecEq'45'Vote_1984
du_DecEq'45'Vote_1984 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'Vote_1984
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_794
-- Ledger.Transaction.TransactionStructure._.EnactEnv
d_EnactEnv_2000 a0 = ()
-- Ledger.Transaction.TransactionStructure._.EnactState
d_EnactState_2002 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovAction
d_GovAction_2004 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovActionID
d_GovActionID_2006 :: T_TransactionStructure_20 -> ()
d_GovActionID_2006 = erased
-- Ledger.Transaction.TransactionStructure._.GovProposal
d_GovProposal_2008 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovRole
d_GovRole_2010 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovVote
d_GovVote_2012 a0 = ()
-- Ledger.Transaction.TransactionStructure._.HashProtected
d_HashProtected_2014 :: T_TransactionStructure_20 -> () -> ()
d_HashProtected_2014 = erased
-- Ledger.Transaction.TransactionStructure._.NeedsHash
d_NeedsHash_2018 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504 -> ()
d_NeedsHash_2018 = erased
-- Ledger.Transaction.TransactionStructure._.VDeleg
d_VDeleg_2032 a0 = ()
-- Ledger.Transaction.TransactionStructure._.actionWellFormed
d_actionWellFormed_2036 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504 -> Bool
d_actionWellFormed_2036 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed_520
      (coe d_govStructure_1966 (coe v0))
-- Ledger.Transaction.TransactionStructure._.canVote
d_canVote_2038 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_478 -> ()
d_canVote_2038 = erased
-- Ledger.Transaction.TransactionStructure._.ccCreds
d_ccCreds_2040 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ccCreds_2040 ~v0 = du_ccCreds_2040
du_ccCreds_2040 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_ccCreds_2040
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_ccCreds_758
-- Ledger.Transaction.TransactionStructure._.defer
d_defer_2044 ::
  T_TransactionStructure_20 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_defer_2044 ~v0 = du_defer_2044
du_defer_2044 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_defer_2044
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_defer_470
-- Ledger.Transaction.TransactionStructure._.maximum
d_maximum_2046 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_2046 ~v0 = du_maximum_2046
du_maximum_2046 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_2046
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_472
-- Ledger.Transaction.TransactionStructure._.threshold
d_threshold_2050 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_478 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_threshold_2050 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_threshold_536
      (coe d_govStructure_1966 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Anchor.hash
d_hash_2072 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494 -> AgdaAny
d_hash_2072 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_502 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Anchor.url
d_url_2074 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2074 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_500 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactEnv.epoch
d_epoch_2078 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactEnv_720 -> AgdaAny
d_epoch_2078 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_epoch_732 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactEnv.gid
d_gid_2080 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactEnv_720 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2080 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_728 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactEnv.treasury
d_treasury_2082 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactEnv_720 -> Integer
d_treasury_2082 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_treasury_730 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactState.cc
d_cc_2086 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactState_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_2086 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_cc_748 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactState.constitution
d_constitution_2088 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactState_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2088 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_constitution_750 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactState.pparams
d_pparams_2090 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactState_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2090 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_pparams_754 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactState.pv
d_pv_2092 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactState_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2092 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_pv_752 (coe v0)
-- Ledger.Transaction.TransactionStructure._.EnactState.withdrawals
d_withdrawals_2094 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_EnactState_736 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_2094 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_withdrawals_756 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.action
d_action_2114 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_698 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504
d_action_2114 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_712 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.anchor
d_anchor_2116 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_698 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494
d_anchor_2116 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_718 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.deposit
d_deposit_2118 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_698 -> Integer
d_deposit_2118 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_716 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.prevAction
d_prevAction_2120 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_698 -> AgdaAny
d_prevAction_2120 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_714 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.returnAddr
d_returnAddr_2122 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_698 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_2122 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_710 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.anchor
d_anchor_2134 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494
d_anchor_2134 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_696 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.credential
d_credential_2136 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_credential_2136 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_credential_692 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.gid
d_gid_2138 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2138 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_688 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.role
d_role_2140 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_478
d_role_2140 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_role_690 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.vote
d_vote_2142 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_668
d_vote_2142 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_694 (coe v0)
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2154 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2156 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_690 ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_750 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_676] ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_750 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2156 = erased
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2158 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2160 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2162 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2164 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.CertEnv
d_CertEnv_2174 a0 = ()
-- Ledger.Transaction.TransactionStructure._.CertState
d_CertState_2176 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DCert
d_DCert_2178 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DState
d_DState_2182 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DelegEnv
d_DelegEnv_2184 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GState
d_GState_2192 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovCertEnv
d_GovCertEnv_2194 :: T_TransactionStructure_20 -> ()
d_GovCertEnv_2194 = erased
-- Ledger.Transaction.TransactionStructure._.PState
d_PState_2200 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolEnv
d_PoolEnv_2202 :: T_TransactionStructure_20 -> ()
d_PoolEnv_2202 = erased
-- Ledger.Transaction.TransactionStructure._.PoolParams
d_PoolParams_2204 a0 = ()
-- Ledger.Transaction.TransactionStructure._.cwitness
d_cwitness_2208 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_676 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cwitness_2208 = coe MAlonzo.Code.Ledger.Deleg.d_cwitness_856
-- Ledger.Transaction.TransactionStructure._.getDRepVote
d_getDRepVote_2214 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_2214 ~v0 = du_getDRepVote_2214
du_getDRepVote_2214 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getDRepVote_2214
  = coe MAlonzo.Code.Ledger.Deleg.du_getDRepVote_878
-- Ledger.Transaction.TransactionStructure._.requiredDeposit
d_requiredDeposit_2220 ::
  T_TransactionStructure_20 ->
  () ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe AgdaAny -> Integer
d_requiredDeposit_2220 ~v0 = du_requiredDeposit_2220
du_requiredDeposit_2220 ::
  () ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe AgdaAny -> Integer
du_requiredDeposit_2220 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Deleg.du_requiredDeposit_872 v1 v2
-- Ledger.Transaction.TransactionStructure._.CertEnv.epoch
d_epoch_2268 :: MAlonzo.Code.Ledger.Deleg.T_CertEnv_690 -> AgdaAny
d_epoch_2268 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_epoch_700 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.pp
d_pp_2270 ::
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_690 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pp_2270 v0 = coe MAlonzo.Code.Ledger.Deleg.d_pp_702 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.votes
d_votes_2272 ::
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_690 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676]
d_votes_2272 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_votes_704 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.wdrls
d_wdrls_2274 ::
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2274 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_wdrls_706 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.dState
d_dState_2278 ::
  MAlonzo.Code.Ledger.Deleg.T_CertState_750 ->
  MAlonzo.Code.Ledger.Deleg.T_DState_710
d_dState_2278 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_dState_758 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.gState
d_gState_2280 ::
  MAlonzo.Code.Ledger.Deleg.T_CertState_750 ->
  MAlonzo.Code.Ledger.Deleg.T_GState_738
d_gState_2280 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_gState_762 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.pState
d_pState_2282 ::
  MAlonzo.Code.Ledger.Deleg.T_CertState_750 ->
  MAlonzo.Code.Ledger.Deleg.T_PState_726
d_pState_2282 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pState_760 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.rewards
d_rewards_2300 ::
  MAlonzo.Code.Ledger.Deleg.T_DState_710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2300 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_rewards_722 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.stakeDelegs
d_stakeDelegs_2302 ::
  MAlonzo.Code.Ledger.Deleg.T_DState_710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2302 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_720 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.voteDelegs
d_voteDelegs_2304 ::
  MAlonzo.Code.Ledger.Deleg.T_DState_710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2304 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_voteDelegs_718 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pools
d_pools_2308 ::
  MAlonzo.Code.Ledger.Deleg.T_DelegEnv_766 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2308 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pools_774 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pparams
d_pparams_2310 ::
  MAlonzo.Code.Ledger.Deleg.T_DelegEnv_766 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_2310 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pparams_772 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.ccHotKeys
d_ccHotKeys_2314 ::
  MAlonzo.Code.Ledger.Deleg.T_GState_738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2314 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_ccHotKeys_746 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.dreps
d_dreps_2316 ::
  MAlonzo.Code.Ledger.Deleg.T_GState_738 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2316 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_dreps_744 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.pools
d_pools_2320 ::
  MAlonzo.Code.Ledger.Deleg.T_PState_726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2320 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pools_732 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.retiring
d_retiring_2322 ::
  MAlonzo.Code.Ledger.Deleg.T_PState_726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2322 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_retiring_734 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolParams.rewardAddr
d_rewardAddr_2326 ::
  MAlonzo.Code.Ledger.Deleg.T_PoolParams_670 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_2326 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_rewardAddr_674 (coe v0)
-- Ledger.Transaction.TransactionStructure.TxIn
d_TxIn_2328 :: T_TransactionStructure_20 -> ()
d_TxIn_2328 = erased
-- Ledger.Transaction.TransactionStructure.TxOut
d_TxOut_2330 :: T_TransactionStructure_20 -> ()
d_TxOut_2330 = erased
-- Ledger.Transaction.TransactionStructure.UTxO
d_UTxO_2332 :: T_TransactionStructure_20 -> ()
d_UTxO_2332 = erased
-- Ledger.Transaction.TransactionStructure.Wdrl
d_Wdrl_2334 :: T_TransactionStructure_20 -> ()
d_Wdrl_2334 = erased
-- Ledger.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2336 :: T_TransactionStructure_20 -> ()
d_RdmrPtr_2336 = erased
-- Ledger.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2338 :: T_TransactionStructure_20 -> ()
d_ProposedPPUpdates_2338 = erased
-- Ledger.Transaction.TransactionStructure.Update
d_Update_2340 :: T_TransactionStructure_20 -> ()
d_Update_2340 = erased
-- Ledger.Transaction.TransactionStructure.TxBody
d_TxBody_2342 a0 = ()
data T_TxBody_2342
  = C_TxBody'46'constructor_15389 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Deleg.T_DCert_676]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676]
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_698] Integer
                                  (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) (Maybe AgdaAny)
                                  (Maybe AgdaAny) Integer AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.TxBody.txins
d_txins_2380 ::
  T_TxBody_2342 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2380 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txouts
d_txouts_2382 ::
  T_TxBody_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2382 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txfee
d_txfee_2384 :: T_TxBody_2342 -> Integer
d_txfee_2384 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.mint
d_mint_2386 :: T_TxBody_2342 -> AgdaAny
d_mint_2386 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_2388 ::
  T_TxBody_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2388 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_2390 ::
  T_TxBody_2342 -> [MAlonzo.Code.Ledger.Deleg.T_DCert_676]
d_txcerts_2390 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_2392 ::
  T_TxBody_2342 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2392 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvote
d_txvote_2394 ::
  T_TxBody_2342 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676]
d_txvote_2394 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txprop
d_txprop_2396 ::
  T_TxBody_2342 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_698]
d_txprop_2396 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_2398 :: T_TxBody_2342 -> Integer
d_txdonation_2398 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txup
d_txup_2400 ::
  T_TxBody_2342 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2400 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_2402 :: T_TxBody_2342 -> Maybe AgdaAny
d_txADhash_2402 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.netwrk
d_netwrk_2404 :: T_TxBody_2342 -> Maybe AgdaAny
d_netwrk_2404 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txsize
d_txsize_2406 :: T_TxBody_2342 -> Integer
d_txsize_2406 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txid
d_txid_2408 :: T_TxBody_2342 -> AgdaAny
d_txid_2408 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.collateral
d_collateral_2410 ::
  T_TxBody_2342 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2410 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_2412 :: T_TxBody_2342 -> [AgdaAny]
d_reqSigHash_2412 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_2414 :: T_TxBody_2342 -> Maybe AgdaAny
d_scriptIntHash_2414 v0
  = case coe v0 of
      C_TxBody'46'constructor_15389 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_2416 a0 = ()
data T_TxWitnesses_2416
  = C_TxWitnesses'46'constructor_15579 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_2426 ::
  T_TxWitnesses_2416 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2426 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_15579 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_2428 ::
  T_TxWitnesses_2416 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2428 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_15579 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_2430 ::
  T_TxWitnesses_2416 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2430 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_15579 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_2432 ::
  T_TxWitnesses_2416 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2432 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_15579 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_2434 ::
  T_TransactionStructure_20 -> T_TxWitnesses_2416 -> [AgdaAny]
d_scriptsP1_2434 ~v0 v1 = du_scriptsP1_2434 v1
du_scriptsP1_2434 :: T_TxWitnesses_2416 -> [AgdaAny]
du_scriptsP1_2434 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_2428 (coe v0))
-- Ledger.Transaction.TransactionStructure.Tx
d_Tx_2436 a0 = ()
data T_Tx_2436
  = C_Tx'46'constructor_15771 T_TxBody_2342 T_TxWitnesses_2416
                              (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.Tx.body
d_body_2444 :: T_Tx_2436 -> T_TxBody_2342
d_body_2444 v0
  = case coe v0 of
      C_Tx'46'constructor_15771 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.wits
d_wits_2446 :: T_Tx_2436 -> T_TxWitnesses_2416
d_wits_2446 v0
  = case coe v0 of
      C_Tx'46'constructor_15771 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.txAD
d_txAD_2448 :: T_Tx_2436 -> Maybe AgdaAny
d_txAD_2448 v0
  = case coe v0 of
      C_Tx'46'constructor_15771 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValue
d_getValue_2450 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_2450 ~v0 v1 = du_getValue_2450 v1
du_getValue_2450 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_2450 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_2454 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_2454 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__686
         (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
               (coe d_DecEq'45'TxId_1002 (coe v0))
               (coe d_DecEq'45'Ix_1000 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_478
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8638'''__956
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe v2)
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Ledger.Address.du_isVKeyAddr'63'_116
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))))
-- Ledger.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_2460 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_2460 ~v0 v1 = du_scriptOuts_2460 v1
du_scriptOuts_2460 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_2460 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_632
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
         erased erased erased
         (coe MAlonzo.Code.Ledger.Address.du_isScriptAddr'63'_126)
         (\ v1 ->
            case coe v1 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
                -> case coe v3 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5 -> coe v4
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe v0)
-- Ledger.Transaction.TransactionStructure.txinsScript
d_txinsScript_2468 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_2468 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__686
         (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
               (coe d_DecEq'45'TxId_1002 (coe v0))
               (coe d_DecEq'45'Ix_1000 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_478
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe du_scriptOuts_2460 (coe v2)))))
-- Ledger.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_2474 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2436 -> Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_2474 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_if'7496'_then_else__66
      (coe
         MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
         (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
            (coe d_crypto_1036 (coe v0)))
         v1
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_462
               (coe du_m_2484 (coe v0) (coe v2)))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1314
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_m_2484 (coe v0) (coe v2)) (coe v1) (coe v3))))
      (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Transaction.TransactionStructure._.m
d_m_2484 ::
  T_TransactionStructure_20 ->
  AgdaAny -> T_Tx_2436 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2484 v0 ~v1 v2 = du_m_2484 v0 v2
du_m_2484 ::
  T_TransactionStructure_20 ->
  T_Tx_2436 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2484 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_16
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_302
         (d_scriptStructure_1552 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112
            (coe
               MAlonzo.Code.Ledger.Script.d_p1s_292
               (coe d_scriptStructure_1552 (coe v0))))
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_294
               (coe d_scriptStructure_1552 (coe v0)))))
      (coe d_scripts_2428 (coe d_wits_2446 (coe v1)))
-- Ledger.Transaction.TransactionStructure.isP2Script
d_isP2Script_2486 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_2486 ~v0 v1 = du_isP2Script_2486 v1
du_isP2Script_2486 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isP2Script_2486 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v0))
-- Ledger.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_2488 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_2488 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
              (d_tokenAlgebra_1848 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
