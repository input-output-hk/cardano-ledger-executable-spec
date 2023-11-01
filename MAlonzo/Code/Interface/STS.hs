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
-- Interface.STS._────────────────────────────────_
d__'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__14 ::
  () -> () -> ()
d__'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__14
  = erased
-- Interface.STS._───────────────────────────────────────_
d__'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__20 ::
  () -> () -> ()
d__'9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472''9472'__20
  = erased
-- Interface.STS._._⊢_⇀⟦_⟧*_
d__'8866'_'8640''10214'_'10215''42'__58 a0 a1 a2 a3 a4 a5 a6 a7 a8
  = ()
data T__'8866'_'8640''10214'_'10215''42'__58
  = C_BS'45'base_60 AgdaAny |
    C_BS'45'ind_62 AgdaAny AgdaAny
                   T__'8866'_'8640''10214'_'10215''42'__58
-- Interface.STS._._⊢_⇀⟦_⟧ᵢ*_
d__'8866'_'8640''10214'_'10215''7522''42'__78 a0 a1 a2 a3 a4 a5 a6
                                              a7 a8
  = ()
data T__'8866'_'8640''10214'_'10215''7522''42'__78
  = C_BS'45'base_80 AgdaAny |
    C_BS'45'ind_82 AgdaAny AgdaAny
                   T__'8866'_'8640''10214'_'10215''7522''42'__78
-- Interface.STS.IdSTS
d_IdSTS_88 a0 a1 a2 a3 a4 a5 = ()
data T_IdSTS_88 = C_Id'45'nop_94
-- Interface.STS.SS⇒BS
d_SS'8658'BS_96 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_SS'8658'BS_96 = erased
-- Interface.STS.SS⇒BS-total
d_SS'8658'BS'45'total_122 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SS'8658'BS'45'total_122 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_SS'8658'BS'45'total_122 v4 v5 v6 v7
du_SS'8658'BS'45'total_122 ::
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_SS'8658'BS'45'total_122 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe C_BS'45'base_60 (coe C_Id'45'nop_94))
      (:) v4 v5
        -> coe
             du_'46'extendedlambda0_140 (coe v0) (coe v1) (coe v5)
             (coe v0 v1 v2 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS..extendedlambda0
d_'46'extendedlambda0_140 ::
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
d_'46'extendedlambda0_140 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8 v9
  = du_'46'extendedlambda0_140 v4 v5 v8 v9
du_'46'extendedlambda0_140 ::
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'46'extendedlambda0_140 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Interface.Bifunctor.du_map'8322''8242'_60
             (coe MAlonzo.Code.Interface.Bifunctor.du_Bifunctor'45'Σ_78)
             (\ v6 -> coe C_BS'45'ind_62 v4 v5)
             (coe
                du_SS'8658'BS'45'total_122 (coe v0) (coe v1) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS.SS⇒BSᵢ
d_SS'8658'BS'7522'_146 ::
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_SS'8658'BS'7522'_146 = erased
-- Interface.STS.SS⇒BSᵢ-total
d_SS'8658'BS'7522''45'total_172 ::
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SS'8658'BS'7522''45'total_172 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_SS'8658'BS'7522''45'total_172 v4 v5 v6 v7
du_SS'8658'BS'7522''45'total_172 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_SS'8658'BS'7522''45'total_172 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe C_BS'45'base_80 (coe C_Id'45'nop_94))
      (:) v4 v5
        -> coe
             du_'46'extendedlambda1_190 (coe v0) (coe v1) (coe v5)
             (coe
                v0
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                   (coe MAlonzo.Code.Data.List.Base.du_length_304 v5))
                v2 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS..extendedlambda1
d_'46'extendedlambda1_190 ::
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
d_'46'extendedlambda1_190 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8 v9
  = du_'46'extendedlambda1_190 v4 v5 v8 v9
du_'46'extendedlambda1_190 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'46'extendedlambda1_190 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Interface.Bifunctor.du_map'8322''8242'_60
             (coe MAlonzo.Code.Interface.Bifunctor.du_Bifunctor'45'Σ_78)
             (\ v6 -> coe C_BS'45'ind_82 v4 v5)
             (coe
                du_SS'8658'BS'7522''45'total_172 (coe v0) (coe v1) (coe v4)
                (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.STS.SS⇒BSᵢᵇ
d_SS'8658'BS'7522''7495'_196 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_SS'8658'BS'7522''7495'_196 = erased
-- Interface.STS.SS⇒BSᵇ
d_SS'8658'BS'7495'_198 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> AgdaAny -> ()
d_SS'8658'BS'7495'_198 = erased
