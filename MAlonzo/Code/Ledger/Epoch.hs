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
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
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
d_EnactState_1502 a0 a1 = ()
-- Ledger.Epoch._.ccCreds
d_ccCreds_1504 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ccCreds_1504 ~v0 ~v1 = du_ccCreds_1504
du_ccCreds_1504 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_ccCreds_1504 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_668
-- Ledger.Epoch._.LState
d_LState_1560 a0 a1 = ()
-- Ledger.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1600 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1600 = erased
-- Ledger.Epoch._.RatifyState
d_RatifyState_1618 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs
d_StakeDistrs_1620 a0 a1 = ()
-- Ledger.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1736 v0 ~v1
  = du_DecEq'45'DepositPurpose_1736 v0
du_DecEq'45'DepositPurpose_1736 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1736 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1672 (coe v0)
-- Ledger.Epoch._.DepositPurpose
d_DepositPurpose_1738 a0 a1 = ()
-- Ledger.Epoch._.HasCoin-Map
d_HasCoin'45'Map_1744 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1744 ~v0 ~v1 = du_HasCoin'45'Map_1744
du_HasCoin'45'Map_1744 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1744 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1494 v1
-- Ledger.Epoch._.UTxOState
d_UTxOState_1766 a0 a1 = ()
-- Ledger.Epoch.EpochState
d_EpochState_1876 a0 a1 = ()
data T_EpochState_1876
  = C_'10214'_'44'_'44'_'44'_'10215''7497'''_1894 MAlonzo.Code.Ledger.PParams.T_Acnt_124
                                                  MAlonzo.Code.Ledger.Ledger.T_LState_1750
                                                  MAlonzo.Code.Ledger.Enact.T_EnactState_646
                                                  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658
-- Ledger.Epoch.EpochState.acnt
d_acnt_1886 ::
  T_EpochState_1876 -> MAlonzo.Code.Ledger.PParams.T_Acnt_124
d_acnt_1886 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1894 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ls
d_ls_1888 ::
  T_EpochState_1876 -> MAlonzo.Code.Ledger.Ledger.T_LState_1750
d_ls_1888 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1894 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.es
d_es_1890 ::
  T_EpochState_1876 -> MAlonzo.Code.Ledger.Enact.T_EnactState_646
d_es_1890 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1894 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.fut
d_fut_1892 ::
  T_EpochState_1876 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658
d_fut_1892 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1894 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochEnv
d_NewEpochEnv_1896 a0 a1 = ()
newtype T_NewEpochEnv_1896
  = C_NewEpochEnv'46'constructor_3709 MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1630
-- Ledger.Epoch.NewEpochEnv.stakeDistrs
d_stakeDistrs_1900 ::
  T_NewEpochEnv_1896 -> MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1630
d_stakeDistrs_1900 v0
  = case coe v0 of
      C_NewEpochEnv'46'constructor_3709 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState
d_NewEpochState_1902 a0 a1 = ()
data T_NewEpochState_1902
  = C_'10214'_'44'_'10215''8319''7497'_1912 AgdaAny T_EpochState_1876
-- Ledger.Epoch.NewEpochState.lastEpoch
d_lastEpoch_1908 :: T_NewEpochState_1902 -> AgdaAny
d_lastEpoch_1908 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''8319''7497'_1912 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.epochState
d_epochState_1910 :: T_NewEpochState_1902 -> T_EpochState_1876
d_epochState_1910 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''8319''7497'_1912 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__1934 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'EPOCH'10632'__1934
  = C_EPOCH_2066 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Epoch._.acnt
d_acnt_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.PParams.T_Acnt_124
d_acnt_1938 ~v0 ~v1 v2 = du_acnt_1938 v2
du_acnt_1938 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.PParams.T_Acnt_124
du_acnt_1938 v0
  = coe d_acnt_1886 (coe d_'46'generalizedField'45'eps_9891 v0)
-- Ledger.Epoch._.fut
d_fut_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658
d_fut_1940 ~v0 ~v1 v2 = du_fut_1940 v2
du_fut_1940 ::
  T_GeneralizeTel_9899 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658
du_fut_1940 v0
  = coe d_fut_1892 (coe d_'46'generalizedField'45'eps_9891 v0)
-- Ledger.Epoch._.ls
d_ls_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Ledger.T_LState_1750
d_ls_1942 ~v0 ~v1 v2 = du_ls_1942 v2
du_ls_1942 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Ledger.T_LState_1750
du_ls_1942 v0
  = coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0)
-- Ledger.Epoch._.es
d_es_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Enact.T_EnactState_646
d_es_1946 ~v0 ~v1 v2 = du_es_1946 v2
du_es_1946 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Enact.T_EnactState_646
du_es_1946 v0
  = coe
      MAlonzo.Code.Ledger.Ratify.d_es_1666
      (coe d_fut_1892 (coe d_'46'generalizedField'45'eps_9891 v0))
-- Ledger.Epoch._.removed
d_removed_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_1948 ~v0 ~v1 v2 = du_removed_1948 v2
du_removed_1948 ::
  T_GeneralizeTel_9899 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_1948 v0
  = coe
      MAlonzo.Code.Ledger.Ratify.d_removed_1668
      (coe d_fut_1892 (coe d_'46'generalizedField'45'eps_9891 v0))
-- Ledger.Epoch._.certState
d_certState_1952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Certs.T_CertState_728
d_certState_1952 ~v0 ~v1 v2 = du_certState_1952 v2
du_certState_1952 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Certs.T_CertState_728
du_certState_1952 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_certState_1762
      (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0))
-- Ledger.Epoch._.govSt
d_govSt_1954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1954 ~v0 ~v1 v2 = du_govSt_1954 v2
du_govSt_1954 ::
  T_GeneralizeTel_9899 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_1954 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_govSt_1760
      (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0))
-- Ledger.Epoch._.utxoSt
d_utxoSt_1956 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1616
d_utxoSt_1956 ~v0 ~v1 v2 = du_utxoSt_1956 v2
du_utxoSt_1956 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1616
du_utxoSt_1956 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_1758
      (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0))
-- Ledger.Epoch._.deposits
d_deposits_1960 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1960 ~v0 ~v1 v2 = du_deposits_1960 v2
du_deposits_1960 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_1960 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_deposits_1630
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1758
         (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0)))
-- Ledger.Epoch._.donations
d_donations_1962 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> Integer
d_donations_1962 ~v0 ~v1 v2 = du_donations_1962 v2
du_donations_1962 :: T_GeneralizeTel_9899 -> Integer
du_donations_1962 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_donations_1632
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1758
         (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0)))
-- Ledger.Epoch._.fees
d_fees_1964 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> Integer
d_fees_1964 ~v0 ~v1 v2 = du_fees_1964 v2
du_fees_1964 :: T_GeneralizeTel_9899 -> Integer
du_fees_1964 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1628
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1758
         (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0)))
-- Ledger.Epoch._.utxo
d_utxo_1966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_1966 ~v0 ~v1 v2 = du_utxo_1966 v2
du_utxo_1966 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_1966 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1626
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1758
         (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0)))
-- Ledger.Epoch._.dState
d_dState_1970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Certs.T_DState_688
d_dState_1970 ~v0 ~v1 v2 = du_dState_1970 v2
du_dState_1970 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Certs.T_DState_688
du_dState_1970 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_736
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1762
         (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0)))
-- Ledger.Epoch._.gState
d_gState_1972 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Certs.T_GState_716
d_gState_1972 ~v0 ~v1 v2 = du_gState_1972 v2
du_gState_1972 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Certs.T_GState_716
du_gState_1972 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_gState_740
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1762
         (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0)))
-- Ledger.Epoch._.pState
d_pState_1974 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Certs.T_PState_704
d_pState_1974 ~v0 ~v1 v2 = du_pState_1974 v2
du_pState_1974 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Ledger.Certs.T_PState_704
du_pState_1974 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pState_738
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1762
         (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0)))
-- Ledger.Epoch._.pools
d_pools_1978 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1978 ~v0 ~v1 v2 = du_pools_1978 v2
du_pools_1978 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_1978 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pools_710
      (coe
         MAlonzo.Code.Ledger.Certs.d_pState_738
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1762
            (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0))))
-- Ledger.Epoch._.retiring
d_retiring_1980 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1980 ~v0 ~v1 v2 = du_retiring_1980 v2
du_retiring_1980 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_retiring_1980 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_retiring_712
      (coe
         MAlonzo.Code.Ledger.Certs.d_pState_738
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1762
            (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0))))
-- Ledger.Epoch._.rewards
d_rewards_1984 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1984 ~v0 ~v1 v2 = du_rewards_1984 v2
du_rewards_1984 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_1984 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_rewards_700
      (coe
         MAlonzo.Code.Ledger.Certs.d_dState_736
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1762
            (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0))))
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_1992 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1992 ~v0 ~v1 v2 = du_ccHotKeys_1992 v2
du_ccHotKeys_1992 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1992 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_724
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_740
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1762
            (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0))))
-- Ledger.Epoch._.dreps
d_dreps_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1994 ~v0 ~v1 v2 = du_dreps_1994 v2
du_dreps_1994 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1994 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_722
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_740
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1762
            (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0))))
-- Ledger.Epoch._.treasury
d_treasury_2000 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> Integer
d_treasury_2000 ~v0 ~v1 v2 = du_treasury_2000 v2
du_treasury_2000 :: T_GeneralizeTel_9899 -> Integer
du_treasury_2000 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_treasury_130
      (coe d_acnt_1886 (coe d_'46'generalizedField'45'eps_9891 v0))
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2056 ~v0 ~v1 v2 = du_ccHotKeys_2056 v2
du_ccHotKeys_2056 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2056 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_724
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_740
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1762
            (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0))))
-- Ledger.Epoch._.dreps
d_dreps_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2058 ~v0 ~v1 v2 = du_dreps_2058 v2
du_dreps_2058 ::
  T_GeneralizeTel_9899 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2058 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_722
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_740
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1762
            (coe d_ls_1888 (coe d_'46'generalizedField'45'eps_9891 v0))))
-- Ledger.Epoch._.stakeDistrs
d_stakeDistrs_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_9899 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1630
d_stakeDistrs_2064 ~v0 ~v1 v2 = du_stakeDistrs_2064 v2
du_stakeDistrs_2064 ::
  T_GeneralizeTel_9899 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1630
du_stakeDistrs_2064 v0
  = coe d_stakeDistrs_1900 (coe d_'46'generalizedField'45'Γ_9895 v0)
-- Ledger.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2068 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2068
  = C_NEWEPOCH'45'New_2070 T__'8866'_'8640''10631'_'44'EPOCH'10632'__1934 |
    C_NEWEPOCH'45'Not'45'New_2072
-- Ledger.Epoch..generalizedField-eps
d_'46'generalizedField'45'eps_9891 ::
  T_GeneralizeTel_9899 -> T_EpochState_1876
d_'46'generalizedField'45'eps_9891
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-e
d_'46'generalizedField'45'e_9893 :: T_GeneralizeTel_9899 -> AgdaAny
d_'46'generalizedField'45'e_9893 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-Γ
d_'46'generalizedField'45'Γ_9895 ::
  T_GeneralizeTel_9899 -> T_NewEpochEnv_1896
d_'46'generalizedField'45'Γ_9895 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_9897 ::
  T_GeneralizeTel_9899 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658
d_'46'generalizedField'45'fut''_9897
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_9899 a0 a1 = ()
data T_GeneralizeTel_9899
  = C_mkGeneralizeTel_9901 T_EpochState_1876 AgdaAny
                           T_NewEpochEnv_1896 MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658
