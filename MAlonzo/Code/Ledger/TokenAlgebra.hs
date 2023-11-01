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

module MAlonzo.Code.Ledger.TokenAlgebra where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.TokenAlgebra.TokenAlgebra
d_TokenAlgebra_6 a0 = ()
data T_TokenAlgebra_6
  = C_TokenAlgebra'46'constructor_1585 MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
                                       (AgdaAny -> Integer) (Integer -> AgdaAny)
                                       (AgdaAny -> [AgdaAny]) (AgdaAny -> Integer) AgdaAny
                                       MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
                                       MAlonzo.Code.Interface.DecEq.T_DecEq_14
                                       (AgdaAny ->
                                        AgdaAny ->
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Ledger.TokenAlgebra._.rawMonoid
d_rawMonoid_22 ::
  () ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_22 ~v0 v1 = du_rawMonoid_22 v1
du_rawMonoid_22 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
du_rawMonoid_22 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v0))
-- Ledger.TokenAlgebra._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_30 a0 a1 a2 = ()
-- Ledger.TokenAlgebra.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_122 ::
  T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_122 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1585 v1 v2 v3 v4 v5 v8 v10 v11 v12
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.MemoryEstimate
d_MemoryEstimate_124 :: () -> T_TokenAlgebra_6 -> ()
d_MemoryEstimate_124 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._._∙_
d__'8729'__128 :: T_TokenAlgebra_6 -> AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__128 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe d_Value'45'CommutativeMonoid_122 (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._._≈_
d__'8776'__130 :: T_TokenAlgebra_6 -> AgdaAny -> AgdaAny -> ()
d__'8776'__130 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.Carrier
d_Carrier_132 :: T_TokenAlgebra_6 -> ()
d_Carrier_132 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.monoid
d_monoid_134 ::
  T_TokenAlgebra_6 -> MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_134 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe d_Value'45'CommutativeMonoid_122 (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.rawMonoid
d_rawMonoid_136 ::
  T_TokenAlgebra_6 -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_136 v0
  = let v1 = d_Value'45'CommutativeMonoid_122 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1))
-- Ledger.TokenAlgebra.TokenAlgebra._.refl
d_refl_138 :: T_TokenAlgebra_6 -> AgdaAny -> AgdaAny
d_refl_138 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Algebra.Structures.d_isEquivalence_148
         (coe
            MAlonzo.Code.Algebra.Structures.d_isMagma_444
            (coe
               MAlonzo.Code.Algebra.Structures.d_isSemigroup_610
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isMonoid_660
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_844
                     (coe d_Value'45'CommutativeMonoid_122 (coe v0)))))))
-- Ledger.TokenAlgebra.TokenAlgebra._.ε
d_ε_140 :: T_TokenAlgebra_6 -> AgdaAny
d_ε_140 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe d_Value'45'CommutativeMonoid_122 (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_144 a0 a1 a2 = ()
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_146 a0 a1 a2 = ()
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_148 a0 a1 a2 = ()
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.homo
d_homo_152 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_152 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_154 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_154 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_156 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_156 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_158 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_158 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidHomomorphism.cong
d_cong_160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_160 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.homo
d_homo_164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_164 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.injective
d_injective_166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_166 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_298
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_168 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
            (coe v0)))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_170 ::
  T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_118
d_isMagmaIsomorphism_170 ~v0 = du_isMagmaIsomorphism_170
du_isMagmaIsomorphism_170 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_118
du_isMagmaIsomorphism_170 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_352
      v1
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_172 ::
  T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_172 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_172 v2
du_isMagmaMonomorphism_172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_172 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_312
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_174 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
      (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_178 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
               (coe v0))))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_180 ::
  T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_180 ~v0 ~v1 v2 = du_isRelIsomorphism_180 v2
du_isRelIsomorphism_180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_180 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_144
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_352
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_182 ::
  T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_182 ~v0 ~v1 v2 = du_isRelMonomorphism_182 v2
du_isRelMonomorphism_182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_182 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_114
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_312
         (coe v1))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.surjective
d_surjective_184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_330 (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_186 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidIsomorphism.cong
d_cong_188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_188 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.homo
d_homo_192 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_192 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.injective
d_injective_194 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_194 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_298 (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_196 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_196 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_198 ::
  T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_94
d_isMagmaMonomorphism_198 ~v0 = du_isMagmaMonomorphism_198
du_isMagmaMonomorphism_198 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_94
du_isMagmaMonomorphism_198 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_312
      v1
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_200 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_200 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
      (coe v0)
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_202 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_202 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
            (coe v0)))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_204 ::
  T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_204 ~v0 ~v1 v2 = du_isRelMonomorphism_204 v2
du_isRelMonomorphism_204 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_204 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_114
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_312
         (coe v0))
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_206 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_206 = erased
-- Ledger.TokenAlgebra.TokenAlgebra._.IsMonoidMonomorphism.cong
d_cong_208 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_208 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.coin
d_coin_210 :: T_TokenAlgebra_6 -> AgdaAny -> Integer
d_coin_210 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1585 v1 v2 v3 v4 v5 v8 v10 v11 v12
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.inject
d_inject_212 :: T_TokenAlgebra_6 -> Integer -> AgdaAny
d_inject_212 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1585 v1 v2 v3 v4 v5 v8 v10 v11 v12
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.policies
d_policies_214 :: T_TokenAlgebra_6 -> AgdaAny -> [AgdaAny]
d_policies_214 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1585 v1 v2 v3 v4 v5 v8 v10 v11 v12
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.size
d_size_216 :: T_TokenAlgebra_6 -> AgdaAny -> Integer
d_size_216 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1585 v1 v2 v3 v4 v5 v8 v10 v11 v12
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra._≤ᵗ_
d__'8804''7511'__218 ::
  T_TokenAlgebra_6 -> AgdaAny -> AgdaAny -> ()
d__'8804''7511'__218 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.AssetName
d_AssetName_220 :: T_TokenAlgebra_6 -> ()
d_AssetName_220 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.specialAsset
d_specialAsset_222 :: T_TokenAlgebra_6 -> AgdaAny
d_specialAsset_222 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1585 v1 v2 v3 v4 v5 v8 v10 v11 v12
        -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.property
d_property_224 ::
  T_TokenAlgebra_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_224 = erased
-- Ledger.TokenAlgebra.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_226 ::
  T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_coinIsMonoidHomomorphism_226 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1585 v1 v2 v3 v4 v5 v8 v10 v11 v12
        -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_228 ::
  T_TokenAlgebra_6 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Value_228 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1585 v1 v2 v3 v4 v5 v8 v10 v11 v12
        -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_234 ::
  T_TokenAlgebra_6 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8804''7511'_234 v0
  = case coe v0 of
      C_TokenAlgebra'46'constructor_1585 v1 v2 v3 v4 v5 v8 v10 v11 v12
        -> coe v12
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.TokenAlgebra.TokenAlgebra.addValue
d_addValue_236 ::
  () -> T_TokenAlgebra_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_236 ~v0 v1 = du_addValue_236 v1
du_addValue_236 ::
  T_TokenAlgebra_6 -> MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
du_addValue_236 v0
  = coe
      MAlonzo.Code.Interface.HasAdd.C_HasAdd'46'constructor_7
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe d_Value'45'CommutativeMonoid_122 (coe v0)))
-- Ledger.TokenAlgebra.TokenAlgebra.sumᵛ
d_sum'7515'_238 :: () -> T_TokenAlgebra_6 -> [AgdaAny] -> AgdaAny
d_sum'7515'_238 ~v0 v1 = du_sum'7515'_238 v1
du_sum'7515'_238 :: T_TokenAlgebra_6 -> [AgdaAny] -> AgdaAny
du_sum'7515'_238 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_foldr_242
      (coe
         MAlonzo.Code.Algebra.Bundles.d__'8729'__840
         (coe d_Value'45'CommutativeMonoid_122 (coe v0)))
      (coe d_inject_212 v0 (0 :: Integer))
