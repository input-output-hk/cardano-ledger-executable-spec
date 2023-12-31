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

module MAlonzo.Code.Interface.Decidable.Instance where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Relation.Unary.All
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Interface.Decidable.Instance.∃Dec
d_'8707'Dec_8 :: MAlonzo.Code.Agda.Primitive.T_Level_18 -> ()
d_'8707'Dec_8 = erased
-- Interface.Decidable.Instance.Dec₁
d_Dec'8321'_20 a0 a1 a2 a3 = ()
newtype T_Dec'8321'_20
  = C_Dec'8321''46'constructor_153 (AgdaAny ->
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Interface.Decidable.Instance.Dec₁.P?
d_P'63'_32 ::
  T_Dec'8321'_20 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_P'63'_32 v0
  = case coe v0 of
      C_Dec'8321''46'constructor_153 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.Decidable.Instance.¿_¿
d_'191'_'191'_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'191'_'191'_50 ~v0 ~v1 v2 = du_'191'_'191'_50 v2
du_'191'_'191'_50 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'191'_'191'_50 v0 = coe v0
-- Interface.Decidable.Instance.¿_¿ᵇ
d_'191'_'191''7495'_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 -> Bool
d_'191'_'191''7495'_56 v0 ~v1 v2 = du_'191'_'191''7495'_56 v0 v2
du_'191'_'191''7495'_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 -> Bool
du_'191'_'191''7495'_56 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_106 v0
      erased v1
-- Interface.Decidable.Instance.ifᵈ_then_else_
d_if'7496'_then_else__66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
d_if'7496'_then_else__66 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_if'7496'_then_else__66 v4 v5 v6
du_if'7496'_then_else__66 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  (AgdaAny -> AgdaAny) ->
  ((AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
du_if'7496'_then_else__66 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
        -> if coe v3
             then case coe v4 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v5 -> coe v1 v5
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe seq (coe v4) (coe v2 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.Decidable.Instance.Dec¹
d_Dec'185'_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> (AgdaAny -> ()) -> ()
d_Dec'185'_94 = erased
-- Interface.Decidable.Instance.Decidable¹⇒Dec
d_Decidable'185''8658'Dec_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Decidable'185''8658'Dec_102 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Decidable'185''8658'Dec_102 v4 v5
du_Decidable'185''8658'Dec_102 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Decidable'185''8658'Dec_102 v0 v1 = coe v0 v1
-- Interface.Decidable.Instance.Dec²
d_Dec'178'_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) -> ()
d_Dec'178'_106 = erased
-- Interface.Decidable.Instance.Decidable²⇒Dec
d_Decidable'178''8658'Dec_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Decidable'178''8658'Dec_116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_Decidable'178''8658'Dec_116 v6 v7 v8
du_Decidable'178''8658'Dec_116 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Decidable'178''8658'Dec_116 v0 v1 v2 = coe v0 v1 v2
-- Interface.Decidable.Instance.Dec-⊥
d_Dec'45''8869'_124 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8869'_124
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
      (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
-- Interface.Decidable.Instance.Dec-⊤
d_Dec'45''8868'_128 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8868'_128
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
      (coe
         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
-- Interface.Decidable.Instance.Dec-→
d_Dec'45''8594'_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8594'_130 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Dec'45''8594'_130 v4 v5
du_Dec'45''8594'_130 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45''8594'_130 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__88
      (coe v0) (coe v1)
-- Interface.Decidable.Instance.Dec-×
d_Dec'45''215'_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''215'_136 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Dec'45''215'_136 v4 v5
du_Dec'45''215'_136 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45''215'_136 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
      (coe v0) (coe v1)
-- Interface.Decidable.Instance.DecEq⇒Dec
d_DecEq'8658'Dec_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_DecEq'8658'Dec_142 ~v0 ~v1 v2 v3 v4
  = du_DecEq'8658'Dec_142 v2 v3 v4
du_DecEq'8658'Dec_142 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_DecEq'8658'Dec_142 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63 v3
        -> coe v3 v1 v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.Decidable.Instance.Dec-⊎
d_Dec'45''8846'_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8846'_150 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Dec'45''8846'_150 v4 v5
du_Dec'45''8846'_150 ::
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45''8846'_150 v0 v1
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
        -> if coe v2
             then case coe v3 of
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v4
                      -> coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                           (coe v2)
                           (coe
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                              (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v4)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v3)
                    (case coe v1 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
                         -> if coe v4
                              then case coe v5 of
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                                       -> coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe v4)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                               (coe
                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                  (coe v6)))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              else coe
                                     seq (coe v5)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe v4)
                                        (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                       _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.Decidable.Instance.Dec-IsJust
d_Dec'45'IsJust_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'IsJust_172 ~v0 ~v1 v2 = du_Dec'45'IsJust_172 v2
du_Dec'45'IsJust_172 ::
  Maybe AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45'IsJust_172 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe
                   MAlonzo.Code.Data.Maybe.Relation.Unary.Any.C_just_30
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.Decidable.Instance.Dec-SumAll
d_Dec'45'SumAll_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'SumAll_182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_Dec'45'SumAll_182 v8 v9 v10
du_Dec'45'SumAll_182 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45'SumAll_182 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
        -> let v4 = coe v1 v3 in
           coe
             (case coe v4 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                  -> if coe v5
                       then case coe v6 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                                -> coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe v5)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                        (coe
                                           MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8321'_56
                                           v7))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v6)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe v5)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
        -> let v4 = coe v2 v3 in
           coe
             (case coe v4 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
                  -> if coe v5
                       then case coe v6 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                                -> coe
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                     (coe v5)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                        (coe
                                           MAlonzo.Code.Data.Sum.Relation.Unary.All.C_inj'8322'_60
                                           v7))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v6)
                              (coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe v5)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.Decidable.Instance.Dec-ℚ≤
d_Dec'45'ℚ'8804'_236 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'ℚ'8804'_236 v0 v1
  = coe
      du_Decidable'178''8658'Dec_116
      (coe MAlonzo.Code.Data.Rational.Properties.d__'8804''63'__3398)
      (coe v0) (coe v1)
