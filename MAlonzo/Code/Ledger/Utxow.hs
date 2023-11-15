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
import qualified MAlonzo.Code.Data.Sum
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.Decidable.Instance
import qualified MAlonzo.Code.Interface.Functor
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.ScriptValidation
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- _.Credential
d_Credential_70 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_70 = erased
-- _.Hashable-Script
d_Hashable'45'Script_224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_224 v0
  = coe
      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_384
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552 (coe v0))
-- _.THash
d_THash_236 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_THash_236 = erased
-- _.ScriptHash
d_ScriptHash_332 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_332 = erased
-- _.Tx
d_Tx_370 a0 = ()
-- _.TxBody
d_TxBody_372 a0 = ()
-- _.UTxO
d_UTxO_382 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_UTxO_382 = erased
-- _.isSigned
d_isSigned_494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_494 = erased
-- _.validP1Script
d_validP1Script_592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_592 = erased
-- _.TxWitnesses.scriptsP1
d_scriptsP1_1370 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2416 -> [AgdaAny]
d_scriptsP1_1370 ~v0 = du_scriptsP1_1370
du_scriptsP1_1370 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2416 -> [AgdaAny]
du_scriptsP1_1370
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2434
-- Ledger.Utxow._._⊢_⇀⦇_,UTXO⦈_
d__'8866'_'8640''10631'_'44'UTXO'10632'__1426 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Utxow._.UTxOEnv
d_UTxOEnv_1456 a0 a1 = ()
-- Ledger.Utxow._.UTxOState
d_UTxOState_1458 a0 a1 = ()
-- Ledger.Utxow._.ScriptPurpose
d_ScriptPurpose_1584 a0 a1 = ()
-- Ledger.Utxow.getVKeys
d_getVKeys_1654 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
d_getVKeys_1654 ~v0 ~v1 = du_getVKeys_1654
du_getVKeys_1654 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
du_getVKeys_1654
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8321'_24)
-- Ledger.Utxow.getScripts
d_getScripts_1656 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
d_getScripts_1656 ~v0 ~v1 = du_getScripts_1656
du_getScripts_1656 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] -> [AgdaAny]
du_getScripts_1656
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30)
-- Ledger.Utxow.credsNeeded
d_credsNeeded_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_credsNeeded_1658 v0 ~v1 v2 v3 v4
  = du_credsNeeded_1658 v0 v2 v3 v4
du_credsNeeded_1658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_credsNeeded_1658 v0 v1 v2 v3
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
                 MAlonzo.Code.Ledger.ScriptValidation.C_Spend_1446
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
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1002 (coe v0))
                     (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1000 (coe v0))))
               (coe v2)
               (coe MAlonzo.Code.Ledger.Transaction.d_txins_2380 (coe v3)))))
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
                 (coe MAlonzo.Code.Ledger.ScriptValidation.C_Rwrd_1442 (coe v4))
                 (coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v4)))
            (coe
               MAlonzo.Code.Interface.IsSet.du_dom_478
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
               (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2392 (coe v3)))))
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
                    (coe MAlonzo.Code.Ledger.ScriptValidation.C_Cert_1440 (coe v4))
                    (coe MAlonzo.Code.Ledger.Deleg.d_cwitness_856 (coe v4)))
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_410
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1414
                     (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                  (coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2390 (coe v3))))
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
                       (coe MAlonzo.Code.Ledger.ScriptValidation.C_Mint_1444 (coe v4))
                       (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v4)))
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214
                     (MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1848 (coe v0))
                     (MAlonzo.Code.Ledger.Transaction.d_mint_2386 (coe v3))))
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
                          (coe MAlonzo.Code.Ledger.ScriptValidation.C_Vote_1448 (coe v4))
                          (coe
                             MAlonzo.Code.Ledger.GovernanceActions.d_credential_692 (coe v4)))
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_410
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1414
                           (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                        (coe MAlonzo.Code.Ledger.Transaction.d_txvote_2394 (coe v3))))
                  (case coe v1 of
                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v4
                       -> coe
                            MAlonzo.Code.Axiom.Set.du_map_380
                            (MAlonzo.Code.Axiom.Set.d_th_1414
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                            (\ v5 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Ledger.ScriptValidation.C_Propose_1450 (coe v5))
                                 (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v4)))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_410
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Ledger.Transaction.d_txprop_2396 (coe v3)))
                     MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                       -> coe
                            MAlonzo.Code.Axiom.Set.du_'8709'_424
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1414
                               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                     _ -> MAlonzo.RTE.mazUnreachableError)))))
-- Ledger.Utxow.witsVKeyNeeded
d_witsVKeyNeeded_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> [AgdaAny]
d_witsVKeyNeeded_1728 v0 ~v1 v2 = du_witsVKeyNeeded_1728 v0 v2
du_witsVKeyNeeded_1728 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> [AgdaAny]
du_witsVKeyNeeded_1728 v0 v1
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v2 v3 -> coe du_getVKeys_1654))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_380
                 (MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
         (coe du_credsNeeded_1658 (coe v0) (coe v1)))
-- Ledger.Utxow.scriptsNeeded
d_scriptsNeeded_1732 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> [AgdaAny]
d_scriptsNeeded_1732 v0 ~v1 v2 = du_scriptsNeeded_1732 v0 v2
du_scriptsNeeded_1732 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342 -> [AgdaAny]
du_scriptsNeeded_1732 v0 v1
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe (\ v2 v3 -> coe du_getScripts_1656))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Axiom.Set.du_map_380
                 (MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
         (coe du_credsNeeded_1658 (coe v0) (coe v1)))
-- Ledger.Utxow._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1736 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'UTXOW'10632'__1736
  = C_UTXOW'45'inductive_1832 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Utxow._.txAD
d_txAD_1748 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_10509 -> Maybe AgdaAny
d_txAD_1748 ~v0 ~v1 v2 = du_txAD_1748 v2
du_txAD_1748 :: T_GeneralizeTel_10509 -> Maybe AgdaAny
du_txAD_1748 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txAD_2448
      (coe d_'46'generalizedField'45'tx_10501 v0)
-- Ledger.Utxow._.body
d_body_1750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_10509 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342
d_body_1750 ~v0 ~v1 v2 = du_body_1750 v2
du_body_1750 ::
  T_GeneralizeTel_10509 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2342
du_body_1750 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_body_2444
      (coe d_'46'generalizedField'45'tx_10501 v0)
-- Ledger.Utxow._.wits
d_wits_1752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_10509 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2416
d_wits_1752 ~v0 ~v1 v2 = du_wits_1752 v2
du_wits_1752 ::
  T_GeneralizeTel_10509 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2416
du_wits_1752 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_wits_2446
      (coe d_'46'generalizedField'45'tx_10501 v0)
-- Ledger.Utxow._.txADhash
d_txADhash_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_10509 -> Maybe AgdaAny
d_txADhash_1766 ~v0 ~v1 v2 = du_txADhash_1766 v2
du_txADhash_1766 :: T_GeneralizeTel_10509 -> Maybe AgdaAny
du_txADhash_1766 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txADhash_2402
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_10501 v0))
-- Ledger.Utxow._.txid
d_txid_1774 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_10509 -> AgdaAny
d_txid_1774 ~v0 ~v1 v2 = du_txid_1774 v2
du_txid_1774 :: T_GeneralizeTel_10509 -> AgdaAny
du_txid_1774 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2408
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_10501 v0))
-- Ledger.Utxow._.txvldt
d_txvldt_1786 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_10509 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1786 ~v0 ~v1 v2 = du_txvldt_1786 v2
du_txvldt_1786 ::
  T_GeneralizeTel_10509 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txvldt_1786 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvldt_2388
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2444
         (coe d_'46'generalizedField'45'tx_10501 v0))
-- Ledger.Utxow._.scripts
d_scripts_1794 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_10509 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_1794 ~v0 ~v1 v2 = du_scripts_1794 v2
du_scripts_1794 ::
  T_GeneralizeTel_10509 -> [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_scripts_1794 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scripts_2428
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2446
         (coe d_'46'generalizedField'45'tx_10501 v0))
-- Ledger.Utxow._.scriptsP1
d_scriptsP1_1796 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_10509 -> [AgdaAny]
d_scriptsP1_1796 ~v0 ~v1 v2 = du_scriptsP1_1796 v2
du_scriptsP1_1796 :: T_GeneralizeTel_10509 -> [AgdaAny]
du_scriptsP1_1796 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2434
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2446
         (coe d_'46'generalizedField'45'tx_10501 v0))
-- Ledger.Utxow._.vkSigs
d_vkSigs_1802 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_10509 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_1802 ~v0 ~v1 v2 = du_vkSigs_1802 v2
du_vkSigs_1802 ::
  T_GeneralizeTel_10509 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_vkSigs_1802 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_vkSigs_2426
      (coe
         MAlonzo.Code.Ledger.Transaction.d_wits_2446
         (coe d_'46'generalizedField'45'tx_10501 v0))
-- Ledger.Utxow._.utxo
d_utxo_1812 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_10509 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1812 ~v0 ~v1 v2 = du_utxo_1812 v2
du_utxo_1812 ::
  T_GeneralizeTel_10509 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_1812 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1778
      (coe d_'46'generalizedField'45's_10503 v0)
-- Ledger.Utxow._.ppolicy
d_ppolicy_1818 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  T_GeneralizeTel_10509 -> Maybe AgdaAny
d_ppolicy_1818 ~v0 ~v1 v2 = du_ppolicy_1818 v2
du_ppolicy_1818 :: T_GeneralizeTel_10509 -> Maybe AgdaAny
du_ppolicy_1818 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_ppolicy_1764
      (coe d_'46'generalizedField'45'Γ_10505 v0)
-- Ledger.Utxow.UTXOW-inductive-premises
d_UTXOW'45'inductive'45'premises_1848 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1434 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1768 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTXOW'45'inductive'45'premises_1848 v0 ~v1 v2 v3 v4
  = du_UTXOW'45'inductive'45'premises_1848 v0 v2 v3 v4
du_UTXOW'45'inductive'45'premises_1848 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2436 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1768 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1754 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_UTXOW'45'inductive'45'premises_1848 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
         (coe
            MAlonzo.Code.Axiom.Set.d_all'63'_1550
            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
            (coe
               MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_khs_216
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0))))
               (coe
                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_136
                  (coe
                     MAlonzo.Code.Ledger.Crypto.d_pkk_186
                     (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0)))))
            erased
            (\ v4 ->
               coe
                 MAlonzo.Code.Ledger.Crypto.d_isSigned'63'_122
                 (MAlonzo.Code.Ledger.Crypto.d_pkk_186
                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                 (coe
                    MAlonzo.Code.Ledger.Transaction.d_txidBytes_1962 v0
                    (MAlonzo.Code.Ledger.Transaction.d_txid_2408
                       (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v1))))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_462
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_vkSigs_2426
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2446 (coe v1)))))
         (coe
            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
            (coe
               MAlonzo.Code.Axiom.Set.d_all'63'_1550
               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
               (MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_292
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552 (coe v0))))
               erased
               (\ v4 ->
                  coe
                    MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110
                    (MAlonzo.Code.Ledger.Script.d_p1s_292
                       (coe
                          MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552 (coe v0)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_map_380
                       (MAlonzo.Code.Axiom.Set.d_th_1414
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (MAlonzo.Code.Interface.Hashable.d_hash_18
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0)))))
                       (coe
                          MAlonzo.Code.Interface.IsSet.du_dom_478
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1414
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_vkSigs_2426
                             (coe MAlonzo.Code.Ledger.Transaction.d_wits_2446 (coe v1)))))
                    (MAlonzo.Code.Ledger.Transaction.d_txvldt_2388
                       (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v1)))
                    v4)
               (coe
                  MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2434
                  (coe MAlonzo.Code.Ledger.Transaction.d_wits_2446 (coe v1))))
            (coe
               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
               (coe
                  MAlonzo.Code.Axiom.Set.d_all'63'_1550
                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                  (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                     (coe
                        MAlonzo.Code.Ledger.Crypto.d_khs_216
                        (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0))))
                  erased
                  (\ v4 ->
                     coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_khs_216
                             (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0))))
                       v4
                       (coe
                          MAlonzo.Code.Axiom.Set.du_map_380
                          (MAlonzo.Code.Axiom.Set.d_th_1414
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (MAlonzo.Code.Interface.Hashable.d_hash_18
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_216
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0)))))
                          (coe
                             MAlonzo.Code.Interface.IsSet.du_dom_478
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1414
                                (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                             (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_vkSigs_2426
                                (coe MAlonzo.Code.Ledger.Transaction.d_wits_2446 (coe v1))))))
                  (coe
                     du_witsVKeyNeeded_1728 v0
                     (MAlonzo.Code.Ledger.Utxo.d_ppolicy_1764 (coe v3))
                     (MAlonzo.Code.Ledger.Utxo.d_utxo_1778 (coe v2))
                     (MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v1))))
               (coe
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                  (coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                     (coe
                        MAlonzo.Code.Axiom.Set.d_all'63'_1550
                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                        (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0)))
                        erased
                        (\ v4 ->
                           coe
                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                             (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0)))
                             v4
                             (coe
                                MAlonzo.Code.Axiom.Set.du_map_380
                                (MAlonzo.Code.Axiom.Set.d_th_1414
                                   (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                (MAlonzo.Code.Interface.Hashable.d_hash_18
                                   (coe
                                      MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_384
                                      (coe
                                         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                         (coe v0))))
                                (MAlonzo.Code.Ledger.Transaction.d_scripts_2428
                                   (coe MAlonzo.Code.Ledger.Transaction.d_wits_2446 (coe v1)))))
                        (coe
                           du_scriptsNeeded_1732 v0
                           (MAlonzo.Code.Ledger.Utxo.d_ppolicy_1764 (coe v3))
                           (MAlonzo.Code.Ledger.Utxo.d_utxo_1778 (coe v2))
                           (MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v1))))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_all'63'_1550
                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                        (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0)))
                        erased
                        (\ v4 ->
                           coe
                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                             (MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1036 (coe v0)))
                             v4
                             (coe
                                du_scriptsNeeded_1732 v0
                                (MAlonzo.Code.Ledger.Utxo.d_ppolicy_1764 (coe v3))
                                (MAlonzo.Code.Ledger.Utxo.d_utxo_1778 (coe v2))
                                (MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v1))))
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_380
                           (MAlonzo.Code.Axiom.Set.d_th_1414
                              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                           (MAlonzo.Code.Interface.Hashable.d_hash_18
                              (coe
                                 MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_384
                                 (coe
                                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1552
                                    (coe v0))))
                           (MAlonzo.Code.Ledger.Transaction.d_scripts_2428
                              (coe MAlonzo.Code.Ledger.Transaction.d_wits_2446 (coe v1))))))
                  (coe
                     MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_142
                     (coe
                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
                        (coe
                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                           (coe
                              MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1004 (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Transaction.d_txADhash_2402
                        (coe MAlonzo.Code.Ledger.Transaction.d_body_2444 (coe v1)))
                     (coe
                        MAlonzo.Code.Interface.Functor.du_map_30
                        MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162
                        MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                        MAlonzo.Code.Agda.Primitive.d_lzero_20 erased
                        (MAlonzo.Code.Interface.Hashable.d_hash_18
                           (coe
                              MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
                              (coe
                                 MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1004 (coe v0))))
                        (MAlonzo.Code.Ledger.Transaction.d_txAD_2448 (coe v1))))))))
-- Ledger.Utxow..generalizedField-tx
d_'46'generalizedField'45'tx_10501 ::
  T_GeneralizeTel_10509 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2436
d_'46'generalizedField'45'tx_10501
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s
d_'46'generalizedField'45's_10503 ::
  T_GeneralizeTel_10509 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1768
d_'46'generalizedField'45's_10503 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-Γ
d_'46'generalizedField'45'Γ_10505 ::
  T_GeneralizeTel_10509 -> MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1754
d_'46'generalizedField'45'Γ_10505 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow..generalizedField-s'
d_'46'generalizedField'45's''_10507 ::
  T_GeneralizeTel_10509 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1768
d_'46'generalizedField'45's''_10507
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Utxow.GeneralizeTel
d_GeneralizeTel_10509 a0 a1 = ()
data T_GeneralizeTel_10509
  = C_mkGeneralizeTel_10511 MAlonzo.Code.Ledger.Transaction.T_Tx_2436
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1768
                            MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1754
                            MAlonzo.Code.Ledger.Utxo.T_UTxOState_1768
