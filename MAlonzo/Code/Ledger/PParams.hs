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

module MAlonzo.Code.Ledger.PParams where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- Ledger.PParams.ProtVer
d_ProtVer_128 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_148 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_ProtVer_128 = erased
-- Ledger.PParams.Acnt
d_Acnt_130 a0 a1 a2 = ()
data T_Acnt_130 = C_Acnt'46'constructor_417 Integer Integer
-- Ledger.PParams.Acnt.treasury
d_treasury_136 :: T_Acnt_130 -> Integer
d_treasury_136 v0
  = case coe v0 of
      C_Acnt'46'constructor_417 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.Acnt.reserves
d_reserves_138 :: T_Acnt_130 -> Integer
d_reserves_138 v0
  = case coe v0 of
      C_Acnt'46'constructor_417 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamGroup
d_PParamGroup_140 a0 a1 a2 = ()
data T_PParamGroup_140
  = C_NetworkGroup_142 | C_EconomicGroup_144 | C_TechnicalGroup_146 |
    C_GovernanceGroup_148
-- Ledger.PParams.DrepThresholds
d_DrepThresholds_150 a0 a1 a2 = ()
data T_DrepThresholds_150
  = C_DrepThresholds'46'constructor_899 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                        MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                        MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                        MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                        MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                        MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                        MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                        MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                        MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                        MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.PParams.DrepThresholds.P1
d_P1_172 ::
  T_DrepThresholds_150 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_172 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2a
d_P2a_174 ::
  T_DrepThresholds_150 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_174 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2b
d_P2b_176 ::
  T_DrepThresholds_150 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_176 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P3
d_P3_178 ::
  T_DrepThresholds_150 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_178 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P4
d_P4_180 ::
  T_DrepThresholds_150 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_180 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5a
d_P5a_182 ::
  T_DrepThresholds_150 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_182 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5b
d_P5b_184 ::
  T_DrepThresholds_150 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_184 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5c
d_P5c_186 ::
  T_DrepThresholds_150 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_186 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5d
d_P5d_188 ::
  T_DrepThresholds_150 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_188 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P6
d_P6_190 ::
  T_DrepThresholds_150 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_190 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds
d_PoolThresholds_192 a0 a1 a2 = ()
data T_PoolThresholds_192
  = C_PoolThresholds'46'constructor_1393 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.PParams.PoolThresholds.Q1
d_Q1_202 ::
  T_PoolThresholds_192 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_202 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1393 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2a
d_Q2a_204 ::
  T_PoolThresholds_192 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_204 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1393 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2b
d_Q2b_206 ::
  T_PoolThresholds_192 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_206 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1393 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q4
d_Q4_208 ::
  T_PoolThresholds_192 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_208 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1393 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams
d_PParams_210 a0 a1 a2 = ()
data T_PParams_210
  = C_PParams'46'constructor_2369 Integer Integer Integer Integer
                                  Integer MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny AgdaAny
                                  Integer Integer Integer Integer Integer AgdaAny AgdaAny Integer
                                  AgdaAny T_DrepThresholds_150 T_PoolThresholds_192 Integer Integer
                                  Integer AgdaAny Integer Integer Integer
-- Ledger.PParams.PParams.maxBlockSize
d_maxBlockSize_264 :: T_PParams_210 -> Integer
d_maxBlockSize_264 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxSize
d_maxTxSize_266 :: T_PParams_210 -> Integer
d_maxTxSize_266 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxHeaderSize
d_maxHeaderSize_268 :: T_PParams_210 -> Integer
d_maxHeaderSize_268 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxValSize
d_maxValSize_270 :: T_PParams_210 -> Integer
d_maxValSize_270 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_272 :: T_PParams_210 -> Integer
d_maxCollateralInputs_272 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.pv
d_pv_274 :: T_PParams_210 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_274 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxExUnits
d_maxTxExUnits_276 :: T_PParams_210 -> AgdaAny
d_maxTxExUnits_276 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_278 :: T_PParams_210 -> AgdaAny
d_maxBlockExUnits_278 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a
d_a_280 :: T_PParams_210 -> Integer
d_a_280 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.b
d_b_282 :: T_PParams_210 -> Integer
d_b_282 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minUTxOValue
d_minUTxOValue_284 :: T_PParams_210 -> Integer
d_minUTxOValue_284 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolDeposit
d_poolDeposit_286 :: T_PParams_210 -> Integer
d_poolDeposit_286 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_288 :: T_PParams_210 -> Integer
d_coinsPerUTxOWord_288 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.prices
d_prices_290 :: T_PParams_210 -> AgdaAny
d_prices_290 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.Emax
d_Emax_292 :: T_PParams_210 -> AgdaAny
d_Emax_292 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.collateralPercentage
d_collateralPercentage_294 :: T_PParams_210 -> Integer
d_collateralPercentage_294 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.costmdls
d_costmdls_296 :: T_PParams_210 -> AgdaAny
d_costmdls_296 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepThresholds
d_drepThresholds_298 :: T_PParams_210 -> T_DrepThresholds_150
d_drepThresholds_298 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolThresholds
d_poolThresholds_300 :: T_PParams_210 -> T_PoolThresholds_192
d_poolThresholds_300 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionLifetime
d_govActionLifetime_302 :: T_PParams_210 -> Integer
d_govActionLifetime_302 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionDeposit
d_govActionDeposit_304 :: T_PParams_210 -> Integer
d_govActionDeposit_304 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepDeposit
d_drepDeposit_306 :: T_PParams_210 -> Integer
d_drepDeposit_306 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepActivity
d_drepActivity_308 :: T_PParams_210 -> AgdaAny
d_drepActivity_308 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMinSize
d_ccMinSize_310 :: T_PParams_210 -> Integer
d_ccMinSize_310 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_312 :: T_PParams_210 -> Integer
d_ccMaxTermLength_312 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minimumAVS
d_minimumAVS_314 :: T_PParams_210 -> Integer
d_minimumAVS_314 v0
  = case coe v0 of
      C_PParams'46'constructor_2369 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.paramsWellFormed
d_paramsWellFormed_316 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_148 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  T_PParams_210 -> ()
d_paramsWellFormed_316 = erased
-- Ledger.PParams._._.Emax
d_Emax_326 :: T_PParams_210 -> AgdaAny
d_Emax_326 v0 = coe d_Emax_292 (coe v0)
-- Ledger.PParams._._.a
d_a_328 :: T_PParams_210 -> Integer
d_a_328 v0 = coe d_a_280 (coe v0)
-- Ledger.PParams._._.b
d_b_330 :: T_PParams_210 -> Integer
d_b_330 v0 = coe d_b_282 (coe v0)
-- Ledger.PParams._._.ccMaxTermLength
d_ccMaxTermLength_332 :: T_PParams_210 -> Integer
d_ccMaxTermLength_332 v0 = coe d_ccMaxTermLength_312 (coe v0)
-- Ledger.PParams._._.ccMinSize
d_ccMinSize_334 :: T_PParams_210 -> Integer
d_ccMinSize_334 v0 = coe d_ccMinSize_310 (coe v0)
-- Ledger.PParams._._.coinsPerUTxOWord
d_coinsPerUTxOWord_336 :: T_PParams_210 -> Integer
d_coinsPerUTxOWord_336 v0 = coe d_coinsPerUTxOWord_288 (coe v0)
-- Ledger.PParams._._.collateralPercentage
d_collateralPercentage_338 :: T_PParams_210 -> Integer
d_collateralPercentage_338 v0
  = coe d_collateralPercentage_294 (coe v0)
-- Ledger.PParams._._.costmdls
d_costmdls_340 :: T_PParams_210 -> AgdaAny
d_costmdls_340 v0 = coe d_costmdls_296 (coe v0)
-- Ledger.PParams._._.drepActivity
d_drepActivity_342 :: T_PParams_210 -> AgdaAny
d_drepActivity_342 v0 = coe d_drepActivity_308 (coe v0)
-- Ledger.PParams._._.drepDeposit
d_drepDeposit_344 :: T_PParams_210 -> Integer
d_drepDeposit_344 v0 = coe d_drepDeposit_306 (coe v0)
-- Ledger.PParams._._.drepThresholds
d_drepThresholds_346 :: T_PParams_210 -> T_DrepThresholds_150
d_drepThresholds_346 v0 = coe d_drepThresholds_298 (coe v0)
-- Ledger.PParams._._.govActionDeposit
d_govActionDeposit_348 :: T_PParams_210 -> Integer
d_govActionDeposit_348 v0 = coe d_govActionDeposit_304 (coe v0)
-- Ledger.PParams._._.govActionLifetime
d_govActionLifetime_350 :: T_PParams_210 -> Integer
d_govActionLifetime_350 v0 = coe d_govActionLifetime_302 (coe v0)
-- Ledger.PParams._._.maxBlockExUnits
d_maxBlockExUnits_352 :: T_PParams_210 -> AgdaAny
d_maxBlockExUnits_352 v0 = coe d_maxBlockExUnits_278 (coe v0)
-- Ledger.PParams._._.maxBlockSize
d_maxBlockSize_354 :: T_PParams_210 -> Integer
d_maxBlockSize_354 v0 = coe d_maxBlockSize_264 (coe v0)
-- Ledger.PParams._._.maxCollateralInputs
d_maxCollateralInputs_356 :: T_PParams_210 -> Integer
d_maxCollateralInputs_356 v0
  = coe d_maxCollateralInputs_272 (coe v0)
-- Ledger.PParams._._.maxHeaderSize
d_maxHeaderSize_358 :: T_PParams_210 -> Integer
d_maxHeaderSize_358 v0 = coe d_maxHeaderSize_268 (coe v0)
-- Ledger.PParams._._.maxTxExUnits
d_maxTxExUnits_360 :: T_PParams_210 -> AgdaAny
d_maxTxExUnits_360 v0 = coe d_maxTxExUnits_276 (coe v0)
-- Ledger.PParams._._.maxTxSize
d_maxTxSize_362 :: T_PParams_210 -> Integer
d_maxTxSize_362 v0 = coe d_maxTxSize_266 (coe v0)
-- Ledger.PParams._._.maxValSize
d_maxValSize_364 :: T_PParams_210 -> Integer
d_maxValSize_364 v0 = coe d_maxValSize_270 (coe v0)
-- Ledger.PParams._._.minUTxOValue
d_minUTxOValue_366 :: T_PParams_210 -> Integer
d_minUTxOValue_366 v0 = coe d_minUTxOValue_284 (coe v0)
-- Ledger.PParams._._.minimumAVS
d_minimumAVS_368 :: T_PParams_210 -> Integer
d_minimumAVS_368 v0 = coe d_minimumAVS_314 (coe v0)
-- Ledger.PParams._._.poolDeposit
d_poolDeposit_370 :: T_PParams_210 -> Integer
d_poolDeposit_370 v0 = coe d_poolDeposit_286 (coe v0)
-- Ledger.PParams._._.poolThresholds
d_poolThresholds_372 :: T_PParams_210 -> T_PoolThresholds_192
d_poolThresholds_372 v0 = coe d_poolThresholds_300 (coe v0)
-- Ledger.PParams._._.prices
d_prices_374 :: T_PParams_210 -> AgdaAny
d_prices_374 v0 = coe d_prices_290 (coe v0)
-- Ledger.PParams._._.pv
d_pv_376 :: T_PParams_210 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_376 v0 = coe d_pv_274 (coe v0)
-- Ledger.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_378 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_148 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'DrepThresholds_378 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_378
du_DecEq'45'DrepThresholds_378 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'DrepThresholds_378
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_899 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_DrepThresholds'46'constructor_899 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                  (coe v21) (coe v10)))
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                               (coe v20) (coe v9)))
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                            (coe v19) (coe v8)))
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                         (coe v18) (coe v7)))
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                      (coe v17) (coe v6)))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                   (coe v16) (coe v5)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                (coe v15) (coe v4)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                             (coe v14) (coe v3)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                          (coe v13) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                       (coe v12) (coe v1)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe
                                       (\ v22 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                       erased)
                                                                    erased)
                                                                 erased)
                                                              erased)
                                                           erased)
                                                        erased)
                                                     erased)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_380 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_148 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PoolThresholds_380 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_380
du_DecEq'45'PoolThresholds_380 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'PoolThresholds_380
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_1393 v1 v2 v3 v4
                -> coe
                     (\ v5 ->
                        case coe v5 of
                          C_PoolThresholds'46'constructor_1393 v6 v7 v8 v9
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                (coe v9) (coe v4)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                             (coe v8) (coe v3)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                          (coe v7) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                       (coe v6) (coe v1)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe
                                       (\ v10 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                     erased)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.DecEq-PParams
d_DecEq'45'PParams_382 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_148 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PParams_382 ~v0 v1 v2 = du_DecEq'45'PParams_382 v1 v2
du_DecEq'45'PParams_382 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'PParams_382 v0 v1
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_2369 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28
                -> coe
                     (\ v29 ->
                        case coe v29 of
                          C_PParams'46'constructor_2369 v30 v31 v32 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                           (coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                                                                                  (coe
                                                                                                                     v55)
                                                                                                                  (coe
                                                                                                                     v28)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                                                                               (coe
                                                                                                                  v54)
                                                                                                               (coe
                                                                                                                  v27)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                                                                            (coe
                                                                                                               v53)
                                                                                                            (coe
                                                                                                               v26)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                                                                         (MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Epoch_30
                                                                                                            (coe
                                                                                                               v0))
                                                                                                         v52
                                                                                                         v25))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                                                                      (coe
                                                                                                         v51)
                                                                                                      (coe
                                                                                                         v24)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                                                                   (coe
                                                                                                      v50)
                                                                                                   (coe
                                                                                                      v23)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                                                                (coe
                                                                                                   v49)
                                                                                                (coe
                                                                                                   v22)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                            (coe
                                                                                                               d_Q4_208
                                                                                                               (coe
                                                                                                                  v21))
                                                                                                            (coe
                                                                                                               d_Q4_208
                                                                                                               (coe
                                                                                                                  v48))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                         (coe
                                                                                                            d_Q2b_206
                                                                                                            (coe
                                                                                                               v21))
                                                                                                         (coe
                                                                                                            d_Q2b_206
                                                                                                            (coe
                                                                                                               v48))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                      (coe
                                                                                                         d_Q2a_204
                                                                                                         (coe
                                                                                                            v21))
                                                                                                      (coe
                                                                                                         d_Q2a_204
                                                                                                         (coe
                                                                                                            v48))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                   (coe
                                                                                                      d_Q1_202
                                                                                                      (coe
                                                                                                         v21))
                                                                                                   (coe
                                                                                                      d_Q1_202
                                                                                                      (coe
                                                                                                         v48))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Function.Bundles.du_mk'8660'_1322
                                                                                                erased
                                                                                                (coe
                                                                                                   (\ v56 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                 erased)
                                                                                                              erased)
                                                                                                           erased)
                                                                                                        erased)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Tactic.Derive.DecEq.du_map''_42
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                                           (coe
                                                                                                                              d_P6_190
                                                                                                                              (coe
                                                                                                                                 v20))
                                                                                                                           (coe
                                                                                                                              d_P6_190
                                                                                                                              (coe
                                                                                                                                 v47))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                                        (coe
                                                                                                                           d_P5d_188
                                                                                                                           (coe
                                                                                                                              v20))
                                                                                                                        (coe
                                                                                                                           d_P5d_188
                                                                                                                           (coe
                                                                                                                              v47))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                                     (coe
                                                                                                                        d_P5c_186
                                                                                                                        (coe
                                                                                                                           v20))
                                                                                                                     (coe
                                                                                                                        d_P5c_186
                                                                                                                        (coe
                                                                                                                           v47))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                                  (coe
                                                                                                                     d_P5b_184
                                                                                                                     (coe
                                                                                                                        v20))
                                                                                                                  (coe
                                                                                                                     d_P5b_184
                                                                                                                     (coe
                                                                                                                        v47))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                               (coe
                                                                                                                  d_P5a_182
                                                                                                                  (coe
                                                                                                                     v20))
                                                                                                               (coe
                                                                                                                  d_P5a_182
                                                                                                                  (coe
                                                                                                                     v47))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                            (coe
                                                                                                               d_P4_180
                                                                                                               (coe
                                                                                                                  v20))
                                                                                                            (coe
                                                                                                               d_P4_180
                                                                                                               (coe
                                                                                                                  v47))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                         (coe
                                                                                                            d_P3_178
                                                                                                            (coe
                                                                                                               v20))
                                                                                                         (coe
                                                                                                            d_P3_178
                                                                                                            (coe
                                                                                                               v47))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                      (coe
                                                                                                         d_P2b_176
                                                                                                         (coe
                                                                                                            v20))
                                                                                                      (coe
                                                                                                         d_P2b_176
                                                                                                         (coe
                                                                                                            v47))))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                   (coe
                                                                                                      d_P2a_174
                                                                                                      (coe
                                                                                                         v20))
                                                                                                   (coe
                                                                                                      d_P2a_174
                                                                                                      (coe
                                                                                                         v47))))
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2468
                                                                                                (coe
                                                                                                   d_P1_172
                                                                                                   (coe
                                                                                                      v20))
                                                                                                (coe
                                                                                                   d_P1_172
                                                                                                   (coe
                                                                                                      v47))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Function.Bundles.du_mk'8660'_1322
                                                                                             erased
                                                                                             (coe
                                                                                                (\ v56 ->
                                                                                                   coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                erased)
                                                                                                                             erased)
                                                                                                                          erased)
                                                                                                                       erased)
                                                                                                                    erased)
                                                                                                                 erased)
                                                                                                              erased)
                                                                                                           erased)
                                                                                                        erased)
                                                                                                     erased)))))
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                                                       (MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Script.d_ps_294
                                                                                             (coe
                                                                                                v1)))
                                                                                       v46 v19))
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                                                    (coe v45)
                                                                                    (coe v18)))
                                                                              (coe
                                                                                 MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                                                 (MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Epoch_30
                                                                                    (coe v0))
                                                                                 v44 v17))
                                                                           (coe
                                                                              MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                                              (MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Script.d_ps_294
                                                                                    (coe v1)))
                                                                              v43 v16))
                                                                        (coe
                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                                           (coe v42) (coe v15)))
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                                        (coe v41) (coe v14)))
                                                                  (coe
                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                                     (coe v40) (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                                  (coe v39) (coe v12)))
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                               (coe v38) (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                            (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Script.d_ps_294
                                                                  (coe v1)))
                                                            v37 v10))
                                                      (coe
                                                         MAlonzo.Code.Interface.DecEq.d__'8799'__20
                                                         (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_ps_294
                                                               (coe v1)))
                                                         v36 v9))
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                      (coe
                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464)
                                                      (coe
                                                         (\ v56 ->
                                                            MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464))
                                                      (coe v35) (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                   (coe v34) (coe v7)))
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                (coe v33) (coe v6)))
                                          (coe
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                             (coe v32) (coe v5)))
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464 (coe v31)
                                          (coe v4)))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464 (coe v30)
                                       (coe v3)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased
                                    (coe
                                       (\ v56 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                       erased)
                                                                                                                    erased)
                                                                                                                 erased)
                                                                                                              erased)
                                                                                                           erased)
                                                                                                        erased)
                                                                                                     erased)
                                                                                                  erased)
                                                                                               erased)
                                                                                            erased)
                                                                                         erased)
                                                                                      erased)
                                                                                   erased)
                                                                                erased)
                                                                             erased)
                                                                          erased)
                                                                       erased)
                                                                    erased)
                                                                 erased)
                                                              erased)
                                                           erased)
                                                        erased)
                                                     erased)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.PParamsDiff
d_PParamsDiff_384 a0 a1 a2 = ()
data T_PParamsDiff_384
  = C_PParamsDiff'46'constructor_430961 (AgdaAny ->
                                         [T_PParamGroup_140])
                                        (T_PParams_210 -> AgdaAny -> T_PParams_210)
                                        (AgdaAny -> Bool)
                                        (AgdaAny ->
                                         MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
                                         T_PParams_210 ->
                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.PParams.PParamsDiff.UpdateT
d_UpdateT_400 :: T_PParamsDiff_384 -> ()
d_UpdateT_400 = erased
-- Ledger.PParams.PParamsDiff.updateGroups
d_updateGroups_402 ::
  T_PParamsDiff_384 -> AgdaAny -> [T_PParamGroup_140]
d_updateGroups_402 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_430961 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.applyUpdate
d_applyUpdate_404 ::
  T_PParamsDiff_384 -> T_PParams_210 -> AgdaAny -> T_PParams_210
d_applyUpdate_404 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_430961 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_406 :: T_PParamsDiff_384 -> AgdaAny -> Bool
d_ppdWellFormed_406 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_430961 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_412 ::
  T_PParamsDiff_384 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_412 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_430961 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams
d_GovParams_414 a0 a1 a2 = ()
data T_GovParams_414
  = C_GovParams'46'constructor_431361 T_PParamsDiff_384
                                      MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                      MAlonzo.Code.Interface.DecEq.T_DecEq_14
-- Ledger.PParams._.UpdateT
d_UpdateT_420 :: T_PParamsDiff_384 -> ()
d_UpdateT_420 = erased
-- Ledger.PParams._.applyUpdate
d_applyUpdate_422 ::
  T_PParamsDiff_384 -> T_PParams_210 -> AgdaAny -> T_PParams_210
d_applyUpdate_422 v0 = coe d_applyUpdate_404 (coe v0)
-- Ledger.PParams._.ppdWellFormed
d_ppdWellFormed_424 :: T_PParamsDiff_384 -> AgdaAny -> Bool
d_ppdWellFormed_424 v0 = coe d_ppdWellFormed_406 (coe v0)
-- Ledger.PParams._.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_426 ::
  T_PParamsDiff_384 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_426 v0
  = coe d_ppdWellFormed'8658'WF_412 (coe v0)
-- Ledger.PParams._.updateGroups
d_updateGroups_428 ::
  T_PParamsDiff_384 -> AgdaAny -> [T_PParamGroup_140]
d_updateGroups_428 v0 = coe d_updateGroups_402 (coe v0)
-- Ledger.PParams.GovParams.ppUpd
d_ppUpd_444 :: T_GovParams_414 -> T_PParamsDiff_384
d_ppUpd_444 v0
  = case coe v0 of
      C_GovParams'46'constructor_431361 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.UpdateT
d_UpdateT_448 :: T_GovParams_414 -> ()
d_UpdateT_448 = erased
-- Ledger.PParams.GovParams._.applyUpdate
d_applyUpdate_450 ::
  T_GovParams_414 -> T_PParams_210 -> AgdaAny -> T_PParams_210
d_applyUpdate_450 v0
  = coe d_applyUpdate_404 (coe d_ppUpd_444 (coe v0))
-- Ledger.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_452 :: T_GovParams_414 -> AgdaAny -> Bool
d_ppdWellFormed_452 v0
  = coe d_ppdWellFormed_406 (coe d_ppUpd_444 (coe v0))
-- Ledger.PParams.GovParams._.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_454 ::
  T_GovParams_414 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_454 v0
  = coe d_ppdWellFormed'8658'WF_412 (coe d_ppUpd_444 (coe v0))
-- Ledger.PParams.GovParams._.updateGroups
d_updateGroups_456 ::
  T_GovParams_414 -> AgdaAny -> [T_PParamGroup_140]
d_updateGroups_456 v0
  = coe d_updateGroups_402 (coe d_ppUpd_444 (coe v0))
-- Ledger.PParams.GovParams.ppHashingScheme
d_ppHashingScheme_458 ::
  T_GovParams_414 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_458 v0
  = case coe v0 of
      C_GovParams'46'constructor_431361 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.DecEq-T
d_DecEq'45'T_462 ::
  T_GovParams_414 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_462 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe d_ppHashingScheme_458 (coe v0))
-- Ledger.PParams.GovParams._.DecEq-THash
d_DecEq'45'THash_464 ::
  T_GovParams_414 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_464 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe d_ppHashingScheme_458 (coe v0))
-- Ledger.PParams.GovParams._.THash
d_THash_466 :: T_GovParams_414 -> ()
d_THash_466 = erased
-- Ledger.PParams.GovParams._.T-Hashable
d_T'45'Hashable_468 ::
  T_GovParams_414 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_468 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe d_ppHashingScheme_458 (coe v0))
-- Ledger.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_470 ::
  T_GovParams_414 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'UpdT_470 v0
  = case coe v0 of
      C_GovParams'46'constructor_431361 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
