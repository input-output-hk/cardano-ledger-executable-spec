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

module MAlonzo.Code.Class.Monoid.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Semigroup.Core

-- Class.Monoid.Core.Monoid
d_Monoid_14 a0 a1 = ()
data T_Monoid_14
  = C_Monoid'46'constructor_53 MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_14
                               AgdaAny
-- Class.Monoid.Core.Monoid.sm
d_sm_22 ::
  T_Monoid_14 -> MAlonzo.Code.Class.Semigroup.Core.T_Semigroup_14
d_sm_22 v0
  = case coe v0 of
      C_Monoid'46'constructor_53 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monoid.Core.Monoid.ε
d_ε_24 :: T_Monoid_14 -> AgdaAny
d_ε_24 v0
  = case coe v0 of
      C_Monoid'46'constructor_53 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monoid.Core._.ε
d_ε_28 :: T_Monoid_14 -> AgdaAny
d_ε_28 v0 = coe d_ε_24 (coe v0)
-- Class.Monoid.Core.MonoidLaws
d_MonoidLaws_40 a0 a1 a2 a3 a4 = ()
newtype T_MonoidLaws_40
  = C_MonoidLaws'46'constructor_1235 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Class.Monoid.Core._.Identity
d_Identity_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Monoid_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_92 = erased
-- Class.Monoid.Core.MonoidLaws._.LeftIdentity
d_LeftIdentity_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Monoid_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_MonoidLaws_40 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_250 = erased
-- Class.Monoid.Core.MonoidLaws._.RightIdentity
d_RightIdentity_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Monoid_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_MonoidLaws_40 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_280 = erased
-- Class.Monoid.Core.MonoidLaws.ε-identity
d_ε'45'identity_310 ::
  T_MonoidLaws_40 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ε'45'identity_310 v0
  = case coe v0 of
      C_MonoidLaws'46'constructor_1235 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Monoid.Core.MonoidLaws.ε-identityˡ
d_ε'45'identity'737'_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Monoid_14 ->
  (AgdaAny -> AgdaAny -> ()) -> T_MonoidLaws_40 -> AgdaAny -> AgdaAny
d_ε'45'identity'737'_312 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_ε'45'identity'737'_312 v5
du_ε'45'identity'737'_312 :: T_MonoidLaws_40 -> AgdaAny -> AgdaAny
du_ε'45'identity'737'_312 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_ε'45'identity_310 (coe v0))
-- Class.Monoid.Core.MonoidLaws.ε-identityʳ
d_ε'45'identity'691'_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Monoid_14 ->
  (AgdaAny -> AgdaAny -> ()) -> T_MonoidLaws_40 -> AgdaAny -> AgdaAny
d_ε'45'identity'691'_314 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_ε'45'identity'691'_314 v5
du_ε'45'identity'691'_314 :: T_MonoidLaws_40 -> AgdaAny -> AgdaAny
du_ε'45'identity'691'_314 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_ε'45'identity_310 (coe v0))
-- Class.Monoid.Core._.ε-identity
d_ε'45'identity_318 ::
  T_MonoidLaws_40 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ε'45'identity_318 v0 = coe d_ε'45'identity_310 (coe v0)
-- Class.Monoid.Core._.ε-identityʳ
d_ε'45'identity'691'_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Monoid_14 ->
  (AgdaAny -> AgdaAny -> ()) -> T_MonoidLaws_40 -> AgdaAny -> AgdaAny
d_ε'45'identity'691'_320 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_ε'45'identity'691'_320 v5
du_ε'45'identity'691'_320 :: T_MonoidLaws_40 -> AgdaAny -> AgdaAny
du_ε'45'identity'691'_320 v0
  = coe du_ε'45'identity'691'_314 (coe v0)
-- Class.Monoid.Core._.ε-identityˡ
d_ε'45'identity'737'_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_Monoid_14 ->
  (AgdaAny -> AgdaAny -> ()) -> T_MonoidLaws_40 -> AgdaAny -> AgdaAny
d_ε'45'identity'737'_322 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_ε'45'identity'737'_322 v5
du_ε'45'identity'737'_322 :: T_MonoidLaws_40 -> AgdaAny -> AgdaAny
du_ε'45'identity'737'_322 v0
  = coe du_ε'45'identity'737'_312 (coe v0)
-- Class.Monoid.Core.MonoidLaws≡
d_MonoidLaws'8801'_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_Monoid_14 -> ()
d_MonoidLaws'8801'_326 = erased
