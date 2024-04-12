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
  = C_TransactionStructure'46'constructor_11557 MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
                                                MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                                MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_222
                                                MAlonzo.Code.Ledger.Crypto.T_Crypto_128
                                                MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
                                                MAlonzo.Code.Ledger.Script.T_ScriptStructure_362
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
d_Ix_990 :: T_TransactionStructure_20 -> ()
d_Ix_990 = erased
-- Ledger.Transaction.TransactionStructure.TxId
d_TxId_992 :: T_TransactionStructure_20 -> ()
d_TxId_992 = erased
-- Ledger.Transaction.TransactionStructure.AuxiliaryData
d_AuxiliaryData_994 :: T_TransactionStructure_20 -> ()
d_AuxiliaryData_994 = erased
-- Ledger.Transaction.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_996 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_996 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11557 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_998 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_998 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11557 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.adHashingScheme
d_adHashingScheme_1000 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1000 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11557 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1004 :: T_TransactionStructure_20 -> ()
d_THash_1004 = erased
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1006 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1006 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe d_adHashingScheme_1000 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1008 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1008 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe d_adHashingScheme_1000 (coe v0))
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1010 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1010 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe d_adHashingScheme_1000 (coe v0))
-- Ledger.Transaction.TransactionStructure.globalConstants
d_globalConstants_1012 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_222
d_globalConstants_1012 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11557 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-Netw
d_DecEq'45'Netw_1016 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1016 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
      (coe d_globalConstants_1012 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Network
d_Network_1018 :: T_TransactionStructure_20 -> ()
d_Network_1018 = erased
-- Ledger.Transaction.TransactionStructure._.NetworkId
d_NetworkId_1020 :: T_TransactionStructure_20 -> AgdaAny
d_NetworkId_1020 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_250
      (coe d_globalConstants_1012 (coe v0))
-- Ledger.Transaction.TransactionStructure._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1022 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104
d_NonZero'45'SlotsPerEpoch'7580'_1022 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_244
      (coe d_globalConstants_1012 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Quorum
d_Quorum_1024 :: T_TransactionStructure_20 -> Integer
d_Quorum_1024 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_248
      (coe d_globalConstants_1012 (coe v0))
-- Ledger.Transaction.TransactionStructure._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1026 :: T_TransactionStructure_20 -> Integer
d_SlotsPerEpoch'7580'_1026 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_242
      (coe d_globalConstants_1012 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindowᶜ
d_StabilityWindow'7580'_1028 ::
  T_TransactionStructure_20 -> Integer
d_StabilityWindow'7580'_1028 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_246
      (coe d_globalConstants_1012 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕEpochStructure
d_ℕEpochStructure_1030 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_ℕEpochStructure_1030 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_252
      (coe d_globalConstants_1012 (coe v0))
-- Ledger.Transaction.TransactionStructure.crypto
d_crypto_1032 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_crypto_1032 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11557 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.Dec-isSigned
d_Dec'45'isSigned_1036 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1036 v0
  = let v1 = d_crypto_1032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1038 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1038 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
      (coe d_crypto_1032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Ser
d_DecEq'45'Ser_1040 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1040 v0
  = let v1 = d_crypto_1032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_126
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-Sig
d_DecEq'45'Sig_1042 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1042 v0
  = let v1 = d_crypto_1032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1044 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1044 v0
  = let v1 = d_crypto_1032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1046 :: T_TransactionStructure_20 -> ()
d_THash_1046 = erased
-- Ledger.Transaction.TransactionStructure._.KeyPair
d_KeyPair_1048 :: T_TransactionStructure_20 -> ()
d_KeyPair_1048 = erased
-- Ledger.Transaction.TransactionStructure._.SKey
d_SKey_1050 :: T_TransactionStructure_20 -> ()
d_SKey_1050 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptHash
d_ScriptHash_1052 :: T_TransactionStructure_20 -> ()
d_ScriptHash_1052 = erased
-- Ledger.Transaction.TransactionStructure._.Ser
d_Ser_1054 :: T_TransactionStructure_20 -> ()
d_Ser_1054 = erased
-- Ledger.Transaction.TransactionStructure._.Sig
d_Sig_1056 :: T_TransactionStructure_20 -> ()
d_Sig_1056 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1058 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1058 v0
  = let v1 = d_crypto_1032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.VKey
d_VKey_1060 :: T_TransactionStructure_20 -> ()
d_VKey_1060 = erased
-- Ledger.Transaction.TransactionStructure._.isKeyPair
d_isKeyPair_1062 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_1062 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned
d_isSigned_1064 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_1064 = erased
-- Ledger.Transaction.TransactionStructure._.isSigned-correct
d_isSigned'45'correct_1066 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_1066 v0
  = let v1 = d_crypto_1032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_122
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.khs
d_khs_1068 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1068 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe d_crypto_1032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.pkk
d_pkk_1070 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_1070 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe d_crypto_1032 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sign
d_sign_1072 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_1072 v0
  = let v1 = d_crypto_1032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_sign_102
         (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra
d_TokenAlgebra_1076 a0 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._∙_
d__'8729'__1080 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1080 ~v0 v1 = du__'8729'__1080 v1
du__'8729'__1080 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8729'__1080 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≈_
d__'8776'__1082 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1082 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1084 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1084 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.AssetName
d_AssetName_1086 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_AssetName_1086 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1088 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1088 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_226 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1090 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1090 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1092 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1094 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1096 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.MemoryEstimate
d_MemoryEstimate_1098 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_MemoryEstimate_1098 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value
d_Value_1100 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_Value_1100 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1102 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1102 ~v0
  = du_Value'45'CommutativeMonoid_1102
du_Value'45'CommutativeMonoid_1102 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
du_Value'45'CommutativeMonoid_1102
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1104 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1104 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.addValue
d_addValue_1106 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1106 ~v0 = du_addValue_1106
du_addValue_1106 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
du_addValue_1106
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_228
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin
d_coin_1108 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_coin_1108 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1110 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1110 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1112 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1112 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_222
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.inject
d_inject_1114 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> AgdaAny
d_inject_1114 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.monoid
d_monoid_1116 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1116 ~v0 v1 = du_monoid_1116 v1
du_monoid_1116 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
du_monoid_1116 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.policies
d_policies_1118 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> [AgdaAny]
d_policies_1118 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.property
d_property_1120 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1120 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.rawMonoid
d_rawMonoid_1122 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1122 ~v0 v1 = du_rawMonoid_1122 v1
du_rawMonoid_1122 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
du_rawMonoid_1122 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.size
d_size_1124 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_size_1124 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.specialAsset
d_specialAsset_1126 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_specialAsset_1126 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_218 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.sumᵛ
d_sum'7515'_1128 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1128 ~v0 = du_sum'7515'_1128
du_sum'7515'_1128 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_1128
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_246
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.ε
d_ε_1130 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_ε_1130 ~v0 v1 = du_ε_1130 v1
du_ε_1130 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
du_ε_1130 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1134 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1134 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1136 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1136 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1138 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1138 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1140 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1140 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1142 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1146 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1146 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1148 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1148 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1150 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1150 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1152 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1152 ~v0 ~v1 = du_isMagmaIsomorphism_1152
du_isMagmaIsomorphism_1152 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1152 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1154 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1154 ~v0 ~v1 ~v2 v3
  = du_isMagmaMonomorphism_1154 v3
du_isMagmaMonomorphism_1154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1154 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1156 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1158 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1160 v0
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
d_isRelIsomorphism_1162 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1162 ~v0 ~v1 ~v2 v3
  = du_isRelIsomorphism_1162 v3
du_isRelIsomorphism_1162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1164 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1164 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1164 v3
du_isRelMonomorphism_1164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1164 v0
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
d_surjective_1166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1166 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1168 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1170 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1174 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1178 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1180 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1180 ~v0 ~v1 = du_isMagmaMonomorphism_1180
du_isMagmaMonomorphism_1180 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1180 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1186 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1186 ~v0 ~v1 ~v2 v3
  = du_isRelMonomorphism_1186 v3
du_isRelMonomorphism_1186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1186 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1188 = erased
-- Ledger.Transaction.TransactionStructure._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1190 = erased
-- Ledger.Transaction.TransactionStructure._.Addr
d_Addr_1194 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_1194 = erased
-- Ledger.Transaction.TransactionStructure._.BaseAddr
d_BaseAddr_1196 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr
d_BootstrapAddr_1198 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.Credential
d_Credential_1200 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_1200 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-isScript
d_Dec'45'isScript_1202 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1202 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isScript_1202
du_Dec'45'isScript_1202 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_1202
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
-- Ledger.Transaction.TransactionStructure._.Dec-isVKey
d_Dec'45'isVKey_1204 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1204 ~v0 ~v1 ~v2 ~v3 = du_Dec'45'isVKey_1204
du_Dec'45'isVKey_1204 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_1204
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_108
-- Ledger.Transaction.TransactionStructure._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1206 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1206 ~v0 v1 v2 v3
  = du_DecEq'45'BaseAddr_1206 v1 v2 v3
du_DecEq'45'BaseAddr_1206 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_1206 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Transaction.TransactionStructure._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1208 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1208 ~v0 v1 v2 v3
  = du_DecEq'45'BootstrapAddr_1208 v1 v2 v3
du_DecEq'45'BootstrapAddr_1208 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_1208 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Transaction.TransactionStructure._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1210 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1210 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_1210 v1 v2 v3
du_DecEq'45'RwdAddr_1210 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_1210 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Transaction.TransactionStructure._.RwdAddr
d_RwdAddr_1212 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptAddr
d_ScriptAddr_1216 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1216 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBaseAddr
d_ScriptBaseAddr_1218 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1218 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1220 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1220 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyAddr
d_VKeyAddr_1222 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1222 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBaseAddr
d_VKeyBaseAddr_1224 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1224 = erased
-- Ledger.Transaction.TransactionStructure._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1226 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1226 = erased
-- Ledger.Transaction.TransactionStructure._.getScriptHash
d_getScriptHash_1230 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
d_getScriptHash_1230 ~v0 ~v1 ~v2 ~v3 = du_getScriptHash_1230
du_getScriptHash_1230 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> AgdaAny
du_getScriptHash_1230
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_148
-- Ledger.Transaction.TransactionStructure._.isScript
d_isScript_1232 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.isScriptAddr
d_isScriptAddr_1234 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1234 = erased
-- Ledger.Transaction.TransactionStructure._.isScriptRwdAddr
d_isScriptRwdAddr_1236 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> ()
d_isScriptRwdAddr_1236 = erased
-- Ledger.Transaction.TransactionStructure._.isVKey
d_isVKey_1238 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.isVKeyAddr
d_isVKeyAddr_1240 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1240 = erased
-- Ledger.Transaction.TransactionStructure._.netId
d_netId_1242 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_1242 ~v0 ~v1 ~v2 ~v3 = du_netId_1242
du_netId_1242 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_1242 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.Transaction.TransactionStructure._.payCred
d_payCred_1244 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_payCred_1244 ~v0 ~v1 ~v2 ~v3 = du_payCred_1244
du_payCred_1244 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_payCred_1244 = coe MAlonzo.Code.Ledger.Address.du_payCred_90
-- Ledger.Transaction.TransactionStructure._.BaseAddr.net
d_net_1248 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_30 -> AgdaAny
d_net_1248 v0 = coe MAlonzo.Code.Ledger.Address.d_net_38 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.pay
d_pay_1250 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1250 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_40 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BaseAddr.stake
d_stake_1252 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1252 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_42 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.attrsSize
d_attrsSize_1256 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> Integer
d_attrsSize_1256 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_56 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.net
d_net_1258 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> AgdaAny
d_net_1258 v0 = coe MAlonzo.Code.Ledger.Address.d_net_52 (coe v0)
-- Ledger.Transaction.TransactionStructure._.BootstrapAddr.pay
d_pay_1260 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1260 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_54 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.net
d_net_1264 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> AgdaAny
d_net_1264 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Transaction.TransactionStructure._.RwdAddr.stake
d_stake_1266 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1266 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)
-- Ledger.Transaction.TransactionStructure.epochStructure
d_epochStructure_1276 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_1276 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11557 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._+ᵉ_
d__'43''7497'__1280 ::
  T_TransactionStructure_20 -> Integer -> AgdaAny -> AgdaAny
d__'43''7497'__1280 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Epoch
d_DecEq'45'Epoch_1282 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1282 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Slot
d_DecEq'45'Slot_1284 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1284 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_38
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecPo-Slot
d_DecPo'45'Slot_1286 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_1286 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Epoch
d_Epoch_1288 :: T_TransactionStructure_20 -> ()
d_Epoch_1288 = erased
-- Ledger.Transaction.TransactionStructure._.Slot
d_Slot_1290 :: T_TransactionStructure_20 -> ()
d_Slot_1290 = erased
-- Ledger.Transaction.TransactionStructure._.Slotʳ
d_Slot'691'_1292 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_1292 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.StabilityWindow
d_StabilityWindow_1294 :: T_TransactionStructure_20 -> AgdaAny
d_StabilityWindow_1294 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_44
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addEpoch
d_addEpoch_1296 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1296 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addSlot
d_addSlot_1298 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1298 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_214
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.epoch
d_epoch_1300 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_epoch_1300 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.firstSlot
d_firstSlot_1302 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_firstSlot_1302 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.preoEpoch
d_preoEpoch_1304 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1304 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sucᵉ
d_suc'7497'_1306 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_suc'7497'_1306 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_46
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ℕtoEpoch
d_ℕtoEpoch_1308 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_ℕtoEpoch_1308 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Dec-evalTimelock
d_Dec'45'evalTimelock_1312 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_224 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1312 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_282
      (coe d_crypto_1032 (coe v0)) (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Timelock
d_DecEq'45'Timelock_1314 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1314 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_238
      (coe d_crypto_1032 (coe v0)) (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure
d_P1ScriptStructure_1316 a0 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1318 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80
d_P1ScriptStructure'45'TL_1318 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_360
      (coe d_crypto_1032 (coe v0)) (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure
d_PlutusStructure_1320 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ScriptStructure
d_ScriptStructure_1334 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Timelock
d_Timelock_1336 a0 = ()
-- Ledger.Transaction.TransactionStructure._.evalTimelock
d_evalTimelock_1350 a0 a1 a2 a3 = ()
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1354 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1354 v0
  = coe MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_96 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1356 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1356 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_100 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1358 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1358 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_98 (coe v0)
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.P1Script
d_P1Script_1360 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80 -> ()
d_P1Script_1360 = erased
-- Ledger.Transaction.TransactionStructure._.P1ScriptStructure.validP1Script
d_validP1Script_1362 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1362 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1366 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1366 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.CostModel
d_CostModel_1368 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_CostModel_1368 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T
d_T_1370 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_T_1370 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.THash
d_THash_1372 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_THash_1372 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dataʰ
d_Data'688'_1374 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1374 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Datum
d_Datum_1376 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_Datum_1376 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1378 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1378 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_216 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1380 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1380 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_192 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1382 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1382 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_184 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1384 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1384 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_190 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1386 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1386 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_186 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-PlutusScript
d_DecEq'45'PlutusScript_1388 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PlutusScript_1388 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_182 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-T
d_DecEq'45'T_1390 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1390 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1392 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1392 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1394 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1394 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.ExUnits
d_ExUnits_1396 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_ExUnits_1396 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1398 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1398 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.LangDepView
d_LangDepView_1400 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_LangDepView_1400 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Language
d_Language_1402 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_Language_1402 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.PlutusScript
d_PlutusScript_1404 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_PlutusScript_1404 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Prices
d_Prices_1406 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_Prices_1406 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.Redeemer
d_Redeemer_1408 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 -> ()
d_Redeemer_1408 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-Hashable
d_T'45'Hashable_1410 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1410 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.T-isHashable
d_T'45'isHashable_1412 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1412 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.language
d_language_1414 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  AgdaAny -> AgdaAny
d_language_1414 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_218 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.toData
d_toData_1416 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  () -> AgdaAny -> AgdaAny
d_toData_1416 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_222 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PlutusStructure.validPlutusScript
d_validPlutusScript_1418 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1418 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1422 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1422 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.CostModel
d_CostModel_1424 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 -> ()
d_CostModel_1424 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T
d_T_1426 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 -> ()
d_T_1426 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.THash
d_THash_1428 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 -> ()
d_THash_1428 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dataʰ
d_Data'688'_1430 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1430 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_164
      (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Datum
d_Datum_1432 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 -> ()
d_Datum_1432 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1434 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_224 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1434 v0
  = let v1 = d_crypto_1032 (coe v0) in
    coe
      (let v2 = d_epochStructure_1276 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_96
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_400 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1436 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1436 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1438 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1438 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_192
      (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1440 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1440 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_184
      (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1442 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1442 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1444 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1444 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_186
      (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1446 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1446 v0
  = let v1 = d_crypto_1032 (coe v0) in
    coe
      (let v2 = d_epochStructure_1276 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_100
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_400 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-PlutusScript
d_DecEq'45'PlutusScript_1448 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PlutusScript_1448 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_182
      (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-T
d_DecEq'45'T_1450 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1450 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1452 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1452 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1454 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1454 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ExUnits
d_ExUnits_1456 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 -> ()
d_ExUnits_1456 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_1458 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1458 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_398 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1460 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1460 v0
  = let v1 = d_crypto_1032 (coe v0) in
    coe
      (let v2 = d_epochStructure_1276 (coe v0) in
       coe
         (coe
            (\ v3 ->
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_98
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_400 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1462 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1462 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
      (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1464 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1464 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_474
      (coe d_crypto_1032 (coe v0)) (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.LangDepView
d_LangDepView_1466 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 -> ()
d_LangDepView_1466 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Language
d_Language_1468 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 -> ()
d_Language_1468 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.P1Script
d_P1Script_1470 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 -> ()
d_P1Script_1470 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.PlutusScript
d_PlutusScript_1472 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 -> ()
d_PlutusScript_1472 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Prices
d_Prices_1474 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 -> ()
d_Prices_1474 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Redeemer
d_Redeemer_1476 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 -> ()
d_Redeemer_1476 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.Script
d_Script_1478 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 -> ()
d_Script_1478 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-Hashable
d_T'45'Hashable_1480 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1480 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.T-isHashable
d_T'45'isHashable_1482 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1482 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_164
         (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1484 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1484 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_396 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.language
d_language_1486 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  AgdaAny -> AgdaAny
d_language_1486 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.p1s
d_p1s_1488 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80
d_p1s_1488 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_400 (coe d_crypto_1032 (coe v0))
      (coe d_epochStructure_1276 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.ps
d_ps_1490 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102
d_ps_1490 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0)
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.toData
d_toData_1492 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  () -> AgdaAny -> AgdaAny
d_toData_1492 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_222
      (coe MAlonzo.Code.Ledger.Script.d_ps_414 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validP1Script
d_validP1Script_1494 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_224 -> ()
d_validP1Script_1494 = erased
-- Ledger.Transaction.TransactionStructure._.ScriptStructure.validPlutusScript
d_validPlutusScript_1496 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1496 = erased
-- Ledger.Transaction.TransactionStructure.scriptStructure
d_scriptStructure_1526 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_362
d_scriptStructure_1526 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11557 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._≥ᵉ_
d__'8805''7497'__1530 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1530 = erased
-- Ledger.Transaction.TransactionStructure._.CostModel
d_CostModel_1532 :: T_TransactionStructure_20 -> ()
d_CostModel_1532 = erased
-- Ledger.Transaction.TransactionStructure._.T
d_T_1534 :: T_TransactionStructure_20 -> ()
d_T_1534 = erased
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1536 :: T_TransactionStructure_20 -> ()
d_THash_1536 = erased
-- Ledger.Transaction.TransactionStructure._.Dataʰ
d_Data'688'_1538 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1538 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_164
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_1526 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Datum
d_Datum_1540 :: T_TransactionStructure_20 -> ()
d_Datum_1540 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-validP1Script
d_Dec'45'validP1Script_1542 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_224 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1542 v0
  = let v1 = d_crypto_1032 (coe v0) in
    coe
      (let v2 = d_epochStructure_1276 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1526 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_96
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_400 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1544 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1544 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_1526 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEQ-Prices
d_DecEQ'45'Prices_1546 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1546 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_192
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_1526 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-CostModel
d_DecEq'45'CostModel_1548 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1548 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_184
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_1526 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-ExUnits
d_DecEq'45'ExUnits_1550 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1550 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_190
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_1526 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-LangDepView
d_DecEq'45'LangDepView_1552 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1552 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_186
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_1526 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-P1Script
d_DecEq'45'P1Script_1554 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1554 v0
  = let v1 = d_crypto_1032 (coe v0) in
    coe
      (let v2 = d_epochStructure_1276 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1526 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_100
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_400 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.DecEq-PlutusScript
d_DecEq'45'PlutusScript_1556 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PlutusScript_1556 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_182
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_1526 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1558 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1558 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_414
                 (coe d_scriptStructure_1526 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1560 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1560 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_414
                 (coe d_scriptStructure_1526 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1562 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1562 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_1526 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ExUnits
d_ExUnits_1564 :: T_TransactionStructure_20 -> ()
d_ExUnits_1564 = erased
-- Ledger.Transaction.TransactionStructure._.Hash-Timelock
d_Hash'45'Timelock_1566 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1566 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_398
      (coe d_scriptStructure_1526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Hashable-P1Script
d_Hashable'45'P1Script_1568 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1568 v0
  = let v1 = d_crypto_1032 (coe v0) in
    coe
      (let v2 = d_epochStructure_1276 (coe v0) in
       coe
         (let v3 = d_scriptStructure_1526 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_98
               (coe
                  MAlonzo.Code.Ledger.Script.d_p1s_400 (coe v1) (coe v2) (coe v3)))))
-- Ledger.Transaction.TransactionStructure._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1570 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1570 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_1526 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.Hashable-Script
d_Hashable'45'Script_1572 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1572 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_474
      (coe d_crypto_1032 (coe v0)) (coe d_epochStructure_1276 (coe v0))
      (coe d_scriptStructure_1526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.LangDepView
d_LangDepView_1574 :: T_TransactionStructure_20 -> ()
d_LangDepView_1574 = erased
-- Ledger.Transaction.TransactionStructure._.Language
d_Language_1576 :: T_TransactionStructure_20 -> ()
d_Language_1576 = erased
-- Ledger.Transaction.TransactionStructure._.P1Script
d_P1Script_1578 :: T_TransactionStructure_20 -> ()
d_P1Script_1578 = erased
-- Ledger.Transaction.TransactionStructure._.PlutusScript
d_PlutusScript_1580 :: T_TransactionStructure_20 -> ()
d_PlutusScript_1580 = erased
-- Ledger.Transaction.TransactionStructure._.Prices
d_Prices_1582 :: T_TransactionStructure_20 -> ()
d_Prices_1582 = erased
-- Ledger.Transaction.TransactionStructure._.Redeemer
d_Redeemer_1584 :: T_TransactionStructure_20 -> ()
d_Redeemer_1584 = erased
-- Ledger.Transaction.TransactionStructure._.Script
d_Script_1586 :: T_TransactionStructure_20 -> ()
d_Script_1586 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1588 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1588 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_414
                 (coe d_scriptStructure_1526 (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Transaction.TransactionStructure._.T-isHashable
d_T'45'isHashable_1590 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1590 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_164
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_414
            (coe d_scriptStructure_1526 (coe v0))))
-- Ledger.Transaction.TransactionStructure._.hashRespectsUnion
d_hashRespectsUnion_1592 ::
  T_TransactionStructure_20 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1592 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_396
      (coe d_scriptStructure_1526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.language
d_language_1594 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_language_1594 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_1526 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.p1s
d_p1s_1596 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_80
d_p1s_1596 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_400 (coe d_crypto_1032 (coe v0))
      (coe d_epochStructure_1276 (coe v0))
      (coe d_scriptStructure_1526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ps
d_ps_1598 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_102
d_ps_1598 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ps_414
      (coe d_scriptStructure_1526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.toData
d_toData_1600 ::
  T_TransactionStructure_20 -> () -> AgdaAny -> AgdaAny
d_toData_1600 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_222
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_414
         (coe d_scriptStructure_1526 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.validP1Script
d_validP1Script_1602 ::
  T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_224 -> ()
d_validP1Script_1602 = erased
-- Ledger.Transaction.TransactionStructure._.validPlutusScript
d_validPlutusScript_1604 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1604 = erased
-- Ledger.Transaction.TransactionStructure._.Acnt
d_Acnt_1608 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1610 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1610 ~v0
  = du_DecEq'45'DrepThresholds_1610
du_DecEq'45'DrepThresholds_1610 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1610
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_398
-- Ledger.Transaction.TransactionStructure._.DecEq-PParams
d_DecEq'45'PParams_1612 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1612 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_402
      (coe d_epochStructure_1276 (coe v0))
      (coe d_scriptStructure_1526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1614 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1614 ~v0
  = du_DecEq'45'PoolThresholds_1614
du_DecEq'45'PoolThresholds_1614 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1614
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_400
-- Ledger.Transaction.TransactionStructure._.DrepThresholds
d_DrepThresholds_1616 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovParams
d_GovParams_1620 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamGroup
d_PParamGroup_1626 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParams
d_PParams_1628 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PParamsDiff
d_PParamsDiff_1630 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolThresholds
d_PoolThresholds_1632 a0 = ()
-- Ledger.Transaction.TransactionStructure._.ProtVer
d_ProtVer_1634 :: T_TransactionStructure_20 -> ()
d_ProtVer_1634 = erased
-- Ledger.Transaction.TransactionStructure._.paramsWellFormed
d_paramsWellFormed_1644 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> ()
d_paramsWellFormed_1644 = erased
-- Ledger.Transaction.TransactionStructure._.pvCanFollow
d_pvCanFollow_1646 a0 a1 a2 = ()
-- Ledger.Transaction.TransactionStructure._.pvCanFollow?
d_pvCanFollow'63'_1648 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1648 ~v0 = du_pvCanFollow'63'_1648
du_pvCanFollow'63'_1648 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1648
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_408
-- Ledger.Transaction.TransactionStructure._.Acnt.reserves
d_reserves_1652 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_124 -> Integer
d_reserves_1652 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_132 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Acnt.treasury
d_treasury_1654 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_124 -> Integer
d_treasury_1654 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_130 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P1
d_P1_1658 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1658 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_176 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2a
d_P2a_1660 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1660 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_178 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P2b
d_P2b_1662 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1662 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_180 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P3
d_P3_1664 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1664 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_182 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P4
d_P4_1666 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1666 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_184 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5a
d_P5a_1668 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1668 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_186 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5b
d_P5b_1670 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1670 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_188 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5c
d_P5c_1672 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1672 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_190 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P5d
d_P5d_1674 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1674 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_192 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DrepThresholds.P6
d_P6_1676 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1676 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_194 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-T
d_DecEq'45'T_1680 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1680 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-THash
d_DecEq'45'THash_1682 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1682 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1684 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1684 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_554 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.THash
d_THash_1686 :: MAlonzo.Code.Ledger.PParams.T_GovParams_494 -> ()
d_THash_1686 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.UpdateT
d_UpdateT_1688 :: MAlonzo.Code.Ledger.PParams.T_GovParams_494 -> ()
d_UpdateT_1688 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.T-Hashable
d_T'45'Hashable_1690 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1690 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.applyUpdate
d_applyUpdate_1692 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_1692 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_480
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppHashingScheme
d_ppHashingScheme_1694 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1694 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppUpd
d_ppUpd_1696 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456
d_ppUpd_1696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed
d_ppdWellFormed_1698 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 -> AgdaAny -> Bool
d_ppdWellFormed_1698 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_482
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_1700 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_1700 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_492
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.GovParams.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_1702 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_1702 = erased
-- Ledger.Transaction.TransactionStructure._.GovParams.updateGroups
d_updateGroups_1704 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_494 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_1704 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_478
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Transaction.TransactionStructure._.PParams.Emax
d_Emax_1720 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_Emax_1720 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_308 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a
d_a_1722 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_a_1722 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_292 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.a0
d_a0_1724 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1724 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_306 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.b
d_b_1726 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_b_1726 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_294 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMaxTermLength
d_ccMaxTermLength_1728 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_ccMaxTermLength_1728 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_330 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.ccMinSize
d_ccMinSize_1730 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_ccMinSize_1730 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_328 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_1732 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_coinsPerUTxOWord_1732 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_300 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.collateralPercentage
d_collateralPercentage_1734 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_collateralPercentage_1734 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_312 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.costmdls
d_costmdls_1736 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_costmdls_1736 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_314 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepActivity
d_drepActivity_1738 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_drepActivity_1738 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_326 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepDeposit
d_drepDeposit_1740 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_drepDeposit_1740 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_324 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.drepThresholds
d_drepThresholds_1742 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154
d_drepThresholds_1742 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_316 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionDeposit
d_govActionDeposit_1744 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_govActionDeposit_1744 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_322 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.govActionLifetime
d_govActionLifetime_1746 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_govActionLifetime_1746 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_320 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockExUnits
d_maxBlockExUnits_1748 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_maxBlockExUnits_1748 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_290 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxBlockSize
d_maxBlockSize_1750 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxBlockSize_1750 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_276 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxCollateralInputs
d_maxCollateralInputs_1752 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxCollateralInputs_1752 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_284 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxHeaderSize
d_maxHeaderSize_1754 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxHeaderSize_1754 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_280 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxExUnits
d_maxTxExUnits_1756 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_maxTxExUnits_1756 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_288 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxTxSize
d_maxTxSize_1758 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxTxSize_1758 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_278 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.maxValSize
d_maxValSize_1760 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxValSize_1760 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_282 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1762 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1762 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_302
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.minUTxOValue
d_minUTxOValue_1764 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_minUTxOValue_1764 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_296 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.nopt
d_nopt_1766 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_nopt_1766 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_310 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolDeposit
d_poolDeposit_1768 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_poolDeposit_1768 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.poolThresholds
d_poolThresholds_1770 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196
d_poolThresholds_1770 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_318 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.prices
d_prices_1772 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> AgdaAny
d_prices_1772 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_304 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParams.pv
d_pv_1774 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1774 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_286 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.UpdateT
d_UpdateT_1778 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 -> ()
d_UpdateT_1778 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.applyUpdate
d_applyUpdate_1780 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_1780 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_480 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1782 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 -> AgdaAny -> Bool
d_ppdWellFormed_1782 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_482 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_1784 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_1784 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_492 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_1786 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_1786 = erased
-- Ledger.Transaction.TransactionStructure._.PParamsDiff.updateGroups
d_updateGroups_1788 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_1788 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_478 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q1
d_Q1_1792 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1792 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_208 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2a
d_Q2a_1794 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1794 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_210 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q2b
d_Q2b_1796 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1796 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_212 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q4
d_Q4_1798 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1798 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_214 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolThresholds.Q5e
d_Q5e_1800 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_1800 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_216 (coe v0)
-- Ledger.Transaction.TransactionStructure.govParams
d_govParams_1808 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_494
d_govParams_1808 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11557 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._.DecEq-T
d_DecEq'45'T_1812 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1812 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542
         (coe d_govParams_1808 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-THash
d_DecEq'45'THash_1814 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1814 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542
         (coe d_govParams_1808 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.DecEq-UpdT
d_DecEq'45'UpdT_1816 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1816 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_554
      (coe d_govParams_1808 (coe v0))
-- Ledger.Transaction.TransactionStructure._.THash
d_THash_1818 :: T_TransactionStructure_20 -> ()
d_THash_1818 = erased
-- Ledger.Transaction.TransactionStructure._.UpdateT
d_UpdateT_1820 :: T_TransactionStructure_20 -> ()
d_UpdateT_1820 = erased
-- Ledger.Transaction.TransactionStructure._.T-Hashable
d_T'45'Hashable_1822 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1822 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542
         (coe d_govParams_1808 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.applyUpdate
d_applyUpdate_1824 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_1824 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_480
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_526
         (coe d_govParams_1808 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppHashingScheme
d_ppHashingScheme_1826 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1826 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_542
      (coe d_govParams_1808 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppUpd
d_ppUpd_1828 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_456
d_ppUpd_1828 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_526
      (coe d_govParams_1808 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed
d_ppdWellFormed_1830 ::
  T_TransactionStructure_20 -> AgdaAny -> Bool
d_ppdWellFormed_1830 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_482
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_526
         (coe d_govParams_1808 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_1832 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_1832 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_492
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_526
         (coe d_govParams_1808 (coe v0)))
-- Ledger.Transaction.TransactionStructure._.ppdWellFormed⇒hasGroup
d_ppdWellFormed'8658'hasGroup_1834 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_ppdWellFormed'8658'hasGroup_1834 = erased
-- Ledger.Transaction.TransactionStructure._.updateGroups
d_updateGroups_1836 ::
  T_TransactionStructure_20 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_1836 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_478
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_526
         (coe d_govParams_1808 (coe v0)))
-- Ledger.Transaction.TransactionStructure.tokenAlgebra
d_tokenAlgebra_1838 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
d_tokenAlgebra_1838 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11557 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure._._∙_
d__'8729'__1842 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1842 v0
  = let v1 = d_tokenAlgebra_1838 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._._≈_
d__'8776'__1844 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1844 = erased
-- Ledger.Transaction.TransactionStructure._._≤ᵗ_
d__'8804''7511'__1846 ::
  T_TransactionStructure_20 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1846 = erased
-- Ledger.Transaction.TransactionStructure._.AssetName
d_AssetName_1848 :: T_TransactionStructure_20 -> ()
d_AssetName_1848 = erased
-- Ledger.Transaction.TransactionStructure._.Dec-≤ᵗ
d_Dec'45''8804''7511'_1850 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1850 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_226
      (coe d_tokenAlgebra_1838 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Value
d_DecEq'45'Value_1852 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1852 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
      (coe d_tokenAlgebra_1838 (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1854 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1856 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1858 a0 a1 = ()
-- Ledger.Transaction.TransactionStructure._.MemoryEstimate
d_MemoryEstimate_1860 :: T_TransactionStructure_20 -> ()
d_MemoryEstimate_1860 = erased
-- Ledger.Transaction.TransactionStructure._.Value
d_Value_1862 :: T_TransactionStructure_20 -> ()
d_Value_1862 = erased
-- Ledger.Transaction.TransactionStructure._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1864 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1864 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
      (coe d_tokenAlgebra_1838 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1866 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1866 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe d_tokenAlgebra_1838 (coe v0))
-- Ledger.Transaction.TransactionStructure._.addValue
d_addValue_1868 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1868 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_228
      (coe d_tokenAlgebra_1838 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin
d_coin_1870 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_coin_1870 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
      (coe d_tokenAlgebra_1838 (coe v0))
-- Ledger.Transaction.TransactionStructure._.coin-inject-lemma
d_coin'45'inject'45'lemma_1872 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1872 = erased
-- Ledger.Transaction.TransactionStructure._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1874 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1874 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_222
      (coe d_tokenAlgebra_1838 (coe v0))
-- Ledger.Transaction.TransactionStructure._.inject
d_inject_1876 :: T_TransactionStructure_20 -> Integer -> AgdaAny
d_inject_1876 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
      (coe d_tokenAlgebra_1838 (coe v0))
-- Ledger.Transaction.TransactionStructure._.monoid
d_monoid_1878 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1878 v0
  = let v1 = d_tokenAlgebra_1838 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_890
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.policies
d_policies_1880 ::
  T_TransactionStructure_20 -> AgdaAny -> [AgdaAny]
d_policies_1880 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
      (coe d_tokenAlgebra_1838 (coe v0))
-- Ledger.Transaction.TransactionStructure._.property
d_property_1882 ::
  T_TransactionStructure_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1882 = erased
-- Ledger.Transaction.TransactionStructure._.rawMonoid
d_rawMonoid_1884 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1884 v0
  = let v1 = d_tokenAlgebra_1838 (coe v0) in
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
d_size_1886 :: T_TransactionStructure_20 -> AgdaAny -> Integer
d_size_1886 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_size_212
      (coe d_tokenAlgebra_1838 (coe v0))
-- Ledger.Transaction.TransactionStructure._.specialAsset
d_specialAsset_1888 :: T_TransactionStructure_20 -> AgdaAny
d_specialAsset_1888 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_218
      (coe d_tokenAlgebra_1838 (coe v0))
-- Ledger.Transaction.TransactionStructure._.sumᵛ
d_sum'7515'_1890 ::
  T_TransactionStructure_20 -> [AgdaAny] -> AgdaAny
d_sum'7515'_1890 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_246
      (coe d_tokenAlgebra_1838 (coe v0))
-- Ledger.Transaction.TransactionStructure._.ε
d_ε_1892 :: T_TransactionStructure_20 -> AgdaAny
d_ε_1892 v0
  = let v1 = d_tokenAlgebra_1838 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.d_ε_842
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
            (coe v1)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.homo
d_homo_1896 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1896 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1898 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1898 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1900 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1900 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1902 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1902 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidHomomorphism.cong
d_cong_1904 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1904 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.homo
d_homo_1908 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1908 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.injective
d_injective_1910 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1910 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1912 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1912 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1914 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1914 ~v0 = du_isMagmaIsomorphism_1914
du_isMagmaIsomorphism_1914 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1914 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1916 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1916 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1916 v2
du_isMagmaMonomorphism_1916 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1916 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1918 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1918 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1920 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1920 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1922 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1922 v0
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
d_isRelIsomorphism_1924 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1924 ~v0 ~v1 v2 = du_isRelIsomorphism_1924 v2
du_isRelIsomorphism_1924 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1924 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1926 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1926 ~v0 ~v1 v2 = du_isRelMonomorphism_1926 v2
du_isRelMonomorphism_1926 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1926 v0
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
d_surjective_1928 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1928 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1930 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1930 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidIsomorphism.cong
d_cong_1932 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1932 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.homo
d_homo_1936 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1936 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.injective
d_injective_1938 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1938 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1940 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1940 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1942 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1942 ~v0 = du_isMagmaMonomorphism_1942
du_isMagmaMonomorphism_1942 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1942 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1944 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1944 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1946 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1946 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1948 ::
  T_TransactionStructure_20 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1948 ~v0 ~v1 v2 = du_isRelMonomorphism_1948 v2
du_isRelMonomorphism_1948 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1948 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1950 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1950 = erased
-- Ledger.Transaction.TransactionStructure._.IsMonoidMonomorphism.cong
d_cong_1952 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1952 = erased
-- Ledger.Transaction.TransactionStructure.txidBytes
d_txidBytes_1954 :: T_TransactionStructure_20 -> AgdaAny -> AgdaAny
d_txidBytes_1954 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11557 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.networkId
d_networkId_1956 :: T_TransactionStructure_20 -> AgdaAny
d_networkId_1956 v0
  = case coe v0 of
      C_TransactionStructure'46'constructor_11557 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.govStructure
d_govStructure_1958 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_1958 v0
  = coe
      MAlonzo.Code.Ledger.Types.GovStructure.C_GovStructure'46'constructor_2381
      (d_DecEq'45'TxId_998 (coe v0))
      (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_240
         (coe d_globalConstants_1012 (coe v0)))
      (d_crypto_1032 (coe v0)) (d_epochStructure_1276 (coe v0))
      (d_scriptStructure_1526 (coe v0)) (d_govParams_1808 (coe v0))
-- Ledger.Transaction.TransactionStructure._.Anchor
d_Anchor_1962 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DecEq-GovRole
d_DecEq'45'GovRole_1970 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1970 ~v0 = du_DecEq'45'GovRole_1970
du_DecEq'45'GovRole_1970 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1970
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_612
-- Ledger.Transaction.TransactionStructure._.DecEq-VDeleg
d_DecEq'45'VDeleg_1972 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1972 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_616
      (coe d_govStructure_1958 (coe v0))
-- Ledger.Transaction.TransactionStructure._.DecEq-Vote
d_DecEq'45'Vote_1974 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1974 ~v0 = du_DecEq'45'Vote_1974
du_DecEq'45'Vote_1974 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1974
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_614
-- Ledger.Transaction.TransactionStructure._.GovAction
d_GovAction_1976 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovActionID
d_GovActionID_1978 :: T_TransactionStructure_20 -> ()
d_GovActionID_1978 = erased
-- Ledger.Transaction.TransactionStructure._.GovActionState
d_GovActionState_1980 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovProposal
d_GovProposal_1982 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovRole
d_GovRole_1984 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovVote
d_GovVote_1986 a0 = ()
-- Ledger.Transaction.TransactionStructure._.HashProtected
d_HashProtected_1988 :: T_TransactionStructure_20 -> () -> ()
d_HashProtected_1988 = erased
-- Ledger.Transaction.TransactionStructure._.NeedsHash
d_NeedsHash_1992 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 -> ()
d_NeedsHash_1992 = erased
-- Ledger.Transaction.TransactionStructure._.VDeleg
d_VDeleg_2006 a0 = ()
-- Ledger.Transaction.TransactionStructure._.Voter
d_Voter_2008 :: T_TransactionStructure_20 -> ()
d_Voter_2008 = erased
-- Ledger.Transaction.TransactionStructure._.actionWellFormed
d_actionWellFormed_2012 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512 -> Bool
d_actionWellFormed_2012 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed_528
      (coe d_govStructure_1958 (coe v0))
-- Ledger.Transaction.TransactionStructure._.maximum
d_maximum_2016 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_2016 ~v0 = du_maximum_2016
du_maximum_2016 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_2016
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_478
-- Ledger.Transaction.TransactionStructure._.Anchor.hash
d_hash_2022 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_502 -> AgdaAny
d_hash_2022 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_510 (coe v0)
-- Ledger.Transaction.TransactionStructure._.Anchor.url
d_url_2024 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_502 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_2024 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_508 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.action
d_action_2044 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512
d_action_2044 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_608 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.expiresIn
d_expiresIn_2046 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  AgdaAny
d_expiresIn_2046 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_606 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.prevAction
d_prevAction_2048 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  AgdaAny
d_prevAction_2048 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_610 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.returnAddr
d_returnAddr_2050 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_2050 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_604 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovActionState.votes
d_votes_2052 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_590 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_2052 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_602 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.action
d_action_2056 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_512
d_action_2056 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_578 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.anchor
d_anchor_2058 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_502
d_anchor_2058 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_588 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.deposit
d_deposit_2060 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 -> Integer
d_deposit_2060 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_584 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.policy
d_policy_2062 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 ->
  Maybe AgdaAny
d_policy_2062 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_582 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.prevAction
d_prevAction_2064 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 -> AgdaAny
d_prevAction_2064 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_580 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovProposal.returnAddr
d_returnAddr_2066 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_2066 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_586 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.anchor
d_anchor_2078 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_502
d_anchor_2078 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_562 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.gid
d_gid_2080 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2080 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_556 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.vote
d_vote_2082 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_538
d_vote_2082 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_560 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GovVote.voter
d_voter_2084 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_2084 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_558 (coe v0)
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2096 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2098 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2098 = erased
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2100 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2102 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2104 a0 a1 a2 a3 a4
  = ()
-- Ledger.Transaction.TransactionStructure._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2106 a0 a1 a2 a3 a4 = ()
-- Ledger.Transaction.TransactionStructure._.CertEnv
d_CertEnv_2116 a0 = ()
-- Ledger.Transaction.TransactionStructure._.CertState
d_CertState_2118 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DCert
d_DCert_2120 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DState
d_DState_2126 a0 = ()
-- Ledger.Transaction.TransactionStructure._.DelegEnv
d_DelegEnv_2128 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GState
d_GState_2136 a0 = ()
-- Ledger.Transaction.TransactionStructure._.GovCertEnv
d_GovCertEnv_2138 :: T_TransactionStructure_20 -> ()
d_GovCertEnv_2138 = erased
-- Ledger.Transaction.TransactionStructure._.PState
d_PState_2144 a0 = ()
-- Ledger.Transaction.TransactionStructure._.PoolEnv
d_PoolEnv_2146 :: T_TransactionStructure_20 -> ()
d_PoolEnv_2146 = erased
-- Ledger.Transaction.TransactionStructure._.PoolParams
d_PoolParams_2148 a0 = ()
-- Ledger.Transaction.TransactionStructure._.cwitness
d_cwitness_2152 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cwitness_2152 = coe MAlonzo.Code.Ledger.Deleg.d_cwitness_650
-- Ledger.Transaction.TransactionStructure._.getDRepVote
d_getDRepVote_2160 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_2160 ~v0 = du_getDRepVote_2160
du_getDRepVote_2160 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getDRepVote_2160
  = coe MAlonzo.Code.Ledger.Deleg.du_getDRepVote_824
-- Ledger.Transaction.TransactionStructure._.CertEnv.epoch
d_epoch_2214 :: MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 -> AgdaAny
d_epoch_2214 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_epoch_676 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.pp
d_pp_2216 ::
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pp_2216 v0 = coe MAlonzo.Code.Ledger.Deleg.d_pp_678 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.votes
d_votes_2218 ::
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546]
d_votes_2218 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_votes_680 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertEnv.wdrls
d_wdrls_2220 ::
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2220 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_wdrls_682 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.dState
d_dState_2224 ::
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 ->
  MAlonzo.Code.Ledger.Deleg.T_DState_686
d_dState_2224 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_dState_734 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.gState
d_gState_2226 ::
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 ->
  MAlonzo.Code.Ledger.Deleg.T_GState_714
d_gState_2226 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_gState_738 (coe v0)
-- Ledger.Transaction.TransactionStructure._.CertState.pState
d_pState_2228 ::
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 ->
  MAlonzo.Code.Ledger.Deleg.T_PState_702
d_pState_2228 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pState_736 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.rewards
d_rewards_2248 ::
  MAlonzo.Code.Ledger.Deleg.T_DState_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2248 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_rewards_698 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.stakeDelegs
d_stakeDelegs_2250 ::
  MAlonzo.Code.Ledger.Deleg.T_DState_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2250 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_696 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DState.voteDelegs
d_voteDelegs_2252 ::
  MAlonzo.Code.Ledger.Deleg.T_DState_686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2252 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pools
d_pools_2256 ::
  MAlonzo.Code.Ledger.Deleg.T_DelegEnv_742 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2256 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pools_750 (coe v0)
-- Ledger.Transaction.TransactionStructure._.DelegEnv.pparams
d_pparams_2258 ::
  MAlonzo.Code.Ledger.Deleg.T_DelegEnv_742 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_2258 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pparams_748 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.ccHotKeys
d_ccHotKeys_2262 ::
  MAlonzo.Code.Ledger.Deleg.T_GState_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2262 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_ccHotKeys_722 (coe v0)
-- Ledger.Transaction.TransactionStructure._.GState.dreps
d_dreps_2264 ::
  MAlonzo.Code.Ledger.Deleg.T_GState_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2264 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_dreps_720 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.pools
d_pools_2268 ::
  MAlonzo.Code.Ledger.Deleg.T_PState_702 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2268 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_pools_708 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PState.retiring
d_retiring_2270 ::
  MAlonzo.Code.Ledger.Deleg.T_PState_702 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2270 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_retiring_710 (coe v0)
-- Ledger.Transaction.TransactionStructure._.PoolParams.rewardAddr
d_rewardAddr_2274 ::
  MAlonzo.Code.Ledger.Deleg.T_PoolParams_628 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_2274 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_rewardAddr_632 (coe v0)
-- Ledger.Transaction.TransactionStructure.TxIn
d_TxIn_2276 :: T_TransactionStructure_20 -> ()
d_TxIn_2276 = erased
-- Ledger.Transaction.TransactionStructure.TxOut
d_TxOut_2278 :: T_TransactionStructure_20 -> ()
d_TxOut_2278 = erased
-- Ledger.Transaction.TransactionStructure.UTxO
d_UTxO_2280 :: T_TransactionStructure_20 -> ()
d_UTxO_2280 = erased
-- Ledger.Transaction.TransactionStructure.Wdrl
d_Wdrl_2282 :: T_TransactionStructure_20 -> ()
d_Wdrl_2282 = erased
-- Ledger.Transaction.TransactionStructure.RdmrPtr
d_RdmrPtr_2284 :: T_TransactionStructure_20 -> ()
d_RdmrPtr_2284 = erased
-- Ledger.Transaction.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_2286 :: T_TransactionStructure_20 -> ()
d_ProposedPPUpdates_2286 = erased
-- Ledger.Transaction.TransactionStructure.Update
d_Update_2288 :: T_TransactionStructure_20 -> ()
d_Update_2288 = erased
-- Ledger.Transaction.TransactionStructure.TxBody
d_TxBody_2290 a0 = ()
data T_TxBody_2290
  = C_TxBody'46'constructor_14643 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
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
d_txins_2330 ::
  T_TxBody_2290 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2330 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.refInputs
d_refInputs_2332 ::
  T_TxBody_2290 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2332 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txouts
d_txouts_2334 ::
  T_TxBody_2290 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2334 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txfee
d_txfee_2336 :: T_TxBody_2290 -> Integer
d_txfee_2336 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.mint
d_mint_2338 :: T_TxBody_2290 -> AgdaAny
d_mint_2338 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvldt
d_txvldt_2340 ::
  T_TxBody_2290 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2340 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txcerts
d_txcerts_2342 ::
  T_TxBody_2290 -> [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
d_txcerts_2342 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txwdrls
d_txwdrls_2344 ::
  T_TxBody_2290 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2344 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txvote
d_txvote_2346 ::
  T_TxBody_2290 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546]
d_txvote_2346 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txprop
d_txprop_2348 ::
  T_TxBody_2290 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564]
d_txprop_2348 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txdonation
d_txdonation_2350 :: T_TxBody_2290 -> Integer
d_txdonation_2350 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txup
d_txup_2352 ::
  T_TxBody_2290 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2352 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txADhash
d_txADhash_2354 :: T_TxBody_2290 -> Maybe AgdaAny
d_txADhash_2354 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.netwrk
d_netwrk_2356 :: T_TxBody_2290 -> Maybe AgdaAny
d_netwrk_2356 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txsize
d_txsize_2358 :: T_TxBody_2290 -> Integer
d_txsize_2358 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.txid
d_txid_2360 :: T_TxBody_2290 -> AgdaAny
d_txid_2360 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.collateral
d_collateral_2362 ::
  T_TxBody_2290 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2362 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.reqSigHash
d_reqSigHash_2364 :: T_TxBody_2290 -> [AgdaAny]
d_reqSigHash_2364 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxBody.scriptIntHash
d_scriptIntHash_2366 :: T_TxBody_2290 -> Maybe AgdaAny
d_scriptIntHash_2366 v0
  = case coe v0 of
      C_TxBody'46'constructor_14643 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses
d_TxWitnesses_2368 a0 = ()
data T_TxWitnesses_2368
  = C_TxWitnesses'46'constructor_14837 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Transaction.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_2378 ::
  T_TxWitnesses_2368 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2378 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_14837 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scripts
d_scripts_2380 ::
  T_TxWitnesses_2368 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2380 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_14837 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txdats
d_txdats_2382 ::
  T_TxWitnesses_2368 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2382 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_14837 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_2384 ::
  T_TxWitnesses_2368 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2384 v0
  = case coe v0 of
      C_TxWitnesses'46'constructor_14837 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_2386 ::
  T_TransactionStructure_20 ->
  T_TxWitnesses_2368 -> [MAlonzo.Code.Ledger.Script.T_Timelock_224]
d_scriptsP1_2386 ~v0 v1 = du_scriptsP1_2386 v1
du_scriptsP1_2386 ::
  T_TxWitnesses_2368 -> [MAlonzo.Code.Ledger.Script.T_Timelock_224]
du_scriptsP1_2386 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
      (d_scripts_2380 (coe v0))
-- Ledger.Transaction.TransactionStructure.Tx
d_Tx_2388 a0 = ()
data T_Tx_2388
  = C_Tx'46'constructor_15043 T_TxBody_2290 T_TxWitnesses_2368 Bool
                              (Maybe AgdaAny)
-- Ledger.Transaction.TransactionStructure.Tx.body
d_body_2398 :: T_Tx_2388 -> T_TxBody_2290
d_body_2398 v0
  = case coe v0 of
      C_Tx'46'constructor_15043 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.wits
d_wits_2400 :: T_Tx_2388 -> T_TxWitnesses_2368
d_wits_2400 v0
  = case coe v0 of
      C_Tx'46'constructor_15043 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.isValid
d_isValid_2402 :: T_Tx_2388 -> Bool
d_isValid_2402 v0
  = case coe v0 of
      C_Tx'46'constructor_15043 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.Tx.txAD
d_txAD_2404 :: T_Tx_2388 -> Maybe AgdaAny
d_txAD_2404 v0
  = case coe v0 of
      C_Tx'46'constructor_15043 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.getValue
d_getValue_2406 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_2406 ~v0 v1 = du_getValue_2406 v1
du_getValue_2406 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_getValue_2406 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Transaction.TransactionStructure.txinsVKey
d_txinsVKey_2410 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_2410 v0 v1 v2
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
               (coe d_DecEq'45'TxId_998 (coe v0))
               (coe d_DecEq'45'Ix_996 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_490
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498)
            (coe
               MAlonzo.Code.Ledger.Set.Theory.du__'8638'''__1036 (coe v2)
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_108
                       (coe
                          MAlonzo.Code.Ledger.Address.du_payCred_90
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))))))
-- Ledger.Transaction.TransactionStructure.scriptOuts
d_scriptOuts_2416 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_2416 ~v0 v1 = du_scriptOuts_2416 v1
du_scriptOuts_2416 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_2416 v0
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_filter'7504'_1020
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
d_txinsScript_2424 ::
  T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_2424 v0 v1 v2
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
               (coe d_DecEq'45'TxId_998 (coe v0))
               (coe d_DecEq'45'Ix_996 (coe v0))))
         (coe v1)
         (coe
            MAlonzo.Code.Interface.IsSet.du_dom_490
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_494)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe du_scriptOuts_2416 (coe v2)))))
-- Ledger.Transaction.TransactionStructure.refScripts
d_refScripts_2430 ::
  T_TransactionStructure_20 ->
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_2430 v0 v1 v2
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
                  (coe d_DecEq'45'TxId_998 (coe v0))
                  (coe d_DecEq'45'Ix_996 (coe v0))))
            (coe v2)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__662
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe d_txins_2330 (coe d_body_2398 (coe v1)))
               (coe d_refInputs_2332 (coe d_body_2398 (coe v1))))))
-- Ledger.Transaction.TransactionStructure._._.collateral
d_collateral_2442 ::
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2442 v0 ~v1 = du_collateral_2442 v0
du_collateral_2442 ::
  T_Tx_2388 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2442 v0
  = coe d_collateral_2362 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.mint
d_mint_2444 ::
  T_Tx_2388 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_mint_2444 v0 ~v1 = du_mint_2444 v0
du_mint_2444 :: T_Tx_2388 -> AgdaAny
du_mint_2444 v0 = coe d_mint_2338 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.netwrk
d_netwrk_2446 ::
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_netwrk_2446 v0 ~v1 = du_netwrk_2446 v0
du_netwrk_2446 :: T_Tx_2388 -> Maybe AgdaAny
du_netwrk_2446 v0 = coe d_netwrk_2356 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.refInputs
d_refInputs_2448 ::
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2448 v0 ~v1 = du_refInputs_2448 v0
du_refInputs_2448 ::
  T_Tx_2388 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_2448 v0
  = coe d_refInputs_2332 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.reqSigHash
d_reqSigHash_2450 ::
  T_Tx_2388 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_reqSigHash_2450 v0 ~v1 = du_reqSigHash_2450 v0
du_reqSigHash_2450 :: T_Tx_2388 -> [AgdaAny]
du_reqSigHash_2450 v0
  = coe d_reqSigHash_2364 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.scriptIntHash
d_scriptIntHash_2452 ::
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_scriptIntHash_2452 v0 ~v1 = du_scriptIntHash_2452 v0
du_scriptIntHash_2452 :: T_Tx_2388 -> Maybe AgdaAny
du_scriptIntHash_2452 v0
  = coe d_scriptIntHash_2366 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txADhash
d_txADhash_2454 ::
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe AgdaAny
d_txADhash_2454 v0 ~v1 = du_txADhash_2454 v0
du_txADhash_2454 :: T_Tx_2388 -> Maybe AgdaAny
du_txADhash_2454 v0
  = coe d_txADhash_2354 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txcerts
d_txcerts_2456 ::
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
d_txcerts_2456 v0 ~v1 = du_txcerts_2456 v0
du_txcerts_2456 ::
  T_Tx_2388 -> [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
du_txcerts_2456 v0 = coe d_txcerts_2342 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txdonation
d_txdonation_2458 ::
  T_Tx_2388 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txdonation_2458 v0 ~v1 = du_txdonation_2458 v0
du_txdonation_2458 :: T_Tx_2388 -> Integer
du_txdonation_2458 v0
  = coe d_txdonation_2350 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txfee
d_txfee_2460 ::
  T_Tx_2388 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txfee_2460 v0 ~v1 = du_txfee_2460 v0
du_txfee_2460 :: T_Tx_2388 -> Integer
du_txfee_2460 v0 = coe d_txfee_2336 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txid
d_txid_2462 ::
  T_Tx_2388 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_txid_2462 v0 ~v1 = du_txid_2462 v0
du_txid_2462 :: T_Tx_2388 -> AgdaAny
du_txid_2462 v0 = coe d_txid_2360 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txins
d_txins_2464 ::
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2464 v0 ~v1 = du_txins_2464 v0
du_txins_2464 ::
  T_Tx_2388 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2464 v0 = coe d_txins_2330 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txouts
d_txouts_2466 ::
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2466 v0 ~v1 = du_txouts_2466 v0
du_txouts_2466 ::
  T_Tx_2388 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_2466 v0 = coe d_txouts_2334 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txprop
d_txprop_2468 ::
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564]
d_txprop_2468 v0 ~v1 = du_txprop_2468 v0
du_txprop_2468 ::
  T_Tx_2388 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_564]
du_txprop_2468 v0 = coe d_txprop_2348 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txsize
d_txsize_2470 ::
  T_Tx_2388 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txsize_2470 v0 ~v1 = du_txsize_2470 v0
du_txsize_2470 :: T_Tx_2388 -> Integer
du_txsize_2470 v0 = coe d_txsize_2358 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txup
d_txup_2472 ::
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2472 v0 ~v1 = du_txup_2472 v0
du_txup_2472 ::
  T_Tx_2388 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txup_2472 v0 = coe d_txup_2352 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvldt
d_txvldt_2474 ::
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2474 v0 ~v1 = du_txvldt_2474 v0
du_txvldt_2474 ::
  T_Tx_2388 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_2474 v0 = coe d_txvldt_2340 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txvote
d_txvote_2476 ::
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546]
d_txvote_2476 v0 ~v1 = du_txvote_2476 v0
du_txvote_2476 ::
  T_Tx_2388 -> [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_546]
du_txvote_2476 v0 = coe d_txvote_2346 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure._._.txwdrls
d_txwdrls_2478 ::
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2478 v0 ~v1 = du_txwdrls_2478 v0
du_txwdrls_2478 ::
  T_Tx_2388 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_2478 v0 = coe d_txwdrls_2344 (coe d_body_2398 (coe v0))
-- Ledger.Transaction.TransactionStructure.txscripts
d_txscripts_2480 ::
  T_TransactionStructure_20 ->
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_2480 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe d_scripts_2380 (coe d_wits_2400 (coe v1)))
      (coe d_refScripts_2430 (coe v0) (coe v1) (coe v2))
-- Ledger.Transaction.TransactionStructure.lookupScriptHash
d_lookupScriptHash_2490 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_2490 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
      (coe
         MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1592
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
            (coe d_crypto_1032 (coe v0)))
         (coe v1)
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_480
               (coe du_m_2502 (coe v0) (coe v2) (coe v3)))))
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1354
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe du_m_2502 (coe v0) (coe v2) (coe v3)) (coe v1) (coe v4))))
      (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
-- Ledger.Transaction.TransactionStructure._.m
d_m_2502 ::
  T_TransactionStructure_20 ->
  AgdaAny ->
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m_2502 v0 ~v1 v2 v3 = du_m_2502 v0 v2 v3
du_m_2502 ::
  T_TransactionStructure_20 ->
  T_Tx_2388 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m_2502 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Set.HashMap.du_setToHashMap_16
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_396
         (d_scriptStructure_1526 (coe v0)) erased erased erased
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_98
            (coe
               MAlonzo.Code.Ledger.Script.d_p1s_400 (coe d_crypto_1032 (coe v0))
               (coe d_epochStructure_1276 (coe v0))
               (coe d_scriptStructure_1526 (coe v0))))
         (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_414
               (coe d_scriptStructure_1526 (coe v0)))))
      (coe d_txscripts_2480 (coe v0) (coe v1) (coe v2))
-- Ledger.Transaction.TransactionStructure.isP2Script
d_isP2Script_2504 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_2504 ~v0 v1 = du_isP2Script_2504 v1
du_isP2Script_2504 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isP2Script_2504 v0
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30 (coe v0))
-- Ledger.Transaction.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_2506 ::
  T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_2506 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
              (d_tokenAlgebra_1838 (coe v0))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
