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
d__'8866'_'8640''10631'_'44'CERTS'10632'__20 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_668 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_728 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_636] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_728 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__20 = erased
-- _.CertEnv
d_CertEnv_56 a0 = ()
-- _.CertState
d_CertState_58 a0 = ()
-- _.GovProposal
d_GovProposal_196 a0 = ()
-- _.GovVote
d_GovVote_200 a0 = ()
-- _.PParams
d_PParams_270 a0 = ()
-- _.ScriptHash
d_ScriptHash_326 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_326 = erased
-- _.Slot
d_Slot_336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_336 = erased
-- _.Tx
d_Tx_366 a0 = ()
-- _.TxBody
d_TxBody_368 a0 = ()
-- _.epoch
d_epoch_446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_446 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
-- Ledger.Ledger._.EnactState
d_EnactState_1404 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__1456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_818 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__1456 = erased
-- Ledger.Ledger._.GovEnv
d_GovEnv_1466 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1468 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 -> ()
d_GovState_1468 = erased
-- Ledger.Ledger._.UTxOState
d_UTxOState_1598 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1710 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_1730 a0 a1 = ()
data T_LEnv_1730
  = C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1748 AgdaAny
                                                     (Maybe AgdaAny)
                                                     MAlonzo.Code.Ledger.PParams.T_PParams_218
                                                     MAlonzo.Code.Ledger.Enact.T_EnactState_646
-- Ledger.Ledger.LEnv.slot
d_slot_1740 :: T_LEnv_1730 -> AgdaAny
d_slot_1740 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1748 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_1742 :: T_LEnv_1730 -> Maybe AgdaAny
d_ppolicy_1742 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1748 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_1744 ::
  T_LEnv_1730 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1744 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1748 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_1746 ::
  T_LEnv_1730 -> MAlonzo.Code.Ledger.Enact.T_EnactState_646
d_enactState_1746 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1748 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_1750 a0 a1 = ()
data T_LState_1750
  = C_'10214'_'44'_'44'_'10215''737'_1764 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1616
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Certs.T_CertState_728
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_1758 ::
  T_LState_1750 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1616
d_utxoSt_1758 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1764 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_1760 ::
  T_LState_1750 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1760 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1764 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_1762 ::
  T_LState_1750 -> MAlonzo.Code.Ledger.Certs.T_CertState_728
d_certState_1762 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1764 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1766 ~v0 ~v1 v2 = du_txgov_1766 v2
du_txgov_1766 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1766 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__62
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2338 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2336 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__1830 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__1830
  = C_LEDGER'45'V_1904 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_1978 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_1834 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.Certs.T_CertState_728
d_certState_1834 ~v0 ~v1 v2 = du_certState_1834 v2
du_certState_1834 ::
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.Certs.T_CertState_728
du_certState_1834 v0
  = coe d_certState_1762 (coe d_'46'generalizedField'45's_5405 v0)
-- Ledger.Ledger._.govSt
d_govSt_1836 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1836 ~v0 ~v1 v2 = du_govSt_1836 v2
du_govSt_1836 ::
  T_GeneralizeTel_5417 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1836 v0
  = coe d_govSt_1760 (coe d_'46'generalizedField'45's_5405 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_1838 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1616
d_utxoSt_1838 ~v0 ~v1 v2 = du_utxoSt_1838 v2
du_utxoSt_1838 ::
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1616
du_utxoSt_1838 v0
  = coe d_utxoSt_1758 (coe d_'46'generalizedField'45's_5405 v0)
-- Ledger.Ledger._.txcerts
d_txcerts_1858 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> [MAlonzo.Code.Ledger.Certs.T_DCert_636]
d_txcerts_1858 ~v0 ~v1 v2 = du_txcerts_1858 v2
du_txcerts_1858 ::
  T_GeneralizeTel_5417 -> [MAlonzo.Code.Ledger.Certs.T_DCert_636]
du_txcerts_1858 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2332
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_5407 v0))
-- Ledger.Ledger._.txid
d_txid_1864 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> AgdaAny
d_txid_1864 ~v0 ~v1 v2 = du_txid_1864 v2
du_txid_1864 :: T_GeneralizeTel_5417 -> AgdaAny
du_txid_1864 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2350
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_5407 v0))
-- Ledger.Ledger._.txvote
d_txvote_1878 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
d_txvote_1878 ~v0 ~v1 v2 = du_txvote_1878 v2
du_txvote_1878 ::
  T_GeneralizeTel_5417 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
du_txvote_1878 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2336
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_5407 v0))
-- Ledger.Ledger._.txwdrls
d_txwdrls_1880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1880 ~v0 ~v1 v2 = du_txwdrls_1880 v2
du_txwdrls_1880 ::
  T_GeneralizeTel_5417 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_1880 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2334
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_5407 v0))
-- Ledger.Ledger._.enactState
d_enactState_1884 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.Enact.T_EnactState_646
d_enactState_1884 ~v0 ~v1 v2 = du_enactState_1884 v2
du_enactState_1884 ::
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.Enact.T_EnactState_646
du_enactState_1884 v0
  = coe d_enactState_1746 (coe d_'46'generalizedField'45'Γ_5409 v0)
-- Ledger.Ledger._.pparams
d_pparams_1886 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1886 ~v0 ~v1 v2 = du_pparams_1886 v2
du_pparams_1886 ::
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_1886 v0
  = coe d_pparams_1744 (coe d_'46'generalizedField'45'Γ_5409 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> Maybe AgdaAny
d_ppolicy_1888 ~v0 ~v1 v2 = du_ppolicy_1888 v2
du_ppolicy_1888 :: T_GeneralizeTel_5417 -> Maybe AgdaAny
du_ppolicy_1888 v0
  = coe d_ppolicy_1742 (coe d_'46'generalizedField'45'Γ_5409 v0)
-- Ledger.Ledger._.slot
d_slot_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> AgdaAny
d_slot_1890 ~v0 ~v1 v2 = du_slot_1890 v2
du_slot_1890 :: T_GeneralizeTel_5417 -> AgdaAny
du_slot_1890 v0
  = coe d_slot_1740 (coe d_'46'generalizedField'45'Γ_5409 v0)
-- Ledger.Ledger._.enactState
d_enactState_1896 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.Enact.T_EnactState_646
d_enactState_1896 ~v0 ~v1 v2 = du_enactState_1896 v2
du_enactState_1896 ::
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.Enact.T_EnactState_646
du_enactState_1896 v0
  = coe d_enactState_1746 (coe d_'46'generalizedField'45'Γ_5409 v0)
-- Ledger.Ledger._.pparams
d_pparams_1898 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1898 ~v0 ~v1 v2 = du_pparams_1898 v2
du_pparams_1898 ::
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_1898 v0
  = coe d_pparams_1744 (coe d_'46'generalizedField'45'Γ_5409 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_1900 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> Maybe AgdaAny
d_ppolicy_1900 ~v0 ~v1 v2 = du_ppolicy_1900 v2
du_ppolicy_1900 :: T_GeneralizeTel_5417 -> Maybe AgdaAny
du_ppolicy_1900 v0
  = coe d_ppolicy_1742 (coe d_'46'generalizedField'45'Γ_5409 v0)
-- Ledger.Ledger._.slot
d_slot_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5417 -> AgdaAny
d_slot_1902 ~v0 ~v1 v2 = du_slot_1902 v2
du_slot_1902 :: T_GeneralizeTel_5417 -> AgdaAny
du_slot_1902 v0
  = coe d_slot_1740 (coe d_'46'generalizedField'45'Γ_5409 v0)
-- Ledger.Ledger._.certState
d_certState_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.Certs.T_CertState_728
d_certState_1908 ~v0 ~v1 v2 = du_certState_1908 v2
du_certState_1908 ::
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.Certs.T_CertState_728
du_certState_1908 v0
  = coe d_certState_1762 (coe d_'46'generalizedField'45's_5811 v0)
-- Ledger.Ledger._.govSt
d_govSt_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5819 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1910 ~v0 ~v1 v2 = du_govSt_1910 v2
du_govSt_1910 ::
  T_GeneralizeTel_5819 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1910 v0
  = coe d_govSt_1760 (coe d_'46'generalizedField'45's_5811 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1616
d_utxoSt_1912 ~v0 ~v1 v2 = du_utxoSt_1912 v2
du_utxoSt_1912 ::
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1616
du_utxoSt_1912 v0
  = coe d_utxoSt_1758 (coe d_'46'generalizedField'45's_5811 v0)
-- Ledger.Ledger._.enactState
d_enactState_1958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.Enact.T_EnactState_646
d_enactState_1958 ~v0 ~v1 v2 = du_enactState_1958 v2
du_enactState_1958 ::
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.Enact.T_EnactState_646
du_enactState_1958 v0
  = coe d_enactState_1746 (coe d_'46'generalizedField'45'Γ_5815 v0)
-- Ledger.Ledger._.pparams
d_pparams_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1960 ~v0 ~v1 v2 = du_pparams_1960 v2
du_pparams_1960 ::
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_1960 v0
  = coe d_pparams_1744 (coe d_'46'generalizedField'45'Γ_5815 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5819 -> Maybe AgdaAny
d_ppolicy_1962 ~v0 ~v1 v2 = du_ppolicy_1962 v2
du_ppolicy_1962 :: T_GeneralizeTel_5819 -> Maybe AgdaAny
du_ppolicy_1962 v0
  = coe d_ppolicy_1742 (coe d_'46'generalizedField'45'Γ_5815 v0)
-- Ledger.Ledger._.slot
d_slot_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5819 -> AgdaAny
d_slot_1964 ~v0 ~v1 v2 = du_slot_1964 v2
du_slot_1964 :: T_GeneralizeTel_5819 -> AgdaAny
du_slot_1964 v0
  = coe d_slot_1740 (coe d_'46'generalizedField'45'Γ_5815 v0)
-- Ledger.Ledger._.enactState
d_enactState_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.Enact.T_EnactState_646
d_enactState_1970 ~v0 ~v1 v2 = du_enactState_1970 v2
du_enactState_1970 ::
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.Enact.T_EnactState_646
du_enactState_1970 v0
  = coe d_enactState_1746 (coe d_'46'generalizedField'45'Γ_5815 v0)
-- Ledger.Ledger._.pparams
d_pparams_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1972 ~v0 ~v1 v2 = du_pparams_1972 v2
du_pparams_1972 ::
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_1972 v0
  = coe d_pparams_1744 (coe d_'46'generalizedField'45'Γ_5815 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5819 -> Maybe AgdaAny
d_ppolicy_1974 ~v0 ~v1 v2 = du_ppolicy_1974 v2
du_ppolicy_1974 :: T_GeneralizeTel_5819 -> Maybe AgdaAny
du_ppolicy_1974 v0
  = coe d_ppolicy_1742 (coe d_'46'generalizedField'45'Γ_5815 v0)
-- Ledger.Ledger._.slot
d_slot_1976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5819 -> AgdaAny
d_slot_1976 ~v0 ~v1 v2 = du_slot_1976 v2
du_slot_1976 :: T_GeneralizeTel_5819 -> AgdaAny
du_slot_1976 v0
  = coe d_slot_1740 (coe d_'46'generalizedField'45'Γ_5815 v0)
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1996 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_LEnv_1730 ->
  T_LState_1750 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2378] -> T_LState_1750 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1996 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5405 ::
  T_GeneralizeTel_5417 -> T_LState_1750
d_'46'generalizedField'45's_5405 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5407 ::
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2378
d_'46'generalizedField'45'tx_5407 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5409 ::
  T_GeneralizeTel_5417 -> T_LEnv_1730
d_'46'generalizedField'45'Γ_5409 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5411 ::
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1616
d_'46'generalizedField'45'utxoSt''_5411
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_5413 ::
  T_GeneralizeTel_5417 -> MAlonzo.Code.Ledger.Certs.T_CertState_728
d_'46'generalizedField'45'certState''_5413
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_5415 ::
  T_GeneralizeTel_5417 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_5415
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5417 a0 a1 = ()
data T_GeneralizeTel_5417
  = C_mkGeneralizeTel_5419 T_LState_1750
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2378 T_LEnv_1730
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1616
                           MAlonzo.Code.Ledger.Certs.T_CertState_728
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5811 ::
  T_GeneralizeTel_5819 -> T_LState_1750
d_'46'generalizedField'45's_5811 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5813 ::
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2378
d_'46'generalizedField'45'tx_5813 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5815 ::
  T_GeneralizeTel_5819 -> T_LEnv_1730
d_'46'generalizedField'45'Γ_5815 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5817 ::
  T_GeneralizeTel_5819 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1616
d_'46'generalizedField'45'utxoSt''_5817
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5819 a0 a1 = ()
data T_GeneralizeTel_5819
  = C_mkGeneralizeTel_5821 T_LState_1750
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2378 T_LEnv_1730
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1616
