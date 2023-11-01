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

module MAlonzo.Code.Ledger.Utxow.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Interface.Bifunctor
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.Decidable.Instance
import qualified MAlonzo.Code.Interface.Functor
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxow
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Utxow.Properties._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1420 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxow.Properties.Computational-UTXOW
d_Computational'45'UTXOW_1586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'UTXOW_1586 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_176
      (d_computeProof_1706 (coe v0) (coe v1))
-- Ledger.Utxow.Properties._.go.UTXOW-premise
d_UTXOW'45'premise_1600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1756 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 -> ()
d_UTXOW'45'premise_1600 = erased
-- Ledger.Utxow.Properties._.go.computeProof
d_computeProof_1706 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1756 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeProof_1706 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
              (coe
                 MAlonzo.Code.Axiom.Set.d_all'63'_1550
                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                 (coe
                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_khs_216
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0))))
                    (coe
                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_136
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_pkk_186
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0)))))
                 erased
                 (\ v5 ->
                    coe
                      MAlonzo.Code.Ledger.Crypto.d_isSigned'63'_122
                      (MAlonzo.Code.Ledger.Crypto.d_pkk_186
                         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0)))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                      (coe
                         MAlonzo.Code.Ledger.Transaction.d_txidBytes_1950 v0
                         (MAlonzo.Code.Ledger.Transaction.d_txid_2400
                            (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4))))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_vkSigs_2418
                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v4)))))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                 (coe
                    MAlonzo.Code.Axiom.Set.d_all'63'_1550
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114
                       (coe
                          MAlonzo.Code.Ledger.Script.d_p1s_292
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0))))
                    erased
                    (\ v5 ->
                       coe
                         MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110
                         (MAlonzo.Code.Ledger.Script.d_p1s_292
                            (coe
                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_map_380
                            (MAlonzo.Code.Axiom.Set.d_th_1414
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (MAlonzo.Code.Interface.Hashable.d_hash_18
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_khs_216
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0)))))
                            (coe
                               MAlonzo.Code.Interface.IsSet.du_dom_478
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2418
                                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v4)))))
                         (MAlonzo.Code.Ledger.Transaction.d_txvldt_2380
                            (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4)))
                         v5)
                    (coe
                       MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2426
                       (coe MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v4))))
                 (coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                    (coe
                       MAlonzo.Code.Axiom.Set.d_all'63'_1550
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_khs_216
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0))))
                       erased
                       (\ v5 ->
                          coe
                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                            (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                               (coe
                                  MAlonzo.Code.Ledger.Crypto.d_khs_216
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0))))
                            v5
                            (coe
                               MAlonzo.Code.Axiom.Set.du_map_380
                               (MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (MAlonzo.Code.Interface.Hashable.d_hash_18
                                  (coe
                                     MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                                     (coe
                                        MAlonzo.Code.Ledger.Crypto.d_khs_216
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_crypto_1030
                                           (coe v0)))))
                               (coe
                                  MAlonzo.Code.Interface.IsSet.du_dom_478
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1414
                                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                  (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                  (coe
                                     MAlonzo.Code.Ledger.Transaction.d_vkSigs_2418
                                     (coe MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v4))))))
                       (coe
                          MAlonzo.Code.Ledger.Utxow.du_witsVKeyNeeded_1722 v0
                          (MAlonzo.Code.Ledger.Utxo.d_ppolicy_1766 (coe v2))
                          (MAlonzo.Code.Ledger.Utxo.d_utxo_1780 (coe v3))
                          (MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4))))
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                       (coe
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                          (coe
                             MAlonzo.Code.Axiom.Set.d_all'63'_1550
                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                             (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0)))
                             erased
                             (\ v5 ->
                                coe
                                  MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                  (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0)))
                                  v5
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_map_380
                                     (MAlonzo.Code.Axiom.Set.d_th_1414
                                        (coe
                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                     (MAlonzo.Code.Interface.Hashable.d_hash_18
                                        (coe
                                           MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_302
                                           (MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                              (coe v0))
                                           erased erased erased
                                           (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112
                                              (coe
                                                 MAlonzo.Code.Ledger.Script.d_p1s_292
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                                    (coe v0))))
                                           (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216
                                              (coe
                                                 MAlonzo.Code.Ledger.Script.d_ps_294
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                                    (coe v0))))))
                                     (MAlonzo.Code.Ledger.Transaction.d_scripts_2420
                                        (coe
                                           MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v4)))))
                             (coe
                                MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_1726 v0
                                (MAlonzo.Code.Ledger.Utxo.d_ppolicy_1766 (coe v2))
                                (MAlonzo.Code.Ledger.Utxo.d_utxo_1780 (coe v3))
                                (MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4))))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_all'63'_1550
                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                             (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0)))
                             erased
                             (\ v5 ->
                                coe
                                  MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                  (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0)))
                                  v5
                                  (coe
                                     MAlonzo.Code.Ledger.Utxow.du_scriptsNeeded_1726 v0
                                     (MAlonzo.Code.Ledger.Utxo.d_ppolicy_1766 (coe v2))
                                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1780 (coe v3))
                                     (MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4))))
                             (coe
                                MAlonzo.Code.Axiom.Set.du_map_380
                                (MAlonzo.Code.Axiom.Set.d_th_1414
                                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                (MAlonzo.Code.Interface.Hashable.d_hash_18
                                   (coe
                                      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_302
                                      (MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                         (coe v0))
                                      erased erased erased
                                      (MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_p1s_292
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                               (coe v0))))
                                      (MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_ps_294
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                                               (coe v0))))))
                                (MAlonzo.Code.Ledger.Transaction.d_scripts_2420
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v4))))))
                       (coe
                          MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                          (coe
                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_998 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_txADhash_2394
                             (coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v4)))
                          (coe
                             MAlonzo.Code.Interface.Functor.du_map_30
                             MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162 () erased ()
                             erased
                             (MAlonzo.Code.Interface.Hashable.d_hash_18
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_998
                                      (coe v0))))
                             (MAlonzo.Code.Ledger.Transaction.d_txAD_2440 (coe v4))))))) in
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
                                                  -> coe
                                                       MAlonzo.Code.Data.Maybe.Base.du_map_68
                                                       (coe
                                                          MAlonzo.Code.Interface.Bifunctor.du_map'8322''8242'_60
                                                          (coe
                                                             MAlonzo.Code.Interface.Bifunctor.du_Bifunctor'45'Σ_78)
                                                          (coe
                                                             (\ v17 ->
                                                                coe
                                                                  MAlonzo.Code.Ledger.Utxow.C_UTXOW'45'inductive_1828
                                                                  v9 v11 v13 v15)))
                                                       (MAlonzo.Code.Ledger.Utxo.d_computeProof_2192
                                                          (coe v0) (coe v1) (coe v2) (coe v3)
                                                          (coe v4))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v7) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.Properties._.go.completeness
d_completeness_1722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1756 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Utxow.T__'8866'_'8640''10631'_'44'UTXOW'10632'__1730 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1722 = erased
