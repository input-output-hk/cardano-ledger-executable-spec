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
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Unary.All
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo

-- _.Credential
d_Credential_84 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_84 = erased
-- _.THash
d_THash_250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_250 = erased
-- _.ScriptHash
d_ScriptHash_346 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_346 = erased
-- _.Tx
d_Tx_384 a0 = ()
-- _.TxBody
d_TxBody_386 a0 = ()
-- _.UTxO
d_UTxO_396 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_396 = erased
-- _.isSigned
d_isSigned_508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_508 = erased
-- _.validP1Script
d_validP1Script_604 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_604 = erased
-- _.TxWitnesses.scriptsP1
d_scriptsP1_1368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2408 -> [AgdaAny]
d_scriptsP1_1368 ~v0 = du_scriptsP1_1368
du_scriptsP1_1368 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2408 -> [AgdaAny]
du_scriptsP1_1368
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2426
-- Ledger.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1424 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxow._.UTxOEnv
d_UTxOEnv_1452 a0 a1 = ()
-- Ledger.Utxow._.UTxOState
d_UTxOState_1454 a0 a1 = ()
-- Ledger.Utxow._.ScriptPurpose
d_ScriptPurpose_1578 a0 a1 = ()
-- Ledger.Utxow.getVKeys
d_getVKeys_1648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
d_getVKeys_1648 ~v0 ~v1 = du_getVKeys_1648
du_getVKeys_1648 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
du_getVKeys_1648
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
-- Ledger.Utxow.getScripts
d_getScripts_1650 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
d_getScripts_1650 ~v0 ~v1 = du_getScripts_1650
du_getScripts_1650 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
du_getScripts_1650
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30)
-- Ledger.Utxow.credsNeeded
d_credsNeeded_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_1652 v0 ~v1 v2 v3 v4
  = du_credsNeeded_1652 v0 v2 v3 v4
du_credsNeeded_1652 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_1652 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380
         (MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Ledger.ScriptValidation.C_Spend_1444
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
              (coe
                 MAlonzo.Code.Ledger.Address.du_payCred_90
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_462
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1088
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (coe
                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994 (coe v0))))
               (coe v2)
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2372 (coe v3)))))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1414
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            MAlonzo.Code.Axiom.Set.du_map_380
            (MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (\ v4 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Ledger.ScriptValidation.C_Rwrd_1440 (coe v4))
                 (coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v4)))
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_478
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2384 (coe v3)))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1414
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               MAlonzo.Code.Axiom.Set.du_map_380
               (MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (\ v4 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Ledger.ScriptValidation.C_Cert_1438 (coe v4))
                    (coe MAlonzo.Code.Ledger.Deleg.d_cwitness_832 (coe v4)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_410
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1414
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2382 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__662
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe
                  MAlonzo.Code.Axiom.Set.du_map_380
                  (MAlonzo.Code.Axiom.Set.d_th_1414
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Ledger.ScriptValidation.C_Mint_1442 (coe v4))
                       (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v4)))
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214
                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_mint_2378 (coe v3))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__662
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1414
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_380
                     (MAlonzo.Code.Axiom.Set.d_th_1414
                        (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe MAlonzo.Code.Ledger.ScriptValidation.C_Vote_1446 (coe v4))
                          (coe
                             MAlonzo.Code.Ledger.GovernanceActions.d_credential_686 (coe v4)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_410
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1414
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe MAlonzo.Code.Ledger.Transaction.d_txvote_2386 (coe v3))))
                  (case coe v1 of
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
                       -> coe
                            MAlonzo.Code.Axiom.Set.du_map_380
                            (MAlonzo.Code.Axiom.Set.d_th_1414
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (\ v5 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Ledger.ScriptValidation.C_Propose_1448 (coe v5))
                                 (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v4)))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_410
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2388 (coe v3)))
                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                       -> coe
                            MAlonzo.Code.Axiom.Set.du_'8709'_424
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1414
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     _ -> MAlonzo.RTE.mazUnreachableError)))))
-- Ledger.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_1722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> [AgdaAny]
d_witsVKeyNeeded_1722 v0 ~v1 v2 = du_witsVKeyNeeded_1722 v0 v2
du_witsVKeyNeeded_1722 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> [AgdaAny]
du_witsVKeyNeeded_1722 v0 v1
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v2 v3 -> coe du_getVKeys_1648))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_380
                 (MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
         (coe du_credsNeeded_1652 (coe v0) (coe v1)))
-- Ledger.Utxow.scriptsNeeded
d_scriptsNeeded_1726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> [AgdaAny]
d_scriptsNeeded_1726 v0 ~v1 v2 = du_scriptsNeeded_1726 v0 v2
du_scriptsNeeded_1726 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> [AgdaAny]
du_scriptsNeeded_1726 v0 v1
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v2 v3 -> coe du_getScripts_1650))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_380
                 (MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
         (coe du_credsNeeded_1652 (coe v0) (coe v1)))
-- Ledger.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1730 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'UTXOW'10632'__1730
  = C_UTXOW'45'inductive_1828 (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                               MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny)
                              (AgdaAny ->
                               MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny)
                              (AgdaAny ->
                               MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                               MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34)
                              MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                              MAlonzo.Code.Ledger.Utxo.T__'8866'_'8640''10631'_'44'UTXO'10632'__1920
-- Ledger.Utxow._.txAD
d_txAD_1742 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_10429 -> Maybe AgdaAny
d_txAD_1742 ~v0 ~v1 v2 = du_txAD_1742 v2
du_txAD_1742 :: T_GeneralizeTel_10429 -> Maybe AgdaAny
du_txAD_1742 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2440
      (coe d_'46'generalizedField'45'tx_10421 v0)
-- Ledger.Utxow._.body
d_body_1744 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_10429 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334
d_body_1744 ~v0 ~v1 v2 = du_body_1744 v2
du_body_1744 ::
  T_GeneralizeTel_10429 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334
du_body_1744 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2436
      (coe d_'46'generalizedField'45'tx_10421 v0)
-- Ledger.Utxow._.wits
d_wits_1746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_10429 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2408
d_wits_1746 ~v0 ~v1 v2 = du_wits_1746 v2
du_wits_1746 ::
  T_GeneralizeTel_10429 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2408
du_wits_1746 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2438
      (coe d_'46'generalizedField'45'tx_10421 v0)
-- Ledger.Utxow._.txADhash
d_txADhash_1760 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_10429 -> Maybe AgdaAny
d_txADhash_1760 ~v0 ~v1 v2 = du_txADhash_1760 v2
du_txADhash_1760 :: T_GeneralizeTel_10429 -> Maybe AgdaAny
du_txADhash_1760 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2394
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2436
         (coe d_'46'generalizedField'45'tx_10421 v0))
-- Ledger.Utxow._.txid
d_txid_1768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_10429 -> AgdaAny
d_txid_1768 ~v0 ~v1 v2 = du_txid_1768 v2
du_txid_1768 :: T_GeneralizeTel_10429 -> AgdaAny
du_txid_1768 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2400
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2436
         (coe d_'46'generalizedField'45'tx_10421 v0))
-- Ledger.Utxow._.txvldt
d_txvldt_1780 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_10429 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1780 ~v0 ~v1 v2 = du_txvldt_1780 v2
du_txvldt_1780 ::
  T_GeneralizeTel_10429 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_1780 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2380
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2436
         (coe d_'46'generalizedField'45'tx_10421 v0))
-- Ledger.Utxow._.scripts
d_scripts_1788 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_10429 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_1788 ~v0 ~v1 v2 = du_scripts_1788 v2
du_scripts_1788 ::
  T_GeneralizeTel_10429 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_1788 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2420
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2438
         (coe d_'46'generalizedField'45'tx_10421 v0))
-- Ledger.Utxow._.scriptsP1
d_scriptsP1_1790 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_10429 -> [AgdaAny]
d_scriptsP1_1790 ~v0 ~v1 v2 = du_scriptsP1_1790 v2
du_scriptsP1_1790 :: T_GeneralizeTel_10429 -> [AgdaAny]
du_scriptsP1_1790 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2426
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2438
         (coe d_'46'generalizedField'45'tx_10421 v0))
-- Ledger.Utxow._.vkSigs
d_vkSigs_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_10429 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_1796 ~v0 ~v1 v2 = du_vkSigs_1796 v2
du_vkSigs_1796 ::
  T_GeneralizeTel_10429 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_1796 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2418
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2438
         (coe d_'46'generalizedField'45'tx_10421 v0))
-- Ledger.Utxow._.utxo
d_utxo_1806 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_10429 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1806 ~v0 ~v1 v2 = du_utxo_1806 v2
du_utxo_1806 ::
  T_GeneralizeTel_10429 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_1806 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1780
      (coe d_'46'generalizedField'45's_10423 v0)
-- Ledger.Utxow._.ppolicy
d_ppolicy_1812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  T_GeneralizeTel_10429 -> Maybe AgdaAny
d_ppolicy_1812 ~v0 ~v1 v2 = du_ppolicy_1812 v2
du_ppolicy_1812 :: T_GeneralizeTel_10429 -> Maybe AgdaAny
du_ppolicy_1812 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_ppolicy_1766
      (coe d_'46'generalizedField'45'Γ_10425 v0)
-- Ledger.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_10421 ::
  T_GeneralizeTel_10429 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2428
d_'46'generalizedField'45'tx_10421
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s
d_'46'generalizedField'45's_10423 ::
  T_GeneralizeTel_10429 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770
d_'46'generalizedField'45's_10423 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_10425 ::
  T_GeneralizeTel_10429 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1756
d_'46'generalizedField'45'Γ_10425 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_10427 ::
  T_GeneralizeTel_10429 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770
d_'46'generalizedField'45's''_10427
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.GeneralizeTel
d_GeneralizeTel_10429 a0 a1 = ()
data T_GeneralizeTel_10429
  = C_mkGeneralizeTel_10431 MAlonzo.Code.Ledger.Transaction.T_Tx_2428
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1756
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770
