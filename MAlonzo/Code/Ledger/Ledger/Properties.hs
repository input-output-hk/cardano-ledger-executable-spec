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

module MAlonzo.Code.Ledger.Ledger.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.Deleg.Properties
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.Gov.Properties
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxow
import qualified MAlonzo.Code.Ledger.Utxow.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.CertEnv
d_CertEnv_58 a0 = ()
-- _.Tx
d_Tx_368 a0 = ()
-- Ledger.Ledger.Properties._.GovEnv
d_GovEnv_1414 a0 a1 = ()
-- Ledger.Ledger.Properties._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1506 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1724 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2378] ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1506 = erased
-- Ledger.Ledger.Properties._._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__1508 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.Properties._.LEnv
d_LEnv_1514 a0 a1 = ()
-- Ledger.Ledger.Properties._.LState
d_LState_1516 a0 a1 = ()
-- Ledger.Ledger.Properties._.UTxOEnv
d_UTxOEnv_1596 a0 a1 = ()
-- Ledger.Ledger.Properties._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1792 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.Properties.Computational-LEDGER
d_Computational'45'LEDGER_1818 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGER_1818 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1946 (coe v0) (coe v1))
-- Ledger.Ledger.Properties._.computeUtxow
d_computeUtxow_1844 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeUtxow_1844 ~v0 ~v1 ~v2 v3 = du_computeUtxow_1844 v3
du_computeUtxow_1844 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeUtxow_1844 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Ledger.Properties._.computeCerts
d_computeCerts_1846 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeCerts_1846 ~v0 ~v1 ~v2 v3 = du_computeCerts_1846 v3
du_computeCerts_1846 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeCerts_1846 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Ledger.Properties._.computeGov
d_computeGov_1848 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  () ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_818 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeGov_1848 ~v0 ~v1 ~v2 v3 = du_computeGov_1848 v3
du_computeGov_1848 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_818 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
du_computeGov_1848 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Ledger.Properties._._.go.utxoΓ
d_utxoΓ_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1724 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950
d_utxoΓ_1926 ~v0 ~v1 v2 ~v3 ~v4 = du_utxoΓ_1926 v2
du_utxoΓ_1926 ::
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1724 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1950
du_utxoΓ_1926 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_49789
      (coe MAlonzo.Code.Ledger.Ledger.d_slot_1734 (coe v0))
      (coe MAlonzo.Code.Ledger.Ledger.d_pparams_1738 (coe v0))
-- Ledger.Ledger.Properties._._.go.certΓ
d_certΓ_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1724 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666
d_certΓ_1940 v0 ~v1 v2 ~v3 v4 = du_certΓ_1940 v0 v2 v4
du_certΓ_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666
du_certΓ_1940 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'44'_'10215''7580'_684
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
         (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
         (MAlonzo.Code.Ledger.Ledger.d_slot_1734 (coe v1)))
      (coe MAlonzo.Code.Ledger.Ledger.d_pparams_1738 (coe v1))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txvote_2336
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txwdrls_2334
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2)))
-- Ledger.Ledger.Properties._._.go.govΓ
d_govΓ_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1724 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_818
d_govΓ_1942 v0 ~v1 v2 ~v3 v4 = du_govΓ_1942 v0 v2 v4
du_govΓ_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1724 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_818
du_govΓ_1942 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Gov.C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_840
      (coe
         MAlonzo.Code.Ledger.Transaction.d_txid_2350
         (coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
         (MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
         (MAlonzo.Code.Ledger.Ledger.d_slot_1734 (coe v1)))
      (coe MAlonzo.Code.Ledger.Ledger.d_pparams_1738 (coe v1))
      (coe MAlonzo.Code.Ledger.Ledger.d_ppolicy_1736 (coe v1))
      (coe MAlonzo.Code.Ledger.Ledger.d_enactState_1740 (coe v1))
-- Ledger.Ledger.Properties._._.go.computeProof
d_computeProof_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1724 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1946 v0 v1 v2 v3 v4
  = let v5
          = MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946
              (coe MAlonzo.Code.Ledger.Transaction.d_isValid_2392 (coe v4))
              (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then case coe v7 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v8
                         -> coe
                              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                              () erased () erased
                              (coe
                                 du_computeUtxow_1844
                                 (MAlonzo.Code.Ledger.Utxow.Properties.d_Computational'45'UTXOW_1650
                                    (coe v0) (coe v1))
                                 (coe du_utxoΓ_1926 (coe v2))
                                 (MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752 (coe v3)) v4)
                              (\ v9 ->
                                 case coe v9 of
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                     -> coe
                                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                          (coe
                                             MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                          () erased () erased
                                          (coe
                                             du_computeCerts_1846
                                             (coe
                                                MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_762
                                                (coe
                                                   MAlonzo.Code.Ledger.Deleg.Properties.d_Computational'45'CERTBASE_1498
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_1946
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Deleg.Properties.d_Computational'45'CERT_1108
                                                   (coe
                                                      MAlonzo.Code.Ledger.Transaction.d_govStructure_1946
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77373
                                                   (coe (\ v12 -> v12)))
                                                (coe
                                                   MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77373
                                                   (coe (\ v12 -> v12))))
                                             (coe du_certΓ_1940 (coe v0) (coe v2) (coe v4))
                                             (MAlonzo.Code.Ledger.Ledger.d_certState_1756 (coe v3))
                                             (MAlonzo.Code.Ledger.Transaction.d_txcerts_2332
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                   (coe v4))))
                                          (\ v12 ->
                                             case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                 -> coe
                                                      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                                      (coe
                                                         MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                                                      () erased () erased
                                                      (coe
                                                         du_computeGov_1848
                                                         (coe
                                                            MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1088
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_726)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Gov.Properties.d_Computational'45'GOV''_1136
                                                               (coe v0))
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77373
                                                               (coe
                                                                  (\ v15 ->
                                                                     MAlonzo.RTE.mazUnreachableError)))
                                                            (coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77373
                                                               (coe (\ v15 -> v15))))
                                                         (coe
                                                            du_govΓ_1942 (coe v0) (coe v2) (coe v4))
                                                         (MAlonzo.Code.Ledger.Ledger.d_govSt_1754
                                                            (coe v3))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Ledger.du_txgov_1760
                                                            (coe
                                                               MAlonzo.Code.Ledger.Transaction.d_body_2388
                                                               (coe v4))))
                                                      (\ v15 ->
                                                         case coe v15 of
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                             -> coe
                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_1758
                                                                        (coe v10) (coe v16)
                                                                        (coe v13))
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Ledger.C_LEDGER'45'V_1898
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe v8)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v11)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                 (coe v14)
                                                                                 (coe v17))))))
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                   _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v7)
                       (coe
                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                          (coe
                             MAlonzo.Code.Interface.ComputationalRelation.du_Monad'45'ComputationResult_158)
                          () erased () erased
                          (coe
                             du_computeUtxow_1844
                             (MAlonzo.Code.Ledger.Utxow.Properties.d_Computational'45'UTXOW_1650
                                (coe v0) (coe v1))
                             (coe du_utxoΓ_1926 (coe v2))
                             (MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752 (coe v3)) v4)
                          (\ v8 ->
                             case coe v8 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                 -> coe
                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Ledger.C_'10214'_'44'_'44'_'10215''737'_1758
                                            (coe v9)
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Ledger.Ledger.C_mkGeneralizeTel_5813
                                                       (coe v3) (coe v4) (coe v2) (coe v9) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Ledger.d_govSt_1754
                                                  (coe
                                                     MAlonzo.Code.Ledger.Ledger.d_'46'generalizedField'45's_5803
                                                     v11)))
                                            (let v11
                                                   = coe
                                                       MAlonzo.Code.Ledger.Ledger.C_mkGeneralizeTel_5813
                                                       (coe v3) (coe v4) (coe v2) (coe v9) in
                                             coe
                                               (coe
                                                  MAlonzo.Code.Ledger.Ledger.d_certState_1756
                                                  (coe
                                                     MAlonzo.Code.Ledger.Ledger.d_'46'generalizedField'45's_5803
                                                     v11))))
                                         (coe
                                            MAlonzo.Code.Ledger.Ledger.C_LEDGER'45'I_1972
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                               (coe v10))))
                               _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Ledger.Properties._._.go.completeness
d_completeness_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1724 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  MAlonzo.Code.Ledger.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__1824 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1980 = erased
-- Ledger.Ledger.Properties.Computational-LEDGERS
d_Computational'45'LEDGERS_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'LEDGERS_2150 v0 v1
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_762
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_726)
      (coe d_Computational'45'LEDGER_1818 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77373
         (coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77373
         (coe (\ v2 -> v2)))
-- Ledger.Ledger.Properties.HasCoin-LState
d_HasCoin'45'LState_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'LState_2152 v0 ~v1 = du_HasCoin'45'LState_2152 v0
du_HasCoin'45'LState_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'LState_2152 v0
  = coe
      MAlonzo.Code.Ledger.Interface.HasCoin.C_HasCoin'46'constructor_9
      (coe
         (\ v1 ->
            addInt
              (coe
                 addInt
                 (coe
                    addInt
                    (coe
                       MAlonzo.Code.Ledger.Utxo.d_donations_1976
                       (coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752 (coe v1)))
                    (coe
                       MAlonzo.Code.Ledger.Utxo.d_fees_1972
                       (coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752 (coe v1))))
                 (coe
                    MAlonzo.Code.Ledger.Utxo.du_cbalance_1614 (coe v0)
                    (coe
                       MAlonzo.Code.Ledger.Utxo.d_utxo_1970
                       (coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752 (coe v1)))))
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
                 (coe (\ v2 -> v2))
                 (coe
                    MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                    (coe MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752 (coe v1))))))
-- Ledger.Ledger.Properties.FreshTx
d_FreshTx_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 -> ()
d_FreshTx_2166 = erased
-- Ledger.Ledger.Properties.LEDGER-pov
d_LEDGER'45'pov_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1724 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Ledger.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__1824 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_LEDGER'45'pov_2176 = erased
-- Ledger.Ledger.Properties.FreshTxs
d_FreshTxs_2186 a0 a1 a2 a3 a4 = ()
data T_FreshTxs_2186
  = C_'91''93''45'Fresh_2188 |
    C_'8759''45'Fresh_2190 MAlonzo.Code.Ledger.Ledger.T_LState_1744
                           MAlonzo.Code.Ledger.Ledger.T__'8866'_'8640''10631'_'44'LEDGER'10632'__1824
                           T_FreshTxs_2186
-- Ledger.Ledger.Properties.LEDGERS-pov
d_LEDGERS'45'pov_2192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1724 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2378] ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  T_FreshTxs_2186 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_LEDGERS'45'pov_2192 = erased
