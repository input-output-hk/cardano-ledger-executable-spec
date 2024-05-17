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

module MAlonzo.Code.Ledger.Epoch where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Utxo

-- _.Acnt
d_Acnt_32 a0 = ()
-- _.CertState
d_CertState_58 a0 = ()
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_128 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_128 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_128 v1 v2 v3
du_DecEq'45'RwdAddr_128 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_128 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v0)
      (coe v1) (coe v2)
-- _.Epoch
d_Epoch_172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_172 = erased
-- _.GState
d_GState_184 a0 = ()
-- _.NetworkId
d_NetworkId_242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_242 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0))
-- _.Number-Epoch
d_Number'45'Epoch_252 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_252 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
-- _.PState
d_PState_276 a0 = ()
-- _.addEpoch
d_addEpoch_414 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_414 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
-- Ledger.Epoch._.EnactState
d_EnactState_1500 a0 a1 = ()
-- Ledger.Epoch._.ccCreds
d_ccCreds_1502 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ccCreds_1502 ~v0 ~v1 = du_ccCreds_1502
du_ccCreds_1502 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_ccCreds_1502 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_666
-- Ledger.Epoch._.LState
d_LState_1558 a0 a1 = ()
-- Ledger.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1598 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1598 = erased
-- Ledger.Epoch._.RatifyState
d_RatifyState_1616 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs
d_StakeDistrs_1618 a0 a1 = ()
-- Ledger.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1734 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1734 v0 ~v1
  = du_DecEq'45'DepositPurpose_1734 v0
du_DecEq'45'DepositPurpose_1734 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1734 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0)
-- Ledger.Epoch._.DepositPurpose
d_DepositPurpose_1736 a0 a1 = ()
-- Ledger.Epoch._.HasCoin-Map
d_HasCoin'45'Map_1742 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1742 ~v0 ~v1 = du_HasCoin'45'Map_1742
du_HasCoin'45'Map_1742 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1742 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1494 v1
-- Ledger.Epoch._.UTxOState
d_UTxOState_1764 a0 a1 = ()
-- Ledger.Epoch.EpochState
d_EpochState_1870 a0 a1 = ()
data T_EpochState_1870
  = C_'10214'_'44'_'44'_'44'_'10215''7497'''_1888 MAlonzo.Code.Ledger.PParams.T_Acnt_124
                                                  MAlonzo.Code.Ledger.Ledger.T_LState_1744
                                                  MAlonzo.Code.Ledger.Enact.T_EnactState_644
                                                  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658
-- Ledger.Epoch.EpochState.acnt
d_acnt_1880 ::
  T_EpochState_1870 -> MAlonzo.Code.Ledger.PParams.T_Acnt_124
d_acnt_1880 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1888 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ls
d_ls_1882 ::
  T_EpochState_1870 -> MAlonzo.Code.Ledger.Ledger.T_LState_1744
d_ls_1882 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1888 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.es
d_es_1884 ::
  T_EpochState_1870 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_es_1884 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1888 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.fut
d_fut_1886 ::
  T_EpochState_1870 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658
d_fut_1886 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1888 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochEnv
d_NewEpochEnv_1890 a0 a1 = ()
newtype T_NewEpochEnv_1890
  = C_NewEpochEnv'46'constructor_3671 MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1630
-- Ledger.Epoch.NewEpochEnv.stakeDistrs
d_stakeDistrs_1894 ::
  T_NewEpochEnv_1890 -> MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1630
d_stakeDistrs_1894 v0
  = case coe v0 of
      C_NewEpochEnv'46'constructor_3671 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState
d_NewEpochState_1896 a0 a1 = ()
data T_NewEpochState_1896
  = C_'10214'_'44'_'10215''8319''7497'_1906 AgdaAny T_EpochState_1870
-- Ledger.Epoch.NewEpochState.lastEpoch
d_lastEpoch_1902 :: T_NewEpochState_1896 -> AgdaAny
d_lastEpoch_1902 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''8319''7497'_1906 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.epochState
d_epochState_1904 :: T_NewEpochState_1896 -> T_EpochState_1870
d_epochState_1904 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''8319''7497'_1906 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__1928 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'EPOCH'10632'__1928
  = C_EPOCH_2060 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Epoch._.acnt
d_acnt_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.PParams.T_Acnt_124
d_acnt_1932 ~v0 ~v1 v2 = du_acnt_1932 v2
du_acnt_1932 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.PParams.T_Acnt_124
du_acnt_1932 v0
  = coe d_acnt_1880 (coe d_'46'generalizedField'45'eps_9817 v0)
-- Ledger.Epoch._.fut
d_fut_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658
d_fut_1934 ~v0 ~v1 v2 = du_fut_1934 v2
du_fut_1934 ::
  T_GeneralizeTel_9825 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658
du_fut_1934 v0
  = coe d_fut_1886 (coe d_'46'generalizedField'45'eps_9817 v0)
-- Ledger.Epoch._.ls
d_ls_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Ledger.T_LState_1744
d_ls_1936 ~v0 ~v1 v2 = du_ls_1936 v2
du_ls_1936 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Ledger.T_LState_1744
du_ls_1936 v0
  = coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0)
-- Ledger.Epoch._.es
d_es_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_es_1940 ~v0 ~v1 v2 = du_es_1940 v2
du_es_1940 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
du_es_1940 v0
  = coe
      MAlonzo.Code.Ledger.Ratify.d_es_1666
      (coe d_fut_1886 (coe d_'46'generalizedField'45'eps_9817 v0))
-- Ledger.Epoch._.removed
d_removed_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1942 ~v0 ~v1 v2 = du_removed_1942 v2
du_removed_1942 ::
  T_GeneralizeTel_9825 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_1942 v0
  = coe
      MAlonzo.Code.Ledger.Ratify.d_removed_1668
      (coe d_fut_1886 (coe d_'46'generalizedField'45'eps_9817 v0))
-- Ledger.Epoch._.certState
d_certState_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Deleg.T_CertState_726
d_certState_1946 ~v0 ~v1 v2 = du_certState_1946 v2
du_certState_1946 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Deleg.T_CertState_726
du_certState_1946 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_certState_1756
      (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0))
-- Ledger.Epoch._.govSt
d_govSt_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1948 ~v0 ~v1 v2 = du_govSt_1948 v2
du_govSt_1948 ::
  T_GeneralizeTel_9825 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1948 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_govSt_1754
      (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0))
-- Ledger.Epoch._.utxoSt
d_utxoSt_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
d_utxoSt_1950 ~v0 ~v1 v2 = du_utxoSt_1950 v2
du_utxoSt_1950 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1960
du_utxoSt_1950 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
      (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0))
-- Ledger.Epoch._.deposits
d_deposits_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1954 ~v0 ~v1 v2 = du_deposits_1954 v2
du_deposits_1954 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_1954 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_deposits_1974
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
         (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0)))
-- Ledger.Epoch._.donations
d_donations_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> Integer
d_donations_1956 ~v0 ~v1 v2 = du_donations_1956 v2
du_donations_1956 :: T_GeneralizeTel_9825 -> Integer
du_donations_1956 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_donations_1976
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
         (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0)))
-- Ledger.Epoch._.fees
d_fees_1958 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> Integer
d_fees_1958 ~v0 ~v1 v2 = du_fees_1958 v2
du_fees_1958 :: T_GeneralizeTel_9825 -> Integer
du_fees_1958 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1972
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
         (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0)))
-- Ledger.Epoch._.utxo
d_utxo_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1960 ~v0 ~v1 v2 = du_utxo_1960 v2
du_utxo_1960 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_1960 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1970
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
         (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0)))
-- Ledger.Epoch._.dState
d_dState_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Deleg.T_DState_686
d_dState_1964 ~v0 ~v1 v2 = du_dState_1964 v2
du_dState_1964 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Deleg.T_DState_686
du_dState_1964 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_dState_734
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1756
         (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0)))
-- Ledger.Epoch._.gState
d_gState_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Deleg.T_GState_714
d_gState_1966 ~v0 ~v1 v2 = du_gState_1966 v2
du_gState_1966 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Deleg.T_GState_714
du_gState_1966 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_gState_738
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1756
         (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0)))
-- Ledger.Epoch._.pState
d_pState_1968 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Deleg.T_PState_702
d_pState_1968 ~v0 ~v1 v2 = du_pState_1968 v2
du_pState_1968 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Ledger.Deleg.T_PState_702
du_pState_1968 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_pState_736
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1756
         (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0)))
-- Ledger.Epoch._.pools
d_pools_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1972 ~v0 ~v1 v2 = du_pools_1972 v2
du_pools_1972 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_1972 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_pools_708
      (coe
         MAlonzo.Code.Ledger.Deleg.d_pState_736
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1756
            (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0))))
-- Ledger.Epoch._.retiring
d_retiring_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1974 ~v0 ~v1 v2 = du_retiring_1974 v2
du_retiring_1974 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_retiring_1974 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_retiring_710
      (coe
         MAlonzo.Code.Ledger.Deleg.d_pState_736
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1756
            (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0))))
-- Ledger.Epoch._.rewards
d_rewards_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1978 ~v0 ~v1 v2 = du_rewards_1978 v2
du_rewards_1978 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_1978 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_rewards_698
      (coe
         MAlonzo.Code.Ledger.Deleg.d_dState_734
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1756
            (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0))))
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_1986 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1986 ~v0 ~v1 v2 = du_ccHotKeys_1986 v2
du_ccHotKeys_1986 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1986 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_ccHotKeys_722
      (coe
         MAlonzo.Code.Ledger.Deleg.d_gState_738
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1756
            (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0))))
-- Ledger.Epoch._.dreps
d_dreps_1988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1988 ~v0 ~v1 v2 = du_dreps_1988 v2
du_dreps_1988 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1988 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_dreps_720
      (coe
         MAlonzo.Code.Ledger.Deleg.d_gState_738
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1756
            (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0))))
-- Ledger.Epoch._.treasury
d_treasury_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> Integer
d_treasury_1994 ~v0 ~v1 v2 = du_treasury_1994 v2
du_treasury_1994 :: T_GeneralizeTel_9825 -> Integer
du_treasury_1994 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_treasury_130
      (coe d_acnt_1880 (coe d_'46'generalizedField'45'eps_9817 v0))
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2050 ~v0 ~v1 v2 = du_ccHotKeys_2050 v2
du_ccHotKeys_2050 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2050 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_ccHotKeys_722
      (coe
         MAlonzo.Code.Ledger.Deleg.d_gState_738
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1756
            (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0))))
-- Ledger.Epoch._.dreps
d_dreps_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2052 ~v0 ~v1 v2 = du_dreps_2052 v2
du_dreps_2052 ::
  T_GeneralizeTel_9825 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2052 v0
  = coe
      MAlonzo.Code.Ledger.Deleg.d_dreps_720
      (coe
         MAlonzo.Code.Ledger.Deleg.d_gState_738
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1756
            (coe d_ls_1882 (coe d_'46'generalizedField'45'eps_9817 v0))))
-- Ledger.Epoch._.stakeDistrs
d_stakeDistrs_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9825 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1630
d_stakeDistrs_2058 ~v0 ~v1 v2 = du_stakeDistrs_2058 v2
du_stakeDistrs_2058 ::
  T_GeneralizeTel_9825 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1630
du_stakeDistrs_2058 v0
  = coe d_stakeDistrs_1894 (coe d_'46'generalizedField'45'Γ_9821 v0)
-- Ledger.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2062 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2062
  = C_NEWEPOCH'45'New_2064 T__'8866'_'8640''10631'_'44'EPOCH'10632'__1928 |
    C_NEWEPOCH'45'Not'45'New_2066
-- Ledger.Epoch..generalizedField-eps
d_'46'generalizedField'45'eps_9817 ::
  T_GeneralizeTel_9825 -> T_EpochState_1870
d_'46'generalizedField'45'eps_9817
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-e
d_'46'generalizedField'45'e_9819 :: T_GeneralizeTel_9825 -> AgdaAny
d_'46'generalizedField'45'e_9819 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-Γ
d_'46'generalizedField'45'Γ_9821 ::
  T_GeneralizeTel_9825 -> T_NewEpochEnv_1890
d_'46'generalizedField'45'Γ_9821 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_9823 ::
  T_GeneralizeTel_9825 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658
d_'46'generalizedField'45'fut''_9823
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_9825 a0 a1 = ()
data T_GeneralizeTel_9825
  = C_mkGeneralizeTel_9827 T_EpochState_1870 AgdaAny
                           T_NewEpochEnv_1890 MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658
