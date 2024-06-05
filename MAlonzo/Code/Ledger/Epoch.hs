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
d_Acnt_34 a0 = ()
-- _.CertState
d_CertState_60 a0 = ()
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_132 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_132 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_132 v1 v2 v3
du_DecEq'45'RwdAddr_132 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_132 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v0)
      (coe v1) (coe v2)
-- _.Epoch
d_Epoch_176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_176 = erased
-- _.GState
d_GState_188 a0 = ()
-- _.NetworkId
d_NetworkId_246 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny
d_NetworkId_246 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088 (coe v0))
-- _.Number-Epoch
d_Number'45'Epoch_256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_256 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
-- _.PState
d_PState_280 a0 = ()
-- _.addEpoch
d_addEpoch_420 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_420 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
-- Ledger.Epoch._.EnactState
d_EnactState_1584 a0 a1 = ()
-- Ledger.Epoch._.ccCreds
d_ccCreds_1586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ccCreds_1586 ~v0 ~v1 = du_ccCreds_1586
du_ccCreds_1586 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_ccCreds_1586 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_750
-- Ledger.Epoch._.LState
d_LState_1642 a0 a1 = ()
-- Ledger.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1682 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1718 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1740 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1740 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1682 = erased
-- Ledger.Epoch._.RatifyState
d_RatifyState_1700 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs
d_StakeDistrs_1702 a0 a1 = ()
-- Ledger.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1818 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1818 v0 ~v1
  = du_DecEq'45'DepositPurpose_1818 v0
du_DecEq'45'DepositPurpose_1818 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1818 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1754 (coe v0)
-- Ledger.Epoch._.DepositPurpose
d_DepositPurpose_1820 a0 a1 = ()
-- Ledger.Epoch._.HasCoin-Map
d_HasCoin'45'Map_1826 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1826 ~v0 ~v1 = du_HasCoin'45'Map_1826
du_HasCoin'45'Map_1826 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1826 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1576 v1
-- Ledger.Epoch._.UTxOState
d_UTxOState_1848 a0 a1 = ()
-- Ledger.Epoch.EpochState
d_EpochState_1958 a0 a1 = ()
data T_EpochState_1958
  = C_'10214'_'44'_'44'_'44'_'10215''7497'''_1976 MAlonzo.Code.Ledger.PParams.T_Acnt_126
                                                  MAlonzo.Code.Ledger.Ledger.T_LState_1832
                                                  MAlonzo.Code.Ledger.Enact.T_EnactState_728
                                                  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1740
-- Ledger.Epoch.EpochState.acnt
d_acnt_1968 ::
  T_EpochState_1958 -> MAlonzo.Code.Ledger.PParams.T_Acnt_126
d_acnt_1968 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1976 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ls
d_ls_1970 ::
  T_EpochState_1958 -> MAlonzo.Code.Ledger.Ledger.T_LState_1832
d_ls_1970 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1976 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.es
d_es_1972 ::
  T_EpochState_1958 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_es_1972 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1976 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.fut
d_fut_1974 ::
  T_EpochState_1958 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1740
d_fut_1974 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1976 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochEnv
d_NewEpochEnv_1978 a0 a1 = ()
newtype T_NewEpochEnv_1978
  = C_NewEpochEnv'46'constructor_3807 MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1712
-- Ledger.Epoch.NewEpochEnv.stakeDistrs
d_stakeDistrs_1982 ::
  T_NewEpochEnv_1978 -> MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1712
d_stakeDistrs_1982 v0
  = case coe v0 of
      C_NewEpochEnv'46'constructor_3807 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState
d_NewEpochState_1984 a0 a1 = ()
data T_NewEpochState_1984
  = C_'10214'_'44'_'10215''8319''7497'_1994 AgdaAny T_EpochState_1958
-- Ledger.Epoch.NewEpochState.lastEpoch
d_lastEpoch_1990 :: T_NewEpochState_1984 -> AgdaAny
d_lastEpoch_1990 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''8319''7497'_1994 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.epochState
d_epochState_1992 :: T_NewEpochState_1984 -> T_EpochState_1958
d_epochState_1992 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''8319''7497'_1994 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2016 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'EPOCH'10632'__2016
  = C_EPOCH_2148 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Epoch._.acnt
d_acnt_2020 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.PParams.T_Acnt_126
d_acnt_2020 ~v0 ~v1 v2 = du_acnt_2020 v2
du_acnt_2020 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.PParams.T_Acnt_126
du_acnt_2020 v0
  = coe d_acnt_1968 (coe d_'46'generalizedField'45'eps_9989 v0)
-- Ledger.Epoch._.fut
d_fut_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1740
d_fut_2022 ~v0 ~v1 v2 = du_fut_2022 v2
du_fut_2022 ::
  T_GeneralizeTel_9997 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1740
du_fut_2022 v0
  = coe d_fut_1974 (coe d_'46'generalizedField'45'eps_9989 v0)
-- Ledger.Epoch._.ls
d_ls_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Ledger.T_LState_1832
d_ls_2024 ~v0 ~v1 v2 = du_ls_2024 v2
du_ls_2024 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Ledger.T_LState_1832
du_ls_2024 v0
  = coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0)
-- Ledger.Epoch._.es
d_es_2028 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_es_2028 ~v0 ~v1 v2 = du_es_2028 v2
du_es_2028 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
du_es_2028 v0
  = coe
      MAlonzo.Code.Ledger.Ratify.d_es_1748
      (coe d_fut_1974 (coe d_'46'generalizedField'45'eps_9989 v0))
-- Ledger.Epoch._.removed
d_removed_2030 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2030 ~v0 ~v1 v2 = du_removed_2030 v2
du_removed_2030 ::
  T_GeneralizeTel_9997 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_2030 v0
  = coe
      MAlonzo.Code.Ledger.Ratify.d_removed_1750
      (coe d_fut_1974 (coe d_'46'generalizedField'45'eps_9989 v0))
-- Ledger.Epoch._.certState
d_certState_2034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Certs.T_CertState_810
d_certState_2034 ~v0 ~v1 v2 = du_certState_2034 v2
du_certState_2034 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Certs.T_CertState_810
du_certState_2034 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_certState_1844
      (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0))
-- Ledger.Epoch._.govSt
d_govSt_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2036 ~v0 ~v1 v2 = du_govSt_2036 v2
du_govSt_2036 ::
  T_GeneralizeTel_9997 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2036 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_govSt_1842
      (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0))
-- Ledger.Epoch._.utxoSt
d_utxoSt_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
d_utxoSt_2038 ~v0 ~v1 v2 = du_utxoSt_2038 v2
du_utxoSt_2038 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1698
du_utxoSt_2038 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
      (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0))
-- Ledger.Epoch._.deposits
d_deposits_2042 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2042 ~v0 ~v1 v2 = du_deposits_2042 v2
du_deposits_2042 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2042 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_deposits_1712
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
         (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0)))
-- Ledger.Epoch._.donations
d_donations_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> Integer
d_donations_2044 ~v0 ~v1 v2 = du_donations_2044 v2
du_donations_2044 :: T_GeneralizeTel_9997 -> Integer
du_donations_2044 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_donations_1714
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
         (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0)))
-- Ledger.Epoch._.fees
d_fees_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> Integer
d_fees_2046 ~v0 ~v1 v2 = du_fees_2046 v2
du_fees_2046 :: T_GeneralizeTel_9997 -> Integer
du_fees_2046 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1710
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
         (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0)))
-- Ledger.Epoch._.utxo
d_utxo_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2048 ~v0 ~v1 v2 = du_utxo_2048 v2
du_utxo_2048 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2048 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1708
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1840
         (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0)))
-- Ledger.Epoch._.dState
d_dState_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Certs.T_DState_770
d_dState_2052 ~v0 ~v1 v2 = du_dState_2052 v2
du_dState_2052 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Certs.T_DState_770
du_dState_2052 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_818
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1844
         (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0)))
-- Ledger.Epoch._.gState
d_gState_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Certs.T_GState_798
d_gState_2054 ~v0 ~v1 v2 = du_gState_2054 v2
du_gState_2054 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Certs.T_GState_798
du_gState_2054 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_gState_822
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1844
         (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0)))
-- Ledger.Epoch._.pState
d_pState_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Certs.T_PState_786
d_pState_2056 ~v0 ~v1 v2 = du_pState_2056 v2
du_pState_2056 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Ledger.Certs.T_PState_786
du_pState_2056 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pState_820
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1844
         (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0)))
-- Ledger.Epoch._.pools
d_pools_2060 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2060 ~v0 ~v1 v2 = du_pools_2060 v2
du_pools_2060 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2060 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pools_792
      (coe
         MAlonzo.Code.Ledger.Certs.d_pState_820
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1844
            (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0))))
-- Ledger.Epoch._.retiring
d_retiring_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2062 ~v0 ~v1 v2 = du_retiring_2062 v2
du_retiring_2062 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_retiring_2062 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_retiring_794
      (coe
         MAlonzo.Code.Ledger.Certs.d_pState_820
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1844
            (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0))))
-- Ledger.Epoch._.rewards
d_rewards_2066 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2066 ~v0 ~v1 v2 = du_rewards_2066 v2
du_rewards_2066 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2066 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_rewards_782
      (coe
         MAlonzo.Code.Ledger.Certs.d_dState_818
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1844
            (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0))))
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2074 ~v0 ~v1 v2 = du_ccHotKeys_2074 v2
du_ccHotKeys_2074 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2074 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_806
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_822
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1844
            (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0))))
-- Ledger.Epoch._.dreps
d_dreps_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2076 ~v0 ~v1 v2 = du_dreps_2076 v2
du_dreps_2076 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2076 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_804
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_822
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1844
            (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0))))
-- Ledger.Epoch._.treasury
d_treasury_2082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> Integer
d_treasury_2082 ~v0 ~v1 v2 = du_treasury_2082 v2
du_treasury_2082 :: T_GeneralizeTel_9997 -> Integer
du_treasury_2082 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_treasury_132
      (coe d_acnt_1968 (coe d_'46'generalizedField'45'eps_9989 v0))
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2138 ~v0 ~v1 v2 = du_ccHotKeys_2138 v2
du_ccHotKeys_2138 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2138 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_806
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_822
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1844
            (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0))))
-- Ledger.Epoch._.dreps
d_dreps_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2140 ~v0 ~v1 v2 = du_dreps_2140 v2
du_dreps_2140 ::
  T_GeneralizeTel_9997 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2140 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_804
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_822
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1844
            (coe d_ls_1970 (coe d_'46'generalizedField'45'eps_9989 v0))))
-- Ledger.Epoch._.stakeDistrs
d_stakeDistrs_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  T_GeneralizeTel_9997 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1712
d_stakeDistrs_2146 ~v0 ~v1 v2 = du_stakeDistrs_2146 v2
du_stakeDistrs_2146 ::
  T_GeneralizeTel_9997 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1712
du_stakeDistrs_2146 v0
  = coe d_stakeDistrs_1982 (coe d_'46'generalizedField'45'Γ_9993 v0)
-- Ledger.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2150 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2150
  = C_NEWEPOCH'45'New_2152 T__'8866'_'8640''10631'_'44'EPOCH'10632'__2016 |
    C_NEWEPOCH'45'Not'45'New_2154
-- Ledger.Epoch..generalizedField-eps
d_'46'generalizedField'45'eps_9989 ::
  T_GeneralizeTel_9997 -> T_EpochState_1958
d_'46'generalizedField'45'eps_9989
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-e
d_'46'generalizedField'45'e_9991 :: T_GeneralizeTel_9997 -> AgdaAny
d_'46'generalizedField'45'e_9991 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-Γ
d_'46'generalizedField'45'Γ_9993 ::
  T_GeneralizeTel_9997 -> T_NewEpochEnv_1978
d_'46'generalizedField'45'Γ_9993 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_9995 ::
  T_GeneralizeTel_9997 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1740
d_'46'generalizedField'45'fut''_9995
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_9997 a0 a1 = ()
data T_GeneralizeTel_9997
  = C_mkGeneralizeTel_9999 T_EpochState_1958 AgdaAny
                           T_NewEpochEnv_1978 MAlonzo.Code.Ledger.Ratify.T_RatifyState_1740
