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
  MAlonzo.Code.Ledger.Certs.T_CertEnv_752 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_812 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_720] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_812 -> ()
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
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354 (coe v0))
-- Ledger.Ledger._.EnactState
d_EnactState_1488 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1540 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1540 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1550 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 -> ()
d_GovState_1552 = erased
-- Ledger.Ledger._.UTxOState
d_UTxOState_1682 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1794 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_1814 a0 a1 = ()
data T_LEnv_1814
  = C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1832 AgdaAny
                                                     (Maybe AgdaAny)
                                                     MAlonzo.Code.Ledger.PParams.T_PParams_220
                                                     MAlonzo.Code.Ledger.Enact.T_EnactState_730
-- Ledger.Ledger.LEnv.slot
d_slot_1824 :: T_LEnv_1814 -> AgdaAny
d_slot_1824 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1832 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_1826 :: T_LEnv_1814 -> Maybe AgdaAny
d_ppolicy_1826 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1832 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_1828 ::
  T_LEnv_1814 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_1828 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1832 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_1830 ::
  T_LEnv_1814 -> MAlonzo.Code.Ledger.Enact.T_EnactState_730
d_enactState_1830 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1832 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_1834 a0 a1 = ()
data T_LState_1834
  = C_'10214'_'44'_'44'_'10215''737'_1848 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1700
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_812
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_1842 ::
  T_LState_1834 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1700
d_utxoSt_1842 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1848 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_1844 ::
  T_LState_1834 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1844 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1848 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_1846 ::
  T_LState_1834 -> MAlonzo.Code.Ledger.Certs.T_CertState_812
d_certState_1846 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1848 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_1850 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2448 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1850 ~v0 ~v1 v2 = du_txgov_1850 v2
du_txgov_1850 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2448 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1850 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__62
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2506 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2504 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__1914 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__1914
  = C_LEDGER'45'V_1988 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2062 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.Certs.T_CertState_812
d_certState_1918 ~v0 ~v1 v2 = du_certState_1918 v2
du_certState_1918 ::
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.Certs.T_CertState_812
du_certState_1918 v0
  = coe d_certState_1846 (coe d_'46'generalizedField'45's_5507 v0)
-- Ledger.Ledger._.govSt
d_govSt_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1920 ~v0 ~v1 v2 = du_govSt_1920 v2
du_govSt_1920 ::
  T_GeneralizeTel_5519 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1920 v0
  = coe d_govSt_1844 (coe d_'46'generalizedField'45's_5507 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1700
d_utxoSt_1922 ~v0 ~v1 v2 = du_utxoSt_1922 v2
du_utxoSt_1922 ::
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1700
du_utxoSt_1922 v0
  = coe d_utxoSt_1842 (coe d_'46'generalizedField'45's_5507 v0)
-- Ledger.Ledger._.txcerts
d_txcerts_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> [MAlonzo.Code.Ledger.Certs.T_DCert_720]
d_txcerts_1942 ~v0 ~v1 v2 = du_txcerts_1942 v2
du_txcerts_1942 ::
  T_GeneralizeTel_5519 -> [MAlonzo.Code.Ledger.Certs.T_DCert_720]
du_txcerts_1942 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2500
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2556
         (coe d_'46'generalizedField'45'tx_5509 v0))
-- Ledger.Ledger._.txid
d_txid_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> AgdaAny
d_txid_1948 ~v0 ~v1 v2 = du_txid_1948 v2
du_txid_1948 :: T_GeneralizeTel_5519 -> AgdaAny
du_txid_1948 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2518
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2556
         (coe d_'46'generalizedField'45'tx_5509 v0))
-- Ledger.Ledger._.txvote
d_txvote_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_634]
d_txvote_1962 ~v0 ~v1 v2 = du_txvote_1962 v2
du_txvote_1962 ::
  T_GeneralizeTel_5519 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_634]
du_txvote_1962 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2504
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2556
         (coe d_'46'generalizedField'45'tx_5509 v0))
-- Ledger.Ledger._.txwdrls
d_txwdrls_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1964 ~v0 ~v1 v2 = du_txwdrls_1964 v2
du_txwdrls_1964 ::
  T_GeneralizeTel_5519 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_1964 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2502
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2556
         (coe d_'46'generalizedField'45'tx_5509 v0))
-- Ledger.Ledger._.enactState
d_enactState_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.Enact.T_EnactState_730
d_enactState_1968 ~v0 ~v1 v2 = du_enactState_1968 v2
du_enactState_1968 ::
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.Enact.T_EnactState_730
du_enactState_1968 v0
  = coe d_enactState_1830 (coe d_'46'generalizedField'45'Γ_5511 v0)
-- Ledger.Ledger._.pparams
d_pparams_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_1970 ~v0 ~v1 v2 = du_pparams_1970 v2
du_pparams_1970 ::
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
du_pparams_1970 v0
  = coe d_pparams_1828 (coe d_'46'generalizedField'45'Γ_5511 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> Maybe AgdaAny
d_ppolicy_1972 ~v0 ~v1 v2 = du_ppolicy_1972 v2
du_ppolicy_1972 :: T_GeneralizeTel_5519 -> Maybe AgdaAny
du_ppolicy_1972 v0
  = coe d_ppolicy_1826 (coe d_'46'generalizedField'45'Γ_5511 v0)
-- Ledger.Ledger._.slot
d_slot_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> AgdaAny
d_slot_1974 ~v0 ~v1 v2 = du_slot_1974 v2
du_slot_1974 :: T_GeneralizeTel_5519 -> AgdaAny
du_slot_1974 v0
  = coe d_slot_1824 (coe d_'46'generalizedField'45'Γ_5511 v0)
-- Ledger.Ledger._.enactState
d_enactState_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.Enact.T_EnactState_730
d_enactState_1980 ~v0 ~v1 v2 = du_enactState_1980 v2
du_enactState_1980 ::
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.Enact.T_EnactState_730
du_enactState_1980 v0
  = coe d_enactState_1830 (coe d_'46'generalizedField'45'Γ_5511 v0)
-- Ledger.Ledger._.pparams
d_pparams_1982 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_1982 ~v0 ~v1 v2 = du_pparams_1982 v2
du_pparams_1982 ::
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
du_pparams_1982 v0
  = coe d_pparams_1828 (coe d_'46'generalizedField'45'Γ_5511 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> Maybe AgdaAny
d_ppolicy_1984 ~v0 ~v1 v2 = du_ppolicy_1984 v2
du_ppolicy_1984 :: T_GeneralizeTel_5519 -> Maybe AgdaAny
du_ppolicy_1984 v0
  = coe d_ppolicy_1826 (coe d_'46'generalizedField'45'Γ_5511 v0)
-- Ledger.Ledger._.slot
d_slot_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5519 -> AgdaAny
d_slot_1986 ~v0 ~v1 v2 = du_slot_1986 v2
du_slot_1986 :: T_GeneralizeTel_5519 -> AgdaAny
du_slot_1986 v0
  = coe d_slot_1824 (coe d_'46'generalizedField'45'Γ_5511 v0)
-- Ledger.Ledger._.certState
d_certState_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.Certs.T_CertState_812
d_certState_1992 ~v0 ~v1 v2 = du_certState_1992 v2
du_certState_1992 ::
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.Certs.T_CertState_812
du_certState_1992 v0
  = coe d_certState_1846 (coe d_'46'generalizedField'45's_5913 v0)
-- Ledger.Ledger._.govSt
d_govSt_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5921 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1994 ~v0 ~v1 v2 = du_govSt_1994 v2
du_govSt_1994 ::
  T_GeneralizeTel_5921 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1994 v0
  = coe d_govSt_1844 (coe d_'46'generalizedField'45's_5913 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1700
d_utxoSt_1996 ~v0 ~v1 v2 = du_utxoSt_1996 v2
du_utxoSt_1996 ::
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1700
du_utxoSt_1996 v0
  = coe d_utxoSt_1842 (coe d_'46'generalizedField'45's_5913 v0)
-- Ledger.Ledger._.enactState
d_enactState_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.Enact.T_EnactState_730
d_enactState_2042 ~v0 ~v1 v2 = du_enactState_2042 v2
du_enactState_2042 ::
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.Enact.T_EnactState_730
du_enactState_2042 v0
  = coe d_enactState_1830 (coe d_'46'generalizedField'45'Γ_5917 v0)
-- Ledger.Ledger._.pparams
d_pparams_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_2044 ~v0 ~v1 v2 = du_pparams_2044 v2
du_pparams_2044 ::
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
du_pparams_2044 v0
  = coe d_pparams_1828 (coe d_'46'generalizedField'45'Γ_5917 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5921 -> Maybe AgdaAny
d_ppolicy_2046 ~v0 ~v1 v2 = du_ppolicy_2046 v2
du_ppolicy_2046 :: T_GeneralizeTel_5921 -> Maybe AgdaAny
du_ppolicy_2046 v0
  = coe d_ppolicy_1826 (coe d_'46'generalizedField'45'Γ_5917 v0)
-- Ledger.Ledger._.slot
d_slot_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5921 -> AgdaAny
d_slot_2048 ~v0 ~v1 v2 = du_slot_2048 v2
du_slot_2048 :: T_GeneralizeTel_5921 -> AgdaAny
du_slot_2048 v0
  = coe d_slot_1824 (coe d_'46'generalizedField'45'Γ_5917 v0)
-- Ledger.Ledger._.enactState
d_enactState_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.Enact.T_EnactState_730
d_enactState_2054 ~v0 ~v1 v2 = du_enactState_2054 v2
du_enactState_2054 ::
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.Enact.T_EnactState_730
du_enactState_2054 v0
  = coe d_enactState_1830 (coe d_'46'generalizedField'45'Γ_5917 v0)
-- Ledger.Ledger._.pparams
d_pparams_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_2056 ~v0 ~v1 v2 = du_pparams_2056 v2
du_pparams_2056 ::
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
du_pparams_2056 v0
  = coe d_pparams_1828 (coe d_'46'generalizedField'45'Γ_5917 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5921 -> Maybe AgdaAny
d_ppolicy_2058 ~v0 ~v1 v2 = du_ppolicy_2058 v2
du_ppolicy_2058 :: T_GeneralizeTel_5921 -> Maybe AgdaAny
du_ppolicy_2058 v0
  = coe d_ppolicy_1826 (coe d_'46'generalizedField'45'Γ_5917 v0)
-- Ledger.Ledger._.slot
d_slot_2060 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_5921 -> AgdaAny
d_slot_2060 ~v0 ~v1 v2 = du_slot_2060 v2
du_slot_2060 :: T_GeneralizeTel_5921 -> AgdaAny
du_slot_2060 v0
  = coe d_slot_1824 (coe d_'46'generalizedField'45'Γ_5917 v0)
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_LEnv_1814 ->
  T_LState_1834 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2546] -> T_LState_1834 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2080 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5507 ::
  T_GeneralizeTel_5519 -> T_LState_1834
d_'46'generalizedField'45's_5507 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5509 ::
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2546
d_'46'generalizedField'45'tx_5509 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5511 ::
  T_GeneralizeTel_5519 -> T_LEnv_1814
d_'46'generalizedField'45'Γ_5511 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5513 ::
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1700
d_'46'generalizedField'45'utxoSt''_5513
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_5515 ::
  T_GeneralizeTel_5519 -> MAlonzo.Code.Ledger.Certs.T_CertState_812
d_'46'generalizedField'45'certState''_5515
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_5517 ::
  T_GeneralizeTel_5519 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_5517
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5519 a0 a1 = ()
data T_GeneralizeTel_5519
  = C_mkGeneralizeTel_5521 T_LState_1834
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2546 T_LEnv_1814
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1700
                           MAlonzo.Code.Ledger.Certs.T_CertState_812
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5913 ::
  T_GeneralizeTel_5921 -> T_LState_1834
d_'46'generalizedField'45's_5913 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5915 ::
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2546
d_'46'generalizedField'45'tx_5915 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5917 ::
  T_GeneralizeTel_5921 -> T_LEnv_1814
d_'46'generalizedField'45'Γ_5917 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5919 ::
  T_GeneralizeTel_5921 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1700
d_'46'generalizedField'45'utxoSt''_5919
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5921 a0 a1 = ()
data T_GeneralizeTel_5921
  = C_mkGeneralizeTel_5923 T_LState_1834
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2546 T_LEnv_1814
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1700
