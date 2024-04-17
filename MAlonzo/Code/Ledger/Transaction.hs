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
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.MOf
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.HashMap
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- Ledger.Transaction.Tag
d_Tag_4 = ()
data T_Tag_4
  = C_Spend_6 | C_Mint_8 | C_Cert_10 | C_Rewrd_12 | C_Vote_14 |
    C_Propose_16
-- Ledger.Transaction.DecEq-Tag
d_DecEq'45'Tag_18 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Tag_18
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_Spend_6
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_Spend_6
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
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
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
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
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
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
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
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
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
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
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
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
  = C_TransactionStructure'46'constructor_11503 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                                MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_222
                                                MAlonzo.Code.Ledger.Crypto.T_Crypto_128
                                                MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
                                                MAlonzo.Code.Ledger.Script.T_ScriptStructure_358
                                                MAlonzo.Code.Ledger.PParams.T_GovParams_494
                                                MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
                                                (AgdaAny -> AgdaAny) AgdaAny
-- Ledger.Transaction._.Ser
d_Ser_86 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_222 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 -> ()
d_Ser_86 = erased
-- Ledger.Transaction._.TokenAlgebra
d_TokenAlgebra_108 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Ledger.Transaction.TransactionStructure.Ix
d_Ix_986 :: T_TransactionStructure_20 -> ()
d_Ix_986 = erased
-- Ledger.Transaction.TransactionStructure.TxId
d_TxId_988 :: T_TransactionStructure_20 -> ()
d_TxId_988 = erased
-- Ledger.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_990 :: T_TransactionStructure_20 -> ()
d_AuxiliaryData_990 = erased
-- Ledger.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_992 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_992 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11503 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_994 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_994 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11503 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_996 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_996 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11503 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1000 :: T_TransactionStructure_20 -> ()
d_THash_1000 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1002 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1002 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe d_adHashingScheme_996 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1004 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1004 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe d_adHashingScheme_996 (coe v0))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1006 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1006 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe d_adHashingScheme_996 (coe v0))
-- Ledger.Transaction.TransactionStructure.globalConstants
d_globalConstants_1008 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_222
d_globalConstants_1008 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11503 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1012 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1012 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
      (coe d_globalConstants_1008 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Network
d_Network_1014 :: T_TransactionStructure_20 -> ()
d_Network_1014 = erased
-- Ledger.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1016 :: T_TransactionStructure_20 -> AgdaAny
d_NetworkId_1016 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_250
      (coe d_globalConstants_1008 (coe v0))
-- Ledger.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1018 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_NonZero'45'SlotsPerEpoch'7580'_1018 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_244
      (coe d_globalConstants_1008 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Quorum
d_Quorum_1020 :: T_TransactionStructure_20 -> Integer
d_Quorum_1020 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_248
      (coe d_globalConstants_1008 (coe v0))
-- Ledger.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1022 :: T_TransactionStructure_20 -> Integer
d_SlotsPerEpoch'7580'_1022 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_242
      (coe d_globalConstants_1008 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1024 ::
  T_TransactionStructure_20 -> Integer
d_StabilityWindow'7580'_1024 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_246
      (coe d_globalConstants_1008 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1026 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_ℕEpochStructure_1026 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_252
      (coe d_globalConstants_1008 (coe v0))
-- Ledger.Transaction.TransactionStructure.crypto
d_crypto_1028 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_crypto_1028 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11503 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1032 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1032 v0
  = let v1 = d_crypto_1028 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1034 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1034 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
      (coe d_crypto_1028 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1036 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1036 v0
  = let v1 = d_crypto_1028 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_126
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1038 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1038 v0
  = let v1 = d_crypto_1028 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1040 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1040 v0
  = let v1 = d_crypto_1028 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1042 :: T_TransactionStructure_20 -> ()
d_THash_1042 = erased
-- Ledger.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1044 :: T_TransactionStructure_20 -> ()
d_KeyPair_1044 = erased
-- Ledger.Transaction.TransactionStructure._.SKey
d_SKey_1046 :: T_TransactionStructure_20 -> ()
d_SKey_1046 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1048 :: T_TransactionStructure_20 -> ()
d_ScriptHash_1048 = erased
-- Ledger.Transaction.TransactionStructure._.Ser
d_Ser_1050 :: T_TransactionStructure_20 -> ()
d_Ser_1050 = erased
-- Ledger.Transaction.TransactionStructure._.Sig
d_Sig_1052 :: T_TransactionStructure_20 -> ()
d_Sig_1052 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1054 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1054 v0
  = let v1 = d_crypto_1028 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.VKey
d_VKey_1056 :: T_TransactionStructure_20 -> ()
d_VKey_1056 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1058 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1058 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned
d_isSigned_1060 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1060 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1062 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1062 v0
  = let v1 = d_crypto_1028 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_122
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.khs
d_khs_1064 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1064 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_1028 (coe v0))
-- Ledger.Transaction.TransactionStructure._.pkk
d_pkk_1066 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_1066 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe d_crypto_1028 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sign
d_sign_1068 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1068 v0
  = let v1 = d_crypto_1028 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_102
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1072 a0 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1076 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1076 ~v0 v1 = du__'8729'__1076 v1
du__'8729'__1076 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__1076 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1078 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1078 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1080 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1080 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.AssetName
d_AssetName_1082 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_AssetName_1082 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1084 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1084 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_226 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1086 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1086 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1088 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1090 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1092 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.MemoryEstimate
d_MemoryEstimate_1094 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_MemoryEstimate_1094 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1096 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_Value_1096 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1098 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1098 ~v0
  = du_Value'45'CommutativeMonoid_1098
du_Value'45'CommutativeMonoid_1098 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du_Value'45'CommutativeMonoid_1098
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1100 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1100 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1102 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1102 ~v0 = du_addValue_1102
du_addValue_1102 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
du_addValue_1102
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_228
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1104 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_coin_1104 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1106 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1106 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1108 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1108 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_222
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1110 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> AgdaAny
d_inject_1110 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1112 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1112 ~v0 v1 = du_monoid_1112 v1
du_monoid_1112 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
du_monoid_1112 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1114 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> [AgdaAny]
d_policies_1114 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.property
d_property_1116 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1116 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1118 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1118 ~v0 v1 = du_rawMonoid_1118 v1
du_rawMonoid_1118 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
du_rawMonoid_1118 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1120 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_size_1120 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.specialAsset
d_specialAsset_1122 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_specialAsset_1122 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_218 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1124 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1124 ~v0 = du_sum'7515'_1124
du_sum'7515'_1124 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1124
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_246
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1126 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_ε_1126 ~v0 v1 = du_ε_1126 v1
du_ε_1126 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
du_ε_1126 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1130 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1130 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1132 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1132 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1134 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1134 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1136 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1136 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1138 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1138 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1142 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1144 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1144 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1146 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1146 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1148 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1148 ~v0 ~v1 = du_isMagmaIsomorphism_1148
du_isMagmaIsomorphism_1148 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1148 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1150 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1150 ~v0 ~v1 ~v2 v3
  = du_isMagmaMonomorphism_1150 v3
du_isMagmaMonomorphism_1150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1150 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1152 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1152 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1154 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1156 v0
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
d_isRelIsomorphism_1158 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1158 ~v0 ~v1 ~v2 v3
  = du_isRelIsomorphism_1158 v3
du_isRelIsomorphism_1158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1158 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1160 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1160 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1160 v3
du_isRelMonomorphism_1160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1160 v0
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
d_surjective_1162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1164 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1166 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1170 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1172 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1174 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1176 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1176 ~v0 ~v1 = du_isMagmaMonomorphism_1176
du_isMagmaMonomorphism_1176 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1176 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1178 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1180 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1182 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1182 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1182 v3
du_isRelMonomorphism_1182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1184 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1186 = erased
-- Ledger.Transaction.TransactionStructure._.Addr
d_Addr_1190 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1190 = erased
-- Ledger.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1192 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1194 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.Credential
d_Credential_1196 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_1196 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1198 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1198 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1198
du_Dec'45'isScript_1198 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1198
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
-- Ledger.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1200 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1200 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1200
du_Dec'45'isVKey_1200 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1200
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_108
-- Ledger.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1202 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1202 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1202 v1 v2 v3
du_DecEq'45'BaseAddr_1202 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1202 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1204 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1204 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1204 v1 v2 v3
du_DecEq'45'BootstrapAddr_1204 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1204 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1206 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1206 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1206 v1 v2 v3
du_DecEq'45'RwdAddr_1206 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1206 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1208 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1212 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1212 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1214 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1214 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1216 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1216 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1218 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1218 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1220 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1220 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1222 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1222 = erased
-- Ledger.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1226 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
d_getScriptHash_1226 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1226
du_getScriptHash_1226 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
du_getScriptHash_1226
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_148
-- Ledger.Transaction.TransactionStructure._.isScript
d_isScript_1228 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1230 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1230 = erased
-- Ledger.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1232 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> ()
d_isScriptRwdAddr_1232 = erased
-- Ledger.Transaction.TransactionStructure._.isVKey
d_isVKey_1234 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1236 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1236 = erased
-- Ledger.Transaction.TransactionStructure._.netId
d_netId_1238 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1238 ~v0 ~v1 ~v2 ~v3 = du_netId_1238
du_netId_1238 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1238 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.Transaction.TransactionStructure._.payCred
d_payCred_1240 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_payCred_1240 ~v0 ~v1 ~v2 ~v3 = du_payCred_1240
du_payCred_1240 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_payCred_1240 = coe MAlonzo.Code.Ledger.Address.du_payCred_90
-- Ledger.Transaction.TransactionStructure._.BaseAddr.net
d_net_1244 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_30 -> AgdaAny
d_net_1244 v0 = coe MAlonzo.Code.Ledger.Address.d_net_38 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1246 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1246 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_40 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1248 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1248 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_42 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1252 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> Integer
d_attrsSize_1252 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_56 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1254 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> AgdaAny
d_net_1254 v0 = coe MAlonzo.Code.Ledger.Address.d_net_52 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1256 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1256 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_54 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.net
d_net_1260 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> AgdaAny
d_net_1260 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1262 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1262 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)
-- Ledger.Transaction.TransactionStructure.epochStructure
d_epochStructure_1272 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_1272 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11503 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1276 ::
  T_TransactionStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1276 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1278 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1278 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1280 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1280 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_38
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1282 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_1282 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Epoch
d_Epoch_1284 :: T_TransactionStructure_20 -> ()
d_Epoch_1284 = erased
-- Ledger.Transaction.TransactionStructure._.Slot
d_Slot_1286 :: T_TransactionStructure_20 -> ()
d_Slot_1286 = erased
-- Ledger.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1288 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_1288 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1290 :: T_TransactionStructure_20 -> AgdaAny
d_StabilityWindow_1290 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_44
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1292 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1292 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addSlot
d_addSlot_1294 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1294 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_214
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.epoch
d_epoch_1296 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_epoch_1296 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1298 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_firstSlot_1298 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1300 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1300 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1302 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_suc'7497'_1302 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_46
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1304 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_ℕtoEpoch_1304 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Dec-evalTimelock
d_Dec'45'evalTimelock_1308 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_220 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1308 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_278
      (coe d_crypto_1028 (coe v0)) (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1310 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1310 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_234
      (coe d_crypto_1028 (coe v0)) (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1312 a0 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1314 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80
d_P1ScriptStructure'45'TL_1314 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_356
      (coe d_crypto_1028 (coe v0)) (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1316 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1330 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Timelock
d_Timelock_1332 a0 = ()
-- Ledger.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1346 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1350 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1350 v0
  = coe MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_96 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1352 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1352 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_100 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1354 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1354 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_98 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1356 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80 -> ()
d_P1Script_1356 = erased
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1358 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1358 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1362 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1362 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1364 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_CostModel_1364 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1366 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_T_1366 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1368 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_THash_1368 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1370 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1370 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_162 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1372 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_Datum_1372 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1374 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1374 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1376 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1376 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_188 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1378 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1378 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_180 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1380 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1380 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_186 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1382 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1382 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_182 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1384 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1384 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_162 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1386 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1386 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_162 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1388 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1388 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_176
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1390 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_ExUnits_1390 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1392 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1392 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_178 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1394 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_LangDepView_1394 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1396 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_Language_1396 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1398 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_PlutusScript_1398 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1400 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_Prices_1400 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1402 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_Redeemer_1402 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1404 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1404 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_162 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1406 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1406 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_162 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1408 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  AgdaAny -> AgdaAny
d_language_1408 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_214 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1410 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  () -> AgdaAny -> AgdaAny
d_toData_1410 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_218 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1412 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1412 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1416 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1416 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1418 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 -> ()
d_CostModel_1418 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1420 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 -> ()
d_T_1420 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1422 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 -> ()
d_THash_1422 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1424 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1424 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_162
      (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1426 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 -> ()
d_Datum_1426 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1428 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_220 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1428 v0
  = let v1 = d_crypto_1028 (coe v0) in
    coe
      (let v2 = d_epochStructure_1272 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_96
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_396 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1430 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1430 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1432 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1432 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_188
      (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1434 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1434 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_180
      (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1436 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1436 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_186
      (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1438 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1438 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_182
      (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1440 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1440 v0
  = let v1 = d_crypto_1028 (coe v0) in
    coe
      (let v2 = d_epochStructure_1272 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_100
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_396 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1442 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1442 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_162
              (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1444 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1444 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_162
              (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1446 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1446 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_176
      (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1448 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 -> ()
d_ExUnits_1448 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_1450 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1450 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_394 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1452 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1452 v0
  = let v1 = d_crypto_1028 (coe v0) in
    coe
      (let v2 = d_epochStructure_1272 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_98
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_396 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1454 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1454 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_178
      (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1456 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1456 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_468
      (coe d_crypto_1028 (coe v0)) (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1458 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 -> ()
d_LangDepView_1458 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1460 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 -> ()
d_Language_1460 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1462 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 -> ()
d_P1Script_1462 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1464 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 -> ()
d_PlutusScript_1464 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1466 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 -> ()
d_Prices_1466 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1468 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 -> ()
d_Redeemer_1468 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1470 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 -> ()
d_Script_1470 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1472 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1472 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_162
              (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1474 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1474 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_162
         (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1476 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1476 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_392 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1478 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  AgdaAny -> AgdaAny
d_language_1478 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1480 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80
d_p1s_1480 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_396 (coe d_crypto_1028 (coe v0))
      (coe d_epochStructure_1272 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1482 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102
d_ps_1482 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1484 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  () -> AgdaAny -> AgdaAny
d_toData_1484 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_410 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1486 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_220 -> ()
d_validP1Script_1486 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1488 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1488 = erased
-- Ledger.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1518 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_358
d_scriptStructure_1518 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11503 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1522 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1522 = erased
-- Ledger.Transaction.TransactionStructure._.CostModel
d_CostModel_1524 :: T_TransactionStructure_20 -> ()
d_CostModel_1524 = erased
-- Ledger.Transaction.TransactionStructure._.T
d_T_1526 :: T_TransactionStructure_20 -> ()
d_T_1526 = erased
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1528 :: T_TransactionStructure_20 -> ()
d_THash_1528 = erased
-- Ledger.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1530 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1530 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_162
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_410
         (coe d_scriptStructure_1518 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Datum
d_Datum_1532 :: T_TransactionStructure_20 -> ()
d_Datum_1532 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1534 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_220 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1534 v0
  = let v1 = d_crypto_1028 (coe v0) in
    coe
      (let v2 = d_epochStructure_1272 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1518 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_96
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_396 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1536 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1536 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_212
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_410
         (coe d_scriptStructure_1518 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1538 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1538 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_188
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_410
         (coe d_scriptStructure_1518 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1540 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1540 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_180
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_410
         (coe d_scriptStructure_1518 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1542 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1542 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_186
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_410
         (coe d_scriptStructure_1518 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1544 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1544 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_182
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_410
         (coe d_scriptStructure_1518 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1546 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1546 v0
  = let v1 = d_crypto_1028 (coe v0) in
    coe
      (let v2 = d_epochStructure_1272 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1518 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_100
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_396 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1548 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1548 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_162
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_410
                 (coe d_scriptStructure_1518 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1550 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1550 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_162
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_410
                 (coe d_scriptStructure_1518 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1552 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1552 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_176
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_410
         (coe d_scriptStructure_1518 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1554 :: T_TransactionStructure_20 -> ()
d_ExUnits_1554 = erased
-- Ledger.Transaction.TransactionStructure._.Hash-Timelock
d_Hash'45'Timelock_1556 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1556 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_394
      (coe d_scriptStructure_1518 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1558 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1558 v0
  = let v1 = d_crypto_1028 (coe v0) in
    coe
      (let v2 = d_epochStructure_1272 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1518 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_98
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_396 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1560 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1560 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_178
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_410
         (coe d_scriptStructure_1518 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1562 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1562 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_468
      (coe d_crypto_1028 (coe v0)) (coe d_epochStructure_1272 (coe v0))
      (coe d_scriptStructure_1518 (coe v0))
-- Ledger.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1564 :: T_TransactionStructure_20 -> ()
d_LangDepView_1564 = erased
-- Ledger.Transaction.TransactionStructure._.Language
d_Language_1566 :: T_TransactionStructure_20 -> ()
d_Language_1566 = erased
-- Ledger.Transaction.TransactionStructure._.P1Script
d_P1Script_1568 :: T_TransactionStructure_20 -> ()
d_P1Script_1568 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1570 :: T_TransactionStructure_20 -> ()
d_PlutusScript_1570 = erased
-- Ledger.Transaction.TransactionStructure._.Prices
d_Prices_1572 :: T_TransactionStructure_20 -> ()
d_Prices_1572 = erased
-- Ledger.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1574 :: T_TransactionStructure_20 -> ()
d_Redeemer_1574 = erased
-- Ledger.Transaction.TransactionStructure._.Script
d_Script_1576 :: T_TransactionStructure_20 -> ()
d_Script_1576 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1578 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1578 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_162
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_410
                 (coe d_scriptStructure_1518 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1580 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1580 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_162
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_410
            (coe d_scriptStructure_1518 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1582 ::
  T_TransactionStructure_20 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1582 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_392
      (coe d_scriptStructure_1518 (coe v0))
-- Ledger.Transaction.TransactionStructure._.language
d_language_1584 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_language_1584 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_410
         (coe d_scriptStructure_1518 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.p1s
d_p1s_1586 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80
d_p1s_1586 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_396 (coe d_crypto_1028 (coe v0))
      (coe d_epochStructure_1272 (coe v0))
      (coe d_scriptStructure_1518 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ps
d_ps_1588 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102
d_ps_1588 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_410
      (coe d_scriptStructure_1518 (coe v0))
-- Ledger.Transaction.TransactionStructure._.toData
d_toData_1590 ::
  T_TransactionStructure_20 -> () -> AgdaAny -> AgdaAny
d_toData_1590 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_410
         (coe d_scriptStructure_1518 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1592 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_220 -> ()
d_validP1Script_1592 = erased
-- Ledger.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1594 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1594 = erased
-- Ledger.Transaction.TransactionStructure._.Acnt
d_Acnt_1598 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1600 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1600 ~v0
  = du_DecEq'45'DrepThresholds_1600
du_DecEq'45'DrepThresholds_1600 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1600
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_396
-- Ledger.Transaction.TransactionStructure._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1602 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1602 ~v0 = du_DecEq'45'PParamGroup_1602
du_DecEq'45'PParamGroup_1602 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1602
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_402
-- Ledger.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1604 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1604 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_400
      (coe d_epochStructure_1272 (coe v0))
      (coe d_scriptStructure_1518 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1606 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1606 ~v0
  = du_DecEq'45'PoolThresholds_1606
du_DecEq'45'PoolThresholds_1606 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1606
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_398
-- Ledger.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1608 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovParams
d_GovParams_1612 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_1618 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParams
d_PParams_1620 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_1622 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_1624 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ProtVer
d_ProtVer_1626 :: T_TransactionStructure_20 -> ()
d_ProtVer_1626 = erased
-- Ledger.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_1636 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> ()
d_paramsWellFormed_1636 = erased
-- Ledger.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_1638 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_1640 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1640 ~v0 = du_pvCanFollow'63'_1640
du_pvCanFollow'63'_1640 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1640
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_408
-- Ledger.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_1644 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_122 -> Integer
d_reserves_1644 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_130 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_1646 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_122 -> Integer
d_treasury_1646 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_128 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_1650 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_152 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1650 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_174 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_1652 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_152 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1652 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_176 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_1654 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_152 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1654 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_178 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_1656 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_152 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1656 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_180 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_1658 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_152 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1658 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_182 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_1660 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_152 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1660 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_184 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_1662 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_152 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1662 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_186 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_1664 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_152 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1664 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_188 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_1666 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_152 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1666 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_190 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_1668 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_152 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1668 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_192 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-T
d_DecEq'45'T_1672 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1672 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_1674 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1674 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1676 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1676 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_554 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.THash
d_THash_1678 :: MAlonzo.Code.Ledger.PParams.T_GovParams_494 -> ()
d_THash_1678 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_1680 :: MAlonzo.Code.Ledger.PParams.T_GovParams_494 -> ()
d_UpdateT_1680 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.T-Hashable
d_T'45'Hashable_1682 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1682 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_1684 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_216 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_216
d_applyUpdate_1684 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_480
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_1686 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1686 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_1688 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456
d_ppUpd_1688 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_1690 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 -> AgdaAny -> Bool
d_ppdWellFormed_1690 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_482
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_1692 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_1692 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_492
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_1694 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_1694 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_1696 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_1696 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_478
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParams.Emax
d_Emax_1712 :: MAlonzo.Code.Ledger.PParams.T_PParams_216 -> AgdaAny
d_Emax_1712 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_306 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a
d_a_1714 :: MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_a_1714 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_290 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a0
d_a0_1716 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1716 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_304 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.b
d_b_1718 :: MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_b_1718 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_292 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_1720 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_ccMaxTermLength_1720 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_328 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_1722 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_ccMinSize_1722 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_326 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_1724 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_coinsPerUTxOWord_1724 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_1726 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_collateralPercentage_1726 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_310 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_1728 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> AgdaAny
d_costmdls_1728 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_312 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_1730 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> AgdaAny
d_drepActivity_1730 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_324 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_1732 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_drepDeposit_1732 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_322 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_1734 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_152
d_drepThresholds_1734 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_314 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_1736 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_govActionDeposit_1736 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_320 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_1738 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_govActionLifetime_1738 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_318 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_1740 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> AgdaAny
d_maxBlockExUnits_1740 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_288 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_1742 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_maxBlockSize_1742 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_274 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_1744 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_maxCollateralInputs_1744 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_282 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_1746 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_maxHeaderSize_1746 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_278 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_1748 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> AgdaAny
d_maxTxExUnits_1748 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_286 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_1750 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_maxTxSize_1750 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_276 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_1752 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_maxValSize_1752 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_280 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1754 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1754 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_300
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_1756 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_minUTxOValue_1756 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_294 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.nopt
d_nopt_1758 :: MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_nopt_1758 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_308 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_1760 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> Integer
d_poolDeposit_1760 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_296 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_1762 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_194
d_poolThresholds_1762 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_316 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.prices
d_prices_1764 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 -> AgdaAny
d_prices_1764 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_302 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.pv
d_pv_1766 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1766 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_284 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_1770 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 -> ()
d_UpdateT_1770 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1772 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_216 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_216
d_applyUpdate_1772 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_480 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1774 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 -> AgdaAny -> Bool
d_ppdWellFormed_1774 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_482 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_1776 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_1776 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_492 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_1778 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_1778 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_1780 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_1780 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_478 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_1784 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_194 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1784 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_1786 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_194 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1786 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_1788 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_194 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1788 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_1790 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_194 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1790 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q5e
d_Q5e_1792 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_194 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_1792 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_214 (coe v0)
-- Ledger.Transaction.TransactionStructure.govParams
d_govParams_1800 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_494
d_govParams_1800 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11503 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1804 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1804 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542
         (coe d_govParams_1800 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1806 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1806 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542
         (coe d_govParams_1800 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1808 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1808 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_554
      (coe d_govParams_1800 (coe v0))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1810 :: T_TransactionStructure_20 -> ()
d_THash_1810 = erased
-- Ledger.Transaction.TransactionStructure._.UpdateT
d_UpdateT_1812 :: T_TransactionStructure_20 -> ()
d_UpdateT_1812 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1814 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1814 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542
         (coe d_govParams_1800 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_1816 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_216 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_216
d_applyUpdate_1816 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_480
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_526
         (coe d_govParams_1800 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppHashingScheme
d_ppHashingScheme_1818 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1818 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542
      (coe d_govParams_1800 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppUpd
d_ppUpd_1820 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456
d_ppUpd_1820 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_526
      (coe d_govParams_1800 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_1822 ::
  T_TransactionStructure_20 -> AgdaAny -> Bool
d_ppdWellFormed_1822 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_482
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_526
         (coe d_govParams_1800 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_1824 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_216 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_1824 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_492
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_526
         (coe d_govParams_1800 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_1826 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_1826 = erased
-- Ledger.Transaction.TransactionStructure._.updateGroups
d_updateGroups_1828 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_1828 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_478
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_526
         (coe d_govParams_1800 (coe v0)))
-- Ledger.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_1830 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
d_tokenAlgebra_1830 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11503 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._∙_
d__'8729'__1834 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1834 v0
  = let v1 = d_tokenAlgebra_1830 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._._≈_
d__'8776'__1836 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1836 = erased
-- Ledger.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__1838 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1838 = erased
-- Ledger.Transaction.TransactionStructure._.AssetName
d_AssetName_1840 :: T_TransactionStructure_20 -> ()
d_AssetName_1840 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_1842 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1842 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_226
      (coe d_tokenAlgebra_1830 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_1844 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1844 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
      (coe d_tokenAlgebra_1830 (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1846 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1848 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1850 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1852 :: T_TransactionStructure_20 -> ()
d_MemoryEstimate_1852 = erased
-- Ledger.Transaction.TransactionStructure._.Value
d_Value_1854 :: T_TransactionStructure_20 -> ()
d_Value_1854 = erased
-- Ledger.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1856 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1856 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
      (coe d_tokenAlgebra_1830 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1858 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1858 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe d_tokenAlgebra_1830 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addValue
d_addValue_1860 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1860 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_228
      (coe d_tokenAlgebra_1830 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin
d_coin_1862 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_coin_1862 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
      (coe d_tokenAlgebra_1830 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_1864 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1864 = erased
-- Ledger.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1866 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1866 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_222
      (coe d_tokenAlgebra_1830 (coe v0))
-- Ledger.Transaction.TransactionStructure._.inject
d_inject_1868 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_inject_1868 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
      (coe d_tokenAlgebra_1830 (coe v0))
-- Ledger.Transaction.TransactionStructure._.monoid
d_monoid_1870 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1870 v0
  = let v1 = d_tokenAlgebra_1830 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_890
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.policies
d_policies_1872 ::
  T_TransactionStructure_20 -> AgdaAny -> [AgdaAny]
d_policies_1872 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
      (coe d_tokenAlgebra_1830 (coe v0))
-- Ledger.Transaction.TransactionStructure._.property
d_property_1874 ::
  T_TransactionStructure_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1874 = erased
-- Ledger.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_1876 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1876 v0
  = let v1 = d_tokenAlgebra_1830 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v2))))
-- Ledger.Transaction.TransactionStructure._.size
d_size_1878 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_size_1878 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_size_212
      (coe d_tokenAlgebra_1830 (coe v0))
-- Ledger.Transaction.TransactionStructure._.specialAsset
d_specialAsset_1880 :: T_TransactionStructure_20 -> AgdaAny
d_specialAsset_1880 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_218
      (coe d_tokenAlgebra_1830 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_1882 ::
  T_TransactionStructure_20 -> [AgdaAny] -> AgdaAny
d_sum'7515'_1882 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_246
      (coe d_tokenAlgebra_1830 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ε
d_ε_1884 :: T_TransactionStructure_20 -> AgdaAny
d_ε_1884 v0
  = let v1 = d_tokenAlgebra_1830 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d_ε_842
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_1888 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1888 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1890 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1890 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1892 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1892 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1894 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1894 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_1896 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1896 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_1900 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1900 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_1902 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1902 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1904 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1904 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1906 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1906 ~v0 = du_isMagmaIsomorphism_1906
du_isMagmaIsomorphism_1906 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1906 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1908 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1908 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1908 v2
du_isMagmaMonomorphism_1908 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1908 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1910 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1910 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1912 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1912 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1914 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1914 v0
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
d_isRelIsomorphism_1916 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1916 ~v0 ~v1 v2 = du_isRelIsomorphism_1916 v2
du_isRelIsomorphism_1916 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1916 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1918 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1918 ~v0 ~v1 v2 = du_isRelMonomorphism_1918 v2
du_isRelMonomorphism_1918 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1918 v0
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
d_surjective_1920 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1920 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1922 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1922 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_1924 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1924 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_1928 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1928 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_1930 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1930 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1932 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1932 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1934 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1934 ~v0 = du_isMagmaMonomorphism_1934
du_isMagmaMonomorphism_1934 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1934 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1936 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1936 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1938 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1938 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1940 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1940 ~v0 ~v1 v2 = du_isRelMonomorphism_1940 v2
du_isRelMonomorphism_1940 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1940 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1942 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1942 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_1944 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1944 = erased
-- Ledger.Transaction.TransactionStructure.txidBytes
d_txidBytes_1946 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_txidBytes_1946 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11503 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.networkId
d_networkId_1948 :: T_TransactionStructure_20 -> AgdaAny
d_networkId_1948 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11503 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.govStructure
d_govStructure_1950 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_1950 v0
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.C_GovStructure'46'constructor_2367
      (d_DecEq'45'TxId_994 (coe v0))
      (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
         (coe d_globalConstants_1008 (coe v0)))
      (d_crypto_1028 (coe v0)) (d_epochStructure_1272 (coe v0))
      (d_scriptStructure_1518 (coe v0)) (d_govParams_1800 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Anchor
d_Anchor_1954 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-GovRole
d_DecEq'45'GovRole_1962 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1962 ~v0 = du_DecEq'45'GovRole_1962
du_DecEq'45'GovRole_1962 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1962
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_612
-- Ledger.Transaction.TransactionStructure._.DecEq-VDeleg
d_DecEq'45'VDeleg_1964 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1964 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
      (coe d_govStructure_1950 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Vote
d_DecEq'45'Vote_1966 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1966 ~v0 = du_DecEq'45'Vote_1966
du_DecEq'45'Vote_1966 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1966
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_614
-- Ledger.Transaction.TransactionStructure._.GovAction
d_GovAction_1968 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovActionID
d_GovActionID_1970 :: T_TransactionStructure_20 -> ()
d_GovActionID_1970 = erased
-- Ledger.Transaction.TransactionStructure._.GovActionState
d_GovActionState_1972 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovProposal
d_GovProposal_1974 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovRole
d_GovRole_1976 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovVote
d_GovVote_1978 a0 = ()
-- Ledger.Transaction.TransactionStructure._.HashProtected
d_HashProtected_1980 :: T_TransactionStructure_20 -> () -> ()
d_HashProtected_1980 = erased
-- Ledger.Transaction.TransactionStructure._.NeedsHash
d_NeedsHash_1984 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 -> ()
d_NeedsHash_1984 = erased
-- Ledger.Transaction.TransactionStructure._.VDeleg
d_VDeleg_1998 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Voter
d_Voter_2000 :: T_TransactionStructure_20 -> ()
d_Voter_2000 = erased
-- Ledger.Transaction.TransactionStructure._.actionWellFormed
d_actionWellFormed_2004 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 -> Bool
d_actionWellFormed_2004 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed_528
      (coe d_govStructure_1950 (coe v0))
-- Ledger.Transaction.TransactionStructure._.maximum
d_maximum_2008 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_2008 ~v0 = du_maximum_2008
du_maximum_2008 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_2008
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_478
-- Ledger.Transaction.TransactionStructure._.Anchor.hash
d_hash_2014 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_502 -> AgdaAny
d_hash_2014 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_510 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Anchor.url
d_url_2016 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_502 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2016 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_508 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.action
d_action_2036 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512
d_action_2036 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_608 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.expiresIn
d_expiresIn_2038 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  AgdaAny
d_expiresIn_2038 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_606 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.prevAction
d_prevAction_2040 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  AgdaAny
d_prevAction_2040 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_610 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.returnAddr
d_returnAddr_2042 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_2042 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_604 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.votes
d_votes_2044 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2044 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_602 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.action
d_action_2048 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512
d_action_2048 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_578 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.anchor
d_anchor_2050 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_502
d_anchor_2050 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_588 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.deposit
d_deposit_2052 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 -> Integer
d_deposit_2052 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_584 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.policy
d_policy_2054 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 ->
  Maybe AgdaAny
d_policy_2054 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_582 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.prevAction
d_prevAction_2056 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 -> AgdaAny
d_prevAction_2056 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_580 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.returnAddr
d_returnAddr_2058 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_2058 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_586 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.anchor
d_anchor_2070 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_502
d_anchor_2070 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_562 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.gid
d_gid_2072 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2072 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_556 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.vote
d_vote_2074 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_538
d_vote_2074 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_560 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.voter
d_voter_2076 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2076 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_558 (coe v0)
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2088 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2090 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2090 = erased
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2092 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2094 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2096 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2098 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.CertEnv
d_CertEnv_2108 a0 = ()
-- Ledger.Transaction.TransactionStructure._.CertState
d_CertState_2110 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DCert
d_DCert_2112 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DState
d_DState_2118 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DelegEnv
d_DelegEnv_2120 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GState
d_GState_2128 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovCertEnv
d_GovCertEnv_2130 :: T_TransactionStructure_20 -> ()
d_GovCertEnv_2130 = erased
-- Ledger.Transaction.TransactionStructure._.PState
d_PState_2136 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolEnv
d_PoolEnv_2138 :: T_TransactionStructure_20 -> ()
d_PoolEnv_2138 = erased
-- Ledger.Transaction.TransactionStructure._.PoolParams
d_PoolParams_2140 a0 = ()
-- Ledger.Transaction.TransactionStructure._.cwitness
d_cwitness_2144 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cwitness_2144 = coe MAlonzo.Code.Ledger.Deleg.d_cwitness_650
-- Ledger.Transaction.TransactionStructure._.getDRepVote
d_getDRepVote_2152 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_2152 ~v0 = du_getDRepVote_2152
du_getDRepVote_2152 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getDRepVote_2152
  = coe MAlonzo.Code.Ledger.Deleg.du_getDRepVote_824
-- Ledger.Transaction.TransactionStructure._.CertEnv.epoch
d_epoch_2206 :: MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 -> AgdaAny
d_epoch_2206 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_epoch_676 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.pp
d_pp_2208 ::
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_216
d_pp_2208 v0 = coe MAlonzo.Code.Ledger.Deleg.d_pp_678 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.votes
d_votes_2210 ::
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546]
d_votes_2210 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_votes_680 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.wdrls
d_wdrls_2212 ::
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2212 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_wdrls_682 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.dState
d_dState_2216 ::
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 ->
  MAlonzo.Code.Ledger.Deleg.T_DState_686
d_dState_2216 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_dState_734 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.gState
d_gState_2218 ::
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 ->
  MAlonzo.Code.Ledger.Deleg.T_GState_714
d_gState_2218 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_gState_738 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.pState
d_pState_2220 ::
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 ->
  MAlonzo.Code.Ledger.Deleg.T_PState_702
d_pState_2220 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pState_736 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.rewards
d_rewards_2240 ::
  MAlonzo.Code.Ledger.Deleg.T_DState_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2240 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_rewards_698 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.stakeDelegs
d_stakeDelegs_2242 ::
  MAlonzo.Code.Ledger.Deleg.T_DState_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2242 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_696 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.voteDelegs
d_voteDelegs_2244 ::
  MAlonzo.Code.Ledger.Deleg.T_DState_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2244 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pools
d_pools_2248 ::
  MAlonzo.Code.Ledger.Deleg.T_DelegEnv_742 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2248 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pools_750 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pparams
d_pparams_2250 ::
  MAlonzo.Code.Ledger.Deleg.T_DelegEnv_742 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_216
d_pparams_2250 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pparams_748 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.ccHotKeys
d_ccHotKeys_2254 ::
  MAlonzo.Code.Ledger.Deleg.T_GState_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2254 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_ccHotKeys_722 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.dreps
d_dreps_2256 ::
  MAlonzo.Code.Ledger.Deleg.T_GState_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2256 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_dreps_720 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.pools
d_pools_2260 ::
  MAlonzo.Code.Ledger.Deleg.T_PState_702 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2260 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pools_708 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.retiring
d_retiring_2262 ::
  MAlonzo.Code.Ledger.Deleg.T_PState_702 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2262 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_retiring_710 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolParams.rewardAddr
d_rewardAddr_2266 ::
  MAlonzo.Code.Ledger.Deleg.T_PoolParams_628 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_2266 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_rewardAddr_632 (coe v0)
-- Ledger.Transaction.TransactionStructure.TxIn
d_TxIn_2268 :: T_TransactionStructure_20 -> ()
d_TxIn_2268 = erased
-- Ledger.Transaction.TransactionStructure.TxOut
d_TxOut_2270 :: T_TransactionStructure_20 -> ()
d_TxOut_2270 = erased
-- Ledger.Transaction.TransactionStructure.UTxO
d_UTxO_2272 :: T_TransactionStructure_20 -> ()
d_UTxO_2272 = erased
-- Ledger.Transaction.TransactionStructure.Wdrl
d_Wdrl_2274 :: T_TransactionStructure_20 -> ()
d_Wdrl_2274 = erased
-- Ledger.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2276 :: T_TransactionStructure_20 -> ()
d_RdmrPtr_2276 = erased
-- Ledger.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2278 :: T_TransactionStructure_20 -> ()
d_ProposedPPUpdates_2278 = erased
-- Ledger.Transaction.TransactionStructure.Update
d_Update_2280 :: T_TransactionStructure_20 -> ()
d_Update_2280 = erased
-- Ledger.Transaction.TransactionStructure.TxBody
d_TxBody_2282 a0 = ()
data T_TxBody_2282
  = C_TxBody'46'constructor_14585 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer AgdaAny
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546]
                                  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564] Integer
                                  (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) (Maybe AgdaAny)
                                  (Maybe AgdaAny) Integer AgdaAny
                                  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] [AgdaAny] (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.TxBody.txins
d_txins_2322 ::
  T_TxBody_2282 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2322 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_2324 ::
  T_TxBody_2282 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2324 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txouts
d_txouts_2326 ::
  T_TxBody_2282 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2326 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txfee
d_txfee_2328 :: T_TxBody_2282 -> Integer
d_txfee_2328 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.mint
d_mint_2330 :: T_TxBody_2282 -> AgdaAny
d_mint_2330 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_2332 ::
  T_TxBody_2282 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2332 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_2334 ::
  T_TxBody_2282 -> [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
d_txcerts_2334 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_2336 ::
  T_TxBody_2282 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2336 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvote
d_txvote_2338 ::
  T_TxBody_2282 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546]
d_txvote_2338 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txprop
d_txprop_2340 ::
  T_TxBody_2282 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564]
d_txprop_2340 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_2342 :: T_TxBody_2282 -> Integer
d_txdonation_2342 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txup
d_txup_2344 ::
  T_TxBody_2282 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2344 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_2346 :: T_TxBody_2282 -> Maybe AgdaAny
d_txADhash_2346 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.netwrk
d_netwrk_2348 :: T_TxBody_2282 -> Maybe AgdaAny
d_netwrk_2348 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txsize
d_txsize_2350 :: T_TxBody_2282 -> Integer
d_txsize_2350 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txid
d_txid_2352 :: T_TxBody_2282 -> AgdaAny
d_txid_2352 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.collateral
d_collateral_2354 ::
  T_TxBody_2282 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2354 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_2356 :: T_TxBody_2282 -> [AgdaAny]
d_reqSigHash_2356 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_2358 :: T_TxBody_2282 -> Maybe AgdaAny
d_scriptIntHash_2358 v0
  = case coe v0 of
      C_TxBody'46'constructor_14585 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_2360 a0 = ()
data T_TxWitnesses_2360
  = C_TxWitnesses'46'constructor_14779 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_2370 ::
  T_TxWitnesses_2360 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2370 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_14779 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_2372 ::
  T_TxWitnesses_2360 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2372 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_14779 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_2374 ::
  T_TxWitnesses_2360 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2374 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_14779 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_2376 ::
  T_TxWitnesses_2360 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2376 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_14779 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_2378 ::
  T_TransactionStructure_20 ->
  T_TxWitnesses_2360 -> [MAlonzo.Code.Ledger.Script.T_Timelock_220]
d_scriptsP1_2378 ~v0 v1 = du_scriptsP1_2378 v1
du_scriptsP1_2378 ::
  T_TxWitnesses_2360 -> [MAlonzo.Code.Ledger.Script.T_Timelock_220]
du_scriptsP1_2378 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_2372 (coe v0))
-- Ledger.Transaction.TransactionStructure.Tx
d_Tx_2380 a0 = ()
data T_Tx_2380
  = C_Tx'46'constructor_14985 T_TxBody_2282 T_TxWitnesses_2360 Bool
                              (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.Tx.body
d_body_2390 :: T_Tx_2380 -> T_TxBody_2282
d_body_2390 v0
  = case coe v0 of
      C_Tx'46'constructor_14985 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.wits
d_wits_2392 :: T_Tx_2380 -> T_TxWitnesses_2360
d_wits_2392 v0
  = case coe v0 of
      C_Tx'46'constructor_14985 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.isValid
d_isValid_2394 :: T_Tx_2380 -> Bool
d_isValid_2394 v0
  = case coe v0 of
      C_Tx'46'constructor_14985 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.txAD
d_txAD_2396 :: T_Tx_2380 -> Maybe AgdaAny
d_txAD_2396 v0
  = case coe v0 of
      C_Tx'46'constructor_14985 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValue
d_getValue_2398 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_2398 ~v0 v1 = du_getValue_2398 v1
du_getValue_2398 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_2398 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxOutʰ
d_TxOut'688'_2402 :: T_TransactionStructure_20 -> ()
d_TxOut'688'_2402 = erased
-- Ledger.Transaction.TransactionStructure.txOutHash
d_txOutHash_2404 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_2404 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                 (coe
                                    MAlonzo.Code.Data.Maybe.Base.du_map_68
                                    (MAlonzo.Code.Interface.Hashable.d_hash_16
                                       (coe
                                          MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_392
                                          (d_scriptStructure_1518 (coe v0)) erased erased erased
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_98
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_p1s_396
                                                (coe d_crypto_1028 (coe v0))
                                                (coe d_epochStructure_1272 (coe v0))
                                                (coe d_scriptStructure_1518 (coe v0))))
                                          (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_178
                                             (coe
                                                MAlonzo.Code.Ledger.Script.d_ps_410
                                                (coe d_scriptStructure_1518 (coe v0))))))
                                    v7)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValueʰ
d_getValue'688'_2414 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_2414 ~v0 v1 = du_getValue'688'_2414 v1
du_getValue'688'_2414 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue'688'_2414 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_2418 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_2418 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__686
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe d_DecEq'45'TxId_994 (coe v0))
               (coe d_DecEq'45'Ix_992 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_492
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du__'8638'''__1042 (coe v2)
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_108
                       (coe
                          MAlonzo.Code.Ledger.Address.du_payCred_90
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))))))
-- Ledger.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_2424 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_2424 ~v0 v1 = du_scriptOuts_2424 v1
du_scriptOuts_2424 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_2424 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1026
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
           (coe
              MAlonzo.Code.Ledger.Address.du_payCred_90
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
      v0
-- Ledger.Transaction.TransactionStructure.txinsScript
d_txinsScript_2432 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_2432 v0 v1 v2
  = let v3
          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__686
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v3))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
               (coe d_DecEq'45'TxId_994 (coe v0))
               (coe d_DecEq'45'Ix_992 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_492
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_496)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe du_scriptOuts_2424 (coe v2)))))
-- Ledger.Transaction.TransactionStructure.refScripts
d_refScripts_2438 ::
  T_TransactionStructure_20 ->
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_2438 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (\ v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
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
                  (coe d_DecEq'45'TxId_994 (coe v0))
                  (coe d_DecEq'45'Ix_992 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__662
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe d_txins_2322 (coe d_body_2390 (coe v1)))
               (coe d_refInputs_2324 (coe d_body_2390 (coe v1))))))
-- Ledger.Transaction.TransactionStructure._._.collateral
d_collateral_2450 ::
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2450 v0 ~v1 = du_collateral_2450 v0
du_collateral_2450 ::
  T_Tx_2380 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2450 v0
  = coe d_collateral_2354 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.mint
d_mint_2452 ::
  T_Tx_2380 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_2452 v0 ~v1 = du_mint_2452 v0
du_mint_2452 :: T_Tx_2380 -> AgdaAny
du_mint_2452 v0 = coe d_mint_2330 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.netwrk
d_netwrk_2454 ::
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_netwrk_2454 v0 ~v1 = du_netwrk_2454 v0
du_netwrk_2454 :: T_Tx_2380 -> Maybe AgdaAny
du_netwrk_2454 v0 = coe d_netwrk_2348 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.refInputs
d_refInputs_2456 ::
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2456 v0 ~v1 = du_refInputs_2456 v0
du_refInputs_2456 ::
  T_Tx_2380 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2456 v0
  = coe d_refInputs_2324 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_2458 ::
  T_Tx_2380 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_2458 v0 ~v1 = du_reqSigHash_2458 v0
du_reqSigHash_2458 :: T_Tx_2380 -> [AgdaAny]
du_reqSigHash_2458 v0
  = coe d_reqSigHash_2356 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_2460 ::
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_2460 v0 ~v1 = du_scriptIntHash_2460 v0
du_scriptIntHash_2460 :: T_Tx_2380 -> Maybe AgdaAny
du_scriptIntHash_2460 v0
  = coe d_scriptIntHash_2358 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txADhash
d_txADhash_2462 ::
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_2462 v0 ~v1 = du_txADhash_2462 v0
du_txADhash_2462 :: T_Tx_2380 -> Maybe AgdaAny
du_txADhash_2462 v0
  = coe d_txADhash_2346 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txcerts
d_txcerts_2464 ::
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
d_txcerts_2464 v0 ~v1 = du_txcerts_2464 v0
du_txcerts_2464 ::
  T_Tx_2380 -> [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
du_txcerts_2464 v0 = coe d_txcerts_2334 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txdonation
d_txdonation_2466 ::
  T_Tx_2380 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_2466 v0 ~v1 = du_txdonation_2466 v0
du_txdonation_2466 :: T_Tx_2380 -> Integer
du_txdonation_2466 v0
  = coe d_txdonation_2342 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txfee
d_txfee_2468 ::
  T_Tx_2380 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_2468 v0 ~v1 = du_txfee_2468 v0
du_txfee_2468 :: T_Tx_2380 -> Integer
du_txfee_2468 v0 = coe d_txfee_2328 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txid
d_txid_2470 ::
  T_Tx_2380 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_2470 v0 ~v1 = du_txid_2470 v0
du_txid_2470 :: T_Tx_2380 -> AgdaAny
du_txid_2470 v0 = coe d_txid_2352 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txins
d_txins_2472 ::
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2472 v0 ~v1 = du_txins_2472 v0
du_txins_2472 ::
  T_Tx_2380 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2472 v0 = coe d_txins_2322 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txouts
d_txouts_2474 ::
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2474 v0 ~v1 = du_txouts_2474 v0
du_txouts_2474 ::
  T_Tx_2380 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2474 v0 = coe d_txouts_2326 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txprop
d_txprop_2476 ::
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564]
d_txprop_2476 v0 ~v1 = du_txprop_2476 v0
du_txprop_2476 ::
  T_Tx_2380 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564]
du_txprop_2476 v0 = coe d_txprop_2340 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txsize
d_txsize_2478 ::
  T_Tx_2380 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txsize_2478 v0 ~v1 = du_txsize_2478 v0
du_txsize_2478 :: T_Tx_2380 -> Integer
du_txsize_2478 v0 = coe d_txsize_2350 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txup
d_txup_2480 ::
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2480 v0 ~v1 = du_txup_2480 v0
du_txup_2480 ::
  T_Tx_2380 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_2480 v0 = coe d_txup_2344 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvldt
d_txvldt_2482 ::
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2482 v0 ~v1 = du_txvldt_2482 v0
du_txvldt_2482 ::
  T_Tx_2380 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2482 v0 = coe d_txvldt_2332 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvote
d_txvote_2484 ::
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546]
d_txvote_2484 v0 ~v1 = du_txvote_2484 v0
du_txvote_2484 ::
  T_Tx_2380 -> [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546]
du_txvote_2484 v0 = coe d_txvote_2338 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_2486 ::
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2486 v0 ~v1 = du_txwdrls_2486 v0
du_txwdrls_2486 ::
  T_Tx_2380 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2486 v0 = coe d_txwdrls_2336 (coe d_body_2390 (coe v0))
-- Ledger.Transaction.TransactionStructure.txscripts
d_txscripts_2488 ::
  T_TransactionStructure_20 ->
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_2488 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe d_scripts_2372 (coe d_wits_2392 (coe v1)))
      (coe d_refScripts_2438 (coe v0) (coe v1) (coe v2))
-- Ledger.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_2498 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_2498 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1592
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
            (coe d_crypto_1028 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_482
               (coe du_m_2510 (coe v0) (coe v2) (coe v3)))))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1426
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_m_2510 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Transaction.TransactionStructure._.m
d_m_2510 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2510 v0 ~v1 v2 v3 = du_m_2510 v0 v2 v3
du_m_2510 ::
  T_TransactionStructure_20 ->
  T_Tx_2380 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2510 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_18
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_392
         (d_scriptStructure_1518 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_98
            (coe
               MAlonzo.Code.Ledger.Script.d_p1s_396 (coe d_crypto_1028 (coe v0))
               (coe d_epochStructure_1272 (coe v0))
               (coe d_scriptStructure_1518 (coe v0))))
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_178
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_410
               (coe d_scriptStructure_1518 (coe v0)))))
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe d_crypto_1028 (coe v0)))
      (coe d_txscripts_2488 (coe v0) (coe v1) (coe v2))
-- Ledger.Transaction.TransactionStructure.isP2Script
d_isP2Script_2512 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_2512 ~v0 v1 = du_isP2Script_2512 v1
du_isP2Script_2512 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isP2Script_2512 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v0))
-- Ledger.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_2514 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_2514 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
              (d_tokenAlgebra_1830 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
