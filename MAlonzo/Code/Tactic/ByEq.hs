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

module MAlonzo.Code.Tactic.ByEq where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Generics.Utils
import qualified MAlonzo.Code.Interface.Functor

-- Tactic.ByEq.by-eq
d_by'45'eq_4 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_by'45'eq_4 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_bindTC_326 () () erased
      erased
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.d_withNormalisation_412 ()
         erased (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
         (coe MAlonzo.Code.Agda.Builtin.Reflection.d_inferType_336 v0))
      (\ v1 ->
         coe
           MAlonzo.Code.Agda.Builtin.Reflection.d_unify_328 v0
           (coe
              MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_188
              (coe
                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_clause_264
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                    (coe
                       MAlonzo.Code.Interface.Functor.du__'60''38''62'__38
                       (coe MAlonzo.Code.Interface.Functor.d_Functor'45'List_100) (coe ())
                       (coe ()) (coe MAlonzo.Code.Generics.Utils.d_argTys_160 (coe v1))
                       (coe
                          MAlonzo.Code.Interface.Functor.du_map_30
                          MAlonzo.Code.Interface.Functor.d_Functor'45'Arg_182 () erased ()
                          erased
                          (\ v2 ->
                             let v3
                                   = coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_dot_240
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_208) in
                             case coe v2 of
                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_176 v4 v5
                                 -> case coe v4 of
                                      MAlonzo.RTE.QName 12 1335258922519917603 _ _
                                        -> coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_con_236
                                             (coe
                                                (MAlonzo.RTE.QName
                                                   (20 :: Integer) (1335258922519917603 :: Integer)
                                                   "Agda.Builtin.Equality._\8801_.refl"
                                                   (MAlonzo.RTE.Fixity
                                                      MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                      _ -> coe v3
                               _ -> coe v3)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_con_170
                       (coe
                          (MAlonzo.RTE.QName
                             (20 :: Integer) (1335258922519917603 :: Integer)
                             "Agda.Builtin.Equality._\8801_.refl"
                             (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- Tactic.ByEq.$by-eq
d_'36'by'45'eq_14 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_146 -> AgdaAny
d_'36'by'45'eq_14 = coe d_by'45'eq_4
