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

module MAlonzo.Code.Ledger.Utxo.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sign.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Unary.All
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _._≈_
d__'8776'__14 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__14 = erased
-- _.DCert
d_DCert_68 a0 = ()
-- _.GovProposal
d_GovProposal_198 a0 = ()
-- _.PParams
d_PParams_272 a0 = ()
-- _.Tx
d_Tx_368 a0 = ()
-- _.UTxO
d_UTxO_382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_382 = erased
-- _.Value
d_Value_398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Value_398 = erased
-- _.addValue
d_addValue_420 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_420 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_228
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
-- _.coin
d_coin_430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> Integer
d_coin_430 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))
-- Ledger.Utxo.Properties._._⊢_⇀⦇_,UTXOS⦈_
d__'8866'_'8640''10631'_'44'UTXOS'10632'__1396 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Properties._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1398 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxo.Properties._.DepositPurpose
d_DepositPurpose_1408 a0 a1 = ()
-- Ledger.Utxo.Properties._.HasCoin-Map
d_HasCoin'45'Map_1414 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1414 ~v0 ~v1 = du_HasCoin'45'Map_1414
du_HasCoin'45'Map_1414 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1414 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1494 v1
-- Ledger.Utxo.Properties._.HasCoin-UTxOState
d_HasCoin'45'UTxOState_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'UTxOState_1418 v0 ~v1
  = du_HasCoin'45'UTxOState_1418 v0
du_HasCoin'45'UTxOState_1418 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'UTxOState_1418 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'UTxOState_2086 (coe v0)
-- Ledger.Utxo.Properties._.UTxOEnv
d_UTxOEnv_1434 a0 a1 = ()
-- Ledger.Utxo.Properties._.UTxOState
d_UTxOState_1436 a0 a1 = ()
-- Ledger.Utxo.Properties._.balance
d_balance_1438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance_1438 v0 ~v1 = du_balance_1438 v0
du_balance_1438 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance_1438 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_balance_1608 (coe v0)
-- Ledger.Utxo.Properties._.cbalance
d_cbalance_1442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_cbalance_1442 v0 ~v1 = du_cbalance_1442 v0
du_cbalance_1442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_cbalance_1442 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_cbalance_1614 (coe v0)
-- Ledger.Utxo.Properties._.consumed
d_consumed_1446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> AgdaAny
d_consumed_1446 v0 ~v1 = du_consumed_1446 v0
du_consumed_1446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> AgdaAny
du_consumed_1446 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_consumed_2116 (coe v0)
-- Ledger.Utxo.Properties._.depositRefunds
d_depositRefunds_1448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Integer
d_depositRefunds_1448 v0 ~v1 = du_depositRefunds_1448 v0
du_depositRefunds_1448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Integer
du_depositRefunds_1448 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2100 (coe v0)
-- Ledger.Utxo.Properties._.newDeposits
d_newDeposits_1468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Integer
d_newDeposits_1468 v0 ~v1 = du_newDeposits_1468 v0
du_newDeposits_1468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Integer
du_newDeposits_1468 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_newDeposits_2108 (coe v0)
-- Ledger.Utxo.Properties._.outs
d_outs_1472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_outs_1472 ~v0 ~v1 = du_outs_1472
du_outs_1472 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_outs_1472 = coe MAlonzo.Code.Ledger.Utxo.du_outs_1602
-- Ledger.Utxo.Properties._.produced
d_produced_1474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> AgdaAny
d_produced_1474 v0 ~v1 = du_produced_1474 v0
du_produced_1474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> AgdaAny
du_produced_1474 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_produced_2124 (coe v0)
-- Ledger.Utxo.Properties._.updateCertDeposits
d_updateCertDeposits_1478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_1478 v0 ~v1 = du_updateCertDeposits_1478 v0
du_updateCertDeposits_1478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_1478 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1646 (coe v0)
-- Ledger.Utxo.Properties._.updateDeposits
d_updateDeposits_1480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1480 v0 ~v1 = du_updateDeposits_1480 v0
du_updateDeposits_1480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1480 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_updateDeposits_1696 (coe v0)
-- Ledger.Utxo.Properties._.updateProposalDeposits
d_updateProposalDeposits_1482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_1482 v0 ~v1
  = du_updateProposalDeposits_1482 v0
du_updateProposalDeposits_1482 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_1482 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1684 (coe v0)
-- Ledger.Utxo.Properties.Computational-UTXOS
d_Computational'45'UTXOS_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXOS_1654 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1744 (coe v0) (coe v1))
-- Ledger.Utxo.Properties._.go.computeProof
d_computeProof_1744 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1744 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
              (MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Ledger.Utxo.d_Scripts'45'Yes'45'premises_2286 (coe v0)
                       (coe v1) (coe v2) (coe v3) (coe v4))))
              (MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Ledger.Utxo.d_Scripts'45'No'45'premises_2288 (coe v0)
                       (coe v1) (coe v2) (coe v3) (coe v4)))) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> case coe v6 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                  -> let v10
                           = coe
                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                               (coe ("isValid check failed" :: Data.Text.Text)) in
                     coe
                       (if coe v8
                          then case coe v9 of
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                   -> case coe v7 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                          -> case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                                                 -> case coe v13 of
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                        -> coe
                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1978
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_unions_184
                                                                            (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                            erased
                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                  erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_txins_2320
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                          (coe
                                                                                                             v4)))))
                                                                                              (\ v15 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v15)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                              (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                              erased
                                                                                              erased
                                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Utxo.du_outs_1602
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                       (coe
                                                                                                          v4))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                             (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                             erased
                                                                                                             erased
                                                                                                             (\ v15 ->
                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                  (coe
                                                                                                                     v15))
                                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                   erased
                                                                                                                   erased
                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                                                                                                                         (coe
                                                                                                                            v3)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                      erased
                                                                                                                      erased
                                                                                                                      erased
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                         (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                         erased
                                                                                                                         erased
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                            erased
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                                                                  (coe
                                                                                                                                     v0)))
                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_txins_2320
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                  (coe
                                                                                                                                     v4)))))
                                                                                                                      (\ v15 ->
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                           (coe
                                                                                                                              v15)))))))))
                                                                                                 (\ v15 ->
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                      (coe
                                                                                                         v15)))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                      erased)
                                                                   (coe
                                                                      addInt
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_fees_1972
                                                                         (coe v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1646
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                         (coe v2))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_txcerts_2332
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1684
                                                                         (coe v0)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_txprop_2338
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                               (coe v4)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_txid_2350
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                               (coe v4)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                               (coe v2)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                            (coe v3))))
                                                                   (coe
                                                                      addInt
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                            (coe v4)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_donations_1976
                                                                         (coe v3))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Utxo.C_Scripts'45'Yes_2208
                                                                   v11))
                                                      _ -> coe v10
                                               _ -> coe v10
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> coe v10
                          else (case coe v9 of
                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                    -> case coe v7 of
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                           -> case coe v12 of
                                                MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                  -> case coe v13 of
                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                         -> coe
                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1978
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_specification_174
                                                                             (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             erased erased
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                                                                                   (coe v3)))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                erased erased erased
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                   (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                   erased erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                                                            (coe
                                                                                               v0))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                            (coe
                                                                                               v0)))
                                                                                      (MAlonzo.Code.Ledger.Transaction.d_collateral_2352
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                            (coe
                                                                                               v4)))))
                                                                                (\ v15 ->
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v15)))))
                                                                       (coe
                                                                          (\ v15 v16 v17 v18 v19 ->
                                                                             coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                               (MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                                                                                  (coe v3))
                                                                               v15 v16 v17
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_collateral_2352
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                          (coe
                                                                                                             v4)))))
                                                                                              (\ v20 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v20))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe v15)
                                                                                           (coe
                                                                                              v16)))
                                                                                     v18))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                           erased
                                                                                           erased
                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                                                                                                 (coe
                                                                                                    v3)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                              (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                              erased
                                                                                              erased
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                 (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                                          (coe
                                                                                                             v0)))
                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_collateral_2352
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                          (coe
                                                                                                             v4)))))
                                                                                              (\ v20 ->
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v20))))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                           (coe v15)
                                                                                           (coe
                                                                                              v17)))
                                                                                     v19)))))
                                                                    (coe
                                                                       addInt
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Utxo.d_fees_1972
                                                                          (coe v3))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Utxo.du_cbalance_1614
                                                                          (coe v0)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   erased erased
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                                                                                         (coe v3)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                      (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                      erased erased
                                                                                      erased
                                                                                      (coe
                                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                         erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                                                               (coe
                                                                                                  v0))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                               (coe
                                                                                                  v0)))
                                                                                         (MAlonzo.Code.Ledger.Transaction.d_collateral_2352
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                               (coe
                                                                                                  v4))))
                                                                                      (\ v15 ->
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v15)))))
                                                                             (coe
                                                                                (\ v15 v16 v17 v18
                                                                                   v19 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                                                                                        (coe v3))
                                                                                     v15 v16 v17
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_collateral_2352
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                             (coe
                                                                                                                v4))))
                                                                                                    (\ v20 ->
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v20))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                 (coe
                                                                                                    v15)
                                                                                                 (coe
                                                                                                    v16)))
                                                                                           v18))
                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe
                                                                                           MAlonzo.Code.Function.Bundles.d_from_1726
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                 erased
                                                                                                 erased
                                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                    (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                    erased
                                                                                                    erased
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                                             (coe
                                                                                                                v0)))
                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_collateral_2352
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                             (coe
                                                                                                                v4))))
                                                                                                    (\ v20 ->
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                         (coe
                                                                                                            v20))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                 (coe
                                                                                                    v15)
                                                                                                 (coe
                                                                                                    v17)))
                                                                                           v19)))))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                       (coe v3))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Utxo.d_donations_1976
                                                                       (coe v3)))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Utxo.C_Scripts'45'No_2284
                                                                    v14))
                                                       _ -> coe v10
                                                _ -> coe v10
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> coe v10))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.Properties._.go.completeness
d_completeness_1754 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2132 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1754 = erased
-- Ledger.Utxo.Properties.Computational-UTXO'
d_Computational'45'UTXO''_1784 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXO''_1784 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1934 (coe v0) (coe v1))
-- Ledger.Utxo.Properties._.Go.genErr
d_genErr_1822 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_genErr_1822 v0 v1 v2 v3 v4 ~v5 = du_genErr_1822 v0 v1 v2 v3 v4
du_genErr_1822 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
du_genErr_1822 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
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
                       (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v4)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'8709'_424
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1430
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
              erased in
    coe
      (case coe v5 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
           -> coe
                ("\172 TxBody.txins (Tx.body tx) \8802 \8709" :: Data.Text.Text)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
           -> let v7
                    = coe
                        MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                           (coe
                              (\ v7 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                   (coe
                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                         (coe v0)))
                                   erased
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                      (coe
                                         (\ v8 ->
                                            coe
                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                       (coe v0))))
                                              (coe v8)
                                              (coe
                                                 MAlonzo.Code.Interface.IsSet.du_dom_492
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                                                    (coe v3))))))
                                   v7))
                           (coe
                              MAlonzo.Code.Axiom.Set.du__'8746'__662
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txins_2320
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v4)))
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_refInputs_2322
                                 (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v4)))))
                        erased in
              coe
                (case coe v7 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
                     -> coe
                          ("\172 TxBody.txins (Tx.body tx) \8838 dom (UTxOState.utxo s)"
                           ::
                           Data.Text.Text)
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
                     -> let v9
                              = coe
                                  MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
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
                                        MAlonzo.Code.Axiom.Set.du__'8745'__686
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1430
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                           erased
                                           (coe
                                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                              MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                              MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                 (coe v0))
                                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_txins_2320
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v4)))
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_refInputs_2322
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_body_2388
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8709'_424
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1430
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                                  erased in
                        coe
                          (case coe v9 of
                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                               -> coe ("\172 refInputs \8838 dom utxo " :: Data.Text.Text)
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                               -> let v11
                                        = coe
                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
                                            (coe
                                               MAlonzo.Code.Ledger.Utxo.du_Dec'45'inInterval_1984
                                               (coe v0)
                                               (coe MAlonzo.Code.Ledger.Utxo.d_slot_1956 (coe v2))
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_txvldt_2330
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                     (coe v4))))
                                            erased in
                                  coe
                                    (case coe v11 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                         -> coe
                                              ("\172 inInterval (UTxOEnv.slot \915) (txvldt (Tx.body tx))"
                                               ::
                                               Data.Text.Text)
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                         -> let v13
                                                  = coe
                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                         (coe
                                                            MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Utxo.d_feesOK_1806
                                                            (coe v0) (coe v1)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                               (coe v2))
                                                            (coe v4)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                                                               (coe v3)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                                      erased in
                                            coe
                                              (case coe v13 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                   -> coe
                                                        ("\172 feesOK pp tx utxo \8801 true"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                   -> let v15
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
                                                                (coe
                                                                   MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                   (coe
                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                         (coe v2))
                                                                      (coe v3)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                         (coe v4)))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Utxo.du_produced_2124
                                                                      (coe v0)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                         (coe v2))
                                                                      (coe v3)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                         (coe v4))))
                                                                erased in
                                                      coe
                                                        (case coe v15 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                             -> coe
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
                                                                           MAlonzo.Code.Class.Show.Core.d_show_16
                                                                           MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                 (coe v0))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                                 (coe v0)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                    (coe v2))
                                                                                 (coe v3)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                    (coe v4)))))
                                                                        (coe
                                                                           MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                           ("\n    ins  =\t\t"
                                                                            ::
                                                                            Data.Text.Text)
                                                                           (coe
                                                                              MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                              (coe
                                                                                 MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                 MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                    (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                       (coe v0))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Utxo.du_balance_1608
                                                                                       (coe v0)
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1190
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                             erased
                                                                                             (coe
                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                                                                   (coe
                                                                                                      v0))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                                   (coe
                                                                                                      v0))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                                                                                             (coe
                                                                                                v3))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_txins_2320
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2388
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
                                                                                       MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                       MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                             (coe
                                                                                                v0))
                                                                                          (MAlonzo.Code.Ledger.Transaction.d_mint_2328
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2388
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
                                                                                             MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                             MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                   (coe
                                                                                                      v0))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                      (coe
                                                                                                         v0))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2100
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                         (coe
                                                                                                            v2))
                                                                                                      (coe
                                                                                                         v3)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2388
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
                                                                                                   MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                   MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                         (coe
                                                                                                            v0))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Utxo.du_produced_2124
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                            (coe
                                                                                                               v2))
                                                                                                         (coe
                                                                                                            v3)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2388
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
                                                                                                         MAlonzo.Code.Class.Show.Core.d_show_16
                                                                                                         MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                               (coe
                                                                                                                  v0))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Utxo.du_balance_1608
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Utxo.du_outs_1602
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2388
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
                                                                                                               (MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2388
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
                                                                                                                        MAlonzo.Code.Ledger.Utxo.du_newDeposits_2108
                                                                                                                        (coe
                                                                                                                           v0)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                           (coe
                                                                                                                              v2))
                                                                                                                        (coe
                                                                                                                           v3)
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                           (coe
                                                                                                                              v4))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                                                                                                                     ("\n    donation  =\t\t"
                                                                                                                      ::
                                                                                                                      Data.Text.Text)
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Nat.Show.d_show_56
                                                                                                                        (MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                              (coe
                                                                                                                                 v4)))))))))))))))))))))
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                             -> let v17
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                             (coe
                                                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                   (coe v0))
                                                                                (MAlonzo.Code.Ledger.Transaction.d_mint_2328
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                      (coe v4))))
                                                                             (coe (0 :: Integer)))
                                                                          erased in
                                                                coe
                                                                  (case coe v17 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v18
                                                                       -> coe
                                                                            ("\172 coin (TxBody.mint (Tx.body tx)) \8801 0"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v18
                                                                       -> let v19
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Transaction.d_txsize_2348
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                (coe
                                                                                                   v4)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.PParams.d_maxTxSize_280
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                (coe
                                                                                                   v2)))))
                                                                                    erased in
                                                                          coe
                                                                            (case coe v19 of
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                 -> coe
                                                                                      ("\172(TxBody.txsize (Tx.body tx) Data.Nat.Base.\8804 maxTxSize (UTxOEnv.pparams \915))"
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                 -> let v21
                                                                                          = coe
                                                                                              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
                                                                                              (coe
                                                                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                                                                 (coe
                                                                                                    (\ v21 ->
                                                                                                       coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                         erased
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                                               (coe
                                                                                                                  v0))
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
                                                                                                                           (coe
                                                                                                                              v0)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                              (coe
                                                                                                                                 v0))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                           (coe
                                                                                                                              v0))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                                                                                           (coe
                                                                                                                              v0)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                              (coe
                                                                                                                                 v0))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                           (coe
                                                                                                                              v0)))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                        (coe
                                                                                                                           v0)))
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
                                                                                                                                          (coe
                                                                                                                                             v0))))))
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
                                                                                                                                          (coe
                                                                                                                                             v0))))))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                              (coe
                                                                                                                                 v0))))))))
                                                                                                         erased
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                            (coe
                                                                                                               (\ v22 ->
                                                                                                                  coe
                                                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_226
                                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                       (coe
                                                                                                                          v0))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                          (coe
                                                                                                                             v0))
                                                                                                                       (mulInt
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Utxo.du_utxoEntrySize_1590
                                                                                                                             (coe
                                                                                                                                v0)
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                (coe
                                                                                                                                   v22)))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.PParams.d_minUTxOValue_298
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                                (coe
                                                                                                                                   v2)))))
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2412
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                          (coe
                                                                                                                             v22))))))
                                                                                                         v21))
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
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Transaction.d_txouts_2324
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                             (coe
                                                                                                                v4))))))
                                                                                              erased in
                                                                                    coe
                                                                                      (case coe
                                                                                              v21 of
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v22
                                                                                           -> coe
                                                                                                ("\8704[ (_ , txout) \8712 txouts .proj\8321 ] inject (utxoEntrySize txout * minUTxOValue pp) \8804\7511 getValue txout"
                                                                                                 ::
                                                                                                 Data.Text.Text)
                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v22
                                                                                           -> let v23
                                                                                                    = coe
                                                                                                        MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                                                                           (coe
                                                                                                              (\ v23 ->
                                                                                                                 coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                   erased
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
                                                                                                                         (coe
                                                                                                                            v0))
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
                                                                                                                                     (coe
                                                                                                                                        v0)))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                                        (coe
                                                                                                                                           v0))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                                     (coe
                                                                                                                                        v0))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                                                                                                     (coe
                                                                                                                                        v0)))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                                        (coe
                                                                                                                                           v0))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                                     (coe
                                                                                                                                        v0)))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                  (coe
                                                                                                                                     v0)))
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
                                                                                                                                                    (coe
                                                                                                                                                       v0))))))
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
                                                                                                                                                    (coe
                                                                                                                                                       v0))))))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                                        (coe
                                                                                                                                           v0))))))))
                                                                                                                   erased
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                                      (coe
                                                                                                                         (\ v24 ->
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
                                                                                                                                          (coe
                                                                                                                                             v24))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Ledger.PParams.d_maxValSize_284
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                                       (coe
                                                                                                                                          v2)))))))
                                                                                                                   v23))
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
                                                                                                                    (coe
                                                                                                                       v0))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_txouts_2324
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                       (coe
                                                                                                                          v4))))))
                                                                                                        erased in
                                                                                              coe
                                                                                                (case coe
                                                                                                        v23 of
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v24
                                                                                                     -> coe
                                                                                                          ("\8704[ (_ , txout) \8712 txouts .proj\8321 ] serSize (getValue txout) \8804 maxValSize pp"
                                                                                                           ::
                                                                                                           Data.Text.Text)
                                                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v24
                                                                                                     -> let v25
                                                                                                              = coe
                                                                                                                  MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                                                                                     (coe
                                                                                                                        (\ v25 ->
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
                                                                                                                                            (coe
                                                                                                                                               v0)))
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                                               (coe
                                                                                                                                                  v0))))
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                                            (coe
                                                                                                                                               v0))))
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                                                                                                            (coe
                                                                                                                                               v0)))
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                                               (coe
                                                                                                                                                  v0))))
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                                            (coe
                                                                                                                                               v0)))))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                         (coe
                                                                                                                                            v0)))
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
                                                                                                                                                           (coe
                                                                                                                                                              v0))))))
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
                                                                                                                                                           (coe
                                                                                                                                                              v0))))))))
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                                                                                               (coe
                                                                                                                                                  v0)))))))
                                                                                                                             erased
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                                                (coe
                                                                                                                                   (\ v26 ->
                                                                                                                                      coe
                                                                                                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'All_28
                                                                                                                                        (coe
                                                                                                                                           (\ v27 ->
                                                                                                                                              MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))
                                                                                                                                        (coe
                                                                                                                                           (\ v27 ->
                                                                                                                                              coe
                                                                                                                                                MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2664
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Address.d_attrsSize_56
                                                                                                                                                      (coe
                                                                                                                                                         v27))
                                                                                                                                                   (coe
                                                                                                                                                      (64 ::
                                                                                                                                                         Integer)))))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                           (coe
                                                                                                                                              v26)))))
                                                                                                                             v25))
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
                                                                                                                              (coe
                                                                                                                                 v0))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_txouts_2324
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                 (coe
                                                                                                                                    v4))))))
                                                                                                                  erased in
                                                                                                        coe
                                                                                                          (case coe
                                                                                                                  v25 of
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v26
                                                                                                               -> coe
                                                                                                                    ("\8704[ (a , _) \8712 range txouts ] Sum.All (const \8868) (\955 a \8594 a .BootstrapAddr.attrsSize \8804 64) a"
                                                                                                                     ::
                                                                                                                     Data.Text.Text)
                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v26
                                                                                                               -> coe
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
                   _ -> MAlonzo.RTE.mazUnreachableError)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.Properties._.Go.computeProofH
d_computeProofH_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProofH_1902 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
        -> if coe v6
             then case coe v7 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
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
                                                                                            -> case coe
                                                                                                      v28 of
                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                   -> case coe
                                                                                                             v30 of
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                                                          -> coe
                                                                                                               MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.du_Functor'45'ComputationResult_138)
                                                                                                               ()
                                                                                                               erased
                                                                                                               ()
                                                                                                               erased
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_72)
                                                                                                                  (coe
                                                                                                                     (\ v33
                                                                                                                        v34 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Ledger.Utxo.C_UTXO'45'inductive_2386
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                v9)
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   v11)
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                   (coe
                                                                                                                                      v13)
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                      (coe
                                                                                                                                         v15)
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                         (coe
                                                                                                                                            v17)
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                            (coe
                                                                                                                                               v19)
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                               (coe
                                                                                                                                                  v21)
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                  (coe
                                                                                                                                                     v23)
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                     (coe
                                                                                                                                                        v25)
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                        (coe
                                                                                                                                                           v27)
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                           (coe
                                                                                                                                                              v29)
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                              (coe
                                                                                                                                                                 v31)
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                 (coe
                                                                                                                                                                    v32)
                                                                                                                                                                 (coe
                                                                                                                                                                    v34)))))))))))))))))
                                                                                                               (d_computeProof_1744
                                                                                                                  (coe
                                                                                                                     v0)
                                                                                                                  (coe
                                                                                                                     v1)
                                                                                                                  (coe
                                                                                                                     v2)
                                                                                                                  (coe
                                                                                                                     v3)
                                                                                                                  (coe
                                                                                                                     v4))
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
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v7)
                    (coe
                       MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                       (coe du_genErr_1822 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._.Go.computeProof
d_computeProof_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1934 v0 v1 v2 v3 v4
  = coe
      d_computeProofH_1902 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Ledger.Utxo.d_UTXO'45'premises_2424 (coe v0) (coe v1)
               (coe v4) (coe v2) (coe v3))))
-- Ledger.Utxo.Properties._.Go.completeness
d_completeness_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1938 = erased
-- Ledger.Utxo.Properties.Computational-UTXO
d_Computational'45'UTXO_2090 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'UTXO_2090 v0 v1
  = coe d_Computational'45'UTXO''_1784 (coe v0) (coe v1)
-- Ledger.Utxo.Properties.∙-homo-Coin
d_'8729''45'homo'45'Coin_2116 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8729''45'homo'45'Coin_2116 = erased
-- Ledger.Utxo.Properties.balance-cong
d_balance'45'cong_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_balance'45'cong_2118 v0 ~v1 v2 v3 v4
  = du_balance'45'cong_2118 v0 v2 v3 v4
du_balance'45'cong_2118 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_balance'45'cong_2118 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'cong_922
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
            (coe
               MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0))))
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
      (\ v4 ->
         coe
           MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2412
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_1004
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_812
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2402 (coe v0))
            (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du__'7584''7504'_1004
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_mapValues_812
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Ledger.Transaction.d_txOutHash_2402 (coe v0))
            (coe v2)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_414
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
         (coe
            MAlonzo.Code.Data.Product.Base.du_map'8322'_150
            (coe
               (\ v4 ->
                  MAlonzo.Code.Ledger.Transaction.d_txOutHash_2402 (coe v0))))
         (coe v3))
-- Ledger.Utxo.Properties.balance-cong-coin
d_balance'45'cong'45'coin_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_balance'45'cong'45'coin_2126 = erased
-- Ledger.Utxo.Properties.balance-∪
d_balance'45''8746'_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_balance'45''8746'_2138 = erased
-- Ledger.Utxo.Properties._._.newTxid⇒disj
d_newTxid'8658'disj_2260 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_newTxid'8658'disj_2260 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_newTxid'8658'disj_2260
du_newTxid'8658'disj_2260 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_newTxid'8658'disj_2260
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_694
-- Ledger.Utxo.Properties._._.consumedCoinEquality
d_consumedCoinEquality_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_consumedCoinEquality_2276 = erased
-- Ledger.Utxo.Properties._._.producedCoinEquality
d_producedCoinEquality_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_producedCoinEquality_2292 = erased
-- Ledger.Utxo.Properties._._.balValueToCoin
d_balValueToCoin_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_balValueToCoin_2306 = erased
-- Ledger.Utxo.Properties.posPart-negPart≡x
d_posPart'45'negPart'8801'x_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_posPart'45'negPart'8801'x_2318 = erased
-- Ledger.Utxo.Properties._._.collateral
d_collateral_2360 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2360 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_collateral_2360 v9
du_collateral_2360 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_collateral_2360 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_collateral_2352
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v0))
-- Ledger.Utxo.Properties._._.mint
d_mint_2362 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> AgdaAny
d_mint_2362 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_mint_2362 v9
du_mint_2362 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> AgdaAny
du_mint_2362 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_mint_2328
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v0))
-- Ledger.Utxo.Properties._._.txdonation
d_txdonation_2376 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Integer
d_txdonation_2376 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txdonation_2376 v9
du_txdonation_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Integer
du_txdonation_2376 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v0))
-- Ledger.Utxo.Properties._._.txfee
d_txfee_2378 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Integer
d_txfee_2378 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txfee_2378 v9
du_txfee_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Integer
du_txfee_2378 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txfee_2326
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v0))
-- Ledger.Utxo.Properties._._.txid
d_txid_2380 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> AgdaAny
d_txid_2380 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txid_2380 v9
du_txid_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> AgdaAny
du_txid_2380 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2350
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v0))
-- Ledger.Utxo.Properties._._.txins
d_txins_2382 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2382 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_txins_2382 v9
du_txins_2382 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_txins_2382 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txins_2320
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v0))
-- Ledger.Utxo.Properties._.DepositHelpers.pp
d_pp_2438 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pp_2438 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 ~v11 ~v12
  = du_pp_2438 v10
du_pp_2438 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pp_2438 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1958 (coe v0)
-- Ledger.Utxo.Properties._.DepositHelpers.dep
d_dep_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_dep_2440 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
           ~v13
  = du_dep_2440 v0 v6
du_dep_2440 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_dep_2440 v0 v1
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
      (coe
         MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
      (coe (\ v2 -> v2)) (coe v1)
-- Ledger.Utxo.Properties._.DepositHelpers.uDep
d_uDep_2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_uDep_2442 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 v10 v11 ~v12 ~v13
  = du_uDep_2442 v0 v6 v10 v11
du_uDep_2442 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 -> Integer
du_uDep_2442 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
      (coe
         MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
      (coe (\ v4 -> v4))
      (coe
         MAlonzo.Code.Ledger.Utxo.du_updateDeposits_1696 (coe v0)
         (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1958 (coe v3))
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2))
         (coe v1))
-- Ledger.Utxo.Properties._.DepositHelpers.Δdep
d_Δdep_2444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_Δdep_2444 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 v10 v11 ~v12 ~v13
  = du_Δdep_2444 v0 v6 v10 v11
du_Δdep_2444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 -> Integer
du_Δdep_2444 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.du_depositsChange_1746 (coe v0)
      (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1958 (coe v3))
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2)) (coe v1)
-- Ledger.Utxo.Properties._.DepositHelpers.utxoSt
d_utxoSt_2446 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
d_utxoSt_2446 ~v0 v1 ~v2 v3 ~v4 v5 ~v6 v7 ~v8 ~v9 ~v10 ~v11 ~v12
  = du_utxoSt_2446 v1 v3 v5 v7
du_utxoSt_2446 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
du_utxoSt_2446 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1978
      (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Utxo.Properties._.DepositHelpers.ref
d_ref_2448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_ref_2448 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12 ~v13
  = du_ref_2448 v0 v2 v4 v6 v8 v10 v11
du_ref_2448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 -> Integer
du_ref_2448 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2100 (coe v0)
      (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1958 (coe v6))
      (coe
         MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1978
         (coe v1) (coe v2) (coe v3) (coe v4))
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v5))
-- Ledger.Utxo.Properties._.DepositHelpers.tot
d_tot_2450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_tot_2450 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12 ~v13
  = du_tot_2450 v0 v2 v4 v6 v8 v10 v11
du_tot_2450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 -> Integer
du_tot_2450 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Ledger.Utxo.du_newDeposits_2108 (coe v0)
      (coe MAlonzo.Code.Ledger.Utxo.d_pparams_1958 (coe v6))
      (coe
         MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1978
         (coe v1) (coe v2) (coe v3) (coe v4))
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v5))
-- Ledger.Utxo.Properties._.DepositHelpers.h
d_h_2452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_h_2452 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.newBal'
d_newBal''_2458 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_newBal''_2458 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.newBal
d_newBal_2462 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_newBal_2462 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.noMintAda'
d_noMintAda''_2464 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_noMintAda''_2464 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.noMintAda
d_noMintAda_2468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_noMintAda_2468 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.remDepTot
d_remDepTot_2470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer
d_remDepTot_2470 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12
                 ~v13
  = du_remDepTot_2470 v0 v2 v4 v6 v8 v10 v11
du_remDepTot_2470 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 -> Integer
du_remDepTot_2470 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
         (coe
            MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
         (coe (\ v7 -> v7)) (coe v3))
      (coe
         du_ref_2448 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
         (coe v6))
-- Ledger.Utxo.Properties._.DepositHelpers.deposits-change'
d_deposits'45'change''_2472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_deposits'45'change''_2472 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.dep-ref
d_dep'45'ref_2474 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_dep'45'ref_2474 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.ref-tot-0
d_ref'45'tot'45'0_2490 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ref'45'tot'45'0_2490 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.ref≤dep
d_ref'8804'dep_2506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_ref'8804'dep_2506 v0 ~v1 v2 ~v3 v4 ~v5 v6 ~v7 v8 ~v9 v10 v11 ~v12
                    ~v13
  = du_ref'8804'dep_2506 v0 v2 v4 v6 v8 v10 v11
du_ref'8804'dep_2506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_ref'8804'dep_2506 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
              (coe
                 du_ref_2448 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                 (coe v6))
              (coe (0 :: Integer)) in
    coe
      (case coe v7 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
           -> if coe v8
                then coe
                       seq (coe v9) (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)
                else coe
                       seq (coe v9)
                       (coe
                          MAlonzo.Code.Data.Nat.Properties.du_'8804''8243''8658''8804'_6032
                          (let v10
                                 = MAlonzo.Code.Data.Integer.Base.d_sign_24
                                     (let v10
                                            = coe
                                                MAlonzo.Code.Data.List.Base.du_foldr_242
                                                (coe
                                                   (\ v10 ->
                                                      addInt
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v10))))
                                                (coe (0 :: Integer))
                                                (coe
                                                   MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_828
                                                   (coe
                                                      (\ v10 v11 ->
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                                           (let v12
                                                                  = coe
                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                         (coe v0))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v10))
                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v11)) in
                                                            coe
                                                              (let v13
                                                                     = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                         (coe v10) in
                                                               coe
                                                                 (let v14
                                                                        = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe v11) in
                                                                  coe
                                                                    (case coe v12 of
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                                         -> if coe v15
                                                                              then coe
                                                                                     seq (coe v16)
                                                                                     (coe
                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                        erased
                                                                                        (coe
                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                           erased
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.Bool.Properties.d_T'63'_3690
                                                                                              (coe
                                                                                                 eqInt
                                                                                                 (coe
                                                                                                    v13)
                                                                                                 (coe
                                                                                                    v14)))))
                                                                              else coe
                                                                                     seq (coe v16)
                                                                                     (coe
                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                        (coe v15)
                                                                                        (coe
                                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                       _ -> MAlonzo.RTE.mazUnreachableError))))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.du_finiteness_214
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1646
                                                               (coe v0)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Transaction.d_txcerts_2332
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                     (coe v5)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1684
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_txprop_2338
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                        (coe v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_txid_2350
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                        (coe v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                        (coe v6)))
                                                                  (coe v3))))))) in
                                      coe
                                        (let v11
                                               = coe
                                                   MAlonzo.Code.Data.List.Base.du_foldr_242
                                                   (coe
                                                      (\ v11 ->
                                                         addInt
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v11))))
                                                   (coe (0 :: Integer))
                                                   (coe
                                                      MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_828
                                                      (coe
                                                         (\ v11 v12 ->
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                                              (let v13
                                                                     = coe
                                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                            (coe v0))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v11))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v12)) in
                                                               coe
                                                                 (let v14
                                                                        = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe v11) in
                                                                  coe
                                                                    (let v15
                                                                           = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                               (coe v12) in
                                                                     coe
                                                                       (case coe v13 of
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                            -> if coe v16
                                                                                 then coe
                                                                                        seq
                                                                                        (coe v17)
                                                                                        (coe
                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                           erased
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.Bool.Properties.d_T'63'_3690
                                                                                                 (coe
                                                                                                    eqInt
                                                                                                    (coe
                                                                                                       v14)
                                                                                                    (coe
                                                                                                       v15)))))
                                                                                 else coe
                                                                                        seq
                                                                                        (coe v17)
                                                                                        (coe
                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                           (coe v16)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                          _ -> MAlonzo.RTE.mazUnreachableError))))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.du_finiteness_214
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v3))))) in
                                         coe
                                           (let v12
                                                  = ltInt
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_foldr_242
                                                         (coe
                                                            (\ v12 ->
                                                               addInt
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v12))))
                                                         (coe (0 :: Integer))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_828
                                                            (coe
                                                               (\ v12 v13 ->
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                                                    (let v14
                                                                           = coe
                                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                  (coe v0))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe v12))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe v13)) in
                                                                     coe
                                                                       (let v15
                                                                              = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe v12) in
                                                                        coe
                                                                          (let v16
                                                                                 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                     (coe v13) in
                                                                           coe
                                                                             (case coe v14 of
                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                                                  -> if coe v17
                                                                                       then coe
                                                                                              seq
                                                                                              (coe
                                                                                                 v18)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Data.Bool.Properties.d_T'63'_3690
                                                                                                       (coe
                                                                                                          eqInt
                                                                                                          (coe
                                                                                                             v15)
                                                                                                          (coe
                                                                                                             v16)))))
                                                                                       else coe
                                                                                              seq
                                                                                              (coe
                                                                                                 v18)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                 (coe
                                                                                                    v17)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                _ -> MAlonzo.RTE.mazUnreachableError))))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Set.Theory.du_finiteness_214
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1646
                                                                        (coe v0)
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                           (coe v6))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_txcerts_2332
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                              (coe v5)))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1684
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_txprop_2338
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                 (coe v5)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_txid_2350
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                 (coe v5)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                 (coe v6)))
                                                                           (coe v3))))))))
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_foldr_242
                                                         (coe
                                                            (\ v12 ->
                                                               addInt
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe v12))))
                                                         (coe (0 :: Integer))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_828
                                                            (coe
                                                               (\ v12 v13 ->
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                                                    (let v14
                                                                           = coe
                                                                               MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                  (coe v0))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe v12))
                                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe v13)) in
                                                                     coe
                                                                       (let v15
                                                                              = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe v12) in
                                                                        coe
                                                                          (let v16
                                                                                 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                     (coe v13) in
                                                                           coe
                                                                             (case coe v14 of
                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                                                  -> if coe v17
                                                                                       then coe
                                                                                              seq
                                                                                              (coe
                                                                                                 v18)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Data.Bool.Properties.d_T'63'_3690
                                                                                                       (coe
                                                                                                          eqInt
                                                                                                          (coe
                                                                                                             v15)
                                                                                                          (coe
                                                                                                             v16)))))
                                                                                       else coe
                                                                                              seq
                                                                                              (coe
                                                                                                 v18)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                 (coe
                                                                                                    v17)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                _ -> MAlonzo.RTE.mazUnreachableError))))))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Set.Theory.du_finiteness_214
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v3)))))) in
                                            coe
                                              (if coe v12
                                                 then coe
                                                        MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                        (coe subInt (coe v11) (coe v10))
                                                 else coe subInt (coe v10) (coe v11))))) in
                           coe
                             (let v11
                                    = MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
                                        (let v11
                                               = coe
                                                   MAlonzo.Code.Data.List.Base.du_foldr_242
                                                   (coe
                                                      (\ v11 ->
                                                         addInt
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v11))))
                                                   (coe (0 :: Integer))
                                                   (coe
                                                      MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_828
                                                      (coe
                                                         (\ v11 v12 ->
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                                              (let v13
                                                                     = coe
                                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                            (coe v0))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v11))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v12)) in
                                                               coe
                                                                 (let v14
                                                                        = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe v11) in
                                                                  coe
                                                                    (let v15
                                                                           = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                               (coe v12) in
                                                                     coe
                                                                       (case coe v13 of
                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                            -> if coe v16
                                                                                 then coe
                                                                                        seq
                                                                                        (coe v17)
                                                                                        (coe
                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                           erased
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.Bool.Properties.d_T'63'_3690
                                                                                                 (coe
                                                                                                    eqInt
                                                                                                    (coe
                                                                                                       v14)
                                                                                                    (coe
                                                                                                       v15)))))
                                                                                 else coe
                                                                                        seq
                                                                                        (coe v17)
                                                                                        (coe
                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                           (coe v16)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                          _ -> MAlonzo.RTE.mazUnreachableError))))))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.du_finiteness_214
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1646
                                                                  (coe v0)
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                     (coe v6))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Transaction.d_txcerts_2332
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                        (coe v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1684
                                                                     (coe v0)
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_txprop_2338
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                           (coe v5)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Transaction.d_txid_2350
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                           (coe v5)))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                           (coe v6)))
                                                                     (coe v3))))))) in
                                         coe
                                           (let v12
                                                  = coe
                                                      MAlonzo.Code.Data.List.Base.du_foldr_242
                                                      (coe
                                                         (\ v12 ->
                                                            addInt
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v12))))
                                                      (coe (0 :: Integer))
                                                      (coe
                                                         MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_828
                                                         (coe
                                                            (\ v12 v13 ->
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                                                 (let v14
                                                                        = coe
                                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                               (coe v0))
                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v12))
                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v13)) in
                                                                  coe
                                                                    (let v15
                                                                           = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                               (coe v12) in
                                                                     coe
                                                                       (let v16
                                                                              = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe v13) in
                                                                        coe
                                                                          (case coe v14 of
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                                               -> if coe v17
                                                                                    then coe
                                                                                           seq
                                                                                           (coe v18)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                              erased
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                                 erased
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Data.Bool.Properties.d_T'63'_3690
                                                                                                    (coe
                                                                                                       eqInt
                                                                                                       (coe
                                                                                                          v15)
                                                                                                       (coe
                                                                                                          v16)))))
                                                                                    else coe
                                                                                           seq
                                                                                           (coe v18)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                              (coe
                                                                                                 v17)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))))))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.du_finiteness_214
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v3))))) in
                                            coe
                                              (let v13
                                                     = ltInt
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_foldr_242
                                                            (coe
                                                               (\ v13 ->
                                                                  addInt
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v13))))
                                                            (coe (0 :: Integer))
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_828
                                                               (coe
                                                                  (\ v13 v14 ->
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                                                       (let v15
                                                                              = coe
                                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                     (coe v0))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v13))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v14)) in
                                                                        coe
                                                                          (let v16
                                                                                 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                     (coe v13) in
                                                                           coe
                                                                             (let v17
                                                                                    = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe v14) in
                                                                              coe
                                                                                (case coe v15 of
                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                                                     -> if coe v18
                                                                                          then coe
                                                                                                 seq
                                                                                                 (coe
                                                                                                    v19)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Data.Bool.Properties.d_T'63'_3690
                                                                                                          (coe
                                                                                                             eqInt
                                                                                                             (coe
                                                                                                                v16)
                                                                                                             (coe
                                                                                                                v17)))))
                                                                                          else coe
                                                                                                 seq
                                                                                                 (coe
                                                                                                    v19)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                    (coe
                                                                                                       v18)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError))))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.du_finiteness_214
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1646
                                                                           (coe v0)
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                              (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Transaction.d_txcerts_2332
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                 (coe v5)))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1684
                                                                              (coe v0)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_txprop_2338
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                    (coe v5)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Transaction.d_txid_2350
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                    (coe v5)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                    (coe v6)))
                                                                              (coe v3))))))))
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_foldr_242
                                                            (coe
                                                               (\ v13 ->
                                                                  addInt
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v13))))
                                                            (coe (0 :: Integer))
                                                            (coe
                                                               MAlonzo.Code.Data.List.Base.du_deduplicate'7495'_828
                                                               (coe
                                                                  (\ v13 v14 ->
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                                                                       (let v15
                                                                              = coe
                                                                                  MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                     (coe v0))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v13))
                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                     (coe v14)) in
                                                                        coe
                                                                          (let v16
                                                                                 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                     (coe v13) in
                                                                           coe
                                                                             (let v17
                                                                                    = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                        (coe v14) in
                                                                              coe
                                                                                (case coe v15 of
                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                                                     -> if coe v18
                                                                                          then coe
                                                                                                 seq
                                                                                                 (coe
                                                                                                    v19)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                                    erased
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
                                                                                                       erased
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Data.Bool.Properties.d_T'63'_3690
                                                                                                          (coe
                                                                                                             eqInt
                                                                                                             (coe
                                                                                                                v16)
                                                                                                             (coe
                                                                                                                v17)))))
                                                                                          else coe
                                                                                                 seq
                                                                                                 (coe
                                                                                                    v19)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                    (coe
                                                                                                       v18)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                                   _ -> MAlonzo.RTE.mazUnreachableError))))))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.du_finiteness_214
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v3)))))) in
                                               coe
                                                 (if coe v13
                                                    then coe
                                                           MAlonzo.Code.Data.Integer.Base.d_'45'__252
                                                           (coe subInt (coe v12) (coe v11))
                                                    else coe subInt (coe v11) (coe v12))))) in
                              coe
                                (case coe v10 of
                                   MAlonzo.Code.Data.Sign.Base.C_'45'_8 -> coe v11
                                   _ -> coe (0 :: Integer))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe du_uDep_2442 (coe v0) (coe v3) (coe v5) (coe v6))
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                (\ v10 v11 v12 -> v12)
                                (addInt
                                   (coe
                                      du_ref_2448 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                      (coe v5) (coe v6))
                                   (coe du_uDep_2442 (coe v0) (coe v3) (coe v5) (coe v6)))
                                (coe du_dep_2440 (coe v0) (coe v3))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                   erased
                                   (addInt
                                      (coe
                                         du_ref_2448 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6))
                                      (coe du_uDep_2442 (coe v0) (coe v3) (coe v5) (coe v6)))
                                   (addInt
                                      (coe
                                         du_ref_2448 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                         (coe v5) (coe v6))
                                      (coe du_uDep_2442 (coe v0) (coe v3) (coe v5) (coe v6)))
                                   (coe du_dep_2440 (coe v0) (coe v3))
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                      erased
                                      (addInt
                                         (coe
                                            du_ref_2448 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                            (coe v5) (coe v6))
                                         (coe du_uDep_2442 (coe v0) (coe v3) (coe v5) (coe v6)))
                                      (coe du_dep_2440 (coe v0) (coe v3))
                                      (coe du_dep_2440 (coe v0) (coe v3))
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                         erased (coe du_dep_2440 (coe v0) (coe v3)))
                                      erased)
                                   erased))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Utxo.Properties._.DepositHelpers.deposits-change
d_deposits'45'change_2520 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_deposits'45'change_2520 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.split-balance
d_split'45'balance_2524 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_split'45'balance_2524 = erased
-- Ledger.Utxo.Properties._.DepositHelpers._.utxo-ref-prop-worker
d_utxo'45'ref'45'prop'45'worker_2574 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_utxo'45'ref'45'prop'45'worker_2574 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.utxo-ref-prop
d_utxo'45'ref'45'prop_2584 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_utxo'45'ref'45'prop_2584 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.rearrange0
d_rearrange0_2588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rearrange0_2588 = erased
-- Ledger.Utxo.Properties._.DepositHelpers._.pov-scripts-worker
d_pov'45'scripts'45'worker_2614 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pov'45'scripts'45'worker_2614 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.pov-scripts
d_pov'45'scripts_2626 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pov'45'scripts_2626 = erased
-- Ledger.Utxo.Properties._.DepositHelpers.pov-no-scripts
d_pov'45'no'45'scripts_2630 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pov'45'no'45'scripts_2630 = erased
-- Ledger.Utxo.Properties.UTXO-step
d_UTXO'45'step_2638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_UTXO'45'step_2638 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
      (coe d_Computational'45'UTXO_2090 (coe v0) (coe v1))
-- Ledger.Utxo.Properties.UTXO-step-computes-UTXO
d_UTXO'45'step'45'computes'45'UTXO_2640 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_UTXO'45'step'45'computes'45'UTXO_2640 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_'8801''45'success'8660'STS_300
      (coe d_Computational'45'UTXO_2090 (coe v0) (coe v1)) (coe v2)
      (coe v3) (coe v4) (coe v5)
-- Ledger.Utxo.Properties.pov
d_pov_2642 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_pov_2642 = erased
-- Ledger.Utxo.Properties.isRefundCert
d_isRefundCert_2680 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 -> Bool
d_isRefundCert_2680 ~v0 ~v1 v2 = du_isRefundCert_2680 v2
du_isRefundCert_2680 ::
  MAlonzo.Code.Ledger.Deleg.T_DCert_634 -> Bool
du_isRefundCert_2680 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         MAlonzo.Code.Ledger.Deleg.C_dereg_638 v2
           -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         MAlonzo.Code.Ledger.Deleg.C_deregdrep_646 v2
           -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         _ -> coe v1)
-- Ledger.Utxo.Properties.noRefundCert
d_noRefundCert_2686 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] -> ()
d_noRefundCert_2686 = erased
-- Ledger.Utxo.Properties.fin∘list[]
d_fin'8728'list'91''93'_2694 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fin'8728'list'91''93'_2694 = erased
-- Ledger.Utxo.Properties.fin∘list∷[]
d_fin'8728'list'8759''91''93'_2700 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fin'8728'list'8759''91''93'_2700 = erased
-- Ledger.Utxo.Properties.coin∅
d_coin'8709'_2702 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8709'_2702 = erased
-- Ledger.Utxo.Properties.getCoin-singleton
d_getCoin'45'singleton_2738 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'45'singleton_2738 = erased
-- Ledger.Utxo.Properties._.getCoin∪⁺∅≡id
d_getCoin'8746''8314''8709''8801'id_2758 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'8746''8314''8709''8801'id_2758 = erased
-- Ledger.Utxo.Properties._.getCoin∣∅≡id
d_getCoin'8739''8709''8801'id_2770 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'8739''8709''8801'id_2770 = erased
-- Ledger.Utxo.Properties._.getCoin∪⁺∅∣∅id
d_getCoin'8746''8314''8709''8739''8709'id_2776 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_getCoin'8746''8314''8709''8739''8709'id_2776 = erased
-- Ledger.Utxo.Properties._.∪⁺singleton≡
d_'8746''8314'singleton'8801'_2788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314'singleton'8801'_2788 = erased
-- Ledger.Utxo.Properties._._.≤updatePropDeps
d_'8804'updatePropDeps_2814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804'updatePropDeps_2814 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8804'updatePropDeps_2814 v0 v4 v5 v6 v7
du_'8804'updatePropDeps_2814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804'updatePropDeps_2814 v0 v1 v2 v3 v4
  = case coe v4 of
      []
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2634
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                (coe
                   MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                (coe
                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                (coe (\ v5 -> v5)) (coe v1))
      (:) v5 v6
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2646
             (coe
                du_'8804'updatePropDeps_2814 (coe v0) (coe v1) (coe v2) (coe v3)
                (coe v6))
             (coe
                MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2646
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3344
                   (coe
                      MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                      (coe
                         MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                      (coe
                         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                      (coe
                         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                      (coe (\ v7 -> v7))
                      (coe
                         MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1684 (coe v0)
                         (coe v6) (coe v2) (coe v3) (coe v1))))
                (coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2634
                   (coe
                      addInt
                      (coe
                         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                         (coe
                            MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                         (coe
                            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                         (coe
                            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                         (coe (\ v7 -> v7))
                         (coe
                            MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1684 (coe v0)
                            (coe v6) (coe v2) (coe v3) (coe v1)))
                      (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._._.updatePropDeps≡
d_updatePropDeps'8801'_2822 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_updatePropDeps'8801'_2822 = erased
-- Ledger.Utxo.Properties._.≤certDeps
d_'8804'certDeps_2846 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804'certDeps_2846 v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_'8804'certDeps_2846 v0 v5 v6
du_'8804'certDeps_2846 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804'certDeps_2846 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
         (\ v3 v4 v5 ->
            coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2716 v5))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
         (coe
            MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
         (coe (\ v3 -> v3)) (coe v1))
      (coe
         MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
         (coe
            MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
         (coe (\ v3 -> v3))
         (let v3
                = coe
                    MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v3)
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                  (coe
                     MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                     (coe
                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                  v1
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_424
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
      (let v3
             = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672 in
       coe
         (let v4
                = \ v4 v5 v6 v7 v8 ->
                    coe
                      MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2848 v7
                      v8 in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                  (coe v3) (coe v4))
               (coe
                  MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                  (coe
                     MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                     (coe
                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                  (coe (\ v5 -> v5)) (coe v1))
               (addInt
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                     (coe
                        MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                     (coe
                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                     (coe (\ v5 -> v5)) (coe v1))
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
               (coe
                  MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                  (coe
                     MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                  (coe
                     MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                     (coe
                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                  (coe (\ v5 -> v5))
                  (let v5
                         = coe
                             MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                             (coe v0) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v5)
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                           (coe
                              MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                           v1
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe v2)))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_'8709'_424
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                  (\ v5 v6 v7 v8 v9 -> v9)
                  (addInt
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                        (coe (\ v5 -> v5)) (coe v1))
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                     (coe
                        MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                     (coe
                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                     (coe (\ v5 -> v5))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                        v1
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe v2))))
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                     (coe
                        MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                     (coe
                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                     (coe (\ v5 -> v5))
                     (let v5
                            = coe
                                MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                (coe v0) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v5)
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                              v1
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe v2)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'8709'_424
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                     (\ v5 v6 v7 v8 v9 -> v9)
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                        (coe (\ v5 -> v5))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                           (coe
                              MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                           (coe
                              MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                           v1
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe v2))))
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                        (coe (\ v5 -> v5))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0)))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                              v1
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe v2)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'8709'_424
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
                     (coe
                        MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                        (coe
                           MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                        (coe (\ v5 -> v5))
                        (let v5
                               = coe
                                   MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                   (coe v0) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v5)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                 (coe
                                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                    (coe v0))
                                 v1
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                    (coe v2)))
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_'8709'_424
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                    (coe
                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
                     (let v5
                            = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672 in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                              (coe v5))
                           (coe
                              MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                 (coe
                                    MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                              (coe (\ v6 -> v6))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                    (coe
                                       MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                    (coe
                                       MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                    (coe
                                       MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                       (coe v0))
                                    v1
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_680
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1430
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                       (coe v2)))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'8709'_424
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                       (coe
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))))
                     erased)
                  erased)
               (coe
                  MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3344
                  (coe
                     MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                     (coe
                        MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                     (coe
                        MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                        (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                     (coe
                        MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                     (coe (\ v5 -> v5)) (coe v1))))))
-- Ledger.Utxo.Properties._.≤updateCertDeps
d_'8804'updateCertDeps_2862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8804'updateCertDeps_2862 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8804'updateCertDeps_2862 v0 v4 v5 v6 v7
du_'8804'updateCertDeps_2862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8804'updateCertDeps_2862 v0 v1 v2 v3 v4
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2634
             (coe
                MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                (coe
                   MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                (coe
                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                (coe
                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                   (coe
                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                (coe (\ v5 -> v5)) (coe v3))
      (:) v5 v6
        -> case coe v4 of
             MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v9 v10
               -> case coe v5 of
                    MAlonzo.Code.Ledger.Deleg.C_delegate_636 v11 v12 v13 v14
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2646
                           (coe
                              du_'8804'updateCertDeps_2862 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              du_'8804'certDeps_2846 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1646 (coe v0)
                                 (coe v2) (coe v6) (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Ledger.Utxo.C_CredentialDeposit_1634 (coe v11))
                                 (coe v14)))
                    MAlonzo.Code.Ledger.Deleg.C_regpool_640 v11 v12
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2646
                           (coe
                              du_'8804'updateCertDeps_2862 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              du_'8804'certDeps_2846 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1646 (coe v0)
                                 (coe v2) (coe v6) (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Ledger.Utxo.C_PoolDeposit_1636 (coe v11))
                                 (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_300 (coe v2))))
                    MAlonzo.Code.Ledger.Deleg.C_retirepool_642 v11 v12
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2646
                           (coe
                              du_'8804'updateCertDeps_2862 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2634
                              (coe
                                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                 (coe
                                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                 (coe (\ v13 -> v13))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1646 (coe v0)
                                    (coe v2) (coe v6) (coe v3))))
                    MAlonzo.Code.Ledger.Deleg.C_regdrep_644 v11 v12 v13
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2646
                           (coe
                              du_'8804'updateCertDeps_2862 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              du_'8804'certDeps_2846 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1646 (coe v0)
                                 (coe v2) (coe v6) (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Ledger.Utxo.C_DRepDeposit_1638 (coe v11))
                                 (coe v12)))
                    MAlonzo.Code.Ledger.Deleg.C_ccreghot_648 v11 v12
                      -> coe
                           MAlonzo.Code.Data.Nat.Properties.du_'8804''45'trans_2646
                           (coe
                              du_'8804'updateCertDeps_2862 (coe v0) (coe v6) (coe v2) (coe v3)
                              (coe v10))
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2634
                              (coe
                                 MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                    (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                 (coe
                                    MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                 (coe (\ v13 -> v13))
                                 (coe
                                    MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1646 (coe v0)
                                    (coe v2) (coe v6) (coe v3))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._._.body
d_body_2892 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  T_GeneralizeTel_759105 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280
d_body_2892 ~v0 ~v1 ~v2 ~v3 v4 = du_body_2892 v4
du_body_2892 ::
  T_GeneralizeTel_759105 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280
du_body_2892 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2388
      (coe d_'46'generalizedField'45'tx_759091 v0)
-- Ledger.Utxo.Properties._._.txcerts
d_txcerts_2912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  T_GeneralizeTel_759105 -> [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
d_txcerts_2912 ~v0 ~v1 ~v2 ~v3 v4 = du_txcerts_2912 v4
du_txcerts_2912 ::
  T_GeneralizeTel_759105 -> [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
du_txcerts_2912 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2332
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_759091 v0))
-- Ledger.Utxo.Properties._._.txprop
d_txprop_2924 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  T_GeneralizeTel_759105 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568]
d_txprop_2924 ~v0 ~v1 ~v2 ~v3 v4 = du_txprop_2924 v4
du_txprop_2924 ::
  T_GeneralizeTel_759105 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568]
du_txprop_2924 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txprop_2338
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_759091 v0))
-- Ledger.Utxo.Properties._._.govActionDeposit
d_govActionDeposit_2964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  T_GeneralizeTel_759105 -> Integer
d_govActionDeposit_2964 ~v0 ~v1 ~v2 ~v3 v4
  = du_govActionDeposit_2964 v4
du_govActionDeposit_2964 :: T_GeneralizeTel_759105 -> Integer
du_govActionDeposit_2964 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326
      (coe
         MAlonzo.Code.Ledger.Utxo.d_pparams_1958
         (coe d_'46'generalizedField'45'Γ_759093 v0))
-- Ledger.Utxo.Properties._._.deposits
d_deposits_3000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  T_GeneralizeTel_759105 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_3000 ~v0 ~v1 ~v2 ~v3 v4 = du_deposits_3000 v4
du_deposits_3000 ::
  T_GeneralizeTel_759105 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_3000 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_deposits_1974
      (coe d_'46'generalizedField'45'utxoState_759095 v0)
-- Ledger.Utxo.Properties._._.donations
d_donations_3002 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  T_GeneralizeTel_759105 -> Integer
d_donations_3002 ~v0 ~v1 ~v2 ~v3 v4 = du_donations_3002 v4
du_donations_3002 :: T_GeneralizeTel_759105 -> Integer
du_donations_3002 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_donations_1976
      (coe d_'46'generalizedField'45'utxoState_759095 v0)
-- Ledger.Utxo.Properties._._.fees
d_fees_3004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  T_GeneralizeTel_759105 -> Integer
d_fees_3004 ~v0 ~v1 ~v2 ~v3 v4 = du_fees_3004 v4
du_fees_3004 :: T_GeneralizeTel_759105 -> Integer
du_fees_3004 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1972
      (coe d_'46'generalizedField'45'utxoState_759095 v0)
-- Ledger.Utxo.Properties._._.utxo
d_utxo_3006 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  T_GeneralizeTel_759105 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_3006 ~v0 ~v1 ~v2 ~v3 v4 = du_utxo_3006 v4
du_utxo_3006 ::
  T_GeneralizeTel_759105 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_3006 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1970
      (coe d_'46'generalizedField'45'utxoState_759095 v0)
-- Ledger.Utxo.Properties._.gmsc
d_gmsc_3008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_gmsc_3008 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du_gmsc_3008 v0 v4 v5 v6 v7 v8 v9 v10 v11 v12
du_gmsc_3008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__2090 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_gmsc_3008 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      MAlonzo.Code.Ledger.Utxo.C_UTXO'45'inductive_2386 v14
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
                                                  -> case coe v26 of
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                         -> case coe v28 of
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                -> case coe v30 of
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v31 v32
                                                                       -> case coe v32 of
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v33 v34
                                                                              -> case coe v34 of
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v35 v36
                                                                                     -> case coe
                                                                                               v36 of
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v37 v38
                                                                                            -> coe
                                                                                                 seq
                                                                                                 (coe
                                                                                                    v38)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
                                                                                                       (\ v39
                                                                                                          v40
                                                                                                          v41 ->
                                                                                                          coe
                                                                                                            MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2716
                                                                                                            v41))
                                                                                                    (mulInt
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Data.List.Base.du_length_304
                                                                                                          (let v39
                                                                                                                 = coe
                                                                                                                     C_mkGeneralizeTel_759107
                                                                                                                     (coe
                                                                                                                        v1)
                                                                                                                     (coe
                                                                                                                        v2)
                                                                                                                     (coe
                                                                                                                        v3)
                                                                                                                     (coe
                                                                                                                        v4)
                                                                                                                     (coe
                                                                                                                        v5)
                                                                                                                     (coe
                                                                                                                        v6)
                                                                                                                     (coe
                                                                                                                        v7) in
                                                                                                           coe
                                                                                                             (MAlonzo.Code.Ledger.Transaction.d_txprop_2338
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                   (coe
                                                                                                                      d_'46'generalizedField'45'tx_759091
                                                                                                                      v39)))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                             (coe
                                                                                                                d_'46'generalizedField'45'Γ_759093
                                                                                                                (coe
                                                                                                                   C_mkGeneralizeTel_759107
                                                                                                                   (coe
                                                                                                                      v1)
                                                                                                                   (coe
                                                                                                                      v2)
                                                                                                                   (coe
                                                                                                                      v3)
                                                                                                                   (coe
                                                                                                                      v4)
                                                                                                                   (coe
                                                                                                                      v5)
                                                                                                                   (coe
                                                                                                                      v6)
                                                                                                                   (coe
                                                                                                                      v7))))))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                       (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                          (coe
                                                                                                             v0))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                                                          (coe
                                                                                                             v0)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                             (coe
                                                                                                                v2))
                                                                                                          (coe
                                                                                                             v3)
                                                                                                          (let v39
                                                                                                                 = coe
                                                                                                                     C_mkGeneralizeTel_759107
                                                                                                                     (coe
                                                                                                                        v1)
                                                                                                                     (coe
                                                                                                                        v2)
                                                                                                                     (coe
                                                                                                                        v3)
                                                                                                                     (coe
                                                                                                                        v4)
                                                                                                                     (coe
                                                                                                                        v5)
                                                                                                                     (coe
                                                                                                                        v6)
                                                                                                                     (coe
                                                                                                                        v7) in
                                                                                                           coe
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                (coe
                                                                                                                   d_'46'generalizedField'45'tx_759091
                                                                                                                   v39)))))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                       (\ v39
                                                                                                          v40
                                                                                                          v41
                                                                                                          v42
                                                                                                          v43 ->
                                                                                                          v43)
                                                                                                       (mulInt
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Data.List.Base.du_length_304
                                                                                                             (MAlonzo.Code.Ledger.Transaction.d_txprop_2338
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                   (coe
                                                                                                                      v1))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326
                                                                                                             (coe
                                                                                                                du_pp_3028
                                                                                                                (coe
                                                                                                                   v2))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                                                (coe
                                                                                                                   v0))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                                                                                             (coe
                                                                                                                (\ v39 ->
                                                                                                                   v39))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1684
                                                                                                                (coe
                                                                                                                   v0)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txprop_2338
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                      (coe
                                                                                                                         v1)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txid_2350
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                      (coe
                                                                                                                         v1)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326
                                                                                                                   (coe
                                                                                                                      du_pp_3028
                                                                                                                      (coe
                                                                                                                         v2)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                                                   (coe
                                                                                                                      v3))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                                                (coe
                                                                                                                   v0))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                                                                                             (coe
                                                                                                                (\ v39 ->
                                                                                                                   v39))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                                                (coe
                                                                                                                   v3))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                          (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                                                             (coe
                                                                                                                v0)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                (coe
                                                                                                                   v2))
                                                                                                             (coe
                                                                                                                v3)
                                                                                                             (let v39
                                                                                                                    = coe
                                                                                                                        C_mkGeneralizeTel_759107
                                                                                                                        (coe
                                                                                                                           v1)
                                                                                                                        (coe
                                                                                                                           v2)
                                                                                                                        (coe
                                                                                                                           v3)
                                                                                                                        (coe
                                                                                                                           v4)
                                                                                                                        (coe
                                                                                                                           v5)
                                                                                                                        (coe
                                                                                                                           v6)
                                                                                                                        (coe
                                                                                                                           v7) in
                                                                                                              coe
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                   (coe
                                                                                                                      d_'46'generalizedField'45'tx_759091
                                                                                                                      v39)))))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
                                                                                                             (\ v39
                                                                                                                v40
                                                                                                                v41
                                                                                                                v42
                                                                                                                v43 ->
                                                                                                                coe
                                                                                                                  MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2848
                                                                                                                  v42
                                                                                                                  v43))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                                                   (coe
                                                                                                                      v0))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                                                                                                (coe
                                                                                                                   (\ v39 ->
                                                                                                                      v39))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1684
                                                                                                                   (coe
                                                                                                                      v0)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_txprop_2338
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                         (coe
                                                                                                                            v1)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_txid_2350
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                         (coe
                                                                                                                            v1)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326
                                                                                                                      (coe
                                                                                                                         du_pp_3028
                                                                                                                         (coe
                                                                                                                            v2)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                                                      (coe
                                                                                                                         v3))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                                                   (coe
                                                                                                                      v0))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                                                                                                (coe
                                                                                                                   (\ v39 ->
                                                                                                                      v39))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                                                   (coe
                                                                                                                      v3))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                                                   (coe
                                                                                                                      v0))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                                                                                                (coe
                                                                                                                   (\ v39 ->
                                                                                                                      v39))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_updateDeposits_1696
                                                                                                                   (coe
                                                                                                                      v0)
                                                                                                                   (coe
                                                                                                                      du_pp_3028
                                                                                                                      (coe
                                                                                                                         v2))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                      (coe
                                                                                                                         v1))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                                                      (coe
                                                                                                                         v3))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                                                   (coe
                                                                                                                      v0))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                                                                                                (coe
                                                                                                                   (\ v39 ->
                                                                                                                      v39))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                                                   (coe
                                                                                                                      v3))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                             (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                (coe
                                                                                                                   v0))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                                                                (coe
                                                                                                                   v0)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                   (coe
                                                                                                                      v2))
                                                                                                                (coe
                                                                                                                   v3)
                                                                                                                (let v39
                                                                                                                       = coe
                                                                                                                           C_mkGeneralizeTel_759107
                                                                                                                           (coe
                                                                                                                              v1)
                                                                                                                           (coe
                                                                                                                              v2)
                                                                                                                           (coe
                                                                                                                              v3)
                                                                                                                           (coe
                                                                                                                              v4)
                                                                                                                           (coe
                                                                                                                              v5)
                                                                                                                           (coe
                                                                                                                              v6)
                                                                                                                           (coe
                                                                                                                              v7) in
                                                                                                                 coe
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                      (coe
                                                                                                                         d_'46'generalizedField'45'tx_759091
                                                                                                                         v39)))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                                                                             (\ v39
                                                                                                                v40
                                                                                                                v41
                                                                                                                v42
                                                                                                                v43 ->
                                                                                                                v43)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                                                      (coe
                                                                                                                         v0))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                                                                                                   (coe
                                                                                                                      (\ v39 ->
                                                                                                                         v39))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Utxo.du_updateDeposits_1696
                                                                                                                      (coe
                                                                                                                         v0)
                                                                                                                      (coe
                                                                                                                         du_pp_3028
                                                                                                                         (coe
                                                                                                                            v2))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                         (coe
                                                                                                                            v1))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                                                         (coe
                                                                                                                            v3))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                                                      (coe
                                                                                                                         v0))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                                                                                                   (coe
                                                                                                                      (\ v39 ->
                                                                                                                         v39))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                                                      (coe
                                                                                                                         v3))))
                                                                                                             (coe
                                                                                                                du_newDeps_3150
                                                                                                                (coe
                                                                                                                   v0)
                                                                                                                (coe
                                                                                                                   v1)
                                                                                                                (coe
                                                                                                                   v2)
                                                                                                                (coe
                                                                                                                   v3))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                   (coe
                                                                                                                      v0))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                                                                   (coe
                                                                                                                      v0)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                      (coe
                                                                                                                         v2))
                                                                                                                   (coe
                                                                                                                      v3)
                                                                                                                   (let v39
                                                                                                                          = coe
                                                                                                                              C_mkGeneralizeTel_759107
                                                                                                                              (coe
                                                                                                                                 v1)
                                                                                                                              (coe
                                                                                                                                 v2)
                                                                                                                              (coe
                                                                                                                                 v3)
                                                                                                                              (coe
                                                                                                                                 v4)
                                                                                                                              (coe
                                                                                                                                 v5)
                                                                                                                              (coe
                                                                                                                                 v6)
                                                                                                                              (coe
                                                                                                                                 v7) in
                                                                                                                    coe
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                         (coe
                                                                                                                            d_'46'generalizedField'45'tx_759091
                                                                                                                            v39)))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
                                                                                                                   (\ v39
                                                                                                                      v40
                                                                                                                      v41
                                                                                                                      v42
                                                                                                                      v43 ->
                                                                                                                      coe
                                                                                                                        MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2848
                                                                                                                        v42
                                                                                                                        v43))
                                                                                                                (coe
                                                                                                                   du_newDeps_3150
                                                                                                                   (coe
                                                                                                                      v0)
                                                                                                                   (coe
                                                                                                                      v1)
                                                                                                                   (coe
                                                                                                                      v2)
                                                                                                                   (coe
                                                                                                                      v3))
                                                                                                                (addInt
                                                                                                                   (coe
                                                                                                                      addInt
                                                                                                                      (coe
                                                                                                                         addInt
                                                                                                                         (coe
                                                                                                                            du_newDeps_3150
                                                                                                                            (coe
                                                                                                                               v0)
                                                                                                                            (coe
                                                                                                                               v1)
                                                                                                                            (coe
                                                                                                                               v2)
                                                                                                                            (coe
                                                                                                                               v3))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                               (coe
                                                                                                                                  v1))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                            (coe
                                                                                                                               v1))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                         (coe
                                                                                                                            v0))
                                                                                                                      (coe
                                                                                                                         du_balOut_3156
                                                                                                                         (coe
                                                                                                                            v0)
                                                                                                                         (coe
                                                                                                                            v1))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                   (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                      (coe
                                                                                                                         v0))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                                                                      (coe
                                                                                                                         v0)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                         (coe
                                                                                                                            v2))
                                                                                                                      (coe
                                                                                                                         v3)
                                                                                                                      (let v39
                                                                                                                             = coe
                                                                                                                                 C_mkGeneralizeTel_759107
                                                                                                                                 (coe
                                                                                                                                    v1)
                                                                                                                                 (coe
                                                                                                                                    v2)
                                                                                                                                 (coe
                                                                                                                                    v3)
                                                                                                                                 (coe
                                                                                                                                    v4)
                                                                                                                                 (coe
                                                                                                                                    v5)
                                                                                                                                 (coe
                                                                                                                                    v6)
                                                                                                                                 (coe
                                                                                                                                    v7) in
                                                                                                                       coe
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                            (coe
                                                                                                                               d_'46'generalizedField'45'tx_759091
                                                                                                                               v39)))))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                                                                                   (\ v39
                                                                                                                      v40
                                                                                                                      v41
                                                                                                                      v42
                                                                                                                      v43 ->
                                                                                                                      v43)
                                                                                                                   (addInt
                                                                                                                      (coe
                                                                                                                         addInt
                                                                                                                         (coe
                                                                                                                            addInt
                                                                                                                            (coe
                                                                                                                               du_newDeps_3150
                                                                                                                               (coe
                                                                                                                                  v0)
                                                                                                                               (coe
                                                                                                                                  v1)
                                                                                                                               (coe
                                                                                                                                  v2)
                                                                                                                               (coe
                                                                                                                                  v3))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                  (coe
                                                                                                                                     v1))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                               (coe
                                                                                                                                  v1))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                            (coe
                                                                                                                               v0))
                                                                                                                         (coe
                                                                                                                            du_balOut_3156
                                                                                                                            (coe
                                                                                                                               v0)
                                                                                                                            (coe
                                                                                                                               v1))))
                                                                                                                   (addInt
                                                                                                                      (coe
                                                                                                                         addInt
                                                                                                                         (coe
                                                                                                                            addInt
                                                                                                                            (coe
                                                                                                                               du_newDeps_3150
                                                                                                                               (coe
                                                                                                                                  v0)
                                                                                                                               (coe
                                                                                                                                  v1)
                                                                                                                               (coe
                                                                                                                                  v2)
                                                                                                                               (coe
                                                                                                                                  v3))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                  (coe
                                                                                                                                     v1))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                               (coe
                                                                                                                                  v1))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                            (coe
                                                                                                                               v0))
                                                                                                                         (coe
                                                                                                                            du_balOut_3156
                                                                                                                            (coe
                                                                                                                               v0)
                                                                                                                            (coe
                                                                                                                               v1))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                      (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                         (coe
                                                                                                                            v0))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                                                                         (coe
                                                                                                                            v0)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                            (coe
                                                                                                                               v2))
                                                                                                                         (coe
                                                                                                                            v3)
                                                                                                                         (let v39
                                                                                                                                = coe
                                                                                                                                    C_mkGeneralizeTel_759107
                                                                                                                                    (coe
                                                                                                                                       v1)
                                                                                                                                    (coe
                                                                                                                                       v2)
                                                                                                                                    (coe
                                                                                                                                       v3)
                                                                                                                                    (coe
                                                                                                                                       v4)
                                                                                                                                    (coe
                                                                                                                                       v5)
                                                                                                                                    (coe
                                                                                                                                       v6)
                                                                                                                                    (coe
                                                                                                                                       v7) in
                                                                                                                          coe
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                               (coe
                                                                                                                                  d_'46'generalizedField'45'tx_759091
                                                                                                                                  v39)))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                                                                                                      (\ v39
                                                                                                                         v40
                                                                                                                         v41
                                                                                                                         v42
                                                                                                                         v43 ->
                                                                                                                         v43)
                                                                                                                      (addInt
                                                                                                                         (coe
                                                                                                                            addInt
                                                                                                                            (coe
                                                                                                                               addInt
                                                                                                                               (coe
                                                                                                                                  du_newDeps_3150
                                                                                                                                  (coe
                                                                                                                                     v0)
                                                                                                                                  (coe
                                                                                                                                     v1)
                                                                                                                                  (coe
                                                                                                                                     v2)
                                                                                                                                  (coe
                                                                                                                                     v3))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                     (coe
                                                                                                                                        v1))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                  (coe
                                                                                                                                     v1))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                               (coe
                                                                                                                                  v0))
                                                                                                                            (coe
                                                                                                                               du_balOut_3156
                                                                                                                               (coe
                                                                                                                                  v0)
                                                                                                                               (coe
                                                                                                                                  v1))))
                                                                                                                      (addInt
                                                                                                                         (coe
                                                                                                                            addInt
                                                                                                                            (coe
                                                                                                                               addInt
                                                                                                                               (coe
                                                                                                                                  du_newDeps_3150
                                                                                                                                  (coe
                                                                                                                                     v0)
                                                                                                                                  (coe
                                                                                                                                     v1)
                                                                                                                                  (coe
                                                                                                                                     v2)
                                                                                                                                  (coe
                                                                                                                                     v3))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                     (coe
                                                                                                                                        v1))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                  (coe
                                                                                                                                     v1))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                               (coe
                                                                                                                                  v0))
                                                                                                                            (coe
                                                                                                                               du_balOut_3156
                                                                                                                               (coe
                                                                                                                                  v0)
                                                                                                                               (coe
                                                                                                                                  v1))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                         (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                            (coe
                                                                                                                               v0))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                                                                            (coe
                                                                                                                               v0)
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                               (coe
                                                                                                                                  v2))
                                                                                                                            (coe
                                                                                                                               v3)
                                                                                                                            (let v39
                                                                                                                                   = coe
                                                                                                                                       C_mkGeneralizeTel_759107
                                                                                                                                       (coe
                                                                                                                                          v1)
                                                                                                                                       (coe
                                                                                                                                          v2)
                                                                                                                                       (coe
                                                                                                                                          v3)
                                                                                                                                       (coe
                                                                                                                                          v4)
                                                                                                                                       (coe
                                                                                                                                          v5)
                                                                                                                                       (coe
                                                                                                                                          v6)
                                                                                                                                       (coe
                                                                                                                                          v7) in
                                                                                                                             coe
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                  (coe
                                                                                                                                     d_'46'generalizedField'45'tx_759091
                                                                                                                                     v39)))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                         (\ v39
                                                                                                                            v40
                                                                                                                            v41
                                                                                                                            v42
                                                                                                                            v43 ->
                                                                                                                            v43)
                                                                                                                         (addInt
                                                                                                                            (coe
                                                                                                                               addInt
                                                                                                                               (coe
                                                                                                                                  addInt
                                                                                                                                  (coe
                                                                                                                                     du_newDeps_3150
                                                                                                                                     (coe
                                                                                                                                        v0)
                                                                                                                                     (coe
                                                                                                                                        v1)
                                                                                                                                     (coe
                                                                                                                                        v2)
                                                                                                                                     (coe
                                                                                                                                        v3))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                     (coe
                                                                                                                                        v1))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  du_balOut_3156
                                                                                                                                  (coe
                                                                                                                                     v0)
                                                                                                                                  (coe
                                                                                                                                     v1))))
                                                                                                                         (addInt
                                                                                                                            (coe
                                                                                                                               addInt
                                                                                                                               (coe
                                                                                                                                  addInt
                                                                                                                                  (coe
                                                                                                                                     du_newDeps_3150
                                                                                                                                     (coe
                                                                                                                                        v0)
                                                                                                                                     (coe
                                                                                                                                        v1)
                                                                                                                                     (coe
                                                                                                                                        v2)
                                                                                                                                     (coe
                                                                                                                                        v3))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                     (coe
                                                                                                                                        v1))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  du_balOut_3156
                                                                                                                                  (coe
                                                                                                                                     v0)
                                                                                                                                  (coe
                                                                                                                                     v1))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                            (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                               (coe
                                                                                                                                  v0))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                                                                               (coe
                                                                                                                                  v0)
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                                  (coe
                                                                                                                                     v2))
                                                                                                                               (coe
                                                                                                                                  v3)
                                                                                                                               (let v39
                                                                                                                                      = coe
                                                                                                                                          C_mkGeneralizeTel_759107
                                                                                                                                          (coe
                                                                                                                                             v1)
                                                                                                                                          (coe
                                                                                                                                             v2)
                                                                                                                                          (coe
                                                                                                                                             v3)
                                                                                                                                          (coe
                                                                                                                                             v4)
                                                                                                                                          (coe
                                                                                                                                             v5)
                                                                                                                                          (coe
                                                                                                                                             v6)
                                                                                                                                          (coe
                                                                                                                                             v7) in
                                                                                                                                coe
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                     (coe
                                                                                                                                        d_'46'generalizedField'45'tx_759091
                                                                                                                                        v39)))))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                            (\ v39
                                                                                                                               v40
                                                                                                                               v41
                                                                                                                               v42
                                                                                                                               v43 ->
                                                                                                                               v43)
                                                                                                                            (addInt
                                                                                                                               (coe
                                                                                                                                  addInt
                                                                                                                                  (coe
                                                                                                                                     addInt
                                                                                                                                     (coe
                                                                                                                                        du_newDeps_3150
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           v1)
                                                                                                                                        (coe
                                                                                                                                           v2)
                                                                                                                                        (coe
                                                                                                                                           v3))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                           (coe
                                                                                                                                              v1))))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                     (coe
                                                                                                                                        v0))
                                                                                                                                  (coe
                                                                                                                                     du_balOut_3156
                                                                                                                                     (coe
                                                                                                                                        v0)
                                                                                                                                     (coe
                                                                                                                                        v1))))
                                                                                                                            (addInt
                                                                                                                               (coe
                                                                                                                                  addInt
                                                                                                                                  (coe
                                                                                                                                     du_newDeps_3150
                                                                                                                                     (coe
                                                                                                                                        v0)
                                                                                                                                     (coe
                                                                                                                                        v1)
                                                                                                                                     (coe
                                                                                                                                        v2)
                                                                                                                                     (coe
                                                                                                                                        v3))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                        (coe
                                                                                                                                           v1))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                     (coe
                                                                                                                                        v0))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        du_balOut_3156
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           v1))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                        (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                           (coe
                                                                                                                                              v0))
                                                                                                                                        (MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                              (coe
                                                                                                                                                 v1)))))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                               (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                  (coe
                                                                                                                                     v0))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                                                                                  (coe
                                                                                                                                     v0)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                                     (coe
                                                                                                                                        v2))
                                                                                                                                  (coe
                                                                                                                                     v3)
                                                                                                                                  (let v39
                                                                                                                                         = coe
                                                                                                                                             C_mkGeneralizeTel_759107
                                                                                                                                             (coe
                                                                                                                                                v1)
                                                                                                                                             (coe
                                                                                                                                                v2)
                                                                                                                                             (coe
                                                                                                                                                v3)
                                                                                                                                             (coe
                                                                                                                                                v4)
                                                                                                                                             (coe
                                                                                                                                                v5)
                                                                                                                                             (coe
                                                                                                                                                v6)
                                                                                                                                             (coe
                                                                                                                                                v7) in
                                                                                                                                   coe
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                        (coe
                                                                                                                                           d_'46'generalizedField'45'tx_759091
                                                                                                                                           v39)))))
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                               (\ v39
                                                                                                                                  v40
                                                                                                                                  v41
                                                                                                                                  v42
                                                                                                                                  v43 ->
                                                                                                                                  v43)
                                                                                                                               (addInt
                                                                                                                                  (coe
                                                                                                                                     addInt
                                                                                                                                     (coe
                                                                                                                                        du_newDeps_3150
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           v1)
                                                                                                                                        (coe
                                                                                                                                           v2)
                                                                                                                                        (coe
                                                                                                                                           v3))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                           (coe
                                                                                                                                              v1))))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                        (coe
                                                                                                                                           v0))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                              (coe
                                                                                                                                                 v0)))
                                                                                                                                        (coe
                                                                                                                                           du_balOut_3156
                                                                                                                                           (coe
                                                                                                                                              v0)
                                                                                                                                           (coe
                                                                                                                                              v1))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                              (coe
                                                                                                                                                 v0))
                                                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                                 (coe
                                                                                                                                                    v1)))))))
                                                                                                                               (addInt
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                        (coe
                                                                                                                                           v1)))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                        (coe
                                                                                                                                           v0))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                              (coe
                                                                                                                                                 v0)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                 (coe
                                                                                                                                                    v0)))
                                                                                                                                           (coe
                                                                                                                                              du_balOut_3156
                                                                                                                                              (coe
                                                                                                                                                 v0)
                                                                                                                                              (coe
                                                                                                                                                 v1))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                 (coe
                                                                                                                                                    v0))
                                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                                    (coe
                                                                                                                                                       v1)))))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                              (coe
                                                                                                                                                 v0))
                                                                                                                                           (coe
                                                                                                                                              du_newDeps_3150
                                                                                                                                              (coe
                                                                                                                                                 v0)
                                                                                                                                              (coe
                                                                                                                                                 v1)
                                                                                                                                              (coe
                                                                                                                                                 v2)
                                                                                                                                              (coe
                                                                                                                                                 v3))))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                                  (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                     (coe
                                                                                                                                        v0))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                                                                                     (coe
                                                                                                                                        v0)
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                                        (coe
                                                                                                                                           v2))
                                                                                                                                     (coe
                                                                                                                                        v3)
                                                                                                                                     (let v39
                                                                                                                                            = coe
                                                                                                                                                C_mkGeneralizeTel_759107
                                                                                                                                                (coe
                                                                                                                                                   v1)
                                                                                                                                                (coe
                                                                                                                                                   v2)
                                                                                                                                                (coe
                                                                                                                                                   v3)
                                                                                                                                                (coe
                                                                                                                                                   v4)
                                                                                                                                                (coe
                                                                                                                                                   v5)
                                                                                                                                                (coe
                                                                                                                                                   v6)
                                                                                                                                                (coe
                                                                                                                                                   v7) in
                                                                                                                                      coe
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                           (coe
                                                                                                                                              d_'46'generalizedField'45'tx_759091
                                                                                                                                              v39)))))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                                  (\ v39
                                                                                                                                     v40
                                                                                                                                     v41
                                                                                                                                     v42
                                                                                                                                     v43 ->
                                                                                                                                     v43)
                                                                                                                                  (addInt
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                           (coe
                                                                                                                                              v1)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                                        (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                           (coe
                                                                                                                                              v0))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                 (coe
                                                                                                                                                    v0)))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                    (coe
                                                                                                                                                       v0)))
                                                                                                                                              (coe
                                                                                                                                                 du_balOut_3156
                                                                                                                                                 (coe
                                                                                                                                                    v0)
                                                                                                                                                 (coe
                                                                                                                                                    v1))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                    (coe
                                                                                                                                                       v0))
                                                                                                                                                 (MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                                       (coe
                                                                                                                                                          v1)))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                 (coe
                                                                                                                                                    v0))
                                                                                                                                              (coe
                                                                                                                                                 du_newDeps_3150
                                                                                                                                                 (coe
                                                                                                                                                    v0)
                                                                                                                                                 (coe
                                                                                                                                                    v1)
                                                                                                                                                 (coe
                                                                                                                                                    v2)
                                                                                                                                                 (coe
                                                                                                                                                    v3))))))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                        (coe
                                                                                                                                           v0))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                              (coe
                                                                                                                                                 v0)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                 (coe
                                                                                                                                                    v0)))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                    (coe
                                                                                                                                                       v0)))
                                                                                                                                              (coe
                                                                                                                                                 du_balOut_3156
                                                                                                                                                 (coe
                                                                                                                                                    v0)
                                                                                                                                                 (coe
                                                                                                                                                    v1))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                    (coe
                                                                                                                                                       v0))
                                                                                                                                                 (MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                                       (coe
                                                                                                                                                          v1)))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                 (coe
                                                                                                                                                    v0))
                                                                                                                                              (coe
                                                                                                                                                 du_newDeps_3150
                                                                                                                                                 (coe
                                                                                                                                                    v0)
                                                                                                                                                 (coe
                                                                                                                                                    v1)
                                                                                                                                                 (coe
                                                                                                                                                    v2)
                                                                                                                                                 (coe
                                                                                                                                                    v3))))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                              (coe
                                                                                                                                                 v0))
                                                                                                                                           (MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                                 (coe
                                                                                                                                                    v1))))))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                        (coe
                                                                                                                                           v0))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                                                                                        (coe
                                                                                                                                           v0)
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                                           (coe
                                                                                                                                              v2))
                                                                                                                                        (coe
                                                                                                                                           v3)
                                                                                                                                        (let v39
                                                                                                                                               = coe
                                                                                                                                                   C_mkGeneralizeTel_759107
                                                                                                                                                   (coe
                                                                                                                                                      v1)
                                                                                                                                                   (coe
                                                                                                                                                      v2)
                                                                                                                                                   (coe
                                                                                                                                                      v3)
                                                                                                                                                   (coe
                                                                                                                                                      v4)
                                                                                                                                                   (coe
                                                                                                                                                      v5)
                                                                                                                                                   (coe
                                                                                                                                                      v6)
                                                                                                                                                   (coe
                                                                                                                                                      v7) in
                                                                                                                                         coe
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                              (coe
                                                                                                                                                 d_'46'generalizedField'45'tx_759091
                                                                                                                                                 v39)))))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
                                                                                                                                     (\ v39
                                                                                                                                        v40
                                                                                                                                        v41
                                                                                                                                        v42
                                                                                                                                        v43 ->
                                                                                                                                        v43)
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                                        (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                           (coe
                                                                                                                                              v0))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                 (coe
                                                                                                                                                    v0)))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                    (coe
                                                                                                                                                       v0)))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                       (coe
                                                                                                                                                          v0)))
                                                                                                                                                 (coe
                                                                                                                                                    du_balOut_3156
                                                                                                                                                    (coe
                                                                                                                                                       v0)
                                                                                                                                                    (coe
                                                                                                                                                       v1))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                       (coe
                                                                                                                                                          v0))
                                                                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_txfee_2326
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                                          (coe
                                                                                                                                                             v1)))))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                                 (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                    (coe
                                                                                                                                                       v0))
                                                                                                                                                 (coe
                                                                                                                                                    du_newDeps_3150
                                                                                                                                                    (coe
                                                                                                                                                       v0)
                                                                                                                                                    (coe
                                                                                                                                                       v1)
                                                                                                                                                    (coe
                                                                                                                                                       v2)
                                                                                                                                                    (coe
                                                                                                                                                       v3))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                 (coe
                                                                                                                                                    v0))
                                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_txdonation_2340
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                                    (coe
                                                                                                                                                       v1))))))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                                        (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                           (coe
                                                                                                                                              v0))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                 (coe
                                                                                                                                                    v0)))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                    (coe
                                                                                                                                                       v0)))
                                                                                                                                              (coe
                                                                                                                                                 du_balIn_3154
                                                                                                                                                 (coe
                                                                                                                                                    v0)
                                                                                                                                                 (coe
                                                                                                                                                    v1)
                                                                                                                                                 (coe
                                                                                                                                                    v3))
                                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_mint_2328
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                                    (coe
                                                                                                                                                       v1))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                 (coe
                                                                                                                                                    v0))
                                                                                                                                              (coe
                                                                                                                                                 du_refunds_3152
                                                                                                                                                 (coe
                                                                                                                                                    v0)
                                                                                                                                                 (coe
                                                                                                                                                    v1)
                                                                                                                                                 (coe
                                                                                                                                                    v2)
                                                                                                                                                 (coe
                                                                                                                                                    v3)))))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                                        (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                           (coe
                                                                                                                                              v0))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.Utxo.du_consumed_2116
                                                                                                                                           (coe
                                                                                                                                              v0)
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Utxo.d_pparams_1958
                                                                                                                                              (coe
                                                                                                                                                 v2))
                                                                                                                                           (coe
                                                                                                                                              v3)
                                                                                                                                           (let v39
                                                                                                                                                  = coe
                                                                                                                                                      C_mkGeneralizeTel_759107
                                                                                                                                                      (coe
                                                                                                                                                         v1)
                                                                                                                                                      (coe
                                                                                                                                                         v2)
                                                                                                                                                      (coe
                                                                                                                                                         v3)
                                                                                                                                                      (coe
                                                                                                                                                         v4)
                                                                                                                                                      (coe
                                                                                                                                                         v5)
                                                                                                                                                      (coe
                                                                                                                                                         v6)
                                                                                                                                                      (coe
                                                                                                                                                         v7) in
                                                                                                                                            coe
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                                 (coe
                                                                                                                                                    d_'46'generalizedField'45'tx_759091
                                                                                                                                                    v39)))))
                                                                                                                                     (let v39
                                                                                                                                            = MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672 in
                                                                                                                                      coe
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                                                                                                                              (coe
                                                                                                                                                 v39))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
                                                                                                                                              (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                 (coe
                                                                                                                                                    v0))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                       (coe
                                                                                                                                                          v0)))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Algebra.Bundles.d__'8729'__840
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                          (coe
                                                                                                                                                             v0)))
                                                                                                                                                    (coe
                                                                                                                                                       du_balIn_3154
                                                                                                                                                       (coe
                                                                                                                                                          v0)
                                                                                                                                                       (coe
                                                                                                                                                          v1)
                                                                                                                                                       (coe
                                                                                                                                                          v3))
                                                                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_mint_2328
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                                                          (coe
                                                                                                                                                             v1))))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
                                                                                                                                                    (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
                                                                                                                                                       (coe
                                                                                                                                                          v0))
                                                                                                                                                    (coe
                                                                                                                                                       du_refunds_3152
                                                                                                                                                       (coe
                                                                                                                                                          v0)
                                                                                                                                                       (coe
                                                                                                                                                          v1)
                                                                                                                                                       (coe
                                                                                                                                                          v2)
                                                                                                                                                       (coe
                                                                                                                                                          v3)))))))
                                                                                                                                     erased)
                                                                                                                                  erased)
                                                                                                                               erased)
                                                                                                                            erased)
                                                                                                                         erased)
                                                                                                                      erased)
                                                                                                                   erased)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Data.Nat.Properties.du_m'8804'n'43'm_3356
                                                                                                                   (coe
                                                                                                                      du_newDeps_3150
                                                                                                                      (coe
                                                                                                                         v0)
                                                                                                                      (coe
                                                                                                                         v1)
                                                                                                                      (coe
                                                                                                                         v2)
                                                                                                                      (coe
                                                                                                                         v3))))
                                                                                                             erased)
                                                                                                          (MAlonzo.Code.Data.Nat.Properties.d_'8760''45'mono'737''45''8804'_4902
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                                                   (coe
                                                                                                                      v0))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                                                                                                (coe
                                                                                                                   (\ v39 ->
                                                                                                                      v39))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1684
                                                                                                                   (coe
                                                                                                                      v0)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_txprop_2338
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                         (coe
                                                                                                                            v1)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_txid_2350
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                         (coe
                                                                                                                            v1)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326
                                                                                                                      (coe
                                                                                                                         du_pp_3028
                                                                                                                         (coe
                                                                                                                            v2)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                                                      (coe
                                                                                                                         v3))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                                                   (coe
                                                                                                                      v0))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                                                                                                (coe
                                                                                                                   (\ v39 ->
                                                                                                                      v39))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_updateCertDeposits_1646
                                                                                                                   (coe
                                                                                                                      v0)
                                                                                                                   (coe
                                                                                                                      du_pp_3028
                                                                                                                      (coe
                                                                                                                         v2))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_txcerts_2332
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                         (coe
                                                                                                                            v1)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1684
                                                                                                                      (coe
                                                                                                                         v0)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_txprop_2338
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                            (coe
                                                                                                                               v1)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_txid_2350
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                            (coe
                                                                                                                               v1)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326
                                                                                                                         (coe
                                                                                                                            du_pp_3028
                                                                                                                            (coe
                                                                                                                               v2)))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                                                         (coe
                                                                                                                            v3)))))
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                                                   (coe
                                                                                                                      v0))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
                                                                                                                (coe
                                                                                                                   (\ v39 ->
                                                                                                                      v39))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                                                   (coe
                                                                                                                      v3)))
                                                                                                             (coe
                                                                                                                du_'8804'updateCertDeps_2862
                                                                                                                (coe
                                                                                                                   v0)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_txcerts_2332
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                      (coe
                                                                                                                         v1)))
                                                                                                                (coe
                                                                                                                   du_pp_3028
                                                                                                                   (coe
                                                                                                                      v2))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Utxo.du_updateProposalDeposits_1684
                                                                                                                   (coe
                                                                                                                      v0)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_txprop_2338
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                         (coe
                                                                                                                            v1)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_txid_2350
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                                                                                         (coe
                                                                                                                            v1)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326
                                                                                                                      (coe
                                                                                                                         du_pp_3028
                                                                                                                         (coe
                                                                                                                            v2)))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                                                      (coe
                                                                                                                         v3)))
                                                                                                                (coe
                                                                                                                   v9))))
                                                                                                       erased))
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
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._._.pp
d_pp_3028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_1756 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
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
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2132 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pp_3028 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
          ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
  = du_pp_3028 v5
du_pp_3028 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pp_3028 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1958 (coe v0)
-- Ledger.Utxo.Properties._._.newDeps
d_newDeps_3150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_1756 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
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
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2132 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> Integer
d_newDeps_3150 v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
  = du_newDeps_3150 v0 v4 v5 v6
du_newDeps_3150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 -> Integer
du_newDeps_3150 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.du_newDeposits_2108 (coe v0)
      (coe du_pp_3028 (coe v2)) (coe v3)
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v1))
-- Ledger.Utxo.Properties._._.refunds
d_refunds_3152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_1756 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
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
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2132 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> Integer
d_refunds_3152 v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
               ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
  = du_refunds_3152 v0 v4 v5 v6
du_refunds_3152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 -> Integer
du_refunds_3152 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Utxo.du_depositRefunds_2100 (coe v0)
      (coe du_pp_3028 (coe v2)) (coe v3)
      (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v1))
-- Ledger.Utxo.Properties._._.balIn
d_balIn_3154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_1756 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
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
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2132 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> AgdaAny
d_balIn_3154 v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
             ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
  = du_balIn_3154 v0 v4 v6
du_balIn_3154 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 -> AgdaAny
du_balIn_3154 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Utxo.du_balance_1608 (coe v0)
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
         (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1970 (coe v2))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_txins_2320
            (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v1))))
-- Ledger.Utxo.Properties._._.balOut
d_balOut_3156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18) ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.Utxo.T_inInterval_1756 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
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
  MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXOS'10632'__2132 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 -> AgdaAny
d_balOut_3156 v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
              ~v13 ~v14 ~v15 ~v16 ~v17 ~v18 ~v19 ~v20 ~v21 ~v22 ~v23 ~v24 ~v25
  = du_balOut_3156 v0 v4
du_balOut_3156 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> AgdaAny
du_balOut_3156 v0 v1
  = coe
      MAlonzo.Code.Ledger.Utxo.du_balance_1608 (coe v0)
      (coe
         MAlonzo.Code.Ledger.Utxo.du_outs_1602
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v1)))
-- Ledger.Utxo.Properties._..generalizedField-tx
d_'46'generalizedField'45'tx_759091 ::
  T_GeneralizeTel_759105 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2378
d_'46'generalizedField'45'tx_759091
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-Γ
d_'46'generalizedField'45'Γ_759093 ::
  T_GeneralizeTel_759105 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950
d_'46'generalizedField'45'Γ_759093
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-utxoState
d_'46'generalizedField'45'utxoState_759095 ::
  T_GeneralizeTel_759105 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
d_'46'generalizedField'45'utxoState_759095
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-utxo'
d_'46'generalizedField'45'utxo''_759097 ::
  T_GeneralizeTel_759105 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'utxo''_759097
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-fees'
d_'46'generalizedField'45'fees''_759099 ::
  T_GeneralizeTel_759105 -> Integer
d_'46'generalizedField'45'fees''_759099
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-deposits'
d_'46'generalizedField'45'deposits''_759101 ::
  T_GeneralizeTel_759105 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'deposits''_759101
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._..generalizedField-donations'
d_'46'generalizedField'45'donations''_759103 ::
  T_GeneralizeTel_759105 -> Integer
d_'46'generalizedField'45'donations''_759103
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxo.Properties._.GeneralizeTel
d_GeneralizeTel_759105 a0 a1 a2 a3 = ()
data T_GeneralizeTel_759105
  = C_mkGeneralizeTel_759107 MAlonzo.Code.Ledger.Transaction.T_Tx_2378
                             MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950
                             MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
