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

module MAlonzo.Code.Interface.Functor where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Reflection.AST.Abstraction
import qualified MAlonzo.Code.Reflection.AST.Argument

-- Interface.Functor.Type↑
d_Type'8593'_4 :: ()
d_Type'8593'_4 = erased
-- Interface.Functor.Functor
d_Functor_22 a0 = ()
newtype T_Functor_22
  = C_Functor'46'constructor_157 (MAlonzo.Code.Agda.Primitive.T_Level_14 ->
                                  () ->
                                  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
                                  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
-- Interface.Functor.Functor._<$>_
d__'60''36''62'__28 ::
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62'__28 v0
  = case coe v0 of
      C_Functor'46'constructor_157 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.Functor.Functor.map
d_map_30 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_30 ~v0 v1 = du_map_30 v1
du_map_30 ::
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map_30 v0 = coe d__'60''36''62'__28 (coe v0)
-- Interface.Functor.Functor._<$_
d__'60''36'__32 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''36'__32 ~v0 v1 v2 ~v3 v4 ~v5 v6 v7
  = du__'60''36'__32 v1 v2 v4 v6 v7
du__'60''36'__32 ::
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'60''36'__32 v0 v1 v2 v3 v4
  = coe d__'60''36''62'__28 v0 v2 erased v1 erased (\ v5 -> v3) v4
-- Interface.Functor.Functor._<&>_
d__'60''38''62'__38 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'60''38''62'__38 ~v0 v1 v2 ~v3 v4 ~v5 v6 v7
  = du__'60''38''62'__38 v1 v2 v4 v6 v7
du__'60''38''62'__38 ::
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'60''38''62'__38 v0 v1 v2 v3 v4
  = coe d__'60''36''62'__28 v0 v1 erased v2 erased v4 v3
-- Interface.Functor._._<$_
d__'60''36'__42 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'60''36'__42 ~v0 v1 = du__'60''36'__42 v1
du__'60''36'__42 ::
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'60''36'__42 v0 v1 v2 v3 v4 v5 v6
  = coe du__'60''36'__32 (coe v0) v1 v3 v5 v6
-- Interface.Functor._._<$>_
d__'60''36''62'__44 ::
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d__'60''36''62'__44 v0 = coe d__'60''36''62'__28 (coe v0)
-- Interface.Functor._._<&>_
d__'60''38''62'__46 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d__'60''38''62'__46 ~v0 v1 = du__'60''38''62'__46 v1
du__'60''38''62'__46 ::
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du__'60''38''62'__46 v0 v1 v2 v3 v4 v5 v6
  = coe du__'60''38''62'__38 (coe v0) v1 v3 v5 v6
-- Interface.Functor._.map
d_map_48 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()) ->
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_48 ~v0 v1 = du_map_48 v1
du_map_48 ::
  T_Functor_22 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map_48 v0 = coe du_map_30 (coe v0)
-- Interface.Functor.FunctorLaws
d_FunctorLaws_54 a0 a1 = ()
data T_FunctorLaws_54 = C_FunctorLaws'46'constructor_8517
-- Interface.Functor.FunctorLaws.map-id
d_map'45'id_84 ::
  T_FunctorLaws_54 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'id_84 = erased
-- Interface.Functor.FunctorLaws.map-∘
d_map'45''8728'_98 ::
  T_FunctorLaws_54 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45''8728'_98 = erased
-- Interface.Functor.Functor-List
d_Functor'45'List_100 :: T_Functor_22
d_Functor'45'List_100
  = coe
      C_Functor'46'constructor_157
      (coe (\ v0 v1 v2 v3 -> coe MAlonzo.Code.Data.List.Base.du_map_22))
-- Interface.Functor.FunctorLaws-List
d_FunctorLaws'45'List_102 :: T_FunctorLaws_54
d_FunctorLaws'45'List_102 = erased
-- Interface.Functor._.go.map-id
d_map'45'id_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'id_116 = erased
-- Interface.Functor._.go..extendedlambda0
d_'46'extendedlambda0_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda0_118 = erased
-- Interface.Functor._.go.map-∘
d_map'45''8728'_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45''8728'_136 = erased
-- Interface.Functor._.go..extendedlambda1
d_'46'extendedlambda1_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'46'extendedlambda1_142 = erased
-- Interface.Functor.Functor-List⁺
d_Functor'45'List'8314'_150 :: T_Functor_22
d_Functor'45'List'8314'_150
  = coe
      C_Functor'46'constructor_157
      (coe
         (\ v0 v1 v2 v3 ->
            coe MAlonzo.Code.Data.List.NonEmpty.Base.du_map_98))
-- Interface.Functor.Functor-Vec
d_Functor'45'Vec_154 :: Integer -> T_Functor_22
d_Functor'45'Vec_154 ~v0 = du_Functor'45'Vec_154
du_Functor'45'Vec_154 :: T_Functor_22
du_Functor'45'Vec_154
  = coe
      C_Functor'46'constructor_157
      (coe (\ v0 v1 v2 v3 -> coe MAlonzo.Code.Data.Vec.Base.du_map_178))
-- Interface.Functor.Functor-∃Vec
d_Functor'45''8707'Vec_156 :: T_Functor_22
d_Functor'45''8707'Vec_156
  = coe
      C_Functor'46'constructor_157
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            case coe v5 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                -> coe
                     MAlonzo.Code.Data.Product.Base.du_'45''44'__68 (coe v6)
                     (coe MAlonzo.Code.Data.Vec.Base.du_map_178 (coe v4) (coe v7))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.Functor.Functor-Maybe
d_Functor'45'Maybe_162 :: T_Functor_22
d_Functor'45'Maybe_162
  = coe
      C_Functor'46'constructor_157
      (coe (\ v0 v1 v2 v3 -> coe MAlonzo.Code.Data.Maybe.Base.du_map_68))
-- Interface.Functor.FunctorLaws-Maybe
d_FunctorLaws'45'Maybe_164 :: T_FunctorLaws_54
d_FunctorLaws'45'Maybe_164 = erased
-- Interface.Functor.Functor-TC
d_Functor'45'TC_170 :: T_Functor_22
d_Functor'45'TC_170
  = coe
      C_Functor'46'constructor_157
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 v0 v2 erased
              erased v5
              (\ v6 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Reflection.d_returnTC_316 v2 erased
                   (coe v4 v6))))
-- Interface.Functor.Functor-Abs
d_Functor'45'Abs_176 :: T_Functor_22
d_Functor'45'Abs_176
  = coe
      C_Functor'46'constructor_157
      (\ v0 v1 v2 v3 v4 v5 ->
         coe MAlonzo.Code.Reflection.AST.Abstraction.du_map_22 v4 v5)
-- Interface.Functor.Functor-Arg
d_Functor'45'Arg_182 :: T_Functor_22
d_Functor'45'Arg_182
  = coe
      C_Functor'46'constructor_157
      (\ v0 v1 v2 v3 v4 v5 ->
         coe MAlonzo.Code.Reflection.AST.Argument.du_map_54 v4 v5)
-- Interface.Functor._.map-id
d_map'45'id_200 ::
  T_FunctorLaws_54 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'id_200 = erased
-- Interface.Functor._.map-∘
d_map'45''8728'_202 ::
  T_FunctorLaws_54 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45''8728'_202 = erased
