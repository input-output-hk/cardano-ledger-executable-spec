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
d__'8866'_'8640''10631'_'44'EPOCH'10632'__1470 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Epoch.Properties._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1472 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Epoch.Properties._.EpochState
d_EpochState_1476 a0 a1 = ()
-- Ledger.Epoch.Properties._.NewEpochEnv
d_NewEpochEnv_1482 a0 a1 = ()
-- Ledger.Epoch.Properties._.NewEpochState
d_NewEpochState_1484 a0 a1 = ()
-- Ledger.Epoch.Properties._.RatifyState
d_RatifyState_1590 a0 a1 = ()
-- Ledger.Epoch.Properties._.completeness
d_completeness_1700 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1700 = erased
-- Ledger.Epoch.Properties._.computeProof
d_computeProof_1706 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1706 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Epoch.Properties._.es
d_es_1764 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1978 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_es_1764 ~v0 ~v1 ~v2 v3 ~v4 = du_es_1764 v3
du_es_1764 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728
du_es_1764 v0
  = coe
      MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_1309
      (coe
         MAlonzo.Code.Ledger.Enact.d_cc_740
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1748
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_1974 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_constitution_742
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1748
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_1974 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_pv_744
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1748
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_1974 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_pparams_746
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1748
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_1974 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
-- Ledger.Epoch.Properties._.govSt'
d_govSt''_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1978 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_1766 v0 ~v1 ~v2 v3 ~v4 = du_govSt''_1766 v0 v3
du_govSt''_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_1766 v0 v1
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
                          (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0))
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
                          (MAlonzo.Code.Ledger.Ratify.d_removed_1750
                             (coe MAlonzo.Code.Ledger.Epoch.d_fut_1974 (coe v1))))))
                 (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
      (coe
         MAlonzo.Code.Ledger.Ledger.d_govSt_1842
         (coe MAlonzo.Code.Ledger.Epoch.d_ls_1970 (coe v1)))
-- Ledger.Epoch.Properties._.EPOCH-total
d_EPOCH'45'total_1772 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1978 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_1772 v0 ~v1 v2 v3 v4
  = du_EPOCH'45'total_1772 v0 v2 v3 v4
du_EPOCH'45'total_1772 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1978 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total_1772 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''7497'''_1976
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
                           MAlonzo.Code.Ledger.Utxo.d_donations_1714
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                       (coe v3) (coe v1)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))))))))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.d_fees_1710
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                       (coe v3) (coe v1)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             du_pFut_1778 (coe v0) (coe v1) (coe v2)
                                             (coe v3)))))))))
                     (coe
                        MAlonzo.Code.Ledger.PParams.d_treasury_132
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_acnt_1968
                           (coe
                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2) (coe v3)
                                 (coe v1)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                     (coe
                        MAlonzo.Code.Ledger.Interface.HasCoin.d_getCoin_18
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1576
                           (coe
                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_khs_192
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0)))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__492
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                           MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                           (let v4
                                  = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
                                         (coe v0)) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                               (coe v0))) in
                               coe
                                 (let v6
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1108
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
                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
                                            (coe v0)) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                  (coe v0))) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1108
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
                                                             MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                             (coe v2) (coe v3) (coe v1)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   du_pFut_1778 (coe v0) (coe v1)
                                                                   (coe v2) (coe v3))) in
                                                   coe
                                                     (MAlonzo.Code.Ledger.Ratify.d_removed_1750
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_690
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v7)))
                                                                  (coe v9))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                (let v9
                                                                       = coe
                                                                           MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1754
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
                                                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                                                 (coe v2) (coe v3)
                                                                                 (coe v1)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       du_pFut_1778
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v2)
                                                                                       (coe v3))) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.d_deposits_1712
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                                                            MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1684
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v7)))))))) in
                                              coe (coe v5 v7 v6))))))))
                           (MAlonzo.Code.Ledger.Enact.d_withdrawals_748
                              (let v4
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Ratify.d_es_1748
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                          v4)))))))
                     (coe
                        MAlonzo.Code.Ledger.Interface.HasCoin.d_getCoin_18
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1576
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_khs_192
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0)))))
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
                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
                                            (coe v0)) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                  (coe v0))) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1108
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
                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
                                               (coe v0)) in
                                  coe
                                    (let v5
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                     (coe v0))) in
                                     coe
                                       (let v6
                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1108
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
                                                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                                (coe v2) (coe v3) (coe v1)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      du_pFut_1778 (coe v0) (coe v1)
                                                                      (coe v2) (coe v3))) in
                                                      coe
                                                        (MAlonzo.Code.Ledger.Ratify.d_removed_1750
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                                                        MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_690
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v7)))
                                                                     (coe v9))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                   (let v9
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1754
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
                                                                                    MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                                                    (coe v2)
                                                                                    (coe v3)
                                                                                    (coe v1)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          du_pFut_1778
                                                                                          (coe v0)
                                                                                          (coe v1)
                                                                                          (coe v2)
                                                                                          (coe
                                                                                             v3))) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Utxo.d_deposits_1712
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                                                               MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1684
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe v7)))))))) in
                                                 coe (coe v5 v7 v6))))))))
                              (MAlonzo.Code.Ledger.Enact.d_withdrawals_748
                                 (let v4
                                        = coe
                                            MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                            (coe v2) (coe v3) (coe v1)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  du_pFut_1778 (coe v0) (coe v1) (coe v2)
                                                  (coe v3))) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Ratify.d_es_1748
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1108
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
                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
                                                             (coe v0)) in
                                                coe
                                                  (let v7
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                                   (coe v0))) in
                                                   coe
                                                     (let v8
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1108
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
                                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
                                                                (coe v0)) in
                                                   coe
                                                     (let v7
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                                      (coe v0))) in
                                                      coe
                                                        (let v8
                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1108
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
                                                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                                                 (coe v2) (coe v3)
                                                                                 (coe v1)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       du_pFut_1778
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v2)
                                                                                       (coe v3))) in
                                                                       coe
                                                                         (MAlonzo.Code.Ledger.Ratify.d_removed_1750
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_690
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                            (coe
                                                                                               v9)))
                                                                                      (coe v11))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                                    (let v11
                                                                                           = coe
                                                                                               MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1754
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
                                                                                                     MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                                                                     (coe
                                                                                                        v2)
                                                                                                     (coe
                                                                                                        v3)
                                                                                                     (coe
                                                                                                        v1)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           du_pFut_1778
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
                                                                                                MAlonzo.Code.Ledger.Utxo.d_deposits_1712
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                                                                                MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1684
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v9)))))))) in
                                                                  coe (coe v7 v9 v8))))))))
                                               (MAlonzo.Code.Ledger.Enact.d_withdrawals_748
                                                  (let v6
                                                         = coe
                                                             MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                             (coe v2) (coe v3) (coe v1)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   du_pFut_1778 (coe v0) (coe v1)
                                                                   (coe v2) (coe v3))) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Ratify.d_es_1748
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                                              v6)))))))))))
                           (coe
                              (\ v4 ->
                                 coe
                                   MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_997
                                   (coe
                                      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
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
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_rewards_782
                                    (coe
                                       MAlonzo.Code.Ledger.Certs.d_dState_818
                                       (coe
                                          MAlonzo.Code.Ledger.Ledger.d_certState_1844
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                                v4)))))))))))
               (coe
                  MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1136
                  (let v4
                         = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088 (coe v0)) in
                   coe
                     (let v5
                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))) in
                      coe
                        (let v6
                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v4)
                              (coe v5) (coe v6)))))
                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                  (coe
                     MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                  (coe (\ v4 -> v4))
                  (coe
                     MAlonzo.Code.Ledger.Enact.d_withdrawals_748
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_1748
                           (coe
                              MAlonzo.Code.Ledger.Epoch.d_fut_1974
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                 v4)))))))
            (coe
               MAlonzo.Code.Ledger.PParams.d_reserves_134
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Epoch.d_acnt_1968
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                        v4)))))
         (coe
            MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_1846
            (coe
               MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1716
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Utxo.d_utxo_1708
                     (coe
                        MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_ls_1970
                           (coe
                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                              v4)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                  MAlonzo.Code.Prelude.d_Number'45'ℕ_32 (0 :: Integer)
                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1754
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
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Utxo.d_deposits_1712
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                 (coe v2) (coe v3) (coe v1)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe
                                                       du_pFut_1778 (coe v0) (coe v1) (coe v2)
                                                       (coe v3))) in
                                       coe
                                         (MAlonzo.Code.Ledger.Ratify.d_removed_1750
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                                         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_690
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                            (coe v8)))
                                                      (coe v10))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                    (let v10
                                                           = coe
                                                               MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1754
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
                                                                     MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                                     (coe v2) (coe v3) (coe v1)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe
                                                                           du_pFut_1778 (coe v0)
                                                                           (coe v1) (coe v2)
                                                                           (coe v3))) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Utxo.d_deposits_1712
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                                                MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1684
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
                                      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0))
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
                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                 (coe v2) (coe v3) (coe v1)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe
                                                       du_pFut_1778 (coe v0) (coe v1) (coe v2)
                                                       (coe v3))) in
                                       coe
                                         (MAlonzo.Code.Ledger.Ratify.d_removed_1750
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                                  v6))))))))
                          (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ledger.d_govSt_1842
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_ls_1970
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                           v4)))))
            (coe
               MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_824
               (coe
                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'44'_'10215''7496'_784
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_voteDelegs_778
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_dState_818
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_certState_1844
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                    v4))))))
                  (coe
                     MAlonzo.Code.Ledger.Certs.d_stakeDelegs_780
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Certs.d_dState_818
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_certState_1844
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (MAlonzo.Code.Ledger.Certs.d_rewards_782
                           (coe
                              MAlonzo.Code.Ledger.Certs.d_dState_818
                              (coe
                                 MAlonzo.Code.Ledger.Ledger.d_certState_1844
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
                                         (coe v0)) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                               (coe v0))) in
                               coe
                                 (let v6
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1108
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
                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
                                            (coe v0)) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                  (coe v0))) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1108
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
                                                             MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                             (coe v2) (coe v3) (coe v1)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   du_pFut_1778 (coe v0) (coe v1)
                                                                   (coe v2) (coe v3))) in
                                                   coe
                                                     (MAlonzo.Code.Ledger.Ratify.d_removed_1750
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_690
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v7)))
                                                                  (coe v9))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                (let v9
                                                                       = coe
                                                                           MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1754
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
                                                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                                                 (coe v2) (coe v3)
                                                                                 (coe v1)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       du_pFut_1778
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v2)
                                                                                       (coe v3))) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.d_deposits_1712
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                                                            MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1684
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v7)))))))) in
                                              coe (coe v5 v7 v6))))))))
                           (MAlonzo.Code.Ledger.Enact.d_withdrawals_748
                              (let v4
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Ratify.d_es_1748
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
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
                                                          MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
                                                          (coe v0)) in
                                             coe
                                               (let v7
                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                                (coe v0))) in
                                                coe
                                                  (let v8
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1108
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
                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
                                                             (coe v0)) in
                                                coe
                                                  (let v7
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                                   (coe v0))) in
                                                   coe
                                                     (let v8
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1108
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
                                                                              MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                                              (coe v2) (coe v3)
                                                                              (coe v1)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    du_pFut_1778
                                                                                    (coe v0)
                                                                                    (coe v1)
                                                                                    (coe v2)
                                                                                    (coe v3))) in
                                                                    coe
                                                                      (MAlonzo.Code.Ledger.Ratify.d_removed_1750
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                                                                      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_690
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                         (coe v9)))
                                                                                   (coe v11))
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_532
                                                                                 (let v11
                                                                                        = coe
                                                                                            MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1754
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
                                                                                                  MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                                                                  (coe
                                                                                                     v2)
                                                                                                  (coe
                                                                                                     v3)
                                                                                                  (coe
                                                                                                     v1)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        du_pFut_1778
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
                                                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1712
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                                                                             MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1684
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   v9)))))))) in
                                                               coe (coe v7 v9 v8))))))))
                                            (MAlonzo.Code.Ledger.Enact.d_withdrawals_748
                                               (let v6
                                                      = coe
                                                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                          (coe v2) (coe v3) (coe v1)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                du_pFut_1778 (coe v0) (coe v1)
                                                                (coe v2) (coe v3))) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Ledger.Ratify.d_es_1748
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                                           v6)))))))))))
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_997
                                (coe
                                   MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
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
                                      MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                      (coe v3) (coe v1)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_rewards_782
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_dState_818
                                    (coe
                                       MAlonzo.Code.Ledger.Ledger.d_certState_1844
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                             v4))))))))))
               (coe
                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7510'_796
                  (let v4
                         = coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))) in
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
                                   MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                   (coe v3) (coe v1)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Certs.d_pools_792
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_pState_820
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_certState_1844
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                          v5))))))
                        (let v5
                               = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352
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
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_retiring_794
                                    (coe
                                       MAlonzo.Code.Ledger.Certs.d_pState_820
                                       (coe
                                          MAlonzo.Code.Ledger.Ledger.d_certState_1844
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                                v6))))))
                              (coe v3)))))
                  (let v4
                         = coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))) in
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
                                   MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                   (coe v3) (coe v1)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Certs.d_retiring_794
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_pState_820
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_certState_1844
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                          v5))))))
                        (let v5
                               = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352
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
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Certs.d_retiring_794
                                    (coe
                                       MAlonzo.Code.Ledger.Certs.d_pState_820
                                       (coe
                                          MAlonzo.Code.Ledger.Ledger.d_certState_1844
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                                v6))))))
                              (coe v3))))))
               (coe
                  MAlonzo.Code.Ledger.Certs.C_'10214'_'44'_'10215''7515'_808
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
                                                     MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074
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
                                                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999
                                                                (coe v2) (coe v3) (coe v1)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      du_pFut_1778 (coe v0) (coe v1)
                                                                      (coe v2) (coe v3))) in
                                                      coe
                                                        (MAlonzo.Code.Ledger.Ratify.d_removed_1750
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                                                 v7))))))))
                                         (coe
                                            MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))))
                              (let v5
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_govSt_1842
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
                                         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                                      (MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352
                                            (coe v0)))
                                      (1 :: Integer) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                (let v6
                                       = coe
                                           MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                           (coe v3) (coe v1)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 du_pFut_1778 (coe v0) (coe v1) (coe v2)
                                                 (coe v3))) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Ledger.Certs.d_dreps_804
                                      (coe
                                         MAlonzo.Code.Ledger.Certs.d_gState_822
                                         (coe
                                            MAlonzo.Code.Ledger.Ledger.d_certState_1844
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                                  v6))))))))
                        (coe
                           (\ v5 ->
                              let v6
                                    = coe
                                        MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                        (coe v3) (coe v1)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                              coe
                                (MAlonzo.Code.Ledger.Certs.d_dreps_804
                                   (coe
                                      MAlonzo.Code.Ledger.Certs.d_gState_822
                                      (coe
                                         MAlonzo.Code.Ledger.Ledger.d_certState_1844
                                         (coe
                                            MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                               v6)))))))))
                  (let v4
                         = coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))) in
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
                                   MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                   (coe v3) (coe v1)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Certs.d_ccHotKeys_806
                              (coe
                                 MAlonzo.Code.Ledger.Certs.d_gState_822
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_certState_1844
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_1970
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                          v5))))))
                        (coe
                           MAlonzo.Code.Ledger.Enact.du_ccCreds_750
                           (coe
                              MAlonzo.Code.Ledger.Enact.d_cc_740
                              (let v5
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Ratify.d_es_1748
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_fut_1974
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                                          v5)))))))))))
         (coe
            MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_1309
            (coe
               MAlonzo.Code.Ledger.Enact.d_cc_740
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ratify.d_es_1748
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_fut_1974
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                           v4)))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_constitution_742
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ratify.d_es_1748
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_fut_1974
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                           v4)))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_pv_744
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ratify.d_es_1748
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_fut_1974
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
                           v4)))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_pparams_746
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9999 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ratify.d_es_1748
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_fut_1974
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9989
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
            (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Epoch.C_EPOCH_2148
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe du_pFut_1778 (coe v0) (coe v1) (coe v2) (coe v3))))
-- Ledger.Epoch.Properties._._.pFut
d_pFut_1778 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1978 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pFut_1778 v0 ~v1 v2 v3 v4 = du_pFut_1778 v0 v2 v3 v4
du_pFut_1778 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1978 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pFut_1778 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Ratify.Properties.d_RATIFY'45'total_1984
      (coe v0)
      (coe
         MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11133
         (coe MAlonzo.Code.Ledger.Epoch.d_stakeDistrs_1982 (coe v1))
         (coe v3)
         (coe
            MAlonzo.Code.Ledger.Certs.d_dreps_804
            (coe
               MAlonzo.Code.Ledger.Certs.d_gState_822
               (coe
                  MAlonzo.Code.Ledger.Ledger.d_certState_1844
                  (coe MAlonzo.Code.Ledger.Epoch.d_ls_1970 (coe v2)))))
         (coe
            MAlonzo.Code.Ledger.Certs.d_ccHotKeys_806
            (coe
               MAlonzo.Code.Ledger.Certs.d_gState_822
               (coe
                  MAlonzo.Code.Ledger.Ledger.d_certState_1844
                  (coe MAlonzo.Code.Ledger.Epoch.d_ls_1970 (coe v2)))))
         (coe
            MAlonzo.Code.Ledger.PParams.d_treasury_132
            (coe MAlonzo.Code.Ledger.Epoch.d_acnt_1968 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1754
         (coe du_es_1764 (coe v2))
         (coe
            MAlonzo.Code.Axiom.Set.du_'8709'_424
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
      (coe du_govSt''_1766 (coe v0) (coe v2))
-- Ledger.Epoch.Properties._.EPOCH-complete
d_EPOCH'45'complete_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1978 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2016 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_1796 = erased
-- Ledger.Epoch.Properties._.EPOCH-total'
d_EPOCH'45'total''_1806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1978 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_1806 v0 ~v1 v2 v3 v4
  = du_EPOCH'45'total''_1806 v0 v2 v3 v4
du_EPOCH'45'total''_1806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1978 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total''_1806 v0 v1 v2 v3
  = coe du_EPOCH'45'total_1772 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Epoch.Properties._.EPOCH-complete'
d_EPOCH'45'complete''_1810 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1978 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1958 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__2016 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_1810 = erased
-- Ledger.Epoch.Properties.Computational-EPOCH
d_Computational'45'EPOCH_1812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_1812 v0 ~v1
  = du_Computational'45'EPOCH_1812 v0
du_Computational'45'EPOCH_1812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'EPOCH_1812 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_EPOCH'45'total''_1806 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Epoch.Properties._.NEWEPOCH-total
d_NEWEPOCH'45'total_1848 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1978 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1984 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_1848 v0 ~v1 v2 v3 v4
  = du_NEWEPOCH'45'total_1848 v0 v2 v3 v4
du_NEWEPOCH'45'total_1848 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1978 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1984 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_NEWEPOCH'45'total_1848 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                 (coe
                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
              v3
              (coe
                 MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
                 (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d__'43'__2046
                    (MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
                       (MAlonzo.Code.Ledger.Epoch.d_lastEpoch_1990 (coe v2)))
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
                       (MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
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
                             MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''8319''7497'_1994
                             (coe v3)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   du_EPOCH'45'total''_1806 (coe v0) (coe v1)
                                   (coe MAlonzo.Code.Ledger.Epoch.d_epochState_1992 (coe v2))
                                   (coe v3))))
                          (coe
                             MAlonzo.Code.Ledger.Epoch.C_NEWEPOCH'45'New_2152
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (coe
                                   du_EPOCH'45'total''_1806 (coe v0) (coe v1)
                                   (coe MAlonzo.Code.Ledger.Epoch.d_epochState_1992 (coe v2))
                                   (coe v3)))))
                else coe
                       seq (coe v6)
                       (coe
                          MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v2)
                          (coe MAlonzo.Code.Ledger.Epoch.C_NEWEPOCH'45'Not'45'New_2154))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Epoch.Properties._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_1860 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1978 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1984 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1984 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2150 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_1860 = erased
-- Ledger.Epoch.Properties.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_1910 v0 ~v1
  = du_Computational'45'NEWEPOCH_1910 v0
du_Computational'45'NEWEPOCH_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'NEWEPOCH_1910 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe
              du_NEWEPOCH'45'total_1848 (coe v0) (coe v1) (coe v2) (coe v3)))
