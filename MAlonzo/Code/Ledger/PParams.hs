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
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasEmptySet
import qualified MAlonzo.Code.Interface.HasEmptySet.Instances
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- Ledger.PParams.Acnt
d_Acnt_126 a0 a1 a2 = ()
data T_Acnt_126 = C_Acnt'46'constructor_391 Integer Integer
-- Ledger.PParams.Acnt.treasury
d_treasury_132 :: T_Acnt_126 -> Integer
d_treasury_132 v0
  = case coe v0 of
      C_Acnt'46'constructor_391 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.Acnt.reserves
d_reserves_134 :: T_Acnt_126 -> Integer
d_reserves_134 v0
  = case coe v0 of
      C_Acnt'46'constructor_391 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.ProtVer
d_ProtVer_136 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_ProtVer_136 = erased
-- Ledger.PParams.pvCanFollow
d_pvCanFollow_138 a0 a1 a2 a3 a4 = ()
data T_pvCanFollow_138
  = C_canFollowMajor_140 | C_canFollowMinor_142
-- Ledger.PParams.PParamGroup
d_PParamGroup_144 a0 a1 a2 = ()
data T_PParamGroup_144
  = C_NetworkGroup_146 | C_EconomicGroup_148 | C_TechnicalGroup_150 |
    C_GovernanceGroup_152 | C_SecurityGroup_154
-- Ledger.PParams.DrepThresholds
d_DrepThresholds_156 a0 a1 a2 = ()
data T_DrepThresholds_156
  = C_DrepThresholds'46'constructor_1465 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
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
d_P1_178 ::
  T_DrepThresholds_156 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_178 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1465 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2a
d_P2a_180 ::
  T_DrepThresholds_156 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_180 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1465 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P2b
d_P2b_182 ::
  T_DrepThresholds_156 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_182 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1465 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P3
d_P3_184 ::
  T_DrepThresholds_156 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_184 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1465 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P4
d_P4_186 ::
  T_DrepThresholds_156 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_186 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1465 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5a
d_P5a_188 ::
  T_DrepThresholds_156 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_188 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1465 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5b
d_P5b_190 ::
  T_DrepThresholds_156 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_190 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1465 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5c
d_P5c_192 ::
  T_DrepThresholds_156 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_192 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1465 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P5d
d_P5d_194 ::
  T_DrepThresholds_156 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_194 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1465 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.DrepThresholds.P6
d_P6_196 ::
  T_DrepThresholds_156 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_196 v0
  = case coe v0 of
      C_DrepThresholds'46'constructor_1465 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds
d_PoolThresholds_198 a0 a1 a2 = ()
data T_PoolThresholds_198
  = C_PoolThresholds'46'constructor_1939 MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
                                         MAlonzo.Code.Data.Rational.Base.T_ℚ_6
-- Ledger.PParams.PoolThresholds.Q1
d_Q1_210 ::
  T_PoolThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_210 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1939 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2a
d_Q2a_212 ::
  T_PoolThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_212 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1939 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q2b
d_Q2b_214 ::
  T_PoolThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_214 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1939 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q4
d_Q4_216 ::
  T_PoolThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_216 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1939 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PoolThresholds.Q5e
d_Q5e_218 ::
  T_PoolThresholds_198 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_218 v0
  = case coe v0 of
      C_PoolThresholds'46'constructor_1939 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams
d_PParams_220 a0 a1 a2 = ()
data T_PParams_220
  = C_PParams'46'constructor_3099 Integer Integer Integer Integer
                                  Integer AgdaAny AgdaAny MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  Integer Integer Integer Integer Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 AgdaAny Integer
                                  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 AgdaAny Integer Integer
                                  AgdaAny T_DrepThresholds_156 T_PoolThresholds_198 Integer Integer
                                  Integer AgdaAny Integer Integer
-- Ledger.PParams.PParams.maxBlockSize
d_maxBlockSize_280 :: T_PParams_220 -> Integer
d_maxBlockSize_280 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxSize
d_maxTxSize_282 :: T_PParams_220 -> Integer
d_maxTxSize_282 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxHeaderSize
d_maxHeaderSize_284 :: T_PParams_220 -> Integer
d_maxHeaderSize_284 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxValSize
d_maxValSize_286 :: T_PParams_220 -> Integer
d_maxValSize_286 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxCollateralInputs
d_maxCollateralInputs_288 :: T_PParams_220 -> Integer
d_maxCollateralInputs_288 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxTxExUnits
d_maxTxExUnits_290 :: T_PParams_220 -> AgdaAny
d_maxTxExUnits_290 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.maxBlockExUnits
d_maxBlockExUnits_292 :: T_PParams_220 -> AgdaAny
d_maxBlockExUnits_292 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.pv
d_pv_294 :: T_PParams_220 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_294 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a
d_a_296 :: T_PParams_220 -> Integer
d_a_296 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.b
d_b_298 :: T_PParams_220 -> Integer
d_b_298 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.keyDeposit
d_keyDeposit_300 :: T_PParams_220 -> Integer
d_keyDeposit_300 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolDeposit
d_poolDeposit_302 :: T_PParams_220 -> Integer
d_poolDeposit_302 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_304 :: T_PParams_220 -> Integer
d_coinsPerUTxOByte_304 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_306 ::
  T_PParams_220 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_306 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.prices
d_prices_308 :: T_PParams_220 -> AgdaAny
d_prices_308 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.minUTxOValue
d_minUTxOValue_310 :: T_PParams_220 -> Integer
d_minUTxOValue_310 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.a0
d_a0_312 :: T_PParams_220 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_312 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.Emax
d_Emax_314 :: T_PParams_220 -> AgdaAny
d_Emax_314 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.nopt
d_nopt_316 :: T_PParams_220 -> Integer
d_nopt_316 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.collateralPercentage
d_collateralPercentage_318 :: T_PParams_220 -> Integer
d_collateralPercentage_318 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.costmdls
d_costmdls_320 :: T_PParams_220 -> AgdaAny
d_costmdls_320 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepThresholds
d_drepThresholds_322 :: T_PParams_220 -> T_DrepThresholds_156
d_drepThresholds_322 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.poolThresholds
d_poolThresholds_324 :: T_PParams_220 -> T_PoolThresholds_198
d_poolThresholds_324 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionLifetime
d_govActionLifetime_326 :: T_PParams_220 -> Integer
d_govActionLifetime_326 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.govActionDeposit
d_govActionDeposit_328 :: T_PParams_220 -> Integer
d_govActionDeposit_328 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepDeposit
d_drepDeposit_330 :: T_PParams_220 -> Integer
d_drepDeposit_330 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.drepActivity
d_drepActivity_332 :: T_PParams_220 -> AgdaAny
d_drepActivity_332 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMinSize
d_ccMinSize_334 :: T_PParams_220 -> Integer
d_ccMinSize_334 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParams.ccMaxTermLength
d_ccMaxTermLength_336 :: T_PParams_220 -> Integer
d_ccMaxTermLength_336 v0
  = case coe v0 of
      C_PParams'46'constructor_3099 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.paramsWellFormed
d_paramsWellFormed_338 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParams_220 -> ()
d_paramsWellFormed_338 = erased
-- Ledger.PParams._._.Emax
d_Emax_348 :: T_PParams_220 -> AgdaAny
d_Emax_348 v0 = coe d_Emax_314 (coe v0)
-- Ledger.PParams._._.a
d_a_350 :: T_PParams_220 -> Integer
d_a_350 v0 = coe d_a_296 (coe v0)
-- Ledger.PParams._._.a0
d_a0_352 :: T_PParams_220 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_352 v0 = coe d_a0_312 (coe v0)
-- Ledger.PParams._._.b
d_b_354 :: T_PParams_220 -> Integer
d_b_354 v0 = coe d_b_298 (coe v0)
-- Ledger.PParams._._.ccMaxTermLength
d_ccMaxTermLength_356 :: T_PParams_220 -> Integer
d_ccMaxTermLength_356 v0 = coe d_ccMaxTermLength_336 (coe v0)
-- Ledger.PParams._._.ccMinSize
d_ccMinSize_358 :: T_PParams_220 -> Integer
d_ccMinSize_358 v0 = coe d_ccMinSize_334 (coe v0)
-- Ledger.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_360 :: T_PParams_220 -> Integer
d_coinsPerUTxOByte_360 v0 = coe d_coinsPerUTxOByte_304 (coe v0)
-- Ledger.PParams._._.collateralPercentage
d_collateralPercentage_362 :: T_PParams_220 -> Integer
d_collateralPercentage_362 v0
  = coe d_collateralPercentage_318 (coe v0)
-- Ledger.PParams._._.costmdls
d_costmdls_364 :: T_PParams_220 -> AgdaAny
d_costmdls_364 v0 = coe d_costmdls_320 (coe v0)
-- Ledger.PParams._._.drepActivity
d_drepActivity_366 :: T_PParams_220 -> AgdaAny
d_drepActivity_366 v0 = coe d_drepActivity_332 (coe v0)
-- Ledger.PParams._._.drepDeposit
d_drepDeposit_368 :: T_PParams_220 -> Integer
d_drepDeposit_368 v0 = coe d_drepDeposit_330 (coe v0)
-- Ledger.PParams._._.drepThresholds
d_drepThresholds_370 :: T_PParams_220 -> T_DrepThresholds_156
d_drepThresholds_370 v0 = coe d_drepThresholds_322 (coe v0)
-- Ledger.PParams._._.govActionDeposit
d_govActionDeposit_372 :: T_PParams_220 -> Integer
d_govActionDeposit_372 v0 = coe d_govActionDeposit_328 (coe v0)
-- Ledger.PParams._._.govActionLifetime
d_govActionLifetime_374 :: T_PParams_220 -> Integer
d_govActionLifetime_374 v0 = coe d_govActionLifetime_326 (coe v0)
-- Ledger.PParams._._.keyDeposit
d_keyDeposit_376 :: T_PParams_220 -> Integer
d_keyDeposit_376 v0 = coe d_keyDeposit_300 (coe v0)
-- Ledger.PParams._._.maxBlockExUnits
d_maxBlockExUnits_378 :: T_PParams_220 -> AgdaAny
d_maxBlockExUnits_378 v0 = coe d_maxBlockExUnits_292 (coe v0)
-- Ledger.PParams._._.maxBlockSize
d_maxBlockSize_380 :: T_PParams_220 -> Integer
d_maxBlockSize_380 v0 = coe d_maxBlockSize_280 (coe v0)
-- Ledger.PParams._._.maxCollateralInputs
d_maxCollateralInputs_382 :: T_PParams_220 -> Integer
d_maxCollateralInputs_382 v0
  = coe d_maxCollateralInputs_288 (coe v0)
-- Ledger.PParams._._.maxHeaderSize
d_maxHeaderSize_384 :: T_PParams_220 -> Integer
d_maxHeaderSize_384 v0 = coe d_maxHeaderSize_284 (coe v0)
-- Ledger.PParams._._.maxTxExUnits
d_maxTxExUnits_386 :: T_PParams_220 -> AgdaAny
d_maxTxExUnits_386 v0 = coe d_maxTxExUnits_290 (coe v0)
-- Ledger.PParams._._.maxTxSize
d_maxTxSize_388 :: T_PParams_220 -> Integer
d_maxTxSize_388 v0 = coe d_maxTxSize_282 (coe v0)
-- Ledger.PParams._._.maxValSize
d_maxValSize_390 :: T_PParams_220 -> Integer
d_maxValSize_390 v0 = coe d_maxValSize_286 (coe v0)
-- Ledger.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_392 ::
  T_PParams_220 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_392 v0
  = coe d_minFeeRefScriptCoinsPerByte_306 (coe v0)
-- Ledger.PParams._._.minUTxOValue
d_minUTxOValue_394 :: T_PParams_220 -> Integer
d_minUTxOValue_394 v0 = coe d_minUTxOValue_310 (coe v0)
-- Ledger.PParams._._.nopt
d_nopt_396 :: T_PParams_220 -> Integer
d_nopt_396 v0 = coe d_nopt_316 (coe v0)
-- Ledger.PParams._._.poolDeposit
d_poolDeposit_398 :: T_PParams_220 -> Integer
d_poolDeposit_398 v0 = coe d_poolDeposit_302 (coe v0)
-- Ledger.PParams._._.poolThresholds
d_poolThresholds_400 :: T_PParams_220 -> T_PoolThresholds_198
d_poolThresholds_400 v0 = coe d_poolThresholds_324 (coe v0)
-- Ledger.PParams._._.prices
d_prices_402 :: T_PParams_220 -> AgdaAny
d_prices_402 v0 = coe d_prices_308 (coe v0)
-- Ledger.PParams._._.pv
d_pv_404 :: T_PParams_220 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_404 v0 = coe d_pv_294 (coe v0)
-- Ledger.PParams.PParamsUpdate
d_PParamsUpdate_406 a0 a1 a2 = ()
data T_PParamsUpdate_406
  = C_PParamsUpdate'46'constructor_7325 (Maybe Integer)
                                        (Maybe Integer) (Maybe Integer) (Maybe Integer)
                                        (Maybe Integer) (Maybe AgdaAny) (Maybe AgdaAny)
                                        (Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
                                        (Maybe Integer) (Maybe Integer) (Maybe Integer)
                                        (Maybe Integer) (Maybe Integer)
                                        (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6)
                                        (Maybe AgdaAny) (Maybe Integer)
                                        (Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6)
                                        (Maybe AgdaAny) (Maybe Integer) (Maybe Integer)
                                        (Maybe AgdaAny) (Maybe T_DrepThresholds_156)
                                        (Maybe T_PoolThresholds_198) (Maybe Integer) (Maybe Integer)
                                        (Maybe Integer) (Maybe AgdaAny) (Maybe Integer)
                                        (Maybe Integer)
-- Ledger.PParams.PParamsUpdate.maxBlockSize
d_maxBlockSize_466 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxBlockSize_466 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.maxTxSize
d_maxTxSize_468 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxTxSize_468 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_470 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxHeaderSize_470 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.maxValSize
d_maxValSize_472 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxValSize_472 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_474 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxCollateralInputs_474 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_476 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxTxExUnits_476 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_478 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxBlockExUnits_478 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.pv
d_pv_480 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_480 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.a
d_a_482 :: T_PParamsUpdate_406 -> Maybe Integer
d_a_482 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.b
d_b_484 :: T_PParamsUpdate_406 -> Maybe Integer
d_b_484 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.keyDeposit
d_keyDeposit_486 :: T_PParamsUpdate_406 -> Maybe Integer
d_keyDeposit_486 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.poolDeposit
d_poolDeposit_488 :: T_PParamsUpdate_406 -> Maybe Integer
d_poolDeposit_488 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_490 :: T_PParamsUpdate_406 -> Maybe Integer
d_coinsPerUTxOByte_490 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v13
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_492 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_492 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v14
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.prices
d_prices_494 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_prices_494 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v15
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.minUTxOValue
d_minUTxOValue_496 :: T_PParamsUpdate_406 -> Maybe Integer
d_minUTxOValue_496 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.a0
d_a0_498 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_498 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v17
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.Emax
d_Emax_500 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_Emax_500 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.nopt
d_nopt_502 :: T_PParamsUpdate_406 -> Maybe Integer
d_nopt_502 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v19
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.collateralPercentage
d_collateralPercentage_504 :: T_PParamsUpdate_406 -> Maybe Integer
d_collateralPercentage_504 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v20
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.costmdls
d_costmdls_506 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_costmdls_506 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v21
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.drepThresholds
d_drepThresholds_508 ::
  T_PParamsUpdate_406 -> Maybe T_DrepThresholds_156
d_drepThresholds_508 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v22
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.poolThresholds
d_poolThresholds_510 ::
  T_PParamsUpdate_406 -> Maybe T_PoolThresholds_198
d_poolThresholds_510 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v23
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.govActionLifetime
d_govActionLifetime_512 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionLifetime_512 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v24
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.govActionDeposit
d_govActionDeposit_514 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionDeposit_514 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v25
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.drepDeposit
d_drepDeposit_516 :: T_PParamsUpdate_406 -> Maybe Integer
d_drepDeposit_516 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v26
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.drepActivity
d_drepActivity_518 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_drepActivity_518 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v27
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.ccMinSize
d_ccMinSize_520 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMinSize_520 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v28
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_522 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMaxTermLength_522 v0
  = case coe v0 of
      C_PParamsUpdate'46'constructor_7325 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29
        -> coe v29
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.paramsUpdateWellFormed
d_paramsUpdateWellFormed_524 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_406 -> ()
d_paramsUpdateWellFormed_524 = erased
-- Ledger.PParams._._.Emax
d_Emax_534 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_Emax_534 v0 = coe d_Emax_500 (coe v0)
-- Ledger.PParams._._.a
d_a_536 :: T_PParamsUpdate_406 -> Maybe Integer
d_a_536 v0 = coe d_a_482 (coe v0)
-- Ledger.PParams._._.a0
d_a0_538 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_538 v0 = coe d_a0_498 (coe v0)
-- Ledger.PParams._._.b
d_b_540 :: T_PParamsUpdate_406 -> Maybe Integer
d_b_540 v0 = coe d_b_484 (coe v0)
-- Ledger.PParams._._.ccMaxTermLength
d_ccMaxTermLength_542 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMaxTermLength_542 v0 = coe d_ccMaxTermLength_522 (coe v0)
-- Ledger.PParams._._.ccMinSize
d_ccMinSize_544 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMinSize_544 v0 = coe d_ccMinSize_520 (coe v0)
-- Ledger.PParams._._.coinsPerUTxOByte
d_coinsPerUTxOByte_546 :: T_PParamsUpdate_406 -> Maybe Integer
d_coinsPerUTxOByte_546 v0 = coe d_coinsPerUTxOByte_490 (coe v0)
-- Ledger.PParams._._.collateralPercentage
d_collateralPercentage_548 :: T_PParamsUpdate_406 -> Maybe Integer
d_collateralPercentage_548 v0
  = coe d_collateralPercentage_504 (coe v0)
-- Ledger.PParams._._.costmdls
d_costmdls_550 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_costmdls_550 v0 = coe d_costmdls_506 (coe v0)
-- Ledger.PParams._._.drepActivity
d_drepActivity_552 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_drepActivity_552 v0 = coe d_drepActivity_518 (coe v0)
-- Ledger.PParams._._.drepDeposit
d_drepDeposit_554 :: T_PParamsUpdate_406 -> Maybe Integer
d_drepDeposit_554 v0 = coe d_drepDeposit_516 (coe v0)
-- Ledger.PParams._._.drepThresholds
d_drepThresholds_556 ::
  T_PParamsUpdate_406 -> Maybe T_DrepThresholds_156
d_drepThresholds_556 v0 = coe d_drepThresholds_508 (coe v0)
-- Ledger.PParams._._.govActionDeposit
d_govActionDeposit_558 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionDeposit_558 v0 = coe d_govActionDeposit_514 (coe v0)
-- Ledger.PParams._._.govActionLifetime
d_govActionLifetime_560 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionLifetime_560 v0 = coe d_govActionLifetime_512 (coe v0)
-- Ledger.PParams._._.keyDeposit
d_keyDeposit_562 :: T_PParamsUpdate_406 -> Maybe Integer
d_keyDeposit_562 v0 = coe d_keyDeposit_486 (coe v0)
-- Ledger.PParams._._.maxBlockExUnits
d_maxBlockExUnits_564 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxBlockExUnits_564 v0 = coe d_maxBlockExUnits_478 (coe v0)
-- Ledger.PParams._._.maxBlockSize
d_maxBlockSize_566 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxBlockSize_566 v0 = coe d_maxBlockSize_466 (coe v0)
-- Ledger.PParams._._.maxCollateralInputs
d_maxCollateralInputs_568 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxCollateralInputs_568 v0
  = coe d_maxCollateralInputs_474 (coe v0)
-- Ledger.PParams._._.maxHeaderSize
d_maxHeaderSize_570 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxHeaderSize_570 v0 = coe d_maxHeaderSize_470 (coe v0)
-- Ledger.PParams._._.maxTxExUnits
d_maxTxExUnits_572 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxTxExUnits_572 v0 = coe d_maxTxExUnits_476 (coe v0)
-- Ledger.PParams._._.maxTxSize
d_maxTxSize_574 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxTxSize_574 v0 = coe d_maxTxSize_468 (coe v0)
-- Ledger.PParams._._.maxValSize
d_maxValSize_576 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxValSize_576 v0 = coe d_maxValSize_472 (coe v0)
-- Ledger.PParams._._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_578 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_578 v0
  = coe d_minFeeRefScriptCoinsPerByte_492 (coe v0)
-- Ledger.PParams._._.minUTxOValue
d_minUTxOValue_580 :: T_PParamsUpdate_406 -> Maybe Integer
d_minUTxOValue_580 v0 = coe d_minUTxOValue_496 (coe v0)
-- Ledger.PParams._._.nopt
d_nopt_582 :: T_PParamsUpdate_406 -> Maybe Integer
d_nopt_582 v0 = coe d_nopt_502 (coe v0)
-- Ledger.PParams._._.poolDeposit
d_poolDeposit_584 :: T_PParamsUpdate_406 -> Maybe Integer
d_poolDeposit_584 v0 = coe d_poolDeposit_488 (coe v0)
-- Ledger.PParams._._.poolThresholds
d_poolThresholds_586 ::
  T_PParamsUpdate_406 -> Maybe T_PoolThresholds_198
d_poolThresholds_586 v0 = coe d_poolThresholds_510 (coe v0)
-- Ledger.PParams._._.prices
d_prices_588 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_prices_588 v0 = coe d_prices_494 (coe v0)
-- Ledger.PParams._._.pv
d_pv_590 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_590 v0 = coe d_pv_480 (coe v0)
-- Ledger.PParams.modifiesNetworkGroup
d_modifiesNetworkGroup_592 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_406 -> Bool
d_modifiesNetworkGroup_592 ~v0 ~v1 ~v2 v3
  = du_modifiesNetworkGroup_592 v3
du_modifiesNetworkGroup_592 :: T_PParamsUpdate_406 -> Bool
du_modifiesNetworkGroup_592 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_290
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_maxBlockSize_466 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_maxTxSize_468 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_maxHeaderSize_470 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_maxValSize_472 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_maxCollateralInputs_474 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_maxTxExUnits_476 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_maxBlockExUnits_478 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_pv_480 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams._.Emax
d_Emax_598 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_Emax_598 v0 = coe d_Emax_500 (coe v0)
-- Ledger.PParams._.a
d_a_600 :: T_PParamsUpdate_406 -> Maybe Integer
d_a_600 v0 = coe d_a_482 (coe v0)
-- Ledger.PParams._.a0
d_a0_602 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_602 v0 = coe d_a0_498 (coe v0)
-- Ledger.PParams._.b
d_b_604 :: T_PParamsUpdate_406 -> Maybe Integer
d_b_604 v0 = coe d_b_484 (coe v0)
-- Ledger.PParams._.ccMaxTermLength
d_ccMaxTermLength_606 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMaxTermLength_606 v0 = coe d_ccMaxTermLength_522 (coe v0)
-- Ledger.PParams._.ccMinSize
d_ccMinSize_608 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMinSize_608 v0 = coe d_ccMinSize_520 (coe v0)
-- Ledger.PParams._.coinsPerUTxOByte
d_coinsPerUTxOByte_610 :: T_PParamsUpdate_406 -> Maybe Integer
d_coinsPerUTxOByte_610 v0 = coe d_coinsPerUTxOByte_490 (coe v0)
-- Ledger.PParams._.collateralPercentage
d_collateralPercentage_612 :: T_PParamsUpdate_406 -> Maybe Integer
d_collateralPercentage_612 v0
  = coe d_collateralPercentage_504 (coe v0)
-- Ledger.PParams._.costmdls
d_costmdls_614 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_costmdls_614 v0 = coe d_costmdls_506 (coe v0)
-- Ledger.PParams._.drepActivity
d_drepActivity_616 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_drepActivity_616 v0 = coe d_drepActivity_518 (coe v0)
-- Ledger.PParams._.drepDeposit
d_drepDeposit_618 :: T_PParamsUpdate_406 -> Maybe Integer
d_drepDeposit_618 v0 = coe d_drepDeposit_516 (coe v0)
-- Ledger.PParams._.drepThresholds
d_drepThresholds_620 ::
  T_PParamsUpdate_406 -> Maybe T_DrepThresholds_156
d_drepThresholds_620 v0 = coe d_drepThresholds_508 (coe v0)
-- Ledger.PParams._.govActionDeposit
d_govActionDeposit_622 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionDeposit_622 v0 = coe d_govActionDeposit_514 (coe v0)
-- Ledger.PParams._.govActionLifetime
d_govActionLifetime_624 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionLifetime_624 v0 = coe d_govActionLifetime_512 (coe v0)
-- Ledger.PParams._.keyDeposit
d_keyDeposit_626 :: T_PParamsUpdate_406 -> Maybe Integer
d_keyDeposit_626 v0 = coe d_keyDeposit_486 (coe v0)
-- Ledger.PParams._.maxBlockExUnits
d_maxBlockExUnits_628 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxBlockExUnits_628 v0 = coe d_maxBlockExUnits_478 (coe v0)
-- Ledger.PParams._.maxBlockSize
d_maxBlockSize_630 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxBlockSize_630 v0 = coe d_maxBlockSize_466 (coe v0)
-- Ledger.PParams._.maxCollateralInputs
d_maxCollateralInputs_632 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxCollateralInputs_632 v0
  = coe d_maxCollateralInputs_474 (coe v0)
-- Ledger.PParams._.maxHeaderSize
d_maxHeaderSize_634 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxHeaderSize_634 v0 = coe d_maxHeaderSize_470 (coe v0)
-- Ledger.PParams._.maxTxExUnits
d_maxTxExUnits_636 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxTxExUnits_636 v0 = coe d_maxTxExUnits_476 (coe v0)
-- Ledger.PParams._.maxTxSize
d_maxTxSize_638 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxTxSize_638 v0 = coe d_maxTxSize_468 (coe v0)
-- Ledger.PParams._.maxValSize
d_maxValSize_640 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxValSize_640 v0 = coe d_maxValSize_472 (coe v0)
-- Ledger.PParams._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_642 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_642 v0
  = coe d_minFeeRefScriptCoinsPerByte_492 (coe v0)
-- Ledger.PParams._.minUTxOValue
d_minUTxOValue_644 :: T_PParamsUpdate_406 -> Maybe Integer
d_minUTxOValue_644 v0 = coe d_minUTxOValue_496 (coe v0)
-- Ledger.PParams._.nopt
d_nopt_646 :: T_PParamsUpdate_406 -> Maybe Integer
d_nopt_646 v0 = coe d_nopt_502 (coe v0)
-- Ledger.PParams._.poolDeposit
d_poolDeposit_648 :: T_PParamsUpdate_406 -> Maybe Integer
d_poolDeposit_648 v0 = coe d_poolDeposit_488 (coe v0)
-- Ledger.PParams._.poolThresholds
d_poolThresholds_650 ::
  T_PParamsUpdate_406 -> Maybe T_PoolThresholds_198
d_poolThresholds_650 v0 = coe d_poolThresholds_510 (coe v0)
-- Ledger.PParams._.prices
d_prices_652 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_prices_652 v0 = coe d_prices_494 (coe v0)
-- Ledger.PParams._.pv
d_pv_654 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_654 v0 = coe d_pv_480 (coe v0)
-- Ledger.PParams.modifiesEconomicGroup
d_modifiesEconomicGroup_656 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_406 -> Bool
d_modifiesEconomicGroup_656 ~v0 ~v1 ~v2 v3
  = du_modifiesEconomicGroup_656 v3
du_modifiesEconomicGroup_656 :: T_PParamsUpdate_406 -> Bool
du_modifiesEconomicGroup_656 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_290
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a_482 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_b_484 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_keyDeposit_486 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_poolDeposit_488 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_coinsPerUTxOByte_490 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_minFeeRefScriptCoinsPerByte_492 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_prices_494 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_minUTxOValue_496 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams._.Emax
d_Emax_662 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_Emax_662 v0 = coe d_Emax_500 (coe v0)
-- Ledger.PParams._.a
d_a_664 :: T_PParamsUpdate_406 -> Maybe Integer
d_a_664 v0 = coe d_a_482 (coe v0)
-- Ledger.PParams._.a0
d_a0_666 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_666 v0 = coe d_a0_498 (coe v0)
-- Ledger.PParams._.b
d_b_668 :: T_PParamsUpdate_406 -> Maybe Integer
d_b_668 v0 = coe d_b_484 (coe v0)
-- Ledger.PParams._.ccMaxTermLength
d_ccMaxTermLength_670 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMaxTermLength_670 v0 = coe d_ccMaxTermLength_522 (coe v0)
-- Ledger.PParams._.ccMinSize
d_ccMinSize_672 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMinSize_672 v0 = coe d_ccMinSize_520 (coe v0)
-- Ledger.PParams._.coinsPerUTxOByte
d_coinsPerUTxOByte_674 :: T_PParamsUpdate_406 -> Maybe Integer
d_coinsPerUTxOByte_674 v0 = coe d_coinsPerUTxOByte_490 (coe v0)
-- Ledger.PParams._.collateralPercentage
d_collateralPercentage_676 :: T_PParamsUpdate_406 -> Maybe Integer
d_collateralPercentage_676 v0
  = coe d_collateralPercentage_504 (coe v0)
-- Ledger.PParams._.costmdls
d_costmdls_678 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_costmdls_678 v0 = coe d_costmdls_506 (coe v0)
-- Ledger.PParams._.drepActivity
d_drepActivity_680 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_drepActivity_680 v0 = coe d_drepActivity_518 (coe v0)
-- Ledger.PParams._.drepDeposit
d_drepDeposit_682 :: T_PParamsUpdate_406 -> Maybe Integer
d_drepDeposit_682 v0 = coe d_drepDeposit_516 (coe v0)
-- Ledger.PParams._.drepThresholds
d_drepThresholds_684 ::
  T_PParamsUpdate_406 -> Maybe T_DrepThresholds_156
d_drepThresholds_684 v0 = coe d_drepThresholds_508 (coe v0)
-- Ledger.PParams._.govActionDeposit
d_govActionDeposit_686 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionDeposit_686 v0 = coe d_govActionDeposit_514 (coe v0)
-- Ledger.PParams._.govActionLifetime
d_govActionLifetime_688 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionLifetime_688 v0 = coe d_govActionLifetime_512 (coe v0)
-- Ledger.PParams._.keyDeposit
d_keyDeposit_690 :: T_PParamsUpdate_406 -> Maybe Integer
d_keyDeposit_690 v0 = coe d_keyDeposit_486 (coe v0)
-- Ledger.PParams._.maxBlockExUnits
d_maxBlockExUnits_692 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxBlockExUnits_692 v0 = coe d_maxBlockExUnits_478 (coe v0)
-- Ledger.PParams._.maxBlockSize
d_maxBlockSize_694 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxBlockSize_694 v0 = coe d_maxBlockSize_466 (coe v0)
-- Ledger.PParams._.maxCollateralInputs
d_maxCollateralInputs_696 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxCollateralInputs_696 v0
  = coe d_maxCollateralInputs_474 (coe v0)
-- Ledger.PParams._.maxHeaderSize
d_maxHeaderSize_698 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxHeaderSize_698 v0 = coe d_maxHeaderSize_470 (coe v0)
-- Ledger.PParams._.maxTxExUnits
d_maxTxExUnits_700 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxTxExUnits_700 v0 = coe d_maxTxExUnits_476 (coe v0)
-- Ledger.PParams._.maxTxSize
d_maxTxSize_702 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxTxSize_702 v0 = coe d_maxTxSize_468 (coe v0)
-- Ledger.PParams._.maxValSize
d_maxValSize_704 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxValSize_704 v0 = coe d_maxValSize_472 (coe v0)
-- Ledger.PParams._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_706 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_706 v0
  = coe d_minFeeRefScriptCoinsPerByte_492 (coe v0)
-- Ledger.PParams._.minUTxOValue
d_minUTxOValue_708 :: T_PParamsUpdate_406 -> Maybe Integer
d_minUTxOValue_708 v0 = coe d_minUTxOValue_496 (coe v0)
-- Ledger.PParams._.nopt
d_nopt_710 :: T_PParamsUpdate_406 -> Maybe Integer
d_nopt_710 v0 = coe d_nopt_502 (coe v0)
-- Ledger.PParams._.poolDeposit
d_poolDeposit_712 :: T_PParamsUpdate_406 -> Maybe Integer
d_poolDeposit_712 v0 = coe d_poolDeposit_488 (coe v0)
-- Ledger.PParams._.poolThresholds
d_poolThresholds_714 ::
  T_PParamsUpdate_406 -> Maybe T_PoolThresholds_198
d_poolThresholds_714 v0 = coe d_poolThresholds_510 (coe v0)
-- Ledger.PParams._.prices
d_prices_716 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_prices_716 v0 = coe d_prices_494 (coe v0)
-- Ledger.PParams._.pv
d_pv_718 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_718 v0 = coe d_pv_480 (coe v0)
-- Ledger.PParams.modifiesTechnicalGroup
d_modifiesTechnicalGroup_720 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_406 -> Bool
d_modifiesTechnicalGroup_720 ~v0 ~v1 ~v2 v3
  = du_modifiesTechnicalGroup_720 v3
du_modifiesTechnicalGroup_720 :: T_PParamsUpdate_406 -> Bool
du_modifiesTechnicalGroup_720 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_290
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_a0_498 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_Emax_500 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_nopt_502 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_collateralPercentage_504 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_costmdls_506 (coe v0)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Ledger.PParams._.Emax
d_Emax_726 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_Emax_726 v0 = coe d_Emax_500 (coe v0)
-- Ledger.PParams._.a
d_a_728 :: T_PParamsUpdate_406 -> Maybe Integer
d_a_728 v0 = coe d_a_482 (coe v0)
-- Ledger.PParams._.a0
d_a0_730 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_730 v0 = coe d_a0_498 (coe v0)
-- Ledger.PParams._.b
d_b_732 :: T_PParamsUpdate_406 -> Maybe Integer
d_b_732 v0 = coe d_b_484 (coe v0)
-- Ledger.PParams._.ccMaxTermLength
d_ccMaxTermLength_734 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMaxTermLength_734 v0 = coe d_ccMaxTermLength_522 (coe v0)
-- Ledger.PParams._.ccMinSize
d_ccMinSize_736 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMinSize_736 v0 = coe d_ccMinSize_520 (coe v0)
-- Ledger.PParams._.coinsPerUTxOByte
d_coinsPerUTxOByte_738 :: T_PParamsUpdate_406 -> Maybe Integer
d_coinsPerUTxOByte_738 v0 = coe d_coinsPerUTxOByte_490 (coe v0)
-- Ledger.PParams._.collateralPercentage
d_collateralPercentage_740 :: T_PParamsUpdate_406 -> Maybe Integer
d_collateralPercentage_740 v0
  = coe d_collateralPercentage_504 (coe v0)
-- Ledger.PParams._.costmdls
d_costmdls_742 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_costmdls_742 v0 = coe d_costmdls_506 (coe v0)
-- Ledger.PParams._.drepActivity
d_drepActivity_744 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_drepActivity_744 v0 = coe d_drepActivity_518 (coe v0)
-- Ledger.PParams._.drepDeposit
d_drepDeposit_746 :: T_PParamsUpdate_406 -> Maybe Integer
d_drepDeposit_746 v0 = coe d_drepDeposit_516 (coe v0)
-- Ledger.PParams._.drepThresholds
d_drepThresholds_748 ::
  T_PParamsUpdate_406 -> Maybe T_DrepThresholds_156
d_drepThresholds_748 v0 = coe d_drepThresholds_508 (coe v0)
-- Ledger.PParams._.govActionDeposit
d_govActionDeposit_750 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionDeposit_750 v0 = coe d_govActionDeposit_514 (coe v0)
-- Ledger.PParams._.govActionLifetime
d_govActionLifetime_752 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionLifetime_752 v0 = coe d_govActionLifetime_512 (coe v0)
-- Ledger.PParams._.keyDeposit
d_keyDeposit_754 :: T_PParamsUpdate_406 -> Maybe Integer
d_keyDeposit_754 v0 = coe d_keyDeposit_486 (coe v0)
-- Ledger.PParams._.maxBlockExUnits
d_maxBlockExUnits_756 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxBlockExUnits_756 v0 = coe d_maxBlockExUnits_478 (coe v0)
-- Ledger.PParams._.maxBlockSize
d_maxBlockSize_758 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxBlockSize_758 v0 = coe d_maxBlockSize_466 (coe v0)
-- Ledger.PParams._.maxCollateralInputs
d_maxCollateralInputs_760 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxCollateralInputs_760 v0
  = coe d_maxCollateralInputs_474 (coe v0)
-- Ledger.PParams._.maxHeaderSize
d_maxHeaderSize_762 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxHeaderSize_762 v0 = coe d_maxHeaderSize_470 (coe v0)
-- Ledger.PParams._.maxTxExUnits
d_maxTxExUnits_764 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxTxExUnits_764 v0 = coe d_maxTxExUnits_476 (coe v0)
-- Ledger.PParams._.maxTxSize
d_maxTxSize_766 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxTxSize_766 v0 = coe d_maxTxSize_468 (coe v0)
-- Ledger.PParams._.maxValSize
d_maxValSize_768 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxValSize_768 v0 = coe d_maxValSize_472 (coe v0)
-- Ledger.PParams._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_770 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_770 v0
  = coe d_minFeeRefScriptCoinsPerByte_492 (coe v0)
-- Ledger.PParams._.minUTxOValue
d_minUTxOValue_772 :: T_PParamsUpdate_406 -> Maybe Integer
d_minUTxOValue_772 v0 = coe d_minUTxOValue_496 (coe v0)
-- Ledger.PParams._.nopt
d_nopt_774 :: T_PParamsUpdate_406 -> Maybe Integer
d_nopt_774 v0 = coe d_nopt_502 (coe v0)
-- Ledger.PParams._.poolDeposit
d_poolDeposit_776 :: T_PParamsUpdate_406 -> Maybe Integer
d_poolDeposit_776 v0 = coe d_poolDeposit_488 (coe v0)
-- Ledger.PParams._.poolThresholds
d_poolThresholds_778 ::
  T_PParamsUpdate_406 -> Maybe T_PoolThresholds_198
d_poolThresholds_778 v0 = coe d_poolThresholds_510 (coe v0)
-- Ledger.PParams._.prices
d_prices_780 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_prices_780 v0 = coe d_prices_494 (coe v0)
-- Ledger.PParams._.pv
d_pv_782 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_782 v0 = coe d_pv_480 (coe v0)
-- Ledger.PParams.modifiesGovernanceGroup
d_modifiesGovernanceGroup_784 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_406 -> Bool
d_modifiesGovernanceGroup_784 ~v0 ~v1 ~v2 v3
  = du_modifiesGovernanceGroup_784 v3
du_modifiesGovernanceGroup_784 :: T_PParamsUpdate_406 -> Bool
du_modifiesGovernanceGroup_784 v0
  = coe
      MAlonzo.Code.Data.List.Base.d_or_290
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
            (coe d_drepThresholds_508 (coe v0)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
               (coe d_poolThresholds_510 (coe v0)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                  (coe d_govActionLifetime_512 (coe v0)))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                     (coe d_govActionDeposit_514 (coe v0)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                        (coe d_drepDeposit_516 (coe v0)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                           (coe d_drepActivity_518 (coe v0)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                              (coe d_ccMinSize_520 (coe v0)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Data.Maybe.Base.du_is'45'just_20
                                 (coe d_ccMaxTermLength_522 (coe v0)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
-- Ledger.PParams._.Emax
d_Emax_790 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_Emax_790 v0 = coe d_Emax_500 (coe v0)
-- Ledger.PParams._.a
d_a_792 :: T_PParamsUpdate_406 -> Maybe Integer
d_a_792 v0 = coe d_a_482 (coe v0)
-- Ledger.PParams._.a0
d_a0_794 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_794 v0 = coe d_a0_498 (coe v0)
-- Ledger.PParams._.b
d_b_796 :: T_PParamsUpdate_406 -> Maybe Integer
d_b_796 v0 = coe d_b_484 (coe v0)
-- Ledger.PParams._.ccMaxTermLength
d_ccMaxTermLength_798 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMaxTermLength_798 v0 = coe d_ccMaxTermLength_522 (coe v0)
-- Ledger.PParams._.ccMinSize
d_ccMinSize_800 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMinSize_800 v0 = coe d_ccMinSize_520 (coe v0)
-- Ledger.PParams._.coinsPerUTxOByte
d_coinsPerUTxOByte_802 :: T_PParamsUpdate_406 -> Maybe Integer
d_coinsPerUTxOByte_802 v0 = coe d_coinsPerUTxOByte_490 (coe v0)
-- Ledger.PParams._.collateralPercentage
d_collateralPercentage_804 :: T_PParamsUpdate_406 -> Maybe Integer
d_collateralPercentage_804 v0
  = coe d_collateralPercentage_504 (coe v0)
-- Ledger.PParams._.costmdls
d_costmdls_806 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_costmdls_806 v0 = coe d_costmdls_506 (coe v0)
-- Ledger.PParams._.drepActivity
d_drepActivity_808 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_drepActivity_808 v0 = coe d_drepActivity_518 (coe v0)
-- Ledger.PParams._.drepDeposit
d_drepDeposit_810 :: T_PParamsUpdate_406 -> Maybe Integer
d_drepDeposit_810 v0 = coe d_drepDeposit_516 (coe v0)
-- Ledger.PParams._.drepThresholds
d_drepThresholds_812 ::
  T_PParamsUpdate_406 -> Maybe T_DrepThresholds_156
d_drepThresholds_812 v0 = coe d_drepThresholds_508 (coe v0)
-- Ledger.PParams._.govActionDeposit
d_govActionDeposit_814 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionDeposit_814 v0 = coe d_govActionDeposit_514 (coe v0)
-- Ledger.PParams._.govActionLifetime
d_govActionLifetime_816 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionLifetime_816 v0 = coe d_govActionLifetime_512 (coe v0)
-- Ledger.PParams._.keyDeposit
d_keyDeposit_818 :: T_PParamsUpdate_406 -> Maybe Integer
d_keyDeposit_818 v0 = coe d_keyDeposit_486 (coe v0)
-- Ledger.PParams._.maxBlockExUnits
d_maxBlockExUnits_820 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxBlockExUnits_820 v0 = coe d_maxBlockExUnits_478 (coe v0)
-- Ledger.PParams._.maxBlockSize
d_maxBlockSize_822 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxBlockSize_822 v0 = coe d_maxBlockSize_466 (coe v0)
-- Ledger.PParams._.maxCollateralInputs
d_maxCollateralInputs_824 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxCollateralInputs_824 v0
  = coe d_maxCollateralInputs_474 (coe v0)
-- Ledger.PParams._.maxHeaderSize
d_maxHeaderSize_826 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxHeaderSize_826 v0 = coe d_maxHeaderSize_470 (coe v0)
-- Ledger.PParams._.maxTxExUnits
d_maxTxExUnits_828 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxTxExUnits_828 v0 = coe d_maxTxExUnits_476 (coe v0)
-- Ledger.PParams._.maxTxSize
d_maxTxSize_830 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxTxSize_830 v0 = coe d_maxTxSize_468 (coe v0)
-- Ledger.PParams._.maxValSize
d_maxValSize_832 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxValSize_832 v0 = coe d_maxValSize_472 (coe v0)
-- Ledger.PParams._.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_834 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_834 v0
  = coe d_minFeeRefScriptCoinsPerByte_492 (coe v0)
-- Ledger.PParams._.minUTxOValue
d_minUTxOValue_836 :: T_PParamsUpdate_406 -> Maybe Integer
d_minUTxOValue_836 v0 = coe d_minUTxOValue_496 (coe v0)
-- Ledger.PParams._.nopt
d_nopt_838 :: T_PParamsUpdate_406 -> Maybe Integer
d_nopt_838 v0 = coe d_nopt_502 (coe v0)
-- Ledger.PParams._.poolDeposit
d_poolDeposit_840 :: T_PParamsUpdate_406 -> Maybe Integer
d_poolDeposit_840 v0 = coe d_poolDeposit_488 (coe v0)
-- Ledger.PParams._.poolThresholds
d_poolThresholds_842 ::
  T_PParamsUpdate_406 -> Maybe T_PoolThresholds_198
d_poolThresholds_842 v0 = coe d_poolThresholds_510 (coe v0)
-- Ledger.PParams._.prices
d_prices_844 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_prices_844 v0 = coe d_prices_494 (coe v0)
-- Ledger.PParams._.pv
d_pv_846 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_846 v0 = coe d_pv_480 (coe v0)
-- Ledger.PParams.modifiedUpdateGroups
d_modifiedUpdateGroups_848 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_406 -> [T_PParamGroup_144]
d_modifiedUpdateGroups_848 ~v0 ~v1 ~v2 v3
  = du_modifiedUpdateGroups_848 v3
du_modifiedUpdateGroups_848 ::
  T_PParamsUpdate_406 -> [T_PParamGroup_144]
du_modifiedUpdateGroups_848 v0
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe
         du__'63''9552''8658'__856 (coe v0)
         (coe du_modifiesNetworkGroup_592) (coe C_NetworkGroup_146))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe
            du__'63''9552''8658'__856 (coe v0)
            (coe du_modifiesEconomicGroup_656) (coe C_EconomicGroup_148))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe
               du__'63''9552''8658'__856 (coe v0)
               (coe du_modifiesTechnicalGroup_720) (coe C_TechnicalGroup_150))
            (coe
               du__'63''9552''8658'__856 (coe v0)
               (coe du_modifiesGovernanceGroup_784) (coe C_GovernanceGroup_152))))
-- Ledger.PParams._._?═⇒_
d__'63''9552''8658'__856 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsUpdate_406 ->
  (T_PParamsUpdate_406 -> Bool) ->
  T_PParamGroup_144 -> [T_PParamGroup_144]
d__'63''9552''8658'__856 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'63''9552''8658'__856 v3 v4 v5
du__'63''9552''8658'__856 ::
  T_PParamsUpdate_406 ->
  (T_PParamsUpdate_406 -> Bool) ->
  T_PParamGroup_144 -> [T_PParamGroup_144]
du__'63''9552''8658'__856 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.ToBool.du_if_then_else__46
      (coe MAlonzo.Code.Interface.ToBool.d_ToBool'45'Bool_94) (coe v1 v0)
      (coe
         MAlonzo.Code.Level.C_lift_20
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_300
              (coe
                 MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_304
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
              v2))
      (coe
         (\ v3 ->
            MAlonzo.Code.Interface.HasEmptySet.d_'8709'_12
              (coe
                 MAlonzo.Code.Interface.HasEmptySet.Instances.du_HasEmptySet'45'Set_292
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))))
-- Ledger.PParams._?↗_
d__'63''8599'__864 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__864 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du__'63''8599'__864 v4 v5
du__'63''8599'__864 :: Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__864 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.≡-update
d_'8801''45'update_878 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_878 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
  = du_'8801''45'update_878 v4
du_'8801''45'update_878 ::
  Maybe AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_878 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (\ v1 -> coe du_to_898 (coe v0)) erased
-- Ledger.PParams._.to
d_to_898 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_to_898 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 ~v11
  = du_to_898 v8
du_to_898 ::
  Maybe AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_to_898 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams._.from
d_from_910 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_from_910 = erased
-- Ledger.PParams.applyPParamsUpdate
d_applyPParamsUpdate_912 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParams_220 -> T_PParamsUpdate_406 -> T_PParams_220
d_applyPParamsUpdate_912 ~v0 ~v1 ~v2 v3 v4
  = du_applyPParamsUpdate_912 v3 v4
du_applyPParamsUpdate_912 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> T_PParams_220
du_applyPParamsUpdate_912 v0 v1
  = coe
      C_PParams'46'constructor_3099
      (coe
         du__'63''8599'__864 (coe d_maxBlockSize_466 (coe v1))
         (coe d_maxBlockSize_280 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_maxTxSize_468 (coe v1))
         (coe d_maxTxSize_282 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_maxHeaderSize_470 (coe v1))
         (coe d_maxHeaderSize_284 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_maxValSize_472 (coe v1))
         (coe d_maxValSize_286 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_maxCollateralInputs_474 (coe v1))
         (coe d_maxCollateralInputs_288 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_maxTxExUnits_476 (coe v1))
         (coe d_maxTxExUnits_290 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_maxBlockExUnits_478 (coe v1))
         (coe d_maxBlockExUnits_292 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_pv_480 (coe v1))
         (coe d_pv_294 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_a_482 (coe v1)) (coe d_a_296 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_b_484 (coe v1)) (coe d_b_298 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_keyDeposit_486 (coe v1))
         (coe d_keyDeposit_300 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_poolDeposit_488 (coe v1))
         (coe d_poolDeposit_302 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_coinsPerUTxOByte_490 (coe v1))
         (coe d_coinsPerUTxOByte_304 (coe v0)))
      (coe
         du__'63''8599'__864
         (coe d_minFeeRefScriptCoinsPerByte_492 (coe v1))
         (coe d_minFeeRefScriptCoinsPerByte_306 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_prices_494 (coe v1))
         (coe d_prices_308 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_minUTxOValue_496 (coe v1))
         (coe d_minUTxOValue_310 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_a0_498 (coe v1))
         (coe d_a0_312 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_Emax_500 (coe v1))
         (coe d_Emax_314 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_nopt_502 (coe v1))
         (coe d_nopt_316 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_collateralPercentage_504 (coe v1))
         (coe d_collateralPercentage_318 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_costmdls_506 (coe v1))
         (coe d_costmdls_320 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_drepThresholds_508 (coe v1))
         (coe d_drepThresholds_322 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_poolThresholds_510 (coe v1))
         (coe d_poolThresholds_324 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_govActionLifetime_512 (coe v1))
         (coe d_govActionLifetime_326 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_govActionDeposit_514 (coe v1))
         (coe d_govActionDeposit_328 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_drepDeposit_516 (coe v1))
         (coe d_drepDeposit_330 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_drepActivity_518 (coe v1))
         (coe d_drepActivity_332 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_ccMinSize_520 (coe v1))
         (coe d_ccMinSize_334 (coe v0)))
      (coe
         du__'63''8599'__864 (coe d_ccMaxTermLength_522 (coe v1))
         (coe d_ccMaxTermLength_336 (coe v0)))
-- Ledger.PParams._.P.Emax
d_Emax_924 :: T_PParams_220 -> T_PParamsUpdate_406 -> AgdaAny
d_Emax_924 v0 ~v1 = du_Emax_924 v0
du_Emax_924 :: T_PParams_220 -> AgdaAny
du_Emax_924 v0 = coe d_Emax_314 (coe v0)
-- Ledger.PParams._.P.a
d_a_926 :: T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_a_926 v0 ~v1 = du_a_926 v0
du_a_926 :: T_PParams_220 -> Integer
du_a_926 v0 = coe d_a_296 (coe v0)
-- Ledger.PParams._.P.a0
d_a0_928 ::
  T_PParams_220 ->
  T_PParamsUpdate_406 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_928 v0 ~v1 = du_a0_928 v0
du_a0_928 :: T_PParams_220 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_a0_928 v0 = coe d_a0_312 (coe v0)
-- Ledger.PParams._.P.b
d_b_930 :: T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_b_930 v0 ~v1 = du_b_930 v0
du_b_930 :: T_PParams_220 -> Integer
du_b_930 v0 = coe d_b_298 (coe v0)
-- Ledger.PParams._.P.ccMaxTermLength
d_ccMaxTermLength_932 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_ccMaxTermLength_932 v0 ~v1 = du_ccMaxTermLength_932 v0
du_ccMaxTermLength_932 :: T_PParams_220 -> Integer
du_ccMaxTermLength_932 v0 = coe d_ccMaxTermLength_336 (coe v0)
-- Ledger.PParams._.P.ccMinSize
d_ccMinSize_934 :: T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_ccMinSize_934 v0 ~v1 = du_ccMinSize_934 v0
du_ccMinSize_934 :: T_PParams_220 -> Integer
du_ccMinSize_934 v0 = coe d_ccMinSize_334 (coe v0)
-- Ledger.PParams._.P.coinsPerUTxOByte
d_coinsPerUTxOByte_936 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_coinsPerUTxOByte_936 v0 ~v1 = du_coinsPerUTxOByte_936 v0
du_coinsPerUTxOByte_936 :: T_PParams_220 -> Integer
du_coinsPerUTxOByte_936 v0 = coe d_coinsPerUTxOByte_304 (coe v0)
-- Ledger.PParams._.P.collateralPercentage
d_collateralPercentage_938 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_collateralPercentage_938 v0 ~v1 = du_collateralPercentage_938 v0
du_collateralPercentage_938 :: T_PParams_220 -> Integer
du_collateralPercentage_938 v0
  = coe d_collateralPercentage_318 (coe v0)
-- Ledger.PParams._.P.costmdls
d_costmdls_940 :: T_PParams_220 -> T_PParamsUpdate_406 -> AgdaAny
d_costmdls_940 v0 ~v1 = du_costmdls_940 v0
du_costmdls_940 :: T_PParams_220 -> AgdaAny
du_costmdls_940 v0 = coe d_costmdls_320 (coe v0)
-- Ledger.PParams._.P.drepActivity
d_drepActivity_942 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> AgdaAny
d_drepActivity_942 v0 ~v1 = du_drepActivity_942 v0
du_drepActivity_942 :: T_PParams_220 -> AgdaAny
du_drepActivity_942 v0 = coe d_drepActivity_332 (coe v0)
-- Ledger.PParams._.P.drepDeposit
d_drepDeposit_944 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_drepDeposit_944 v0 ~v1 = du_drepDeposit_944 v0
du_drepDeposit_944 :: T_PParams_220 -> Integer
du_drepDeposit_944 v0 = coe d_drepDeposit_330 (coe v0)
-- Ledger.PParams._.P.drepThresholds
d_drepThresholds_946 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> T_DrepThresholds_156
d_drepThresholds_946 v0 ~v1 = du_drepThresholds_946 v0
du_drepThresholds_946 :: T_PParams_220 -> T_DrepThresholds_156
du_drepThresholds_946 v0 = coe d_drepThresholds_322 (coe v0)
-- Ledger.PParams._.P.govActionDeposit
d_govActionDeposit_948 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_govActionDeposit_948 v0 ~v1 = du_govActionDeposit_948 v0
du_govActionDeposit_948 :: T_PParams_220 -> Integer
du_govActionDeposit_948 v0 = coe d_govActionDeposit_328 (coe v0)
-- Ledger.PParams._.P.govActionLifetime
d_govActionLifetime_950 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_govActionLifetime_950 v0 ~v1 = du_govActionLifetime_950 v0
du_govActionLifetime_950 :: T_PParams_220 -> Integer
du_govActionLifetime_950 v0 = coe d_govActionLifetime_326 (coe v0)
-- Ledger.PParams._.P.keyDeposit
d_keyDeposit_952 :: T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_keyDeposit_952 v0 ~v1 = du_keyDeposit_952 v0
du_keyDeposit_952 :: T_PParams_220 -> Integer
du_keyDeposit_952 v0 = coe d_keyDeposit_300 (coe v0)
-- Ledger.PParams._.P.maxBlockExUnits
d_maxBlockExUnits_954 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> AgdaAny
d_maxBlockExUnits_954 v0 ~v1 = du_maxBlockExUnits_954 v0
du_maxBlockExUnits_954 :: T_PParams_220 -> AgdaAny
du_maxBlockExUnits_954 v0 = coe d_maxBlockExUnits_292 (coe v0)
-- Ledger.PParams._.P.maxBlockSize
d_maxBlockSize_956 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_maxBlockSize_956 v0 ~v1 = du_maxBlockSize_956 v0
du_maxBlockSize_956 :: T_PParams_220 -> Integer
du_maxBlockSize_956 v0 = coe d_maxBlockSize_280 (coe v0)
-- Ledger.PParams._.P.maxCollateralInputs
d_maxCollateralInputs_958 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_maxCollateralInputs_958 v0 ~v1 = du_maxCollateralInputs_958 v0
du_maxCollateralInputs_958 :: T_PParams_220 -> Integer
du_maxCollateralInputs_958 v0
  = coe d_maxCollateralInputs_288 (coe v0)
-- Ledger.PParams._.P.maxHeaderSize
d_maxHeaderSize_960 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_maxHeaderSize_960 v0 ~v1 = du_maxHeaderSize_960 v0
du_maxHeaderSize_960 :: T_PParams_220 -> Integer
du_maxHeaderSize_960 v0 = coe d_maxHeaderSize_284 (coe v0)
-- Ledger.PParams._.P.maxTxExUnits
d_maxTxExUnits_962 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> AgdaAny
d_maxTxExUnits_962 v0 ~v1 = du_maxTxExUnits_962 v0
du_maxTxExUnits_962 :: T_PParams_220 -> AgdaAny
du_maxTxExUnits_962 v0 = coe d_maxTxExUnits_290 (coe v0)
-- Ledger.PParams._.P.maxTxSize
d_maxTxSize_964 :: T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_maxTxSize_964 v0 ~v1 = du_maxTxSize_964 v0
du_maxTxSize_964 :: T_PParams_220 -> Integer
du_maxTxSize_964 v0 = coe d_maxTxSize_282 (coe v0)
-- Ledger.PParams._.P.maxValSize
d_maxValSize_966 :: T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_maxValSize_966 v0 ~v1 = du_maxValSize_966 v0
du_maxValSize_966 :: T_PParams_220 -> Integer
du_maxValSize_966 v0 = coe d_maxValSize_286 (coe v0)
-- Ledger.PParams._.P.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_968 ::
  T_PParams_220 ->
  T_PParamsUpdate_406 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_968 v0 ~v1
  = du_minFeeRefScriptCoinsPerByte_968 v0
du_minFeeRefScriptCoinsPerByte_968 ::
  T_PParams_220 -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_minFeeRefScriptCoinsPerByte_968 v0
  = coe d_minFeeRefScriptCoinsPerByte_306 (coe v0)
-- Ledger.PParams._.P.minUTxOValue
d_minUTxOValue_970 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_minUTxOValue_970 v0 ~v1 = du_minUTxOValue_970 v0
du_minUTxOValue_970 :: T_PParams_220 -> Integer
du_minUTxOValue_970 v0 = coe d_minUTxOValue_310 (coe v0)
-- Ledger.PParams._.P.nopt
d_nopt_972 :: T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_nopt_972 v0 ~v1 = du_nopt_972 v0
du_nopt_972 :: T_PParams_220 -> Integer
du_nopt_972 v0 = coe d_nopt_316 (coe v0)
-- Ledger.PParams._.P.poolDeposit
d_poolDeposit_974 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> Integer
d_poolDeposit_974 v0 ~v1 = du_poolDeposit_974 v0
du_poolDeposit_974 :: T_PParams_220 -> Integer
du_poolDeposit_974 v0 = coe d_poolDeposit_302 (coe v0)
-- Ledger.PParams._.P.poolThresholds
d_poolThresholds_976 ::
  T_PParams_220 -> T_PParamsUpdate_406 -> T_PoolThresholds_198
d_poolThresholds_976 v0 ~v1 = du_poolThresholds_976 v0
du_poolThresholds_976 :: T_PParams_220 -> T_PoolThresholds_198
du_poolThresholds_976 v0 = coe d_poolThresholds_324 (coe v0)
-- Ledger.PParams._.P.prices
d_prices_978 :: T_PParams_220 -> T_PParamsUpdate_406 -> AgdaAny
d_prices_978 v0 ~v1 = du_prices_978 v0
du_prices_978 :: T_PParams_220 -> AgdaAny
du_prices_978 v0 = coe d_prices_308 (coe v0)
-- Ledger.PParams._.P.pv
d_pv_980 ::
  T_PParams_220 ->
  T_PParamsUpdate_406 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_980 v0 ~v1 = du_pv_980 v0
du_pv_980 ::
  T_PParams_220 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pv_980 v0 = coe d_pv_294 (coe v0)
-- Ledger.PParams._.U.Emax
d_Emax_984 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_Emax_984 v0 = coe d_Emax_500 (coe v0)
-- Ledger.PParams._.U.a
d_a_986 :: T_PParamsUpdate_406 -> Maybe Integer
d_a_986 v0 = coe d_a_482 (coe v0)
-- Ledger.PParams._.U.a0
d_a0_988 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_988 v0 = coe d_a0_498 (coe v0)
-- Ledger.PParams._.U.b
d_b_990 :: T_PParamsUpdate_406 -> Maybe Integer
d_b_990 v0 = coe d_b_484 (coe v0)
-- Ledger.PParams._.U.ccMaxTermLength
d_ccMaxTermLength_992 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMaxTermLength_992 v0 = coe d_ccMaxTermLength_522 (coe v0)
-- Ledger.PParams._.U.ccMinSize
d_ccMinSize_994 :: T_PParamsUpdate_406 -> Maybe Integer
d_ccMinSize_994 v0 = coe d_ccMinSize_520 (coe v0)
-- Ledger.PParams._.U.coinsPerUTxOByte
d_coinsPerUTxOByte_996 :: T_PParamsUpdate_406 -> Maybe Integer
d_coinsPerUTxOByte_996 v0 = coe d_coinsPerUTxOByte_490 (coe v0)
-- Ledger.PParams._.U.collateralPercentage
d_collateralPercentage_998 :: T_PParamsUpdate_406 -> Maybe Integer
d_collateralPercentage_998 v0
  = coe d_collateralPercentage_504 (coe v0)
-- Ledger.PParams._.U.costmdls
d_costmdls_1000 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_costmdls_1000 v0 = coe d_costmdls_506 (coe v0)
-- Ledger.PParams._.U.drepActivity
d_drepActivity_1002 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_drepActivity_1002 v0 = coe d_drepActivity_518 (coe v0)
-- Ledger.PParams._.U.drepDeposit
d_drepDeposit_1004 :: T_PParamsUpdate_406 -> Maybe Integer
d_drepDeposit_1004 v0 = coe d_drepDeposit_516 (coe v0)
-- Ledger.PParams._.U.drepThresholds
d_drepThresholds_1006 ::
  T_PParamsUpdate_406 -> Maybe T_DrepThresholds_156
d_drepThresholds_1006 v0 = coe d_drepThresholds_508 (coe v0)
-- Ledger.PParams._.U.govActionDeposit
d_govActionDeposit_1008 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionDeposit_1008 v0 = coe d_govActionDeposit_514 (coe v0)
-- Ledger.PParams._.U.govActionLifetime
d_govActionLifetime_1010 :: T_PParamsUpdate_406 -> Maybe Integer
d_govActionLifetime_1010 v0 = coe d_govActionLifetime_512 (coe v0)
-- Ledger.PParams._.U.keyDeposit
d_keyDeposit_1012 :: T_PParamsUpdate_406 -> Maybe Integer
d_keyDeposit_1012 v0 = coe d_keyDeposit_486 (coe v0)
-- Ledger.PParams._.U.maxBlockExUnits
d_maxBlockExUnits_1014 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxBlockExUnits_1014 v0 = coe d_maxBlockExUnits_478 (coe v0)
-- Ledger.PParams._.U.maxBlockSize
d_maxBlockSize_1016 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxBlockSize_1016 v0 = coe d_maxBlockSize_466 (coe v0)
-- Ledger.PParams._.U.maxCollateralInputs
d_maxCollateralInputs_1018 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxCollateralInputs_1018 v0
  = coe d_maxCollateralInputs_474 (coe v0)
-- Ledger.PParams._.U.maxHeaderSize
d_maxHeaderSize_1020 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxHeaderSize_1020 v0 = coe d_maxHeaderSize_470 (coe v0)
-- Ledger.PParams._.U.maxTxExUnits
d_maxTxExUnits_1022 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_maxTxExUnits_1022 v0 = coe d_maxTxExUnits_476 (coe v0)
-- Ledger.PParams._.U.maxTxSize
d_maxTxSize_1024 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxTxSize_1024 v0 = coe d_maxTxSize_468 (coe v0)
-- Ledger.PParams._.U.maxValSize
d_maxValSize_1026 :: T_PParamsUpdate_406 -> Maybe Integer
d_maxValSize_1026 v0 = coe d_maxValSize_472 (coe v0)
-- Ledger.PParams._.U.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1028 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1028 v0
  = coe d_minFeeRefScriptCoinsPerByte_492 (coe v0)
-- Ledger.PParams._.U.minUTxOValue
d_minUTxOValue_1030 :: T_PParamsUpdate_406 -> Maybe Integer
d_minUTxOValue_1030 v0 = coe d_minUTxOValue_496 (coe v0)
-- Ledger.PParams._.U.nopt
d_nopt_1032 :: T_PParamsUpdate_406 -> Maybe Integer
d_nopt_1032 v0 = coe d_nopt_502 (coe v0)
-- Ledger.PParams._.U.poolDeposit
d_poolDeposit_1034 :: T_PParamsUpdate_406 -> Maybe Integer
d_poolDeposit_1034 v0 = coe d_poolDeposit_488 (coe v0)
-- Ledger.PParams._.U.poolThresholds
d_poolThresholds_1036 ::
  T_PParamsUpdate_406 -> Maybe T_PoolThresholds_198
d_poolThresholds_1036 v0 = coe d_poolThresholds_510 (coe v0)
-- Ledger.PParams._.U.prices
d_prices_1038 :: T_PParamsUpdate_406 -> Maybe AgdaAny
d_prices_1038 v0 = coe d_prices_494 (coe v0)
-- Ledger.PParams._.U.pv
d_pv_1040 ::
  T_PParamsUpdate_406 -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1040 v0 = coe d_pv_480 (coe v0)
-- Ledger.PParams.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1042 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1042 ~v0 ~v1 ~v2
  = du_DecEq'45'DrepThresholds_1042
du_DecEq'45'DrepThresholds_1042 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_1042
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_DrepThresholds'46'constructor_1465 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                -> coe
                     (\ v11 ->
                        case coe v11 of
                          C_DrepThresholds'46'constructor_1465 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                  (coe v21) (coe v10)))
                                                            (coe
                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                               (coe v20) (coe v9)))
                                                         (coe
                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                            (coe v19) (coe v8)))
                                                      (coe
                                                         MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                         (coe v18) (coe v7)))
                                                   (coe
                                                      MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                      (coe v17) (coe v6)))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                   (coe v16) (coe v5)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                (coe v15) (coe v4)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                             (coe v14) (coe v3)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                          (coe v13) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                       (coe v12) (coe v1)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
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
d_DecEq'45'PoolThresholds_1044 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1044 ~v0 ~v1 ~v2
  = du_DecEq'45'PoolThresholds_1044
du_DecEq'45'PoolThresholds_1044 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_1044
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_PoolThresholds'46'constructor_1939 v1 v2 v3 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_PoolThresholds'46'constructor_1939 v7 v8 v9 v10 v11
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                (coe
                                                   MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                   (coe v11) (coe v5)))
                                             (coe
                                                MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                (coe v10) (coe v4)))
                                          (coe
                                             MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                             (coe v9) (coe v3)))
                                       (coe
                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                          (coe v8) (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                       (coe v7) (coe v1)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v12 ->
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
                                                        (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                        erased)
                                                     erased)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.DecEq-PParams
d_DecEq'45'PParams_1046 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1046 ~v0 v1 v2 = du_DecEq'45'PParams_1046 v1 v2
du_DecEq'45'PParams_1046 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParams_1046 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParams'46'constructor_3099 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
                -> coe
                     (\ v32 ->
                        case coe v32 of
                          C_PParams'46'constructor_3099 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                           (coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                                           (coe
                                                                                                                              v61)
                                                                                                                           (coe
                                                                                                                              v31)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                                        (coe
                                                                                                                           v60)
                                                                                                                        (coe
                                                                                                                           v30)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                     (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                                                                                                        (coe
                                                                                                                           v0))
                                                                                                                     v59
                                                                                                                     v29))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                                  (coe
                                                                                                                     v58)
                                                                                                                  (coe
                                                                                                                     v28)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                               (coe
                                                                                                                  v57)
                                                                                                               (coe
                                                                                                                  v27)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                            (coe
                                                                                                               v56)
                                                                                                            (coe
                                                                                                               v26)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                           (coe
                                                                                                                              d_Q5e_218
                                                                                                                              (coe
                                                                                                                                 v25))
                                                                                                                           (coe
                                                                                                                              d_Q5e_218
                                                                                                                              (coe
                                                                                                                                 v55))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                        (coe
                                                                                                                           d_Q4_216
                                                                                                                           (coe
                                                                                                                              v25))
                                                                                                                        (coe
                                                                                                                           d_Q4_216
                                                                                                                           (coe
                                                                                                                              v55))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                     (coe
                                                                                                                        d_Q2b_214
                                                                                                                        (coe
                                                                                                                           v25))
                                                                                                                     (coe
                                                                                                                        d_Q2b_214
                                                                                                                        (coe
                                                                                                                           v55))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                  (coe
                                                                                                                     d_Q2a_212
                                                                                                                     (coe
                                                                                                                        v25))
                                                                                                                  (coe
                                                                                                                     d_Q2a_212
                                                                                                                     (coe
                                                                                                                        v55))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                               (coe
                                                                                                                  d_Q1_210
                                                                                                                  (coe
                                                                                                                     v25))
                                                                                                               (coe
                                                                                                                  d_Q1_210
                                                                                                                  (coe
                                                                                                                     v55))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                                                                                                            erased
                                                                                                            (coe
                                                                                                               (\ v62 ->
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
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                erased)
                                                                                                                             erased)
                                                                                                                          erased)
                                                                                                                       erased)
                                                                                                                    erased)))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                                       (coe
                                                                                                                                          d_P6_196
                                                                                                                                          (coe
                                                                                                                                             v24))
                                                                                                                                       (coe
                                                                                                                                          d_P6_196
                                                                                                                                          (coe
                                                                                                                                             v54))))
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                                    (coe
                                                                                                                                       d_P5d_194
                                                                                                                                       (coe
                                                                                                                                          v24))
                                                                                                                                    (coe
                                                                                                                                       d_P5d_194
                                                                                                                                       (coe
                                                                                                                                          v54))))
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                                 (coe
                                                                                                                                    d_P5c_192
                                                                                                                                    (coe
                                                                                                                                       v24))
                                                                                                                                 (coe
                                                                                                                                    d_P5c_192
                                                                                                                                    (coe
                                                                                                                                       v54))))
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                              (coe
                                                                                                                                 d_P5b_190
                                                                                                                                 (coe
                                                                                                                                    v24))
                                                                                                                              (coe
                                                                                                                                 d_P5b_190
                                                                                                                                 (coe
                                                                                                                                    v54))))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                           (coe
                                                                                                                              d_P5a_188
                                                                                                                              (coe
                                                                                                                                 v24))
                                                                                                                           (coe
                                                                                                                              d_P5a_188
                                                                                                                              (coe
                                                                                                                                 v54))))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                        (coe
                                                                                                                           d_P4_186
                                                                                                                           (coe
                                                                                                                              v24))
                                                                                                                        (coe
                                                                                                                           d_P4_186
                                                                                                                           (coe
                                                                                                                              v54))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                     (coe
                                                                                                                        d_P3_184
                                                                                                                        (coe
                                                                                                                           v24))
                                                                                                                     (coe
                                                                                                                        d_P3_184
                                                                                                                        (coe
                                                                                                                           v54))))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                                  (coe
                                                                                                                     d_P2b_182
                                                                                                                     (coe
                                                                                                                        v24))
                                                                                                                  (coe
                                                                                                                     d_P2b_182
                                                                                                                     (coe
                                                                                                                        v54))))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                               (coe
                                                                                                                  d_P2a_180
                                                                                                                  (coe
                                                                                                                     v24))
                                                                                                               (coe
                                                                                                                  d_P2a_180
                                                                                                                  (coe
                                                                                                                     v54))))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                                            (coe
                                                                                                               d_P1_178
                                                                                                               (coe
                                                                                                                  v24))
                                                                                                            (coe
                                                                                                               d_P1_178
                                                                                                               (coe
                                                                                                                  v54))))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                                                                                                         erased
                                                                                                         (coe
                                                                                                            (\ v62 ->
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
                                                                                                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                   (MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Script.d_ps_412
                                                                                                         (coe
                                                                                                            v1)))
                                                                                                   v53
                                                                                                   v23))
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                                (coe
                                                                                                   v52)
                                                                                                (coe
                                                                                                   v22)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                             (coe
                                                                                                v51)
                                                                                             (coe
                                                                                                v21)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                          (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                                                                             (coe
                                                                                                v0))
                                                                                          v50 v20))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                                       (coe v49)
                                                                                       (coe v19)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                    (coe v48)
                                                                                    (coe v18)))
                                                                              (coe
                                                                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                 (MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Script.d_ps_412
                                                                                       (coe v1)))
                                                                                 v47 v17))
                                                                           (coe
                                                                              MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554
                                                                              (coe v46) (coe v16)))
                                                                        (coe
                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                           (coe v45) (coe v15)))
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                        (coe v44) (coe v14)))
                                                                  (coe
                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                     (coe v43) (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                  (coe v42) (coe v12)))
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                               (coe v41) (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                            (coe
                                                               (\ v62 ->
                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                            (coe v40) (coe v10)))
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_ps_412
                                                               (coe v1)))
                                                         v39 v9))
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                      (MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
                                                         (coe
                                                            MAlonzo.Code.Ledger.Script.d_ps_412
                                                            (coe v1)))
                                                      v38 v8))
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                   (coe v37) (coe v7)))
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                (coe v36) (coe v6)))
                                          (coe
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                             (coe v35) (coe v5)))
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558 (coe v34)
                                          (coe v4)))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558 (coe v33)
                                       (coe v3)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v62 ->
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
                                                     erased)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1048 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1048 ~v0 v1 v2
  = du_DecEq'45'PParamsUpdate_1048 v1 v2
du_DecEq'45'PParamsUpdate_1048 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamsUpdate_1048 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_PParamsUpdate'46'constructor_7325 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17 v18 v19 v20 v21 v22 v23 v24 v25 v26 v27 v28 v29 v30 v31
                -> coe
                     (\ v32 ->
                        case coe v32 of
                          C_PParamsUpdate'46'constructor_7325 v33 v34 v35 v36 v37 v38 v39 v40 v41 v42 v43 v44 v45 v46 v47 v48 v49 v50 v51 v52 v53 v54 v55 v56 v57 v58 v59 v60 v61
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                   (coe
                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                      (coe
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                         (coe
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                            (coe
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                               (coe
                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                        (coe
                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                           (coe
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                              (coe
                                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                       (coe
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                (coe
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                              (coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                                                           (coe
                                                                                                                              v61)
                                                                                                                           (coe
                                                                                                                              v31)))
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                                                        (coe
                                                                                                                           v60)
                                                                                                                        (coe
                                                                                                                           v30)))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                                                                                                           (coe
                                                                                                                              v0)))
                                                                                                                     (coe
                                                                                                                        v59)
                                                                                                                     (coe
                                                                                                                        v29)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                                                  (coe
                                                                                                                     v58)
                                                                                                                  (coe
                                                                                                                     v28)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                                               (coe
                                                                                                                  v57)
                                                                                                               (coe
                                                                                                                  v27)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                                            (coe
                                                                                                               v56)
                                                                                                            (coe
                                                                                                               v26)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                            (coe
                                                                                                               du_DecEq'45'PoolThresholds_1044))
                                                                                                         (coe
                                                                                                            v55)
                                                                                                         (coe
                                                                                                            v25)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                         (coe
                                                                                                            du_DecEq'45'DrepThresholds_1042))
                                                                                                      (coe
                                                                                                         v54)
                                                                                                      (coe
                                                                                                         v24)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Script.d_ps_412
                                                                                                            (coe
                                                                                                               v1))))
                                                                                                   (coe
                                                                                                      v53)
                                                                                                   (coe
                                                                                                      v23)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                                (coe
                                                                                                   v52)
                                                                                                (coe
                                                                                                   v22)))
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                             (coe
                                                                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                             (coe
                                                                                                v51)
                                                                                             (coe
                                                                                                v21)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                                                                                (coe
                                                                                                   v0)))
                                                                                          (coe v50)
                                                                                          (coe
                                                                                             v20)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                       (coe
                                                                                          MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554)
                                                                                       (coe v49)
                                                                                       (coe v19)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                                    (coe v48)
                                                                                    (coe v18)))
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                 (coe
                                                                                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Script.d_ps_412
                                                                                          (coe
                                                                                             v1))))
                                                                                 (coe v47)
                                                                                 (coe v17)))
                                                                           (coe
                                                                              MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Rational.Properties.d__'8799'__2554)
                                                                              (coe v46) (coe v16)))
                                                                        (coe
                                                                           MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                           (coe
                                                                              MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                           (coe v45) (coe v15)))
                                                                     (coe
                                                                        MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                        (coe
                                                                           MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                        (coe v44) (coe v14)))
                                                                  (coe
                                                                     MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                     (coe
                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                     (coe v43) (coe v13)))
                                                               (coe
                                                                  MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                  (coe
                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                                  (coe v42) (coe v12)))
                                                            (coe
                                                               MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                               (coe v41) (coe v11)))
                                                         (coe
                                                            MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                            (coe
                                                               MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                               (coe
                                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                               (coe
                                                                  (\ v62 ->
                                                                     MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                                                            (coe v40) (coe v10)))
                                                      (coe
                                                         MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Script.d_ps_412
                                                                  (coe v1))))
                                                         (coe v39) (coe v9)))
                                                   (coe
                                                      MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                         (coe
                                                            MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
                                                            (coe
                                                               MAlonzo.Code.Ledger.Script.d_ps_412
                                                               (coe v1))))
                                                      (coe v38) (coe v8)))
                                                (coe
                                                   MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                   (coe v37) (coe v7)))
                                             (coe
                                                MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                (coe v36) (coe v6)))
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                             (coe v35) (coe v5)))
                                       (coe
                                          MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                          (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                          (coe v34) (coe v4)))
                                    (coe
                                       MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                       (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                       (coe v33) (coe v3)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v62 ->
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
                                                     erased)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1050 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1050 ~v0 ~v1 ~v2
  = du_DecEq'45'PParamGroup_1050
du_DecEq'45'PParamGroup_1050 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_1050
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_NetworkGroup_146
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_146
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_EconomicGroup_148
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_150
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_152
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_154
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_EconomicGroup_148
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_146
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_148
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_TechnicalGroup_150
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_152
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_154
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_TechnicalGroup_150
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_146
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_148
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_150
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_GovernanceGroup_152
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_154
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_GovernanceGroup_152
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_146
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_148
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_150
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_152
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          C_SecurityGroup_154
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_SecurityGroup_154
                -> coe
                     (\ v1 ->
                        case coe v1 of
                          C_NetworkGroup_146
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_EconomicGroup_148
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_TechnicalGroup_150
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_GovernanceGroup_152
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_SecurityGroup_154
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                       (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.PParams.pvCanFollow?
d_pvCanFollow'63'_1056 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1056 ~v0 ~v1 ~v2 v3 v4
  = du_pvCanFollow'63'_1056 v3 v4
du_pvCanFollow'63'_1056 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1056 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> let v4
                 = coe
                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                     erased
                     (coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                        (coe
                           eqInt (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
                           (coe addInt (coe (1 :: Integer)) (coe v2)))
                        (coe
                           MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                           (coe
                              eqInt (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
                              (coe addInt (coe (1 :: Integer)) (coe v2))))) in
           coe
             (let v5 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1) in
              coe
                (let v6 = 0 :: Integer in
                 coe
                   (case coe v4 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                        -> if coe v7
                             then let v9
                                        = seq
                                            (coe v8)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                               erased
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                  (coe v5) (coe v6))) in
                                  coe
                                    (case coe v9 of
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                         -> if coe v10
                                              then coe
                                                     seq (coe v11)
                                                     (let v12
                                                            = coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe
                                                                      eqInt
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v1))
                                                                      (coe v2))
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                      (coe
                                                                         eqInt
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v1))
                                                                         (coe v2)))) in
                                                      coe
                                                        (case coe v12 of
                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                             -> if coe v13
                                                                  then let v15
                                                                             = seq
                                                                                 (coe v14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                    erased
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          addInt
                                                                                          (coe
                                                                                             (1 ::
                                                                                                Integer))
                                                                                          (coe
                                                                                             v3)))) in
                                                                       coe
                                                                         (case coe v15 of
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                              -> if coe v16
                                                                                   then coe
                                                                                          seq
                                                                                          (coe v17)
                                                                                          (coe
                                                                                             MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                                                                                   else coe
                                                                                          seq
                                                                                          (coe v17)
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                             (coe
                                                                                                v10)
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                (coe
                                                                                                   C_canFollowMajor_140)))
                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                  else (let v15
                                                                              = seq
                                                                                  (coe v14)
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                     (coe v13)
                                                                                     (coe
                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                        coe
                                                                          (case coe v15 of
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                               -> if coe v16
                                                                                    then coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                                                                                    else coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                              (coe
                                                                                                 v10)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                 (coe
                                                                                                    C_canFollowMajor_140)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                              else coe
                                                     seq (coe v11)
                                                     (let v12
                                                            = coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe
                                                                      eqInt
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v1))
                                                                      (coe v2))
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                      (coe
                                                                         eqInt
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v1))
                                                                         (coe v2)))) in
                                                      coe
                                                        (case coe v12 of
                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                             -> if coe v13
                                                                  then let v15
                                                                             = seq
                                                                                 (coe v14)
                                                                                 (coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                    erased
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v1))
                                                                                       (coe
                                                                                          addInt
                                                                                          (coe
                                                                                             (1 ::
                                                                                                Integer))
                                                                                          (coe
                                                                                             v3)))) in
                                                                       coe
                                                                         (case coe v15 of
                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                              -> if coe v16
                                                                                   then coe
                                                                                          seq
                                                                                          (coe v17)
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                             (coe
                                                                                                v16)
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                (coe
                                                                                                   C_canFollowMinor_142)))
                                                                                   else coe
                                                                                          seq
                                                                                          (coe v17)
                                                                                          (coe
                                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                             (coe
                                                                                                v16)
                                                                                             (coe
                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                  else (let v15
                                                                              = seq
                                                                                  (coe v14)
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                     (coe v13)
                                                                                     (coe
                                                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                        coe
                                                                          (case coe v15 of
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                               -> if coe v16
                                                                                    then coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                              (coe
                                                                                                 v16)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                 (coe
                                                                                                    C_canFollowMinor_142)))
                                                                                    else coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                              (coe
                                                                                                 v16)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             else (let v9
                                         = seq
                                             (coe v8)
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                (coe v7)
                                                (coe
                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                   coe
                                     (case coe v9 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                          -> if coe v10
                                               then coe
                                                      seq (coe v11)
                                                      (let v12
                                                             = coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                    (coe
                                                                       eqInt
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v1))
                                                                       (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                       (coe
                                                                          eqInt
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe v1))
                                                                          (coe v2)))) in
                                                       coe
                                                         (case coe v12 of
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                              -> if coe v13
                                                                   then let v15
                                                                              = seq
                                                                                  (coe v14)
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                     erased
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                           (coe v1))
                                                                                        (coe
                                                                                           addInt
                                                                                           (coe
                                                                                              (1 ::
                                                                                                 Integer))
                                                                                           (coe
                                                                                              v3)))) in
                                                                        coe
                                                                          (case coe v15 of
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                               -> if coe v16
                                                                                    then coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                                                                                    else coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                              (coe
                                                                                                 v10)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                 (coe
                                                                                                    C_canFollowMajor_140)))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                                   else (let v15
                                                                               = seq
                                                                                   (coe v14)
                                                                                   (coe
                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                      (coe v13)
                                                                                      (coe
                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                         coe
                                                                           (case coe v15 of
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                                -> if coe v16
                                                                                     then coe
                                                                                            seq
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                                                                                     else coe
                                                                                            seq
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                               (coe
                                                                                                  v10)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                  (coe
                                                                                                     C_canFollowMajor_140)))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                               else coe
                                                      seq (coe v11)
                                                      (let v12
                                                             = coe
                                                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                    (coe
                                                                       eqInt
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v1))
                                                                       (coe v2))
                                                                    (coe
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                       (coe
                                                                          eqInt
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe v1))
                                                                          (coe v2)))) in
                                                       coe
                                                         (case coe v12 of
                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                              -> if coe v13
                                                                   then let v15
                                                                              = seq
                                                                                  (coe v14)
                                                                                  (coe
                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                     erased
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                           (coe v1))
                                                                                        (coe
                                                                                           addInt
                                                                                           (coe
                                                                                              (1 ::
                                                                                                 Integer))
                                                                                           (coe
                                                                                              v3)))) in
                                                                        coe
                                                                          (case coe v15 of
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                               -> if coe v16
                                                                                    then coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                              (coe
                                                                                                 v16)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                 (coe
                                                                                                    C_canFollowMinor_142)))
                                                                                    else coe
                                                                                           seq
                                                                                           (coe v17)
                                                                                           (coe
                                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                              (coe
                                                                                                 v16)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError)
                                                                   else (let v15
                                                                               = seq
                                                                                   (coe v14)
                                                                                   (coe
                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                      (coe v13)
                                                                                      (coe
                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                         coe
                                                                           (case coe v15 of
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v16 v17
                                                                                -> if coe v16
                                                                                     then coe
                                                                                            seq
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                               (coe
                                                                                                  v16)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                  (coe
                                                                                                     C_canFollowMinor_142)))
                                                                                     else coe
                                                                                            seq
                                                                                            (coe
                                                                                               v17)
                                                                                            (coe
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                               (coe
                                                                                                  v16)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                        _ -> MAlonzo.RTE.mazUnreachableError))
                      _ -> MAlonzo.RTE.mazUnreachableError)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff
d_PParamsDiff_1104 a0 a1 a2 = ()
data T_PParamsDiff_1104
  = C_PParamsDiff'46'constructor_1081463 (T_PParams_220 ->
                                          AgdaAny -> T_PParams_220)
                                         (AgdaAny -> [T_PParamGroup_144])
                                         (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10)
-- Ledger.PParams.PParamsDiff.UpdateT
d_UpdateT_1118 :: T_PParamsDiff_1104 -> ()
d_UpdateT_1118 = erased
-- Ledger.PParams.PParamsDiff.applyUpdate
d_applyUpdate_1120 ::
  T_PParamsDiff_1104 -> T_PParams_220 -> AgdaAny -> T_PParams_220
d_applyUpdate_1120 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1081463 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.updateGroups
d_updateGroups_1122 ::
  T_PParamsDiff_1104 -> AgdaAny -> [T_PParamGroup_144]
d_updateGroups_1122 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1081463 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppWF?
d_ppWF'63'_1128 ::
  T_PParamsDiff_1104 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1128 v0
  = case coe v0 of
      C_PParamsDiff'46'constructor_1081463 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1130 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsDiff_1104 -> AgdaAny -> ()
d_ppdWellFormed_1130 = erased
-- Ledger.PParams.GovParams
d_GovParams_1136 a0 a1 a2 = ()
data T_GovParams_1136
  = C_GovParams'46'constructor_1082203 T_PParamsDiff_1104
                                       MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
                                       MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
-- Ledger.PParams._.UpdateT
d_UpdateT_1142 :: T_PParamsDiff_1104 -> ()
d_UpdateT_1142 = erased
-- Ledger.PParams._.applyUpdate
d_applyUpdate_1144 ::
  T_PParamsDiff_1104 -> T_PParams_220 -> AgdaAny -> T_PParams_220
d_applyUpdate_1144 v0 = coe d_applyUpdate_1120 (coe v0)
-- Ledger.PParams._.ppWF?
d_ppWF'63'_1146 ::
  T_PParamsDiff_1104 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1146 v0 = coe d_ppWF'63'_1128 (coe v0)
-- Ledger.PParams._.ppdWellFormed
d_ppdWellFormed_1148 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_PParamsDiff_1104 -> AgdaAny -> ()
d_ppdWellFormed_1148 = erased
-- Ledger.PParams._.updateGroups
d_updateGroups_1150 ::
  T_PParamsDiff_1104 -> AgdaAny -> [T_PParamGroup_144]
d_updateGroups_1150 v0 = coe d_updateGroups_1122 (coe v0)
-- Ledger.PParams.GovParams.ppUpd
d_ppUpd_1166 :: T_GovParams_1136 -> T_PParamsDiff_1104
d_ppUpd_1166 v0
  = case coe v0 of
      C_GovParams'46'constructor_1082203 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.UpdateT
d_UpdateT_1170 :: T_GovParams_1136 -> ()
d_UpdateT_1170 = erased
-- Ledger.PParams.GovParams._.applyUpdate
d_applyUpdate_1172 ::
  T_GovParams_1136 -> T_PParams_220 -> AgdaAny -> T_PParams_220
d_applyUpdate_1172 v0
  = coe d_applyUpdate_1120 (coe d_ppUpd_1166 (coe v0))
-- Ledger.PParams.GovParams._.ppWF?
d_ppWF'63'_1174 ::
  T_GovParams_1136 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1174 v0
  = coe d_ppWF'63'_1128 (coe d_ppUpd_1166 (coe v0))
-- Ledger.PParams.GovParams._.ppdWellFormed
d_ppdWellFormed_1176 ::
  MAlonzo.Code.Ledger.Crypto.T_Crypto_128 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  T_GovParams_1136 -> AgdaAny -> ()
d_ppdWellFormed_1176 = erased
-- Ledger.PParams.GovParams._.updateGroups
d_updateGroups_1178 ::
  T_GovParams_1136 -> AgdaAny -> [T_PParamGroup_144]
d_updateGroups_1178 v0
  = coe d_updateGroups_1122 (coe d_ppUpd_1166 (coe v0))
-- Ledger.PParams.GovParams.ppHashingScheme
d_ppHashingScheme_1180 ::
  T_GovParams_1136 -> MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1180 v0
  = case coe v0 of
      C_GovParams'46'constructor_1082203 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.PParams.GovParams._.DecEq-T
d_DecEq'45'T_1184 ::
  T_GovParams_1136 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1184 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe d_ppHashingScheme_1180 (coe v0))
-- Ledger.PParams.GovParams._.DecEq-THash
d_DecEq'45'THash_1186 ::
  T_GovParams_1136 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1186 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe d_ppHashingScheme_1180 (coe v0))
-- Ledger.PParams.GovParams._.THash
d_THash_1188 :: T_GovParams_1136 -> ()
d_THash_1188 = erased
-- Ledger.PParams.GovParams._.T-Hashable
d_T'45'Hashable_1190 ::
  T_GovParams_1136 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1190 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe d_ppHashingScheme_1180 (coe v0))
-- Ledger.PParams.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1192 ::
  T_GovParams_1136 -> MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1192 v0
  = case coe v0 of
      C_GovParams'46'constructor_1082203 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
