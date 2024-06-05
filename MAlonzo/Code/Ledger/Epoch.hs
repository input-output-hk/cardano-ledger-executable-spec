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
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1090 (coe v0))
-- _.Number-Epoch
d_Number'45'Epoch_256 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_256 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354 (coe v0))
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
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354 (coe v0))
-- Ledger.Epoch._.EnactState
d_EnactState_1586 a0 a1 = ()
-- Ledger.Epoch._.ccCreds
d_ccCreds_1588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ccCreds_1588 ~v0 ~v1 = du_ccCreds_1588
du_ccCreds_1588 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_ccCreds_1588 = coe MAlonzo.Code.Ledger.Enact.du_ccCreds_752
-- Ledger.Epoch._.LState
d_LState_1644 a0 a1 = ()
-- Ledger.Epoch._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1684 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1720 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1742 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1742 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1684 = erased
-- Ledger.Epoch._.RatifyState
d_RatifyState_1702 a0 a1 = ()
-- Ledger.Epoch._.StakeDistrs
d_StakeDistrs_1704 a0 a1 = ()
-- Ledger.Epoch._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1820 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1820 v0 ~v1
  = du_DecEq'45'DepositPurpose_1820 v0
du_DecEq'45'DepositPurpose_1820 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1820 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1756 (coe v0)
-- Ledger.Epoch._.DepositPurpose
d_DepositPurpose_1822 a0 a1 = ()
-- Ledger.Epoch._.HasCoin-Map
d_HasCoin'45'Map_1828 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'Map_1828 ~v0 ~v1 = du_HasCoin'45'Map_1828
du_HasCoin'45'Map_1828 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
du_HasCoin'45'Map_1828 v0 v1
  = coe MAlonzo.Code.Ledger.Utxo.du_HasCoin'45'Map_1578 v1
-- Ledger.Epoch._.UTxOState
d_UTxOState_1850 a0 a1 = ()
-- Ledger.Epoch.EpochState
d_EpochState_1960 a0 a1 = ()
data T_EpochState_1960
  = C_'10214'_'44'_'44'_'44'_'10215''7497'''_1978 MAlonzo.Code.Ledger.PParams.T_Acnt_126
                                                  MAlonzo.Code.Ledger.Ledger.T_LState_1834
                                                  MAlonzo.Code.Ledger.Enact.T_EnactState_730
                                                  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1742
-- Ledger.Epoch.EpochState.acnt
d_acnt_1970 ::
  T_EpochState_1960 -> MAlonzo.Code.Ledger.PParams.T_Acnt_126
d_acnt_1970 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1978 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.ls
d_ls_1972 ::
  T_EpochState_1960 -> MAlonzo.Code.Ledger.Ledger.T_LState_1834
d_ls_1972 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1978 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.es
d_es_1974 ::
  T_EpochState_1960 -> MAlonzo.Code.Ledger.Enact.T_EnactState_730
d_es_1974 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1978 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.EpochState.fut
d_fut_1976 ::
  T_EpochState_1960 -> MAlonzo.Code.Ledger.Ratify.T_RatifyState_1742
d_fut_1976 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7497'''_1978 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochEnv
d_NewEpochEnv_1980 a0 a1 = ()
newtype T_NewEpochEnv_1980
  = C_NewEpochEnv'46'constructor_3811 MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1714
-- Ledger.Epoch.NewEpochEnv.stakeDistrs
d_stakeDistrs_1984 ::
  T_NewEpochEnv_1980 -> MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1714
d_stakeDistrs_1984 v0
  = case coe v0 of
      C_NewEpochEnv'46'constructor_3811 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState
d_NewEpochState_1986 a0 a1 = ()
data T_NewEpochState_1986
  = C_'10214'_'44'_'10215''8319''7497'_1996 AgdaAny T_EpochState_1960
-- Ledger.Epoch.NewEpochState.lastEpoch
d_lastEpoch_1992 :: T_NewEpochState_1986 -> AgdaAny
d_lastEpoch_1992 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''8319''7497'_1996 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.NewEpochState.epochState
d_epochState_1994 :: T_NewEpochState_1986 -> T_EpochState_1960
d_epochState_1994 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''8319''7497'_1996 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2018 a0 a1 a2 a3 a4 a5
  = ()
newtype T__'8866'_'8640''10631'_'44'EPOCH'10632'__2018
  = C_EPOCH_2150 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Epoch._.acnt
d_acnt_2022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.PParams.T_Acnt_126
d_acnt_2022 ~v0 ~v1 v2 = du_acnt_2022 v2
du_acnt_2022 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.PParams.T_Acnt_126
du_acnt_2022 v0
  = coe d_acnt_1970 (coe d_'46'generalizedField'45'eps_9993 v0)
-- Ledger.Epoch._.fut
d_fut_2024 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1742
d_fut_2024 ~v0 ~v1 v2 = du_fut_2024 v2
du_fut_2024 ::
  T_GeneralizeTel_10001 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1742
du_fut_2024 v0
  = coe d_fut_1976 (coe d_'46'generalizedField'45'eps_9993 v0)
-- Ledger.Epoch._.ls
d_ls_2026 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Ledger.T_LState_1834
d_ls_2026 ~v0 ~v1 v2 = du_ls_2026 v2
du_ls_2026 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Ledger.T_LState_1834
du_ls_2026 v0
  = coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0)
-- Ledger.Epoch._.es
d_es_2030 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Enact.T_EnactState_730
d_es_2030 ~v0 ~v1 v2 = du_es_2030 v2
du_es_2030 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Enact.T_EnactState_730
du_es_2030 v0
  = coe
      MAlonzo.Code.Ledger.Ratify.d_es_1750
      (coe d_fut_1976 (coe d_'46'generalizedField'45'eps_9993 v0))
-- Ledger.Epoch._.removed
d_removed_2032 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2032 ~v0 ~v1 v2 = du_removed_2032 v2
du_removed_2032 ::
  T_GeneralizeTel_10001 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_removed_2032 v0
  = coe
      MAlonzo.Code.Ledger.Ratify.d_removed_1752
      (coe d_fut_1976 (coe d_'46'generalizedField'45'eps_9993 v0))
-- Ledger.Epoch._.certState
d_certState_2036 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Certs.T_CertState_812
d_certState_2036 ~v0 ~v1 v2 = du_certState_2036 v2
du_certState_2036 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Certs.T_CertState_812
du_certState_2036 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_certState_1846
      (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0))
-- Ledger.Epoch._.govSt
d_govSt_2038 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2038 ~v0 ~v1 v2 = du_govSt_2038 v2
du_govSt_2038 ::
  T_GeneralizeTel_10001 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2038 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_govSt_1844
      (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0))
-- Ledger.Epoch._.utxoSt
d_utxoSt_2040 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1700
d_utxoSt_2040 ~v0 ~v1 v2 = du_utxoSt_2040 v2
du_utxoSt_2040 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Utxo.T_UTxOState_1700
du_utxoSt_2040 v0
  = coe
      MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
      (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0))
-- Ledger.Epoch._.deposits
d_deposits_2044 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2044 ~v0 ~v1 v2 = du_deposits_2044 v2
du_deposits_2044 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deposits_2044 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_deposits_1714
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
         (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0)))
-- Ledger.Epoch._.donations
d_donations_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> Integer
d_donations_2046 ~v0 ~v1 v2 = du_donations_2046 v2
du_donations_2046 :: T_GeneralizeTel_10001 -> Integer
du_donations_2046 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_donations_1716
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
         (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0)))
-- Ledger.Epoch._.fees
d_fees_2048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> Integer
d_fees_2048 ~v0 ~v1 v2 = du_fees_2048 v2
du_fees_2048 :: T_GeneralizeTel_10001 -> Integer
du_fees_2048 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_fees_1712
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
         (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0)))
-- Ledger.Epoch._.utxo
d_utxo_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2050 ~v0 ~v1 v2 = du_utxo_2050 v2
du_utxo_2050 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2050 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.d_utxo_1710
      (coe
         MAlonzo.Code.Ledger.Ledger.d_utxoSt_1842
         (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0)))
-- Ledger.Epoch._.dState
d_dState_2054 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Certs.T_DState_772
d_dState_2054 ~v0 ~v1 v2 = du_dState_2054 v2
du_dState_2054 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Certs.T_DState_772
du_dState_2054 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dState_820
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1846
         (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0)))
-- Ledger.Epoch._.gState
d_gState_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Certs.T_GState_800
d_gState_2056 ~v0 ~v1 v2 = du_gState_2056 v2
du_gState_2056 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Certs.T_GState_800
du_gState_2056 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_gState_824
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1846
         (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0)))
-- Ledger.Epoch._.pState
d_pState_2058 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Certs.T_PState_788
d_pState_2058 ~v0 ~v1 v2 = du_pState_2058 v2
du_pState_2058 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Ledger.Certs.T_PState_788
du_pState_2058 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pState_822
      (coe
         MAlonzo.Code.Ledger.Ledger.d_certState_1846
         (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0)))
-- Ledger.Epoch._.pools
d_pools_2062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2062 ~v0 ~v1 v2 = du_pools_2062 v2
du_pools_2062 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pools_2062 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_pools_794
      (coe
         MAlonzo.Code.Ledger.Certs.d_pState_822
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1846
            (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0))))
-- Ledger.Epoch._.retiring
d_retiring_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2064 ~v0 ~v1 v2 = du_retiring_2064 v2
du_retiring_2064 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_retiring_2064 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_retiring_796
      (coe
         MAlonzo.Code.Ledger.Certs.d_pState_822
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1846
            (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0))))
-- Ledger.Epoch._.rewards
d_rewards_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2068 ~v0 ~v1 v2 = du_rewards_2068 v2
du_rewards_2068 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2068 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_rewards_784
      (coe
         MAlonzo.Code.Ledger.Certs.d_dState_820
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1846
            (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0))))
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2076 ~v0 ~v1 v2 = du_ccHotKeys_2076 v2
du_ccHotKeys_2076 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2076 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_808
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_824
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1846
            (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0))))
-- Ledger.Epoch._.dreps
d_dreps_2078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2078 ~v0 ~v1 v2 = du_dreps_2078 v2
du_dreps_2078 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2078 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_806
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_824
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1846
            (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0))))
-- Ledger.Epoch._.treasury
d_treasury_2084 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> Integer
d_treasury_2084 ~v0 ~v1 v2 = du_treasury_2084 v2
du_treasury_2084 :: T_GeneralizeTel_10001 -> Integer
du_treasury_2084 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_treasury_132
      (coe d_acnt_1970 (coe d_'46'generalizedField'45'eps_9993 v0))
-- Ledger.Epoch._.ccHotKeys
d_ccHotKeys_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2140 ~v0 ~v1 v2 = du_ccHotKeys_2140 v2
du_ccHotKeys_2140 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_2140 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_ccHotKeys_808
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_824
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1846
            (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0))))
-- Ledger.Epoch._.dreps
d_dreps_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2142 ~v0 ~v1 v2 = du_dreps_2142 v2
du_dreps_2142 ::
  T_GeneralizeTel_10001 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_2142 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_dreps_806
      (coe
         MAlonzo.Code.Ledger.Certs.d_gState_824
         (coe
            MAlonzo.Code.Ledger.Ledger.d_certState_1846
            (coe d_ls_1972 (coe d_'46'generalizedField'45'eps_9993 v0))))
-- Ledger.Epoch._.stakeDistrs
d_stakeDistrs_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1480 ->
  T_GeneralizeTel_10001 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1714
d_stakeDistrs_2148 ~v0 ~v1 v2 = du_stakeDistrs_2148 v2
du_stakeDistrs_2148 ::
  T_GeneralizeTel_10001 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1714
du_stakeDistrs_2148 v0
  = coe d_stakeDistrs_1984 (coe d_'46'generalizedField'45'Γ_9997 v0)
-- Ledger.Epoch._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2152 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2152
  = C_NEWEPOCH'45'New_2154 T__'8866'_'8640''10631'_'44'EPOCH'10632'__2018 |
    C_NEWEPOCH'45'Not'45'New_2156
-- Ledger.Epoch..generalizedField-eps
d_'46'generalizedField'45'eps_9993 ::
  T_GeneralizeTel_10001 -> T_EpochState_1960
d_'46'generalizedField'45'eps_9993
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-e
d_'46'generalizedField'45'e_9995 ::
  T_GeneralizeTel_10001 -> AgdaAny
d_'46'generalizedField'45'e_9995 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-Γ
d_'46'generalizedField'45'Γ_9997 ::
  T_GeneralizeTel_10001 -> T_NewEpochEnv_1980
d_'46'generalizedField'45'Γ_9997 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch..generalizedField-fut'
d_'46'generalizedField'45'fut''_9999 ::
  T_GeneralizeTel_10001 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1742
d_'46'generalizedField'45'fut''_9999
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Epoch.GeneralizeTel
d_GeneralizeTel_10001 a0 a1 = ()
data T_GeneralizeTel_10001
  = C_mkGeneralizeTel_10003 T_EpochState_1960 AgdaAny
                            T_NewEpochEnv_1980 MAlonzo.Code.Ledger.Ratify.T_RatifyState_1742
