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
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
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
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 -> ()
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
d_GovEnv_1464 a0 a1 = ()
-- Ledger.Ledger._.GovState
d_GovState_1466 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 -> ()
d_GovState_1466 = erased
-- Ledger.Ledger._.UTxOState
d_UTxOState_1596 a0 a1 = ()
-- Ledger.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__1704 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Ledger.LEnv
d_LEnv_1724 a0 a1 = ()
data T_LEnv_1724
  = C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1742 AgdaAny
                                                     (Maybe AgdaAny)
                                                     MAlonzo.Code.Ledger.PParams.T_PParams_218
                                                     MAlonzo.Code.Ledger.Enact.T_EnactState_644
-- Ledger.Ledger.LEnv.slot
d_slot_1734 :: T_LEnv_1724 -> AgdaAny
d_slot_1734 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1742 v1 v2 v3 v4
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.ppolicy
d_ppolicy_1736 :: T_LEnv_1724 -> Maybe AgdaAny
d_ppolicy_1736 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1742 v1 v2 v3 v4
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.pparams
d_pparams_1738 ::
  T_LEnv_1724 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1738 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1742 v1 v2 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LEnv.enactState
d_enactState_1740 ::
  T_LEnv_1724 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_enactState_1740 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''737''7497'_1742 v1 v2 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState
d_LState_1744 a0 a1 = ()
data T_LState_1744
  = C_'10214'_'44'_'44'_'10215''737'_1758 MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Deleg.T_CertState_726
-- Ledger.Ledger.LState.utxoSt
d_utxoSt_1752 ::
  T_LState_1744 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
d_utxoSt_1752 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1758 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.govSt
d_govSt_1754 ::
  T_LState_1744 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1754 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1758 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.LState.certState
d_certState_1756 ::
  T_LState_1744 -> MAlonzo.Code.Ledger.Deleg.T_CertState_726
d_certState_1756 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_1758 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.txgov
d_txgov_1760 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_1760 ~v0 ~v1 v2 = du_txgov_1760 v2
du_txgov_1760 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_1760 v0
  = coe
      MAlonzo.Code.Data.List.Base.du__'43''43'__62
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
         (MAlonzo.Code.Ledger.Transaction.d_txvote_2336 (coe v0)))
      (coe
         MAlonzo.Code.Class.Functor.Core.du_fmap_22
         MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
         () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
         (MAlonzo.Code.Ledger.Transaction.d_txprop_2338 (coe v0)))
-- Ledger.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__1824 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__1824
  = C_LEDGER'45'V_1898 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_1972 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Ledger._.certState
d_certState_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.Deleg.T_CertState_726
d_certState_1828 ~v0 ~v1 v2 = du_certState_1828 v2
du_certState_1828 ::
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.Deleg.T_CertState_726
du_certState_1828 v0
  = coe d_certState_1756 (coe d_'46'generalizedField'45's_5397 v0)
-- Ledger.Ledger._.govSt
d_govSt_1830 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1830 ~v0 ~v1 v2 = du_govSt_1830 v2
du_govSt_1830 ::
  T_GeneralizeTel_5409 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1830 v0
  = coe d_govSt_1754 (coe d_'46'generalizedField'45's_5397 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_1832 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
d_utxoSt_1832 ~v0 ~v1 v2 = du_utxoSt_1832 v2
du_utxoSt_1832 ::
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
du_utxoSt_1832 v0
  = coe d_utxoSt_1752 (coe d_'46'generalizedField'45's_5397 v0)
-- Ledger.Ledger._.txcerts
d_txcerts_1852 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
d_txcerts_1852 ~v0 ~v1 v2 = du_txcerts_1852 v2
du_txcerts_1852 ::
  T_GeneralizeTel_5409 -> [MAlonzo.Code.Ledger.Deleg.T_DCert_634]
du_txcerts_1852 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txcerts_2332
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_5399 v0))
-- Ledger.Ledger._.txid
d_txid_1858 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> AgdaAny
d_txid_1858 ~v0 ~v1 v2 = du_txid_1858 v2
du_txid_1858 :: T_GeneralizeTel_5409 -> AgdaAny
du_txid_1858 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txid_2350
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_5399 v0))
-- Ledger.Ledger._.txvote
d_txvote_1872 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
d_txvote_1872 ~v0 ~v1 v2 = du_txvote_1872 v2
du_txvote_1872 ::
  T_GeneralizeTel_5409 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
du_txvote_1872 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txvote_2336
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_5399 v0))
-- Ledger.Ledger._.txwdrls
d_txwdrls_1874 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1874 ~v0 ~v1 v2 = du_txwdrls_1874 v2
du_txwdrls_1874 ::
  T_GeneralizeTel_5409 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txwdrls_1874 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txwdrls_2334
      (coe
         MAlonzo.Code.Ledger.Transaction.d_body_2388
         (coe d_'46'generalizedField'45'tx_5399 v0))
-- Ledger.Ledger._.enactState
d_enactState_1878 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_enactState_1878 ~v0 ~v1 v2 = du_enactState_1878 v2
du_enactState_1878 ::
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
du_enactState_1878 v0
  = coe d_enactState_1740 (coe d_'46'generalizedField'45'Γ_5401 v0)
-- Ledger.Ledger._.pparams
d_pparams_1880 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1880 ~v0 ~v1 v2 = du_pparams_1880 v2
du_pparams_1880 ::
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_1880 v0
  = coe d_pparams_1738 (coe d_'46'generalizedField'45'Γ_5401 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_1882 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> Maybe AgdaAny
d_ppolicy_1882 ~v0 ~v1 v2 = du_ppolicy_1882 v2
du_ppolicy_1882 :: T_GeneralizeTel_5409 -> Maybe AgdaAny
du_ppolicy_1882 v0
  = coe d_ppolicy_1736 (coe d_'46'generalizedField'45'Γ_5401 v0)
-- Ledger.Ledger._.slot
d_slot_1884 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> AgdaAny
d_slot_1884 ~v0 ~v1 v2 = du_slot_1884 v2
du_slot_1884 :: T_GeneralizeTel_5409 -> AgdaAny
du_slot_1884 v0
  = coe d_slot_1734 (coe d_'46'generalizedField'45'Γ_5401 v0)
-- Ledger.Ledger._.enactState
d_enactState_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_enactState_1890 ~v0 ~v1 v2 = du_enactState_1890 v2
du_enactState_1890 ::
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
du_enactState_1890 v0
  = coe d_enactState_1740 (coe d_'46'generalizedField'45'Γ_5401 v0)
-- Ledger.Ledger._.pparams
d_pparams_1892 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1892 ~v0 ~v1 v2 = du_pparams_1892 v2
du_pparams_1892 ::
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_1892 v0
  = coe d_pparams_1738 (coe d_'46'generalizedField'45'Γ_5401 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_1894 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> Maybe AgdaAny
d_ppolicy_1894 ~v0 ~v1 v2 = du_ppolicy_1894 v2
du_ppolicy_1894 :: T_GeneralizeTel_5409 -> Maybe AgdaAny
du_ppolicy_1894 v0
  = coe d_ppolicy_1736 (coe d_'46'generalizedField'45'Γ_5401 v0)
-- Ledger.Ledger._.slot
d_slot_1896 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5409 -> AgdaAny
d_slot_1896 ~v0 ~v1 v2 = du_slot_1896 v2
du_slot_1896 :: T_GeneralizeTel_5409 -> AgdaAny
du_slot_1896 v0
  = coe d_slot_1734 (coe d_'46'generalizedField'45'Γ_5401 v0)
-- Ledger.Ledger._.certState
d_certState_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.Deleg.T_CertState_726
d_certState_1902 ~v0 ~v1 v2 = du_certState_1902 v2
du_certState_1902 ::
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.Deleg.T_CertState_726
du_certState_1902 v0
  = coe d_certState_1756 (coe d_'46'generalizedField'45's_5803 v0)
-- Ledger.Ledger._.govSt
d_govSt_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5811 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1904 ~v0 ~v1 v2 = du_govSt_1904 v2
du_govSt_1904 ::
  T_GeneralizeTel_5811 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1904 v0
  = coe d_govSt_1754 (coe d_'46'generalizedField'45's_5803 v0)
-- Ledger.Ledger._.utxoSt
d_utxoSt_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
d_utxoSt_1906 ~v0 ~v1 v2 = du_utxoSt_1906 v2
du_utxoSt_1906 ::
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
du_utxoSt_1906 v0
  = coe d_utxoSt_1752 (coe d_'46'generalizedField'45's_5803 v0)
-- Ledger.Ledger._.enactState
d_enactState_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_enactState_1952 ~v0 ~v1 v2 = du_enactState_1952 v2
du_enactState_1952 ::
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
du_enactState_1952 v0
  = coe d_enactState_1740 (coe d_'46'generalizedField'45'Γ_5807 v0)
-- Ledger.Ledger._.pparams
d_pparams_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1954 ~v0 ~v1 v2 = du_pparams_1954 v2
du_pparams_1954 ::
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_1954 v0
  = coe d_pparams_1738 (coe d_'46'generalizedField'45'Γ_5807 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5811 -> Maybe AgdaAny
d_ppolicy_1956 ~v0 ~v1 v2 = du_ppolicy_1956 v2
du_ppolicy_1956 :: T_GeneralizeTel_5811 -> Maybe AgdaAny
du_ppolicy_1956 v0
  = coe d_ppolicy_1736 (coe d_'46'generalizedField'45'Γ_5807 v0)
-- Ledger.Ledger._.slot
d_slot_1958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5811 -> AgdaAny
d_slot_1958 ~v0 ~v1 v2 = du_slot_1958 v2
du_slot_1958 :: T_GeneralizeTel_5811 -> AgdaAny
du_slot_1958 v0
  = coe d_slot_1734 (coe d_'46'generalizedField'45'Γ_5807 v0)
-- Ledger.Ledger._.enactState
d_enactState_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_enactState_1964 ~v0 ~v1 v2 = du_enactState_1964 v2
du_enactState_1964 ::
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
du_enactState_1964 v0
  = coe d_enactState_1740 (coe d_'46'generalizedField'45'Γ_5807 v0)
-- Ledger.Ledger._.pparams
d_pparams_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1966 ~v0 ~v1 v2 = du_pparams_1966 v2
du_pparams_1966 ::
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_1966 v0
  = coe d_pparams_1738 (coe d_'46'generalizedField'45'Γ_5807 v0)
-- Ledger.Ledger._.ppolicy
d_ppolicy_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5811 -> Maybe AgdaAny
d_ppolicy_1968 ~v0 ~v1 v2 = du_ppolicy_1968 v2
du_ppolicy_1968 :: T_GeneralizeTel_5811 -> Maybe AgdaAny
du_ppolicy_1968 v0
  = coe d_ppolicy_1736 (coe d_'46'generalizedField'45'Γ_5807 v0)
-- Ledger.Ledger._.slot
d_slot_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_5811 -> AgdaAny
d_slot_1970 ~v0 ~v1 v2 = du_slot_1970 v2
du_slot_1970 :: T_GeneralizeTel_5811 -> AgdaAny
du_slot_1970 v0
  = coe d_slot_1734 (coe d_'46'generalizedField'45'Γ_5807 v0)
-- Ledger.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_LEnv_1724 ->
  T_LState_1744 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2378] -> T_LState_1744 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1990 = erased
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5397 ::
  T_GeneralizeTel_5409 -> T_LState_1744
d_'46'generalizedField'45's_5397 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5399 ::
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2378
d_'46'generalizedField'45'tx_5399 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5401 ::
  T_GeneralizeTel_5409 -> T_LEnv_1724
d_'46'generalizedField'45'Γ_5401 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5403 ::
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
d_'46'generalizedField'45'utxoSt''_5403
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_5405 ::
  T_GeneralizeTel_5409 -> MAlonzo.Code.Ledger.Deleg.T_CertState_726
d_'46'generalizedField'45'certState''_5405
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_5407 ::
  T_GeneralizeTel_5409 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_5407
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5409 a0 a1 = ()
data T_GeneralizeTel_5409
  = C_mkGeneralizeTel_5411 T_LState_1744
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2378 T_LEnv_1724
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
                           MAlonzo.Code.Ledger.Deleg.T_CertState_726
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Ledger..generalizedField-s
d_'46'generalizedField'45's_5803 ::
  T_GeneralizeTel_5811 -> T_LState_1744
d_'46'generalizedField'45's_5803 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_5805 ::
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.Transaction.T_Tx_2378
d_'46'generalizedField'45'tx_5805 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_5807 ::
  T_GeneralizeTel_5811 -> T_LEnv_1724
d_'46'generalizedField'45'Γ_5807 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_5809 ::
  T_GeneralizeTel_5811 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
d_'46'generalizedField'45'utxoSt''_5809
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Ledger.GeneralizeTel
d_GeneralizeTel_5811 a0 a1 = ()
data T_GeneralizeTel_5811
  = C_mkGeneralizeTel_5813 T_LState_1744
                           MAlonzo.Code.Ledger.Transaction.T_Tx_2378 T_LEnv_1724
                           MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
