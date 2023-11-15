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

module MAlonzo.Code.Interface.STS where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Interface.Bifunctor

-- Interface.STS.∙_
d_'8729'__4 :: () -> ()
d_'8729'__4 = erased
-- Interface.STS._∙_
d__'8729'__8 :: () -> () -> ()
d__'8729'__8 = erased
-- Interface.STS.────────────────────────────────_
d_'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__14 ::
  () -> ()
d_'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__14
  = erased
-- Interface.STS._────────────────────────────────_
d__'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__18 ::
  () -> () -> ()
d__'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__18
  = erased
-- Interface.STS.───────────────────────────────────────_
d_'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__24 ::
  () -> ()
d_'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__24
  = erased
-- Interface.STS._───────────────────────────────────────_
d__'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__28 ::
  () -> () -> ()
d__'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__28
  = erased
-- Interface.STS._._⊢_⇀⟦_⟧*_
d__'8866'_'8640''10214'_'10215''42'__66 a0 a1 a2 a3 a4 a5 a6 a7 a8
  = ()
data T__'8866'_'8640''10214'_'10215''42'__66
  = C_BS'45'base_68 AgdaAny |
    C_BS'45'ind_70 AgdaAny AgdaAny
                   T__'8866'_'8640''10214'_'10215''42'__66
-- Interface.STS._._⊢_⇀⟦_⟧ᵢ*_
d__'8866'_'8640''10214'_'10215''7522''42'__86 a0 a1 a2 a3 a4 a5 a6
                                              a7 a8
  = ()
data T__'8866'_'8640''10214'_'10215''7522''42'__86
  = C_BS'45'base_88 AgdaAny |
    C_BS'45'ind_90 AgdaAny AgdaAny
                   T__'8866'_'8640''10214'_'10215''7522''42'__86
-- Interface.STS.IdSTS
d_IdSTS_96 a0 a1 a2 a3 a4 a5 = ()
data T_IdSTS_96 = C_Id'45'nop_102
-- Interface.STS.ReflexiveTransitiveClosure
d_ReflexiveTransitiveClosure_104 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_ReflexiveTransitiveClosure_104 = erased
-- Interface.STS.ReflexiveTransitiveClosure-total
d_ReflexiveTransitiveClosure'45'total_130 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ReflexiveTransitiveClosure'45'total_130 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
                                          v7
  = du_ReflexiveTransitiveClosure'45'total_130 v4 v5 v6 v7
du_ReflexiveTransitiveClosure'45'total_130 ::
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ReflexiveTransitiveClosure'45'total_130 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe C_BS'45'base_68 (coe C_Id'45'nop_102))
      (:) v4 v5
        -> coe
             du_'46'extendedlambda0_148 (coe v0) (coe v1) (coe v5)
             (coe v0 v1 v2 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS..extendedlambda0
d_'46'extendedlambda0_148 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'extendedlambda0_148 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8 v9
  = du_'46'extendedlambda0_148 v4 v5 v8 v9
du_'46'extendedlambda0_148 ::
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'46'extendedlambda0_148 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Interface.Bifunctor.du_map'8322''8242'_60
             (coe MAlonzo.Code.Interface.Bifunctor.du_Bifunctor'45'Σ_78)
             (\ v6 -> coe C_BS'45'ind_70 v4 v5)
             (coe
                du_ReflexiveTransitiveClosure'45'total_130 (coe v0) (coe v1)
                (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS.ReflexiveTransitiveClosureᵢ
d_ReflexiveTransitiveClosure'7522'_154 ::
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_ReflexiveTransitiveClosure'7522'_154 = erased
-- Interface.STS.ReflexiveTransitiveClosureᵢ-total
d_ReflexiveTransitiveClosure'7522''45'total_180 ::
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ReflexiveTransitiveClosure'7522''45'total_180 ~v0 ~v1 ~v2 ~v3 v4
                                                v5 v6 v7
  = du_ReflexiveTransitiveClosure'7522''45'total_180 v4 v5 v6 v7
du_ReflexiveTransitiveClosure'7522''45'total_180 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ReflexiveTransitiveClosure'7522''45'total_180 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe C_BS'45'base_88 (coe C_Id'45'nop_102))
      (:) v4 v5
        -> coe
             du_'46'extendedlambda1_198 (coe v0) (coe v1) (coe v5)
             (coe
                v0
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v5))
                v2 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS..extendedlambda1
d_'46'extendedlambda1_198 ::
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'extendedlambda1_198 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8 v9
  = du_'46'extendedlambda1_198 v4 v5 v8 v9
du_'46'extendedlambda1_198 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'46'extendedlambda1_198 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Interface.Bifunctor.du_map'8322''8242'_60
             (coe MAlonzo.Code.Interface.Bifunctor.du_Bifunctor'45'Σ_78)
             (\ v6 -> coe C_BS'45'ind_90 v4 v5)
             (coe
                du_ReflexiveTransitiveClosure'7522''45'total_180 (coe v0) (coe v1)
                (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS.ReflexiveTransitiveClosureᵢᵇ
d_ReflexiveTransitiveClosure'7522''7495'_204 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_ReflexiveTransitiveClosure'7522''7495'_204 = erased
-- Interface.STS.ReflexiveTransitiveClosureᵇ
d_ReflexiveTransitiveClosure'7495'_206 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_ReflexiveTransitiveClosure'7495'_206 = erased
