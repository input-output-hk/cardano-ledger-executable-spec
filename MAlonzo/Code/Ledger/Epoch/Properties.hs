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

module MAlonzo.Code.Ledger.Epoch.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasEmptySet
import qualified MAlonzo.Code.Interface.HasEmptySet.Instances
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Ratify.Properties
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- _.Epoch
d_Epoch_178 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_178 = erased
-- Ledger.Epoch.Properties._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__1472 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Epoch.Properties._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1474 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Epoch.Properties._.EpochState
d_EpochState_1478 a0 a1 = ()
-- Ledger.Epoch.Properties._.NewEpochEnv
d_NewEpochEnv_1484 a0 a1 = ()
-- Ledger.Epoch.Properties._.NewEpochState
d_NewEpochState_1486 a0 a1 = ()
-- Ledger.Epoch.Properties._.RatifyState
d_RatifyState_1592 a0 a1 = ()
-- Ledger.Epoch.Properties._.completeness
d_completeness_1702 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1702 = erased
-- Ledger.Epoch.Properties._.computeProof
d_computeProof_1708 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1708 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Epoch.Properties._.es
d_es_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1980 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_730
d_es_1766 ~v0 ~v1 ~v2 v3 ~v4 = du_es_1766 v3
du_es_1766 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_730
du_es_1766 v0
  = coe
      MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_1313
      (coe
         MAlonzo.Code.Ledger.Enact.d_cc_742
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1750
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_1976 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_constitution_744
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1750
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_1976 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_pv_746
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1750
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_1976 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_pparams_748
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1750
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_1976 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
-- Ledger.Epoch.Properties._.govSt'
d_govSt''_1768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1980 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_1768 v0 ~v1 ~v2 v3 ~v4 = du_govSt''_1768 v0 v3
du_govSt''_1768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_1768 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_filter_740
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                          (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1076 (coe v0))
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                    (coe
                       MAlonzo.Code.Interface.IsSet.d_toSet_478
                       (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_528)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_380
                          (MAlonzo.Code.Axiom.Set.d_th_1430
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                          (MAlonzo.Code.Ledger.Ratify.d_removed_1752
                             (coe MAlonzo.Code.Ledger.Epoch.d_fut_1976 (coe v1))))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
      (coe
         MAlonzo.Code.Ledger.Ledger.d_govSt_1844
         (coe MAlonzo.Code.Ledger.Epoch.d_ls_1972 (coe v1)))
-- Ledger.Epoch.Properties._.EPOCH-total
d_EPOCH'45'total_1774 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1980 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_1774 v0 ~v1 v2 v3 v4
  = du_EPOCH'45'total_1774 v0 v2 v3 v4
du_EPOCH'45'total_1774 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1980 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total_1774 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''7497'''_1978
         (coe
            MAlonzo.Code.Ledger.PParams.C_Acnt'46'constructor_391
            (coe
               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
               (addInt
                  (coe
                     addInt
                     (coe
                        addInt
                        (coe
                           MAlonzo.Code.Ledger.Utxo.d_donations_1716
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                       (coe v3) (coe v1)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))))))))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.d_fees_1712
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                       (coe v3) (coe v1)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             du_pFut_1780 (coe v0) (coe v1) (coe v2)
                                             (coe v3)))))))))
                     (coe
                        MAlonzo.Code.Ledger.PParams.d_treasury_132
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_acnt_1970
                           (coe
                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2) (coe v3)
                                 (coe v1)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                     (coe
                        MAlonzo.Code.Ledger.Interface.HasCoin.d_getCoin_18
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1578
                           (coe
                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_khs_192
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0)))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__492
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                           MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                           (let v4
                                  = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                         (coe v0)) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                               (coe v0))) in
                               coe
                                 (let v6
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v4)
                                       (coe v5) (coe v6)))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_494
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                              (let v4
                                     = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                            (coe v0)) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                  (coe v0))) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                  (coe v0)) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                          (coe v4) (coe v5) (coe v6)))))
                              (coe
                                 MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1098
                                 (let v4
                                        = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_map_380
                                       (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v4))
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v5))))
                                       (let v5
                                              = let v5
                                                      = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_concatMap'738'_490
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                                        (coe v5))) in
                                        coe
                                          (let v6
                                                 = let v6
                                                         = coe
                                                             MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                             (coe v2) (coe v3) (coe v1)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   du_pFut_1780 (coe v0) (coe v1)
                                                                   (coe v2) (coe v3))) in
                                                   coe
                                                     (MAlonzo.Code.Ledger.Ratify.d_removed_1752
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                              v6))) in
                                           coe
                                             (let v7
                                                    = \ v7 ->
                                                        let v8
                                                              = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_map_380
                                                             (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                (coe v8))
                                                             (\ v9 ->
                                                                coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_692
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v7)))
                                                                  (coe v9))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                (let v9
                                                                       = coe
                                                                           MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1756
                                                                           (coe v0) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1246
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                         erased v9)
                                                                      (let v10
                                                                             = coe
                                                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                                                 (coe v2) (coe v3)
                                                                                 (coe v1)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       du_pFut_1780
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v2)
                                                                                       (coe v3))) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.d_deposits_1714
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                                                     v10)))))
                                                                      (coe
                                                                         MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_300
                                                                         (coe
                                                                            MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_304
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1430
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1686
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v7)))))))) in
                                              coe (coe v5 v7 v6))))))))
                           (MAlonzo.Code.Ledger.Enact.d_withdrawals_750
                              (let v4
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Ratify.d_es_1750
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                          v4)))))))
                     (coe
                        MAlonzo.Code.Ledger.Interface.HasCoin.d_getCoin_18
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1578
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_khs_192
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0)))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1548
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__492
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                              MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                              (let v4
                                     = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                            (coe v0)) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                  (coe v0))) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                  (coe v0)) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                          (coe v4) (coe v5) (coe v6)))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_494
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                 (coe
                                    MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                                 (let v4
                                        = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                               (coe v0)) in
                                  coe
                                    (let v5
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                     (coe v0))) in
                                     coe
                                       (let v6
                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                     (coe v0)) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                             (coe v4) (coe v5) (coe v6)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1098
                                    (let v4
                                           = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                     coe
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_map_380
                                          (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v4))
                                          (\ v5 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v5))))
                                          (let v5
                                                 = let v5
                                                         = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_concatMap'738'_490
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1430
                                                           (coe v5))) in
                                           coe
                                             (let v6
                                                    = let v6
                                                            = coe
                                                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                                (coe v2) (coe v3) (coe v1)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      du_pFut_1780 (coe v0) (coe v1)
                                                                      (coe v2) (coe v3))) in
                                                      coe
                                                        (MAlonzo.Code.Ledger.Ratify.d_removed_1752
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                                 v6))) in
                                              coe
                                                (let v7
                                                       = \ v7 ->
                                                           let v8
                                                                 = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_map_380
                                                                (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                   (coe v8))
                                                                (\ v9 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_692
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v7)))
                                                                     (coe v9))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                   (let v9
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1756
                                                                              (coe v0) in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1246
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1430
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                            erased v9)
                                                                         (let v10
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                                                    (coe v2)
                                                                                    (coe v3)
                                                                                    (coe v1)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          du_pFut_1780
                                                                                          (coe v0)
                                                                                          (coe v1)
                                                                                          (coe v2)
                                                                                          (coe
                                                                                             v3))) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Utxo.d_deposits_1714
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                                                        v10)))))
                                                                         (coe
                                                                            MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_300
                                                                            (coe
                                                                               MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_304
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1686
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe v7)))))))) in
                                                 coe (coe v5 v7 v6))))))))
                              (MAlonzo.Code.Ledger.Enact.d_withdrawals_750
                                 (let v4
                                        = coe
                                            MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                            (coe v2) (coe v3) (coe v1)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  du_pFut_1780 (coe v0) (coe v1) (coe v2)
                                                  (coe v3))) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Ratify.d_es_1750
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                             v4))))))
                           (coe
                              (\ v4 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1592
                                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                   (coe
                                      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                      (coe
                                         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                            (coe v0))))
                                   (coe v4)
                                   (let v5
                                          = MAlonzo.Code.Axiom.Set.d_th_1430
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v5
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__492
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                               MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                                               (let v6
                                                      = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                                             (coe v0)) in
                                                coe
                                                  (let v7
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                   (coe v0))) in
                                                   coe
                                                     (let v8
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                                           (coe v6) (coe v7) (coe v8)))))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_494
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                  (coe
                                                     MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                                                  (let v6
                                                         = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                                                (coe v0)) in
                                                   coe
                                                     (let v7
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                      (coe v0))) in
                                                      coe
                                                        (let v8
                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                      (coe v0)) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                                              (coe v6) (coe v7) (coe v8)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1098
                                                     (let v6
                                                            = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_map_380
                                                           (MAlonzo.Code.Axiom.Set.d_th_1430
                                                              (coe v6))
                                                           (\ v7 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v7))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v7))))
                                                           (let v7
                                                                  = let v7
                                                                          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.du_concatMap'738'_490
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1430
                                                                            (coe v7))) in
                                                            coe
                                                              (let v8
                                                                     = let v8
                                                                             = coe
                                                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                                                 (coe v2) (coe v3)
                                                                                 (coe v1)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       du_pFut_1780
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v2)
                                                                                       (coe v3))) in
                                                                       coe
                                                                         (MAlonzo.Code.Ledger.Ratify.d_removed_1752
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                                                  v8))) in
                                                               coe
                                                                 (let v9
                                                                        = \ v9 ->
                                                                            let v10
                                                                                  = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_map_380
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                    (coe v10))
                                                                                 (\ v11 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_692
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                            (coe
                                                                                               v9)))
                                                                                      (coe v11))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                                    (let v11
                                                                                           = coe
                                                                                               MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1756
                                                                                               (coe
                                                                                                  v0) in
                                                                                     coe
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1246
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                             erased
                                                                                             v11)
                                                                                          (let v12
                                                                                                 = coe
                                                                                                     MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                                                                     (coe
                                                                                                        v2)
                                                                                                     (coe
                                                                                                        v3)
                                                                                                     (coe
                                                                                                        v1)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           du_pFut_1780
                                                                                                           (coe
                                                                                                              v0)
                                                                                                           (coe
                                                                                                              v1)
                                                                                                           (coe
                                                                                                              v2)
                                                                                                           (coe
                                                                                                              v3))) in
                                                                                           coe
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Utxo.d_deposits_1714
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                                                                         v12)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_300
                                                                                             (coe
                                                                                                MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_304
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1686
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v9)))))))) in
                                                                  coe (coe v7 v9 v8))))))))
                                               (MAlonzo.Code.Ledger.Enact.d_withdrawals_750
                                                  (let v6
                                                         = coe
                                                             MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                             (coe v2) (coe v3) (coe v1)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   du_pFut_1780 (coe v0) (coe v1)
                                                                   (coe v2) (coe v3))) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Ratify.d_es_1750
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                              v6)))))))))))
                           (coe
                              (\ v4 ->
                                 coe
                                   MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_997
                                   (coe
                                      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                         (coe v0)))
                                   (coe v4)))
                           (coe
                              MAlonzo.Code.Interface.IsSet.du_dom_524
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
                              (let v4
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_rewards_784
                                    (coe
                                       MAlonzo.Code.Ledger.Certs.d_dState_820
                                       (coe
                                          MAlonzo.Code.Ledger.Ledger.d_certState_1846
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                v4)))))))))))
               (coe
                  MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1136
                  (let v4
                         = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090 (coe v0)) in
                   coe
                     (let v5
                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0))) in
                      coe
                        (let v6
                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v4)
                              (coe v5) (coe v6)))))
                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                  (coe
                     MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                  (coe (\ v4 -> v4))
                  (coe
                     MAlonzo.Code.Ledger.Enact.d_withdrawals_750
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_1750
                           (coe
                              MAlonzo.Code.Ledger.Epoch.d_fut_1976
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                 v4)))))))
            (coe
               MAlonzo.Code.Ledger.PParams.d_reserves_134
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Epoch.d_acnt_1970
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                        v4)))))
         (coe
            MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_1848
            (coe
               MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1718
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Utxo.d_utxo_1710
                     (coe
                        MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_ls_1972
                           (coe
                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                              v4)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                  MAlonzo.Code.Prelude.d_Number'45'ℕ_32 (0 :: Integer)
                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1756
                          (coe v0) in
                coe
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1254
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                     (let v5
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Utxo.d_deposits_1714
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                    v5)))))
                     (let v5
                            = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_380
                           (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v5))
                           (\ v6 ->
                              let v7 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6) in
                              coe (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                           (let v6
                                  = let v6
                                          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                    coe
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_concatMap'738'_490
                                         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v6))) in
                            coe
                              (let v7
                                     = let v7
                                             = coe
                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                 (coe v2) (coe v3) (coe v1)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe
                                                       du_pFut_1780 (coe v0) (coe v1) (coe v2)
                                                       (coe v3))) in
                                       coe
                                         (MAlonzo.Code.Ledger.Ratify.d_removed_1752
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                  v7))) in
                               coe
                                 (let v8
                                        = \ v8 ->
                                            let v9
                                                  = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                            coe
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_map_380
                                                 (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v9))
                                                 (\ v10 ->
                                                    coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_692
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                            (coe v8)))
                                                      (coe v10))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                    (let v10
                                                           = coe
                                                               MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1756
                                                               (coe v0) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1246
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                             erased v10)
                                                          (let v11
                                                                 = coe
                                                                     MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                                     (coe v2) (coe v3) (coe v1)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe
                                                                           du_pFut_1780 (coe v0)
                                                                           (coe v1) (coe v2)
                                                                           (coe v3))) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Utxo.d_deposits_1714
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                                         v11)))))
                                                          (coe
                                                             MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_300
                                                             (coe
                                                                MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_304
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1686
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v8)))))))) in
                                  coe (coe v6 v8 v7))))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                  MAlonzo.Code.Prelude.d_Number'45'ℕ_32 (0 :: Integer)
                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
            (coe
               MAlonzo.Code.Data.List.Base.du_filter_740
               (coe
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                       (coe
                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                             (coe
                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                (coe
                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1076 (coe v0))
                                   (coe
                                      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                             (coe
                                MAlonzo.Code.Interface.IsSet.d_toSet_478
                                (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_528)
                                (let v5
                                       = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_map_380
                                      (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v5))
                                      (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                      (let v6
                                             = coe
                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                 (coe v2) (coe v3) (coe v1)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe
                                                       du_pFut_1780 (coe v0) (coe v1) (coe v2)
                                                       (coe v3))) in
                                       coe
                                         (MAlonzo.Code.Ledger.Ratify.d_removed_1752
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                  v6))))))))
                          (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ledger.d_govSt_1844
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_ls_1972
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                           v4)))))
            (coe
               MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_826
               (coe
                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_786
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_voteDelegs_780
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_dState_820
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_certState_1846
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                    v4))))))
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_stakeDelegs_782
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_dState_820
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_certState_1846
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                    v4))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__492
                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                     MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                     (coe
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_192
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0))))
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (MAlonzo.Code.Ledger.Certs.d_rewards_784
                           (coe
                              MAlonzo.Code.Ledger.Certs.d_dState_820
                              (coe
                                 MAlonzo.Code.Ledger.Ledger.d_certState_1846
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                       v4))))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1548
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__492
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                           MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                           (let v4
                                  = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                         (coe v0)) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                               (coe v0))) in
                               coe
                                 (let v6
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v4)
                                       (coe v5) (coe v6)))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_494
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                              (let v4
                                     = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                            (coe v0)) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                  (coe v0))) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                  (coe v0)) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                          (coe v4) (coe v5) (coe v6)))))
                              (coe
                                 MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1098
                                 (let v4
                                        = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_map_380
                                       (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v4))
                                       (\ v5 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v5))))
                                       (let v5
                                              = let v5
                                                      = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_concatMap'738'_490
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                                        (coe v5))) in
                                        coe
                                          (let v6
                                                 = let v6
                                                         = coe
                                                             MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                             (coe v2) (coe v3) (coe v1)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   du_pFut_1780 (coe v0) (coe v1)
                                                                   (coe v2) (coe v3))) in
                                                   coe
                                                     (MAlonzo.Code.Ledger.Ratify.d_removed_1752
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                              v6))) in
                                           coe
                                             (let v7
                                                    = \ v7 ->
                                                        let v8
                                                              = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_map_380
                                                             (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                (coe v8))
                                                             (\ v9 ->
                                                                coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_692
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v7)))
                                                                  (coe v9))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                (let v9
                                                                       = coe
                                                                           MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1756
                                                                           (coe v0) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1246
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                         erased v9)
                                                                      (let v10
                                                                             = coe
                                                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                                                 (coe v2) (coe v3)
                                                                                 (coe v1)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       du_pFut_1780
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v2)
                                                                                       (coe v3))) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.d_deposits_1714
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                                                     v10)))))
                                                                      (coe
                                                                         MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_300
                                                                         (coe
                                                                            MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_304
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1430
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1686
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v7)))))))) in
                                              coe (coe v5 v7 v6))))))))
                           (MAlonzo.Code.Ledger.Enact.d_withdrawals_750
                              (let v4
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Ratify.d_es_1750
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                          v4))))))
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1592
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                (coe
                                   MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                   (coe
                                      MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0))))
                                (coe v4)
                                (let v5
                                       = MAlonzo.Code.Axiom.Set.d_th_1430
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v5
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__492
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                                            (let v6
                                                   = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                                          (coe v0)) in
                                             coe
                                               (let v7
                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                (coe v0))) in
                                                coe
                                                  (let v8
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                (coe v0)) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                                        (coe v6) (coe v7) (coe v8)))))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_494
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                               (coe
                                                  MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                                               (let v6
                                                      = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                                             (coe v0)) in
                                                coe
                                                  (let v7
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                   (coe v0))) in
                                                   coe
                                                     (let v8
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                                           (coe v6) (coe v7) (coe v8)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1098
                                                  (let v6
                                                         = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.du_map_380
                                                        (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v6))
                                                        (\ v7 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v7))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe v7))))
                                                        (let v7
                                                               = let v7
                                                                       = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_concatMap'738'_490
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                                                         (coe v7))) in
                                                         coe
                                                           (let v8
                                                                  = let v8
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                                              (coe v2) (coe v3)
                                                                              (coe v1)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    du_pFut_1780
                                                                                    (coe v0)
                                                                                    (coe v1)
                                                                                    (coe v2)
                                                                                    (coe v3))) in
                                                                    coe
                                                                      (MAlonzo.Code.Ledger.Ratify.d_removed_1752
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                                               v8))) in
                                                            coe
                                                              (let v9
                                                                     = \ v9 ->
                                                                         let v10
                                                                               = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                         coe
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.du_map_380
                                                                              (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                 (coe v10))
                                                                              (\ v11 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_692
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                         (coe v9)))
                                                                                   (coe v11))
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                                 (let v11
                                                                                        = coe
                                                                                            MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1756
                                                                                            (coe
                                                                                               v0) in
                                                                                  coe
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'8739'__1246
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                          erased
                                                                                          v11)
                                                                                       (let v12
                                                                                              = coe
                                                                                                  MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                                                                  (coe
                                                                                                     v2)
                                                                                                  (coe
                                                                                                     v3)
                                                                                                  (coe
                                                                                                     v1)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        du_pFut_1780
                                                                                                        (coe
                                                                                                           v0)
                                                                                                        (coe
                                                                                                           v1)
                                                                                                        (coe
                                                                                                           v2)
                                                                                                        (coe
                                                                                                           v3))) in
                                                                                        coe
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1714
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                                                                      v12)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_300
                                                                                          (coe
                                                                                             MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_304
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1686
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   v9)))))))) in
                                                               coe (coe v7 v9 v8))))))))
                                            (MAlonzo.Code.Ledger.Enact.d_withdrawals_750
                                               (let v6
                                                      = coe
                                                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                          (coe v2) (coe v3) (coe v1)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                du_pFut_1780 (coe v0) (coe v1)
                                                                (coe v2) (coe v3))) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Ledger.Ratify.d_es_1750
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                           v6)))))))))))
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_997
                                (coe
                                   MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090
                                      (coe v0)))
                                (coe v4)))
                        (coe
                           MAlonzo.Code.Interface.IsSet.du_dom_524
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
                           (let v4
                                  = coe
                                      MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                      (coe v3) (coe v1)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_rewards_784
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_dState_820
                                    (coe
                                       MAlonzo.Code.Ledger.Ledger.d_certState_1846
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                             v4))))))))))
               (coe
                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_798
                  (let v4
                         = coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1254
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                        (let v5
                               = coe
                                   MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                   (coe v3) (coe v1)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Certs.d_pools_794
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_pState_822
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_certState_1846
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                          v5))))))
                        (let v5
                               = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1592
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v5)
                              (let v6
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_retiring_796
                                    (coe
                                       MAlonzo.Code.Ledger.Certs.d_pState_822
                                       (coe
                                          MAlonzo.Code.Ledger.Ledger.d_certState_1846
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                v6))))))
                              (coe v3)))))
                  (let v4
                         = coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1254
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                        (let v5
                               = coe
                                   MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                   (coe v3) (coe v1)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Certs.d_retiring_796
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_pState_822
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_certState_1846
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                          v5))))))
                        (let v5
                               = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1592
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v5)
                              (let v6
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_retiring_796
                                    (coe
                                       MAlonzo.Code.Ledger.Certs.d_pState_822
                                       (coe
                                          MAlonzo.Code.Ledger.Ledger.d_certState_1846
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                v6))))))
                              (coe v3))))))
               (coe
                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_810
                  (let v4 = MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94 in
                   coe
                     (coe
                        MAlonzo.Code.Interface.ToBool.du_if_then_else__46 (coe v4)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_null_282
                           (coe
                              MAlonzo.Code.Data.List.Base.du_filter_740
                              (coe
                                 (\ v5 ->
                                    coe
                                      MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                               erased
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1076
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                     (coe
                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                            (coe
                                               MAlonzo.Code.Interface.IsSet.d_toSet_478
                                               (coe
                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_528)
                                               (let v6
                                                      = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_map_380
                                                     (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v6))
                                                     (\ v7 ->
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v7))
                                                     (let v7
                                                            = coe
                                                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                                                (coe v2) (coe v3) (coe v1)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      du_pFut_1780 (coe v0) (coe v1)
                                                                      (coe v2) (coe v3))) in
                                                      coe
                                                        (MAlonzo.Code.Ledger.Ratify.d_removed_1752
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                                 v7))))))))
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                              (let v5
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_govSt_1844
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                          v5))))))
                        (coe
                           MAlonzo.Code.Level.C_lift_20
                           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_862
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                (coe
                                   MAlonzo.Code.Interface.HasAdd.d__'43'__12
                                   (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                                      (MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354
                                            (coe v0)))
                                      (1 :: Integer) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                (let v6
                                       = coe
                                           MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003
                                           (coe v2) (coe v3) (coe v1)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 du_pFut_1780 (coe v0) (coe v1) (coe v2)
                                                 (coe v3))) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Ledger.Certs.d_dreps_806
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_gState_824
                                         (coe
                                            MAlonzo.Code.Ledger.Ledger.d_certState_1846
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                                  v6))))))))
                        (coe
                           (\ v5 ->
                              let v6
                                    = coe
                                        MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                        (coe v3) (coe v1)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                              coe
                                (MAlonzo.Code.Ledger.Certs.d_dreps_806
                                   (coe
                                      MAlonzo.Code.Ledger.Certs.d_gState_824
                                      (coe
                                         MAlonzo.Code.Ledger.Ledger.d_certState_1846
                                         (coe
                                            MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                               v6)))))))))
                  (let v4
                         = coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1246
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                        (let v5
                               = coe
                                   MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                   (coe v3) (coe v1)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Certs.d_ccHotKeys_808
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_gState_824
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_certState_1846
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_1972
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                          v5))))))
                        (coe
                           MAlonzo.Code.Ledger.Enact.du_ccCreds_752
                           (coe
                              MAlonzo.Code.Ledger.Enact.d_cc_742
                              (let v5
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Ratify.d_es_1750
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_fut_1976
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                                          v5)))))))))))
         (coe
            MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_1313
            (coe
               MAlonzo.Code.Ledger.Enact.d_cc_742
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ratify.d_es_1750
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_fut_1976
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                           v4)))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_constitution_744
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ratify.d_es_1750
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_fut_1976
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                           v4)))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_pv_746
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ratify.d_es_1750
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_fut_1976
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                           v4)))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_pparams_748
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_10003 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ratify.d_es_1750
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_fut_1976
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9993
                           v4)))))
            (coe
               MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
               (coe
                  MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Map_298
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Epoch.C_EPOCH_2150
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe du_pFut_1780 (coe v0) (coe v1) (coe v2) (coe v3))))
-- Ledger.Epoch.Properties._._.pFut
d_pFut_1780 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1980 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pFut_1780 v0 ~v1 v2 v3 v4 = du_pFut_1780 v0 v2 v3 v4
du_pFut_1780 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1980 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pFut_1780 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Ratify.Properties.d_RATIFY'45'total_1986
      (coe v0)
      (coe
         MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11137
         (coe MAlonzo.Code.Ledger.Epoch.d_stakeDistrs_1984 (coe v1))
         (coe v3)
         (coe
            MAlonzo.Code.Ledger.Certs.d_dreps_806
            (coe
               MAlonzo.Code.Ledger.Certs.d_gState_824
               (coe
                  MAlonzo.Code.Ledger.Ledger.d_certState_1846
                  (coe MAlonzo.Code.Ledger.Epoch.d_ls_1972 (coe v2)))))
         (coe
            MAlonzo.Code.Ledger.Certs.d_ccHotKeys_808
            (coe
               MAlonzo.Code.Ledger.Certs.d_gState_824
               (coe
                  MAlonzo.Code.Ledger.Ledger.d_certState_1846
                  (coe MAlonzo.Code.Ledger.Epoch.d_ls_1972 (coe v2)))))
         (coe
            MAlonzo.Code.Ledger.PParams.d_treasury_132
            (coe MAlonzo.Code.Ledger.Epoch.d_acnt_1970 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1756
         (coe du_es_1766 (coe v2))
         (coe
            MAlonzo.Code.Axiom.Set.du_'8709'_424
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
      (coe du_govSt''_1768 (coe v0) (coe v2))
-- Ledger.Epoch.Properties._.EPOCH-complete
d_EPOCH'45'complete_1798 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1980 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2018 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_1798 = erased
-- Ledger.Epoch.Properties._.EPOCH-total'
d_EPOCH'45'total''_1808 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1980 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_1808 v0 ~v1 v2 v3 v4
  = du_EPOCH'45'total''_1808 v0 v2 v3 v4
du_EPOCH'45'total''_1808 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1980 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total''_1808 v0 v1 v2 v3
  = coe du_EPOCH'45'total_1774 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Epoch.Properties._.EPOCH-complete'
d_EPOCH'45'complete''_1812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1980 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1960 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2018 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_1812 = erased
-- Ledger.Epoch.Properties.Computational-EPOCH
d_Computational'45'EPOCH_1814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_1814 v0 ~v1
  = du_Computational'45'EPOCH_1814 v0
du_Computational'45'EPOCH_1814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'EPOCH_1814 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_EPOCH'45'total''_1808 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Epoch.Properties._.NEWEPOCH-total
d_NEWEPOCH'45'total_1850 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1980 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1986 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_1850 v0 ~v1 v2 v3 v4
  = du_NEWEPOCH'45'total_1850 v0 v2 v3 v4
du_NEWEPOCH'45'total_1850 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1980 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1986 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_NEWEPOCH'45'total_1850 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                 (coe
                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354 (coe v0)))
              v3
              (coe
                 MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
                 (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354 (coe v0))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d__'43'__2046
                    (MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354 (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354 (coe v0))
                       (MAlonzo.Code.Ledger.Epoch.d_lastEpoch_1992 (coe v2)))
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354 (coe v0))
                       (MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354 (coe v0))
                          (coe (1 :: Integer)))))) in
    coe
      (case coe v4 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
           -> if coe v5
                then coe
                       seq (coe v6)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''8319''7497'_1996
                             (coe v3)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   du_EPOCH'45'total''_1808 (coe v0) (coe v1)
                                   (coe MAlonzo.Code.Ledger.Epoch.d_epochState_1994 (coe v2))
                                   (coe v3))))
                          (coe
                             MAlonzo.Code.Ledger.Epoch.C_NEWEPOCH'45'New_2154
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (coe
                                   du_EPOCH'45'total''_1808 (coe v0) (coe v1)
                                   (coe MAlonzo.Code.Ledger.Epoch.d_epochState_1994 (coe v2))
                                   (coe v3)))))
                else coe
                       seq (coe v6)
                       (coe
                          MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v2)
                          (coe MAlonzo.Code.Ledger.Epoch.C_NEWEPOCH'45'Not'45'New_2156))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Epoch.Properties._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_1862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1980 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1986 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1986 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2152 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_1862 = erased
-- Ledger.Epoch.Properties.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_1912 v0 ~v1
  = du_Computational'45'NEWEPOCH_1912 v0
du_Computational'45'NEWEPOCH_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'NEWEPOCH_1912 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe
              du_NEWEPOCH'45'total_1850 (coe v0) (coe v1) (coe v2) (coe v3)))
