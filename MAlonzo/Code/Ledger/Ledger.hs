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

module MAlonzo.Code.Ledger.Ledger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxow

-- _._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_750 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_810 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_718] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_810 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 = erased
-- _.CertEnv
d_CertEnv_58 a0 = ()
-- _.CertState
d_CertState_60 a0 = ()
-- _.GovProposal
d_GovProposal_200 a0 = ()
-- _.GovVote
d_GovVote_204 a0 = ()
-- _.PParams
d_PParams_274 a0 = ()
-- _.ScriptHash
d_ScriptHash_330 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_330 = erased
-- _.Slot
d_Slot_340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_340 = erased
-- _.Tx
d_Tx_370 a0 = ()
-- _.TxBody
d_TxBody_372 a0 = ()
-- _.epoch
d_epoch_454 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_454 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
-- Ledger.Ledger._.EnactState
d_EnactState_1486 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1538 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1538 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1548 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1550 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 -> ()
d_GovState_1550 = erased
-- Ledger.Ledger._.UTxOState
d_UTxOState_1680 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1792 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_1812 a0 a1 = ()
data T_LEnv_1812
  = C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1830 AgdaAny
                                                     (Maybe AgdaAny)
                                                     MAlonzo.Code.Ledger.PParams.T_PParams_220
                                                     MAlonzo.Code.Ledger.Enact.T_EnactState_728
-- Ledger.Ledger.LEnv.slot
d_slot_1822 :: T_LEnv_1812 -> AgdaAny
d_slot_1822 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1830 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_1824 :: T_LEnv_1812 -> Maybe AgdaAny
d_ppolicy_1824 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1830 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_1826 ::
  T_LEnv_1812 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_1826 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1830 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_1828 ::
  T_LEnv_1812 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_enactState_1828 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1830 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_1832 a0 a1 = ()
data T_LState_1832
  = C_'10214'_'44'_'44'_'10215''737'_1846 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_810
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_1840 ::
  T_LState_1832 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
d_utxoSt_1840 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1846 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_1842 ::
  T_LState_1832 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1842 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1846 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_1844 ::
  T_LState_1832 -> MAlonzo.Code.Ledger.Certs.T_CertState_810
d_certState_1844 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1846 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_1848 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1848 ~v0 ~v1 v2 = du_txgov_1848 v2
du_txgov_1848 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1848 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__62
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2502 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2500 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__1912 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__1912
  = C_LEDGER'45'V_1986 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2060 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.Certs.T_CertState_810
d_certState_1916 ~v0 ~v1 v2 = du_certState_1916 v2
du_certState_1916 ::
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.Certs.T_CertState_810
du_certState_1916 v0
  = coe d_certState_1844 (coe d_'46'generalizedField'45's_5503 v0)
-- Ledger.Ledger._.govSt
d_govSt_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1918 ~v0 ~v1 v2 = du_govSt_1918 v2
du_govSt_1918 ::
  T_GeneralizeTel_5515 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1918 v0
  = coe d_govSt_1842 (coe d_'46'generalizedField'45's_5503 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
d_utxoSt_1920 ~v0 ~v1 v2 = du_utxoSt_1920 v2
du_utxoSt_1920 ::
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
du_utxoSt_1920 v0
  = coe d_utxoSt_1840 (coe d_'46'generalizedField'45's_5503 v0)
-- Ledger.Ledger._.txcerts
d_txcerts_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> [MAlonzo.Code.Ledger.Certs.T_DCert_718]
d_txcerts_1940 ~v0 ~v1 v2 = du_txcerts_1940 v2
du_txcerts_1940 ::
  T_GeneralizeTel_5515 -> [MAlonzo.Code.Ledger.Certs.T_DCert_718]
du_txcerts_1940 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2496
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2552
         (coe d_'46'generalizedField'45'tx_5505 v0))
-- Ledger.Ledger._.txid
d_txid_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> AgdaAny
d_txid_1946 ~v0 ~v1 v2 = du_txid_1946 v2
du_txid_1946 :: T_GeneralizeTel_5515 -> AgdaAny
du_txid_1946 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2514
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2552
         (coe d_'46'generalizedField'45'tx_5505 v0))
-- Ledger.Ledger._.txvote
d_txvote_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632]
d_txvote_1960 ~v0 ~v1 v2 = du_txvote_1960 v2
du_txvote_1960 ::
  T_GeneralizeTel_5515 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632]
du_txvote_1960 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2500
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2552
         (coe d_'46'generalizedField'45'tx_5505 v0))
-- Ledger.Ledger._.txwdrls
d_txwdrls_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1962 ~v0 ~v1 v2 = du_txwdrls_1962 v2
du_txwdrls_1962 ::
  T_GeneralizeTel_5515 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_1962 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2498
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2552
         (coe d_'46'generalizedField'45'tx_5505 v0))
-- Ledger.Ledger._.enactState
d_enactState_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_enactState_1966 ~v0 ~v1 v2 = du_enactState_1966 v2
du_enactState_1966 ::
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
du_enactState_1966 v0
  = coe d_enactState_1828 (coe d_'46'generalizedField'45'Γ_5507 v0)
-- Ledger.Ledger._.pparams
d_pparams_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_1968 ~v0 ~v1 v2 = du_pparams_1968 v2
du_pparams_1968 ::
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
du_pparams_1968 v0
  = coe d_pparams_1826 (coe d_'46'generalizedField'45'Γ_5507 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> Maybe AgdaAny
d_ppolicy_1970 ~v0 ~v1 v2 = du_ppolicy_1970 v2
du_ppolicy_1970 :: T_GeneralizeTel_5515 -> Maybe AgdaAny
du_ppolicy_1970 v0
  = coe d_ppolicy_1824 (coe d_'46'generalizedField'45'Γ_5507 v0)
-- Ledger.Ledger._.slot
d_slot_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> AgdaAny
d_slot_1972 ~v0 ~v1 v2 = du_slot_1972 v2
du_slot_1972 :: T_GeneralizeTel_5515 -> AgdaAny
du_slot_1972 v0
  = coe d_slot_1822 (coe d_'46'generalizedField'45'Γ_5507 v0)
-- Ledger.Ledger._.enactState
d_enactState_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_enactState_1978 ~v0 ~v1 v2 = du_enactState_1978 v2
du_enactState_1978 ::
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
du_enactState_1978 v0
  = coe d_enactState_1828 (coe d_'46'generalizedField'45'Γ_5507 v0)
-- Ledger.Ledger._.pparams
d_pparams_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_1980 ~v0 ~v1 v2 = du_pparams_1980 v2
du_pparams_1980 ::
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
du_pparams_1980 v0
  = coe d_pparams_1826 (coe d_'46'generalizedField'45'Γ_5507 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> Maybe AgdaAny
d_ppolicy_1982 ~v0 ~v1 v2 = du_ppolicy_1982 v2
du_ppolicy_1982 :: T_GeneralizeTel_5515 -> Maybe AgdaAny
du_ppolicy_1982 v0
  = coe d_ppolicy_1824 (coe d_'46'generalizedField'45'Γ_5507 v0)
-- Ledger.Ledger._.slot
d_slot_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5515 -> AgdaAny
d_slot_1984 ~v0 ~v1 v2 = du_slot_1984 v2
du_slot_1984 :: T_GeneralizeTel_5515 -> AgdaAny
du_slot_1984 v0
  = coe d_slot_1822 (coe d_'46'generalizedField'45'Γ_5507 v0)
-- Ledger.Ledger._.certState
d_certState_1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.Certs.T_CertState_810
d_certState_1990 ~v0 ~v1 v2 = du_certState_1990 v2
du_certState_1990 ::
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.Certs.T_CertState_810
du_certState_1990 v0
  = coe d_certState_1844 (coe d_'46'generalizedField'45's_5909 v0)
-- Ledger.Ledger._.govSt
d_govSt_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5917 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1992 ~v0 ~v1 v2 = du_govSt_1992 v2
du_govSt_1992 ::
  T_GeneralizeTel_5917 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1992 v0
  = coe d_govSt_1842 (coe d_'46'generalizedField'45's_5909 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
d_utxoSt_1994 ~v0 ~v1 v2 = du_utxoSt_1994 v2
du_utxoSt_1994 ::
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
du_utxoSt_1994 v0
  = coe d_utxoSt_1840 (coe d_'46'generalizedField'45's_5909 v0)
-- Ledger.Ledger._.enactState
d_enactState_2040 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_enactState_2040 ~v0 ~v1 v2 = du_enactState_2040 v2
du_enactState_2040 ::
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
du_enactState_2040 v0
  = coe d_enactState_1828 (coe d_'46'generalizedField'45'Γ_5913 v0)
-- Ledger.Ledger._.pparams
d_pparams_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_2042 ~v0 ~v1 v2 = du_pparams_2042 v2
du_pparams_2042 ::
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
du_pparams_2042 v0
  = coe d_pparams_1826 (coe d_'46'generalizedField'45'Γ_5913 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5917 -> Maybe AgdaAny
d_ppolicy_2044 ~v0 ~v1 v2 = du_ppolicy_2044 v2
du_ppolicy_2044 :: T_GeneralizeTel_5917 -> Maybe AgdaAny
du_ppolicy_2044 v0
  = coe d_ppolicy_1824 (coe d_'46'generalizedField'45'Γ_5913 v0)
-- Ledger.Ledger._.slot
d_slot_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5917 -> AgdaAny
d_slot_2046 ~v0 ~v1 v2 = du_slot_2046 v2
du_slot_2046 :: T_GeneralizeTel_5917 -> AgdaAny
du_slot_2046 v0
  = coe d_slot_1822 (coe d_'46'generalizedField'45'Γ_5913 v0)
-- Ledger.Ledger._.enactState
d_enactState_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_enactState_2052 ~v0 ~v1 v2 = du_enactState_2052 v2
du_enactState_2052 ::
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
du_enactState_2052 v0
  = coe d_enactState_1828 (coe d_'46'generalizedField'45'Γ_5913 v0)
-- Ledger.Ledger._.pparams
d_pparams_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_2054 ~v0 ~v1 v2 = du_pparams_2054 v2
du_pparams_2054 ::
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
du_pparams_2054 v0
  = coe d_pparams_1826 (coe d_'46'generalizedField'45'Γ_5913 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5917 -> Maybe AgdaAny
d_ppolicy_2056 ~v0 ~v1 v2 = du_ppolicy_2056 v2
du_ppolicy_2056 :: T_GeneralizeTel_5917 -> Maybe AgdaAny
du_ppolicy_2056 v0
  = coe d_ppolicy_1824 (coe d_'46'generalizedField'45'Γ_5913 v0)
-- Ledger.Ledger._.slot
d_slot_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_5917 -> AgdaAny
d_slot_2058 ~v0 ~v1 v2 = du_slot_2058 v2
du_slot_2058 :: T_GeneralizeTel_5917 -> AgdaAny
du_slot_2058 v0
  = coe d_slot_1822 (coe d_'46'generalizedField'45'Γ_5913 v0)
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_LEnv_1812 ->
  T_LState_1832 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2542] -> T_LState_1832 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2078 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5503 ::
  T_GeneralizeTel_5515 -> T_LState_1832
d_'46'generalizedField'45's_5503 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5505 ::
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2542
d_'46'generalizedField'45'tx_5505 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5507 ::
  T_GeneralizeTel_5515 -> T_LEnv_1812
d_'46'generalizedField'45'Γ_5507 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5509 ::
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
d_'46'generalizedField'45'utxoSt''_5509
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_5511 ::
  T_GeneralizeTel_5515 -> MAlonzo.Code.Ledger.Certs.T_CertState_810
d_'46'generalizedField'45'certState''_5511
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_5513 ::
  T_GeneralizeTel_5515 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_5513
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5515 a0 a1 = ()
data T_GeneralizeTel_5515
  = C_mkGeneralizeTel_5517 T_LState_1832
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2542 T_LEnv_1812
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
                           MAlonzo.Code.Ledger.Certs.T_CertState_810
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5909 ::
  T_GeneralizeTel_5917 -> T_LState_1832
d_'46'generalizedField'45's_5909 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5911 ::
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2542
d_'46'generalizedField'45'tx_5911 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5913 ::
  T_GeneralizeTel_5917 -> T_LEnv_1812
d_'46'generalizedField'45'Γ_5913 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5915 ::
  T_GeneralizeTel_5917 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
d_'46'generalizedField'45'utxoSt''_5915
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5917 a0 a1 = ()
data T_GeneralizeTel_5917
  = C_mkGeneralizeTel_5919 T_LState_1832
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2542 T_LEnv_1812
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
