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

module MAlonzo.Code.Interface.Bifunctor where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base

-- Interface.Bifunctor.BifunctorI
d_BifunctorI_36 a0 a1 a2 = ()
newtype T_BifunctorI_36
  = C_BifunctorI'46'constructor_603 (() ->
                                     () ->
                                     (AgdaAny -> ()) ->
                                     (AgdaAny -> ()) ->
                                     (AgdaAny -> AgdaAny) ->
                                     (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
-- Interface.Bifunctor.BifunctorI.bimap′
d_bimap'8242'_50 ::
  T_BifunctorI_36 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_bimap'8242'_50 v0
  = case coe v0 of
      C_BifunctorI'46'constructor_603 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.Bifunctor.BifunctorI.map₁′
d_map'8321''8242'_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_36 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8321''8242'_52 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 v7
  = du_map'8321''8242'_52 v3 v7
du_map'8321''8242'_52 ::
  T_BifunctorI_36 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8321''8242'_52 v0 v1
  = coe
      d_bimap'8242'_50 v0 erased erased erased erased v1 (\ v2 v3 -> v3)
-- Interface.Bifunctor.BifunctorI._<$>₁′_
d__'60''36''62''8321''8242'__56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_36 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8321''8242'__56 ~v0 ~v1 ~v2 v3
  = du__'60''36''62''8321''8242'__56 v3
du__'60''36''62''8321''8242'__56 ::
  T_BifunctorI_36 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8321''8242'__56 v0 v1 v2 v3 v4
  = coe du_map'8321''8242'_52 (coe v0) v4
-- Interface.Bifunctor.BifunctorI.map₂′
d_map'8322''8242'_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_36 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8322''8242'_60 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 v7
  = du_map'8322''8242'_60 v3 v7
du_map'8322''8242'_60 ::
  T_BifunctorI_36 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8322''8242'_60 v0 v1
  = coe
      d_bimap'8242'_50 v0 erased erased erased erased (\ v2 -> v2) v1
-- Interface.Bifunctor.BifunctorI._<$>₂′_
d__'60''36''62''8322''8242'__64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_36 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8322''8242'__64 ~v0 ~v1 ~v2 v3
  = du__'60''36''62''8322''8242'__64 v3
du__'60''36''62''8322''8242'__64 ::
  T_BifunctorI_36 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8322''8242'__64 v0 v1 v2 v3 v4
  = coe du_map'8322''8242'_60 (coe v0) v4
-- Interface.Bifunctor._._<$>₁′_
d__'60''36''62''8321''8242'__68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_36 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8321''8242'__68 ~v0 ~v1 ~v2 v3
  = du__'60''36''62''8321''8242'__68 v3
du__'60''36''62''8321''8242'__68 ::
  T_BifunctorI_36 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8321''8242'__68 v0
  = coe du__'60''36''62''8321''8242'__56 (coe v0)
-- Interface.Bifunctor._._<$>₂′_
d__'60''36''62''8322''8242'__70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_36 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8322''8242'__70 ~v0 ~v1 ~v2 v3
  = du__'60''36''62''8322''8242'__70 v3
du__'60''36''62''8322''8242'__70 ::
  T_BifunctorI_36 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8322''8242'__70 v0
  = coe du__'60''36''62''8322''8242'__64 (coe v0)
-- Interface.Bifunctor._.bimap′
d_bimap'8242'_72 ::
  T_BifunctorI_36 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_bimap'8242'_72 v0 = coe d_bimap'8242'_50 (coe v0)
-- Interface.Bifunctor._.map₁′
d_map'8321''8242'_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_36 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8321''8242'_74 ~v0 ~v1 ~v2 v3 = du_map'8321''8242'_74 v3
du_map'8321''8242'_74 ::
  T_BifunctorI_36 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8321''8242'_74 v0 v1 v2 v3 v4
  = coe du_map'8321''8242'_52 (coe v0) v4
-- Interface.Bifunctor._.map₂′
d_map'8322''8242'_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> (AgdaAny -> ()) -> ()) ->
  T_BifunctorI_36 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8322''8242'_76 ~v0 ~v1 ~v2 v3 = du_map'8322''8242'_76 v3
du_map'8322''8242'_76 ::
  T_BifunctorI_36 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8322''8242'_76 v0 v1 v2 v3 v4
  = coe du_map'8322''8242'_60 (coe v0) v4
-- Interface.Bifunctor.Bifunctor-Σ
d_Bifunctor'45'Σ_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_BifunctorI_36
d_Bifunctor'45'Σ_78 ~v0 ~v1 = du_Bifunctor'45'Σ_78
du_Bifunctor'45'Σ_78 :: T_BifunctorI_36
du_Bifunctor'45'Σ_78
  = coe
      C_BifunctorI'46'constructor_603
      (coe
         (\ v0 v1 v2 v3 -> coe MAlonzo.Code.Data.Product.Base.du_map_104))
-- Interface.Bifunctor.Bifunctor
d_Bifunctor_86 a0 a1 a2 = ()
newtype T_Bifunctor_86
  = C_Bifunctor'46'constructor_3855 (() ->
                                     () ->
                                     () ->
                                     () ->
                                     (AgdaAny -> AgdaAny) ->
                                     (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
-- Interface.Bifunctor.Bifunctor.bimap
d_bimap_108 ::
  T_Bifunctor_86 ->
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_bimap_108 v0
  = case coe v0 of
      C_Bifunctor'46'constructor_3855 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.Bifunctor.Bifunctor.map₁
d_map'8321'_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> () -> ()) ->
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8321'_116 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 v7
  = du_map'8321'_116 v3 v7
du_map'8321'_116 ::
  T_Bifunctor_86 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8321'_116 v0 v1
  = coe d_bimap_108 v0 erased erased erased erased v1 (\ v2 -> v2)
-- Interface.Bifunctor.Bifunctor._<$>₁_
d__'60''36''62''8321'__120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> () -> ()) ->
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8321'__120 ~v0 ~v1 ~v2 v3
  = du__'60''36''62''8321'__120 v3
du__'60''36''62''8321'__120 ::
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8321'__120 v0 v1 v2 v3 v4
  = coe du_map'8321'_116 (coe v0) v4
-- Interface.Bifunctor.Bifunctor.map₂
d_map'8322'_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> () -> ()) ->
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8322'_128 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 v7
  = du_map'8322'_128 v3 v7
du_map'8322'_128 ::
  T_Bifunctor_86 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8322'_128 v0 v1
  = coe d_bimap_108 v0 erased erased erased erased (\ v2 -> v2) v1
-- Interface.Bifunctor.Bifunctor._<$>₂_
d__'60''36''62''8322'__132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> () -> ()) ->
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8322'__132 ~v0 ~v1 ~v2 v3
  = du__'60''36''62''8322'__132 v3
du__'60''36''62''8322'__132 ::
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8322'__132 v0 v1 v2 v3 v4
  = coe du_map'8322'_128 (coe v0) v4
-- Interface.Bifunctor._._<$>₁_
d__'60''36''62''8321'__136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> () -> ()) ->
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8321'__136 ~v0 ~v1 ~v2 v3
  = du__'60''36''62''8321'__136 v3
du__'60''36''62''8321'__136 ::
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8321'__136 v0
  = coe du__'60''36''62''8321'__120 (coe v0)
-- Interface.Bifunctor._._<$>₂_
d__'60''36''62''8322'__138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> () -> ()) ->
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8322'__138 ~v0 ~v1 ~v2 v3
  = du__'60''36''62''8322'__138 v3
du__'60''36''62''8322'__138 ::
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du__'60''36''62''8322'__138 v0
  = coe du__'60''36''62''8322'__132 (coe v0)
-- Interface.Bifunctor._.bimap
d_bimap_140 ::
  T_Bifunctor_86 ->
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_bimap_140 v0 = coe d_bimap_108 (coe v0)
-- Interface.Bifunctor._.map₁
d_map'8321'_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> () -> ()) ->
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8321'_142 ~v0 ~v1 ~v2 v3 = du_map'8321'_142 v3
du_map'8321'_142 ::
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8321'_142 v0 v1 v2 v3 v4 = coe du_map'8321'_116 (coe v0) v4
-- Interface.Bifunctor._.map₂
d_map'8322'_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> () -> ()) ->
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8322'_144 ~v0 ~v1 ~v2 v3 = du_map'8322'_144 v3
du_map'8322'_144 ::
  T_Bifunctor_86 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8322'_144 v0 v1 v2 v3 v4 = coe du_map'8322'_128 (coe v0) v4
-- Interface.Bifunctor.map₁₂
d_map'8321''8322'_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> () -> ()) ->
  () ->
  () -> T_Bifunctor_86 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'8321''8322'_152 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_map'8321''8322'_152 v4 v5
du_map'8321''8322'_152 ::
  T_Bifunctor_86 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'8321''8322'_152 v0 v1
  = coe d_bimap_108 v0 erased erased erased erased v1 v1
-- Interface.Bifunctor._<$>₁₂_
d__'60''36''62''8321''8322'__156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (() -> () -> ()) ->
  () ->
  () -> T_Bifunctor_86 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62''8321''8322'__156 v0 v1 v2 v3 v4 v5
  = coe du_map'8321''8322'_152 v4 v5
-- Interface.Bifunctor.Bifunctor-×
d_Bifunctor'45''215'_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_Bifunctor_86
d_Bifunctor'45''215'_158 ~v0 ~v1 = du_Bifunctor'45''215'_158
du_Bifunctor'45''215'_158 :: T_Bifunctor_86
du_Bifunctor'45''215'_158
  = coe
      C_Bifunctor'46'constructor_3855
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_map_104 (coe v4)
              (coe (\ v6 -> v5))))
-- Interface.Bifunctor.Bifunctor-⊎
d_Bifunctor'45''8846'_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> T_Bifunctor_86
d_Bifunctor'45''8846'_164 ~v0 ~v1 = du_Bifunctor'45''8846'_164
du_Bifunctor'45''8846'_164 :: T_Bifunctor_86
du_Bifunctor'45''8846'_164
  = coe
      C_Bifunctor'46'constructor_3855
      (coe (\ v0 v1 v2 v3 -> coe MAlonzo.Code.Data.Sum.Base.du_map_84))
