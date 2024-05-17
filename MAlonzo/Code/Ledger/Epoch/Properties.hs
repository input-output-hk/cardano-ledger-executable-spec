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
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
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
d_Epoch_174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_174 = erased
-- Ledger.Epoch.Properties._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__1388 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Epoch.Properties._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1390 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Epoch.Properties._.EpochState
d_EpochState_1394 a0 a1 = ()
-- Ledger.Epoch.Properties._.NewEpochEnv
d_NewEpochEnv_1400 a0 a1 = ()
-- Ledger.Epoch.Properties._.NewEpochState
d_NewEpochState_1402 a0 a1 = ()
-- Ledger.Epoch.Properties._.RatifyState
d_RatifyState_1508 a0 a1 = ()
-- Ledger.Epoch.Properties._.completeness
d_completeness_1618 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1618 = erased
-- Ledger.Epoch.Properties._.computeProof
d_computeProof_1624 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1624 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Epoch.Properties._.es
d_es_1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1890 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  AgdaAny -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_es_1682 ~v0 ~v1 ~v2 v3 ~v4 = du_es_1682 v3
du_es_1682 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_644
du_es_1682 v0
  = coe
      MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_1231
      (coe
         MAlonzo.Code.Ledger.Enact.d_cc_656
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1666
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_1886 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_constitution_658
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1666
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_1886 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_pv_660
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1666
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_1886 (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Enact.d_pparams_662
         (coe
            MAlonzo.Code.Ledger.Ratify.d_es_1666
            (coe MAlonzo.Code.Ledger.Epoch.d_fut_1886 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_512
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
-- Ledger.Epoch.Properties._.govSt'
d_govSt''_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1890 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt''_1684 v0 ~v1 ~v2 v3 ~v4 = du_govSt''_1684 v0 v3
du_govSt''_1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt''_1684 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_filter_892
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
                       (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                          (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                 (coe
                    MAlonzo.Code.Interface.IsSet.d_toSet_446
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_496)
                    (coe
                       MAlonzo.Code.Axiom.Set.du_map_380
                       (MAlonzo.Code.Axiom.Set.d_th_1430
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                       (MAlonzo.Code.Ledger.Ratify.d_removed_1668
                          (coe MAlonzo.Code.Ledger.Epoch.d_fut_1886 (coe v1))))))
              (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
      (MAlonzo.Code.Ledger.Ledger.d_govSt_1754
         (coe MAlonzo.Code.Ledger.Epoch.d_ls_1882 (coe v1)))
-- Ledger.Epoch.Properties._.EPOCH-total
d_EPOCH'45'total_1690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1890 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_1690 v0 ~v1 v2 v3 v4
  = du_EPOCH'45'total_1690 v0 v2 v3 v4
du_EPOCH'45'total_1690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1890 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total_1690 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'44'_'44'_'10215''7497'''_1888
         (coe
            MAlonzo.Code.Ledger.PParams.C_Acnt'46'constructor_359
            (coe
               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
               (addInt
                  (coe
                     addInt
                     (coe
                        addInt
                        (coe
                           MAlonzo.Code.Ledger.Utxo.d_donations_1976
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                       (coe v3) (coe v1)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))))))))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.d_fees_1972
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                       (coe v3) (coe v1)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             du_pFut_1696 (coe v0) (coe v1) (coe v2)
                                             (coe v3)))))))))
                     (coe
                        MAlonzo.Code.Ledger.PParams.d_treasury_130
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_acnt_1880
                           (coe
                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2) (coe v3)
                                 (coe v1)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                     (coe
                        MAlonzo.Code.Ledger.Interface.HasCoin.d_getCoin_18
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1494
                           (coe
                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                              (coe
                                 MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_khs_192
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                           MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                           (let v4
                                  = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                         (coe v0)) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                               (coe v0))) in
                               coe
                                 (let v6
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v4)
                                       (coe v5) (coe v6)))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_484
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                              (let v4
                                     = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                            (coe v0)) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                  (coe v0))) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                  (coe v0)) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                          (coe v4) (coe v5) (coe v6)))))
                              (coe
                                 MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1010
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
                                                             MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                             (coe v2) (coe v3) (coe v1)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   du_pFut_1696 (coe v0) (coe v1)
                                                                   (coe v2) (coe v3))) in
                                                   coe
                                                     (MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
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
                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_608
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v7)))
                                                                  (coe v9))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                (let v9
                                                                       = coe
                                                                           MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                           (coe v0) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1190
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
                                                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                                                 (coe v2) (coe v3)
                                                                                 (coe v1)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       du_pFut_1696
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v2)
                                                                                       (coe v3))) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                                                                     v10)))))
                                                                      (coe
                                                                         MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                         (coe
                                                                            MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_298
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1430
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1640
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v7)))))))) in
                                              coe (coe v5 v7 v6))))))))
                           (MAlonzo.Code.Ledger.Enact.d_withdrawals_664
                              (let v4
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Ratify.d_es_1666
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                          v4)))))))
                     (coe
                        MAlonzo.Code.Ledger.Interface.HasCoin.d_getCoin_18
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1494
                           (coe
                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_khs_192
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1436
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                              MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                              (let v4
                                     = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                            (coe v0)) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                  (coe v0))) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                  (coe v0)) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                          (coe v4) (coe v5) (coe v6)))))
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_484
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                 (coe
                                    MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                                 (let v4
                                        = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                               (coe v0)) in
                                  coe
                                    (let v5
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                     (coe v0))) in
                                     coe
                                       (let v6
                                              = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                     (coe v0)) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                             (coe v4) (coe v5) (coe v6)))))
                                 (coe
                                    MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1010
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
                                                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                                (coe v2) (coe v3) (coe v1)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe
                                                                      du_pFut_1696 (coe v0) (coe v1)
                                                                      (coe v2) (coe v3))) in
                                                      coe
                                                        (MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
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
                                                                        MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_608
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v7)))
                                                                     (coe v9))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                   (let v9
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                              (coe v0) in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1190
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
                                                                                    MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                                                    (coe v2)
                                                                                    (coe v3)
                                                                                    (coe v1)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          du_pFut_1696
                                                                                          (coe v0)
                                                                                          (coe v1)
                                                                                          (coe v2)
                                                                                          (coe
                                                                                             v3))) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                                                                        v10)))))
                                                                         (coe
                                                                            MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                            (coe
                                                                               MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_298
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1640
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                  (coe v7)))))))) in
                                                 coe (coe v5 v7 v6))))))))
                              (MAlonzo.Code.Ledger.Enact.d_withdrawals_664
                                 (let v4
                                        = coe
                                            MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                            (coe v2) (coe v3) (coe v1)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  du_pFut_1696 (coe v0) (coe v1) (coe v2)
                                                  (coe v3))) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Ratify.d_es_1666
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
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
                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                            (coe v0)))
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                            (coe v0))))
                                   (coe v4)
                                   (let v5
                                          = MAlonzo.Code.Axiom.Set.d_th_1430
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                    coe
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Rel.du_dom_312 v5
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                               MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                                               (let v6
                                                      = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                             (coe v0)) in
                                                coe
                                                  (let v7
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                   (coe v0))) in
                                                   coe
                                                     (let v8
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                                           (coe v6) (coe v7) (coe v8)))))
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_484
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                  (coe
                                                     MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                                                  (let v6
                                                         = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                                (coe v0)) in
                                                   coe
                                                     (let v7
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                      (coe v0))) in
                                                      coe
                                                        (let v8
                                                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                      (coe v0)) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                                              (coe v6) (coe v7) (coe v8)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1010
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
                                                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                                                 (coe v2) (coe v3)
                                                                                 (coe v1)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       du_pFut_1696
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v2)
                                                                                       (coe v3))) in
                                                                       coe
                                                                         (MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
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
                                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_608
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                            (coe
                                                                                               v9)))
                                                                                      (coe v11))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                                    (let v11
                                                                                           = coe
                                                                                               MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                               (coe
                                                                                                  v0) in
                                                                                     coe
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
                                                                                             v11)
                                                                                          (let v12
                                                                                                 = coe
                                                                                                     MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                                                                     (coe
                                                                                                        v2)
                                                                                                     (coe
                                                                                                        v3)
                                                                                                     (coe
                                                                                                        v1)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           du_pFut_1696
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
                                                                                                MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                                                                                         v12)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                                             (coe
                                                                                                MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_298
                                                                                                (coe
                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1640
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v9)))))))) in
                                                                  coe (coe v7 v9 v8))))))))
                                               (MAlonzo.Code.Ledger.Enact.d_withdrawals_664
                                                  (let v6
                                                         = coe
                                                             MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                             (coe v2) (coe v3) (coe v1)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   du_pFut_1696 (coe v0) (coe v1)
                                                                   (coe v2) (coe v3))) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Ratify.d_es_1666
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                                              v6)))))))))))
                           (coe
                              (\ v4 ->
                                 coe
                                   MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_1089
                                   (coe
                                      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                         (coe v0)))
                                   (coe v4)))
                           (coe
                              MAlonzo.Code.Interface.IsSet.du_dom_492
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                              (let v4
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Deleg.d_rewards_698
                                    (coe
                                       MAlonzo.Code.Ledger.Deleg.d_dState_734
                                       (coe
                                          MAlonzo.Code.Ledger.Ledger.d_certState_1756
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                                v4)))))))))))
               (coe
                  MAlonzo.Code.Ledger.Set.Theory.du_indexedSum'7515'''_1048
                  (let v4
                         = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)) in
                   coe
                     (let v5
                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))) in
                      coe
                        (let v6
                               = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v4)
                              (coe v5) (coe v6)))))
                  (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                  (coe
                     MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                  (coe (\ v4 -> v4))
                  (coe
                     MAlonzo.Code.Ledger.Enact.d_withdrawals_664
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Ratify.d_es_1666
                           (coe
                              MAlonzo.Code.Ledger.Epoch.d_fut_1886
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                 v4)))))))
            (coe
               MAlonzo.Code.Ledger.PParams.d_reserves_132
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Epoch.d_acnt_1880
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                        v4)))))
         (coe
            MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_1758
            (coe
               MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1978
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                     (coe
                        MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_ls_1882
                           (coe
                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                              v4)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                  MAlonzo.Code.Prelude.d_Number'45'ℕ_32 (0 :: Integer)
                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
               (let v4
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
                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                     (let v5
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
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
                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                 (coe v2) (coe v3) (coe v1)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe
                                                       du_pFut_1696 (coe v0) (coe v1) (coe v2)
                                                       (coe v3))) in
                                       coe
                                         (MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
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
                                                         MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_608
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                            (coe v8)))
                                                      (coe v10))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                    (let v10
                                                           = coe
                                                               MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                               (coe v0) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1190
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
                                                                     MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                                     (coe v2) (coe v3) (coe v1)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe
                                                                           du_pFut_1696 (coe v0)
                                                                           (coe v1) (coe v2)
                                                                           (coe v3))) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                                                         v11)))))
                                                          (coe
                                                             MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                             (coe
                                                                MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_298
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1640
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v8)))))))) in
                                  coe (coe v6 v8 v7))))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                  MAlonzo.Code.Prelude.d_Number'45'ℕ_32 (0 :: Integer)
                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
            (coe
               MAlonzo.Code.Data.List.Base.du_filter_892
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
                                (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992 (coe v0))
                                (coe
                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                   (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                          (coe
                             MAlonzo.Code.Interface.IsSet.d_toSet_446
                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_496)
                             (let v5
                                    = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                              coe
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_map_380
                                   (MAlonzo.Code.Axiom.Set.d_th_1430 (coe v5))
                                   (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                   (let v6
                                          = coe
                                              MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                              (coe v2) (coe v3) (coe v1)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    du_pFut_1696 (coe v0) (coe v1) (coe v2)
                                                    (coe v3))) in
                                    coe
                                      (MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                         (coe
                                            MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                               v6))))))))
                       (coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (MAlonzo.Code.Ledger.Ledger.d_govSt_1754
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_ls_1882
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                           v4)))))
            (coe
               MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_740
               (coe
                  MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_700
                  (coe
                     MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Deleg.d_dState_734
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_certState_1756
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                    v4))))))
                  (coe
                     MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_696
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Deleg.d_dState_734
                           (coe
                              MAlonzo.Code.Ledger.Ledger.d_certState_1756
                              (coe
                                 MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                    v4))))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                     MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                     (coe
                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_khs_192
                              (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                     (let v4
                            = coe
                                MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2) (coe v3)
                                (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                      coe
                        (MAlonzo.Code.Ledger.Deleg.d_rewards_698
                           (coe
                              MAlonzo.Code.Ledger.Deleg.d_dState_734
                              (coe
                                 MAlonzo.Code.Ledger.Ledger.d_certState_1756
                                 (coe
                                    MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                       v4))))))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1436
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                           MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                           (let v4
                                  = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                         (coe v0)) in
                            coe
                              (let v5
                                     = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                               (coe v0))) in
                               coe
                                 (let v6
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v4)
                                       (coe v5) (coe v6)))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_484
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                              (coe
                                 MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                              (let v4
                                     = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                            (coe v0)) in
                               coe
                                 (let v5
                                        = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                  (coe v0))) in
                                  coe
                                    (let v6
                                           = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                  (coe v0)) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                          (coe v4) (coe v5) (coe v6)))))
                              (coe
                                 MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1010
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
                                                             MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                             (coe v2) (coe v3) (coe v1)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   du_pFut_1696 (coe v0) (coe v1)
                                                                   (coe v2) (coe v3))) in
                                                   coe
                                                     (MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
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
                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_608
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                        (coe v7)))
                                                                  (coe v9))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                (let v9
                                                                       = coe
                                                                           MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                           (coe v0) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1190
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
                                                                                 MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                                                 (coe v2) (coe v3)
                                                                                 (coe v1)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe
                                                                                       du_pFut_1696
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v2)
                                                                                       (coe v3))) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                                                                     v10)))))
                                                                      (coe
                                                                         MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                         (coe
                                                                            MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_298
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1430
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1640
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe v7)))))))) in
                                              coe (coe v5 v7 v6))))))))
                           (MAlonzo.Code.Ledger.Enact.d_withdrawals_664
                              (let v4
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Ratify.d_es_1666
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
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
                                         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                                (coe v4)
                                (let v5
                                       = MAlonzo.Code.Axiom.Set.d_th_1430
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Rel.du_dom_312 v5
                                      (coe
                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78
                                            (let v6
                                                   = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                          (coe v0)) in
                                             coe
                                               (let v7
                                                      = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                          (coe
                                                             MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                (coe v0))) in
                                                coe
                                                  (let v8
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                (coe v0)) in
                                                   coe
                                                     (coe
                                                        MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                                        (coe v6) (coe v7) (coe v8)))))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_484
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                               (coe
                                                  MAlonzo.Code.Interface.IsCommutativeMonoid.d_ℕ'45'commMonoid''_78)
                                               (let v6
                                                      = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                                             (coe v0)) in
                                                coe
                                                  (let v7
                                                         = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                             (coe
                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                   (coe v0))) in
                                                   coe
                                                     (let v8
                                                            = MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                                   (coe v0)) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158
                                                           (coe v6) (coe v7) (coe v8)))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.du__'7584''738'_1010
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
                                                                              MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                                              (coe v2) (coe v3)
                                                                              (coe v1)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    du_pFut_1696
                                                                                    (coe v0)
                                                                                    (coe v1)
                                                                                    (coe v2)
                                                                                    (coe v3))) in
                                                                    coe
                                                                      (MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
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
                                                                                      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_608
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                         (coe v9)))
                                                                                   (coe v11))
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                                 (let v11
                                                                                        = coe
                                                                                            MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                                                            (coe
                                                                                               v0) in
                                                                                  coe
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
                                                                                          v11)
                                                                                       (let v12
                                                                                              = coe
                                                                                                  MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                                                                  (coe
                                                                                                     v2)
                                                                                                  (coe
                                                                                                     v3)
                                                                                                  (coe
                                                                                                     v1)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        du_pFut_1696
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
                                                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                                                                                      v12)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                                          (coe
                                                                                             MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_298
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1640
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                (coe
                                                                                                   v9)))))))) in
                                                               coe (coe v7 v9 v8))))))))
                                            (MAlonzo.Code.Ledger.Enact.d_withdrawals_664
                                               (let v6
                                                      = coe
                                                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                          (coe v2) (coe v3) (coe v1)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                du_pFut_1696 (coe v0) (coe v1)
                                                                (coe v2) (coe v3))) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Ledger.Ratify.d_es_1666
                                                     (coe
                                                        MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                                           v6)))))))))))
                        (coe
                           (\ v4 ->
                              coe
                                MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_1089
                                (coe
                                   MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
                                      (coe v0)))
                                (coe v4)))
                        (coe
                           MAlonzo.Code.Interface.IsSet.du_dom_492
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                           (let v4
                                  = coe
                                      MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                      (coe v3) (coe v1)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Deleg.d_rewards_698
                                 (coe
                                    MAlonzo.Code.Ledger.Deleg.d_dState_734
                                    (coe
                                       MAlonzo.Code.Ledger.Ledger.d_certState_1756
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                             v4))))))))))
               (coe
                  MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7510'_712
                  (let v4
                         = coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                        (let v5
                               = coe
                                   MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                   (coe v3) (coe v1)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Deleg.d_pools_708
                              (coe
                                 MAlonzo.Code.Ledger.Deleg.d_pState_736
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_certState_1756
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                          v5))))))
                        (let v5
                               = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1480
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v5)
                              (let v6
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Deleg.d_retiring_710
                                    (coe
                                       MAlonzo.Code.Ledger.Deleg.d_pState_736
                                       (coe
                                          MAlonzo.Code.Ledger.Ledger.d_certState_1756
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                                v6))))))
                              (coe v3)))))
                  (let v4
                         = coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                        (let v5
                               = coe
                                   MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                   (coe v3) (coe v1)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Deleg.d_retiring_710
                              (coe
                                 MAlonzo.Code.Ledger.Deleg.d_pState_736
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_certState_1756
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                          v5))))))
                        (let v5
                               = MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1480
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v5)
                              (let v6
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Deleg.d_retiring_710
                                    (coe
                                       MAlonzo.Code.Ledger.Deleg.d_pState_736
                                       (coe
                                          MAlonzo.Code.Ledger.Ledger.d_certState_1756
                                          (coe
                                             MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                             (coe
                                                MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                                v6))))))
                              (coe v3))))))
               (coe
                  MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7515'_724
                  (let v4 = MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94 in
                   coe
                     (coe
                        MAlonzo.Code.Interface.ToBool.du_if_then_else__46 (coe v4)
                        (coe
                           MAlonzo.Code.Data.List.Base.du_null_282
                           (coe
                              MAlonzo.Code.Data.List.Base.du_filter_892
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
                                                  MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                                         (coe
                                            MAlonzo.Code.Interface.IsSet.d_toSet_446
                                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_496)
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
                                                             MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827
                                                             (coe v2) (coe v3) (coe v1)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   du_pFut_1696 (coe v0) (coe v1)
                                                                   (coe v2) (coe v3))) in
                                                   coe
                                                     (MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                                        (coe
                                                           MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                                           (coe
                                                              MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                                              v7))))))))
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
                              (let v5
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (MAlonzo.Code.Ledger.Ledger.d_govSt_1754
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                          v5))))))
                        (coe
                           MAlonzo.Code.Level.C_lift_20
                           (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                        (coe
                           (\ v5 ->
                              coe
                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_812
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                (coe
                                   MAlonzo.Code.Interface.HasAdd.d__'43'__12
                                   (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
                                         (coe v0)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.FromNat.d_fromNat_30
                                      (MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
                                            (coe v0)))
                                      (1 :: Integer) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                (let v6
                                       = coe
                                           MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                           (coe v3) (coe v1)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                              (coe
                                                 du_pFut_1696 (coe v0) (coe v1) (coe v2)
                                                 (coe v3))) in
                                 coe
                                   (coe
                                      MAlonzo.Code.Ledger.Deleg.d_dreps_720
                                      (coe
                                         MAlonzo.Code.Ledger.Deleg.d_gState_738
                                         (coe
                                            MAlonzo.Code.Ledger.Ledger.d_certState_1756
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                               (coe
                                                  MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                                  v6))))))))
                        (coe
                           (\ v5 ->
                              let v6
                                    = coe
                                        MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                        (coe v3) (coe v1)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                              coe
                                (MAlonzo.Code.Ledger.Deleg.d_dreps_720
                                   (coe
                                      MAlonzo.Code.Ledger.Deleg.d_gState_738
                                      (coe
                                         MAlonzo.Code.Ledger.Ledger.d_certState_1756
                                         (coe
                                            MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                            (coe
                                               MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                               v6)))))))))
                  (let v4
                         = coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1190
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased v4)
                        (let v5
                               = coe
                                   MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                   (coe v3) (coe v1)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Deleg.d_ccHotKeys_722
                              (coe
                                 MAlonzo.Code.Ledger.Deleg.d_gState_738
                                 (coe
                                    MAlonzo.Code.Ledger.Ledger.d_certState_1756
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_ls_1882
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                          v5))))))
                        (coe
                           MAlonzo.Code.Ledger.Enact.du_ccCreds_666
                           (coe
                              MAlonzo.Code.Ledger.Enact.d_cc_656
                              (let v5
                                     = coe
                                         MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2)
                                         (coe v3) (coe v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Ratify.d_es_1666
                                    (coe
                                       MAlonzo.Code.Ledger.Epoch.d_fut_1886
                                       (coe
                                          MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                                          v5)))))))))))
         (coe
            MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_1231
            (coe
               MAlonzo.Code.Ledger.Enact.d_cc_656
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ratify.d_es_1666
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_fut_1886
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                           v4)))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_constitution_658
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ratify.d_es_1666
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_fut_1886
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                           v4)))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_pv_660
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ratify.d_es_1666
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_fut_1886
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                           v4)))))
            (coe
               MAlonzo.Code.Ledger.Enact.d_pparams_662
               (let v4
                      = coe
                          MAlonzo.Code.Ledger.Epoch.C_mkGeneralizeTel_9827 (coe v2) (coe v3)
                          (coe v1)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Ratify.d_es_1666
                     (coe
                        MAlonzo.Code.Ledger.Epoch.d_fut_1886
                        (coe
                           MAlonzo.Code.Ledger.Epoch.d_'46'generalizedField'45'eps_9817
                           v4)))))
            (coe
               MAlonzo.Code.Interface.HasEmptySet.d_'8709'_290
               (coe
                  MAlonzo.Code.Interface.HasEmptySet.du_HasEmptySet'45'Map_300
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Ledger.Epoch.C_EPOCH_2060
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe du_pFut_1696 (coe v0) (coe v1) (coe v2) (coe v3))))
-- Ledger.Epoch.Properties._._.pFut
d_pFut_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1890 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pFut_1696 v0 ~v1 v2 v3 v4 = du_pFut_1696 v0 v2 v3 v4
du_pFut_1696 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1890 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pFut_1696 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Ratify.Properties.d_RATIFY'45'total_1900
      (coe v0)
      (coe
         MAlonzo.Code.Ledger.Ratify.C_RatifyEnv'46'constructor_11061
         (coe MAlonzo.Code.Ledger.Epoch.d_stakeDistrs_1894 (coe v1))
         (coe v3)
         (coe
            MAlonzo.Code.Ledger.Deleg.d_dreps_720
            (coe
               MAlonzo.Code.Ledger.Deleg.d_gState_738
               (coe
                  MAlonzo.Code.Ledger.Ledger.d_certState_1756
                  (coe MAlonzo.Code.Ledger.Epoch.d_ls_1882 (coe v2)))))
         (coe
            MAlonzo.Code.Ledger.Deleg.d_ccHotKeys_722
            (coe
               MAlonzo.Code.Ledger.Deleg.d_gState_738
               (coe
                  MAlonzo.Code.Ledger.Ledger.d_certState_1756
                  (coe MAlonzo.Code.Ledger.Epoch.d_ls_1882 (coe v2)))))
         (coe
            MAlonzo.Code.Ledger.PParams.d_treasury_130
            (coe MAlonzo.Code.Ledger.Epoch.d_acnt_1880 (coe v2))))
      (coe
         MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1672
         (coe du_es_1682 (coe v2))
         (coe
            MAlonzo.Code.Axiom.Set.du_'8709'_424
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
      (coe du_govSt''_1684 (coe v0) (coe v2))
-- Ledger.Epoch.Properties._.EPOCH-complete
d_EPOCH'45'complete_1714 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1890 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__1928 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_1714 = erased
-- Ledger.Epoch.Properties._.EPOCH-total'
d_EPOCH'45'total''_1724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1890 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_1724 v0 ~v1 v2 v3 v4
  = du_EPOCH'45'total''_1724 v0 v2 v3 v4
du_EPOCH'45'total''_1724 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1890 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total''_1724 v0 v1 v2 v3
  = coe du_EPOCH'45'total_1690 (coe v0) (coe v1) (coe v2) (coe v3)
-- Ledger.Epoch.Properties._.EPOCH-complete'
d_EPOCH'45'complete''_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1890 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__1928 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_1728 = erased
-- Ledger.Epoch.Properties.Computational-EPOCH
d_Computational'45'EPOCH_1730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_1730 v0 ~v1
  = du_Computational'45'EPOCH_1730 v0
du_Computational'45'EPOCH_1730 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'EPOCH_1730 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_EPOCH'45'total''_1724 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Ledger.Epoch.Properties._.NEWEPOCH-total
d_NEWEPOCH'45'total_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1890 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1896 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_1766 v0 ~v1 v2 v3 v4
  = du_NEWEPOCH'45'total_1766 v0 v2 v3 v4
du_NEWEPOCH'45'total_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1890 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1896 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_NEWEPOCH'45'total_1766 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                 (coe
                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
              v3
              (coe
                 MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
                 (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d__'43'__2046
                    (MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
                       (MAlonzo.Code.Ledger.Epoch.d_lastEpoch_1902 (coe v2)))
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                       (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
                       (MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
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
                             MAlonzo.Code.Ledger.Epoch.C_'10214'_'44'_'10215''8319''7497'_1906
                             (coe v3)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   du_EPOCH'45'total''_1724 (coe v0) (coe v1)
                                   (coe MAlonzo.Code.Ledger.Epoch.d_epochState_1904 (coe v2))
                                   (coe v3))))
                          (coe
                             MAlonzo.Code.Ledger.Epoch.C_NEWEPOCH'45'New_2064
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (coe
                                   du_EPOCH'45'total''_1724 (coe v0) (coe v1)
                                   (coe MAlonzo.Code.Ledger.Epoch.d_epochState_1904 (coe v2))
                                   (coe v3)))))
                else coe
                       seq (coe v6)
                       (coe
                          MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v2)
                          (coe MAlonzo.Code.Ledger.Epoch.C_NEWEPOCH'45'Not'45'New_2066))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Epoch.Properties._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_1778 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochEnv_1890 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1896 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1896 ->
  MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2062 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_1778 = erased
-- Ledger.Epoch.Properties.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_1828 v0 ~v1
  = du_Computational'45'NEWEPOCH_1828 v0
du_Computational'45'NEWEPOCH_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'NEWEPOCH_1828 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe
              du_NEWEPOCH'45'total_1766 (coe v0) (coe v1) (coe v2) (coe v3)))
