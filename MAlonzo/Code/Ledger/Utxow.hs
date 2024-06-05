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

module MAlonzo.Code.Ledger.Utxow where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Prelude

-- _.Credential
d_Credential_66 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_66 = erased
-- _.Hashable-Script
d_Hashable'45'Script_218 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_218 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_470
      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0))
-- _.THash
d_THash_230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_230 = erased
-- _.ScriptHash
d_ScriptHash_330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_330 = erased
-- _.Tx
d_Tx_370 a0 = ()
-- _.TxBody
d_TxBody_372 a0 = ()
-- _.UTxO
d_UTxO_384 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_384 = erased
-- _.isSigned
d_isSigned_502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_502 = erased
-- _.refScripts
d_refScripts_568 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_568 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refScripts_2600 (coe v0)
-- _.txscripts
d_txscripts_602 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_602 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txscripts_2650 (coe v0)
-- _.validP1Script
d_validP1Script_606 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 -> ()
d_validP1Script_606 = erased
-- Ledger.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1478 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxow._.UTxOEnv
d_UTxOEnv_1514 a0 a1 = ()
-- Ledger.Utxow._.UTxOState
d_UTxOState_1516 a0 a1 = ()
-- Ledger.Utxow._.getDataHashes
d_getDataHashes_1538 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_getDataHashes_1538 ~v0 ~v1 = du_getDataHashes_1538
du_getDataHashes_1538 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
du_getDataHashes_1538
  = coe MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1600
-- Ledger.Utxow._.getInputHashes
d_getInputHashes_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
d_getInputHashes_1540 v0 ~v1 = du_getInputHashes_1540 v0
du_getInputHashes_1540 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [AgdaAny]
du_getInputHashes_1540 v0
  = coe MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1604 (coe v0)
-- Ledger.Utxow._.ScriptPurpose
d_ScriptPurpose_1640 a0 a1 = ()
-- Ledger.Utxow.getVKeys
d_getVKeys_1732 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
d_getVKeys_1732 ~v0 ~v1 = du_getVKeys_1732
du_getVKeys_1732 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
du_getVKeys_1732
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
-- Ledger.Utxow.getScripts
d_getScripts_1734 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
d_getScripts_1734 ~v0 ~v1 = du_getScripts_1734
du_getScripts_1734 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
du_getScripts_1734
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30)
-- Ledger.Utxow.credsNeeded
d_credsNeeded_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_1736 v0 ~v1 v2 v3 = du_credsNeeded_1736 v0 v2 v3
du_credsNeeded_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_1736 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Ledger.ScriptValidation.C_Spend_1490
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
              (coe
                 MAlonzo.Code.Ledger.Address.du_payCred_90
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_532
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1246
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1072 (coe v0))))
               (coe v1)
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2484 (coe v2)))))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v3 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Ledger.ScriptValidation.C_Rwrd_1486 (coe v3))
                 (coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v3)))
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_524
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_528)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2498 (coe v2)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_380
               (MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.ScriptValidation.C_Cert_1484 (coe v3))
                    (coe MAlonzo.Code.Ledger.Certs.d_cwitness_734 (coe v3)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_410
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2496 (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__662
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.du_map_380
                  (MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Ledger.ScriptValidation.C_Mint_1488 (coe v3))
                       (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v3)))
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_mint_2492 (coe v2))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__662
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_380
                     (MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe MAlonzo.Code.Ledger.ScriptValidation.C_Vote_1492 (coe v3))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_410
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe
                           MAlonzo.Code.Class.Functor.Core.du_fmap_22
                           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
                           () erased
                           (\ v3 ->
                              MAlonzo.Code.Ledger.GovernanceActions.d_voter_644 (coe v3))
                           (MAlonzo.Code.Ledger.Transaction.d_txvote_2500 (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_mapPartial_558
                     (MAlonzo.Code.Axiom.Set.d_th_1430
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (\ v3 ->
                        let v4
                              = MAlonzo.Code.Ledger.GovernanceActions.d_policy_668 (coe v3) in
                        coe
                          (case coe v4 of
                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.ScriptValidation.C_Propose_1494
                                          (coe v3))
                                       (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v5)))
                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
                             _ -> MAlonzo.RTE.mazUnreachableError))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_410
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1430
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2502 (coe v2))))))))
-- Ledger.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_1806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 -> [AgdaAny]
d_witsVKeyNeeded_1806 v0 ~v1 = du_witsVKeyNeeded_1806 v0
du_witsVKeyNeeded_1806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 -> [AgdaAny]
du_witsVKeyNeeded_1806 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getVKeys_1732))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_380
                 (MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_1736 (coe v0)))
-- Ledger.Utxow.scriptsNeeded
d_scriptsNeeded_1808 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 -> [AgdaAny]
d_scriptsNeeded_1808 v0 ~v1 = du_scriptsNeeded_1808 v0
du_scriptsNeeded_1808 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 -> [AgdaAny]
du_scriptsNeeded_1808 v0
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v1 v2 -> coe du_getScripts_1734))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_380
                 (MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
         (coe du_credsNeeded_1736 (coe v0)))
-- Ledger.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1810 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__1810
  = C_UTXOW'45'inductive_1914 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxow._.txAD
d_txAD_1824 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_10873 -> Maybe AgdaAny
d_txAD_1824 ~v0 ~v1 v2 = du_txAD_1824 v2
du_txAD_1824 :: T_GeneralizeTel_10873 -> Maybe AgdaAny
du_txAD_1824 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2558
      (coe d_'46'generalizedField'45'tx_10865 v0)
-- Ledger.Utxow._.body
d_body_1826 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_10873 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444
d_body_1826 ~v0 ~v1 v2 = du_body_1826 v2
du_body_1826 ::
  T_GeneralizeTel_10873 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444
du_body_1826 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2552
      (coe d_'46'generalizedField'45'tx_10865 v0)
-- Ledger.Utxow._.wits
d_wits_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_10873 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2522
d_wits_1828 ~v0 ~v1 v2 = du_wits_1828 v2
du_wits_1828 ::
  T_GeneralizeTel_10873 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2522
du_wits_1828 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2554
      (coe d_'46'generalizedField'45'tx_10865 v0)
-- Ledger.Utxow._.refInputs
d_refInputs_1838 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_10873 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1838 ~v0 ~v1 v2 = du_refInputs_1838 v2
du_refInputs_1838 ::
  T_GeneralizeTel_10873 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_refInputs_1838 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refInputs_2486
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2552
         (coe d_'46'generalizedField'45'tx_10865 v0))
-- Ledger.Utxow._.txADhash
d_txADhash_1844 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_10873 -> Maybe AgdaAny
d_txADhash_1844 ~v0 ~v1 v2 = du_txADhash_1844 v2
du_txADhash_1844 :: T_GeneralizeTel_10873 -> Maybe AgdaAny
du_txADhash_1844 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2508
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2552
         (coe d_'46'generalizedField'45'tx_10865 v0))
-- Ledger.Utxow._.txid
d_txid_1852 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_10873 -> AgdaAny
d_txid_1852 ~v0 ~v1 v2 = du_txid_1852 v2
du_txid_1852 :: T_GeneralizeTel_10873 -> AgdaAny
du_txid_1852 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2514
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2552
         (coe d_'46'generalizedField'45'tx_10865 v0))
-- Ledger.Utxow._.txouts
d_txouts_1856 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_10873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1856 ~v0 ~v1 v2 = du_txouts_1856 v2
du_txouts_1856 ::
  T_GeneralizeTel_10873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txouts_1856 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txouts_2488
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2552
         (coe d_'46'generalizedField'45'tx_10865 v0))
-- Ledger.Utxow._.txvldt
d_txvldt_1864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_10873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1864 ~v0 ~v1 v2 = du_txvldt_1864 v2
du_txvldt_1864 ::
  T_GeneralizeTel_10873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_1864 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2494
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2552
         (coe d_'46'generalizedField'45'tx_10865 v0))
-- Ledger.Utxow._.scripts
d_scripts_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_10873 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_1872 ~v0 ~v1 v2 = du_scripts_1872 v2
du_scripts_1872 ::
  T_GeneralizeTel_10873 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_1872 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2534
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2554
         (coe d_'46'generalizedField'45'tx_10865 v0))
-- Ledger.Utxow._.txdats
d_txdats_1876 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_10873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_1876 ~v0 ~v1 v2 = du_txdats_1876 v2
du_txdats_1876 ::
  T_GeneralizeTel_10873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txdats_1876 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txdats_2536
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2554
         (coe d_'46'generalizedField'45'tx_10865 v0))
-- Ledger.Utxow._.vkSigs
d_vkSigs_1880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_10873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_1880 ~v0 ~v1 v2 = du_vkSigs_1880 v2
du_vkSigs_1880 ::
  T_GeneralizeTel_10873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_1880 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2532
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2554
         (coe d_'46'generalizedField'45'tx_10865 v0))
-- Ledger.Utxow._.utxo
d_utxo_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_10873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1890 ~v0 ~v1 v2 = du_utxo_1890 v2
du_utxo_1890 ::
  T_GeneralizeTel_10873 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_1890 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1708
      (coe d_'46'generalizedField'45's_10867 v0)
-- Ledger.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_1934 v0 ~v1 v2 v3
  = du_UTXOW'45'inductive'45'premises_1934 v0 v2 v3
du_UTXOW'45'inductive'45'premises_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_1934 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
         (coe
            MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Axiom.Set.d_all'63'_1568
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_khs_192
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                       (coe
                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_pkk_164
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0)))))
                    erased
                    (coe
                       MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                       (coe
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
                               (MAlonzo.Code.Ledger.Crypto.d_pkk_164
                                  (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                               (coe
                                  MAlonzo.Code.Ledger.Transaction.d_txidBytes_2106 v0
                                  (MAlonzo.Code.Ledger.Transaction.d_txid_2514
                                     (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v1))))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
                    v3))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_532
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2532
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2554 (coe v1)))))
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Axiom.Set.d_all'63'_1568
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_236
                          (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
                       erased
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                          (coe
                             MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_280
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
                             (coe
                                MAlonzo.Code.Axiom.Set.du_map_380
                                (MAlonzo.Code.Axiom.Set.d_th_1430
                                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                (MAlonzo.Code.Interface.Hashable.d_hash_16
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                         (coe
                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                            (coe v0)))))
                                (coe
                                   MAlonzo.Code.Interface.IsSet.du_dom_524
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
                                   (coe
                                      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2532
                                      (coe MAlonzo.Code.Ledger.Transaction.d_wits_2554 (coe v1)))))
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_txvldt_2494
                                (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v1)))))
                       v3))
               (coe
                  MAlonzo.Code.Axiom.Set.du_mapPartial_558
                  (MAlonzo.Code.Axiom.Set.d_th_1430
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
                  (MAlonzo.Code.Ledger.Transaction.d_txscripts_2650
                     (coe v0) (coe v1)
                     (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1708 (coe v2)))))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                  (coe
                     (\ v3 ->
                        coe
                          MAlonzo.Code.Axiom.Set.d_all'63'_1568
                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                          (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                          erased
                          (coe
                             MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                        erased
                                        (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_khs_192
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                 (coe v0)))))
                                     (coe v4)
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_map_380
                                        (MAlonzo.Code.Axiom.Set.d_th_1430
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (MAlonzo.Code.Interface.Hashable.d_hash_16
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                                              (coe
                                                 MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                    (coe v0)))))
                                        (coe
                                           MAlonzo.Code.Interface.IsSet.du_dom_524
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_vkSigs_2532
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_wits_2554
                                                 (coe v1))))))))
                          v3))
                  (coe
                     du_witsVKeyNeeded_1806 v0
                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1708 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v1))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0)))
                                erased
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                              erased
                                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                    (coe v0))))
                                           (coe v4)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_map_380
                                              (MAlonzo.Code.Axiom.Set.d_th_1430
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                 (coe
                                                    MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_470
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352
                                                       (coe v0))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                                                       (coe v0))))
                                              (MAlonzo.Code.Ledger.Transaction.d_scripts_2534
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_wits_2554
                                                    (coe v1)))))))
                                v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.du__'65340'__712
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                           (coe
                              du_scriptsNeeded_1808 v0
                              (MAlonzo.Code.Ledger.Utxo.d_utxo_1708 (coe v2))
                              (MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v1)))
                           (coe
                              MAlonzo.Code.Axiom.Set.du_map_380
                              (MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_470
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Transaction.d_refScripts_2600
                                 (coe v0) (coe v1)
                                 (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1708 (coe v2))))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0)))
                                erased
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                              erased
                                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                    (coe v0))))
                                           (coe v4)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du__'65340'__712
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                 erased
                                                 (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                    (coe
                                                       MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                       (coe v0))))
                                              (coe
                                                 du_scriptsNeeded_1808 v0
                                                 (MAlonzo.Code.Ledger.Utxo.d_utxo_1708 (coe v2))
                                                 (MAlonzo.Code.Ledger.Transaction.d_body_2552
                                                    (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_map_380
                                                 (MAlonzo.Code.Axiom.Set.d_th_1430
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (MAlonzo.Code.Interface.Hashable.d_hash_16
                                                    (coe
                                                       MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_470
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1108
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352
                                                          (coe v0))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                                                          (coe v0))))
                                                 (MAlonzo.Code.Ledger.Transaction.d_refScripts_2600
                                                    (coe v0) (coe v1)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1708
                                                       (coe v2))))))))
                                v3))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_380
                           (MAlonzo.Code.Axiom.Set.d_th_1430
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (MAlonzo.Code.Interface.Hashable.d_hash_16
                              (coe
                                 MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_470
                                 (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_2534
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_2554 (coe v1))))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                        (coe
                           (\ v3 ->
                              coe
                                MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                   (coe
                                      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                      (coe
                                         MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_ps_412
                                            (coe
                                               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                                               (coe v0))))))
                                erased
                                (coe
                                   MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                   (coe
                                      (\ v4 ->
                                         coe
                                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                              erased
                                              (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                 (coe
                                                    MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                    (coe
                                                       MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                       (coe
                                                          MAlonzo.Code.Ledger.Script.d_ps_412
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                                                             (coe v0)))))))
                                           (coe v4)
                                           (coe
                                              MAlonzo.Code.Interface.IsSet.du_dom_524
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
                                              (coe
                                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2536
                                                 (coe
                                                    MAlonzo.Code.Ledger.Transaction.d_wits_2554
                                                    (coe v1)))))))
                                v3))
                        (coe
                           MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1604 (coe v0) (coe v1)
                           (coe MAlonzo.Code.Ledger.Utxo.d_utxo_1708 (coe v2))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                           (coe
                              (\ v3 ->
                                 coe
                                   MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                   (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                      (coe
                                         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                         (coe
                                            MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                            (coe
                                               MAlonzo.Code.Ledger.Script.d_ps_412
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                                                  (coe v0))))))
                                   erased
                                   (coe
                                      MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                      (coe
                                         (\ v4 ->
                                            coe
                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                 erased
                                                 (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                    (coe
                                                       MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
                                                       (coe
                                                          MAlonzo.Code.Ledger.Script.d_Data'688'_164
                                                          (coe
                                                             MAlonzo.Code.Ledger.Script.d_ps_412
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                                                                (coe v0)))))))
                                              (coe v4)
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du__'8746'__662
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Utxo.du_getInputHashes_1604
                                                    (coe v0) (coe v1)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.d_utxo_1708
                                                       (coe v2)))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du__'8746'__662
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                       (coe
                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1600
                                                       (coe
                                                          MAlonzo.Code.Interface.IsSet.du_range_526
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                          (coe
                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Transaction.d_txouts_2488
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_body_2552
                                                                (coe v1)))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Utxo.du_getDataHashes_1600
                                                       (coe
                                                          MAlonzo.Code.Interface.IsSet.du_range_526
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                             (coe
                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                          (coe
                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
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
                                                                (coe
                                                                   MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4
                                                                   MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                   erased
                                                                   MAlonzo.Code.Agda.Primitive.d_lzero_20
                                                                   erased
                                                                   (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074
                                                                      (coe v0))
                                                                   (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1072
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Utxo.d_utxo_1708
                                                                (coe v2))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Transaction.d_refInputs_2486
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Transaction.d_body_2552
                                                                   (coe v1)))))))))))
                                   v3))
                           (coe
                              MAlonzo.Code.Interface.IsSet.du_dom_524
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                              (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_txdats_2536
                                 (coe MAlonzo.Code.Ledger.Transaction.d_wits_2554 (coe v1)))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1076
                                       (coe v0)))))
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_txADhash_2508
                              (coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v1)))
                           (coe
                              MAlonzo.Code.Class.Functor.Core.du_fmap_22
                              MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6
                              MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                              MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                              (MAlonzo.Code.Interface.Hashable.d_hash_16
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                                    (coe
                                       MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1076
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Transaction.d_txAD_2558 (coe v1))))))))))
-- Ledger.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_10865 ::
  T_GeneralizeTel_10873 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2542
d_'46'generalizedField'45'tx_10865
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s
d_'46'generalizedField'45's_10867 ::
  T_GeneralizeTel_10873 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
d_'46'generalizedField'45's_10867 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_10869 ::
  T_GeneralizeTel_10873 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1688
d_'46'generalizedField'45'Γ_10869 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_10871 ::
  T_GeneralizeTel_10873 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
d_'46'generalizedField'45's''_10871
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.GeneralizeTel
d_GeneralizeTel_10873 a0 a1 = ()
data T_GeneralizeTel_10873
  = C_mkGeneralizeTel_10875 MAlonzo.Code.Ledger.Transaction.T_Tx_2542
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1688
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
