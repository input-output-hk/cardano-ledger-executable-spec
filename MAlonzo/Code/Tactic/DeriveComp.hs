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

module MAlonzo.Code.Tactic.DeriveComp where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Generics.Utils
import qualified MAlonzo.Code.Interface.Monad
import qualified MAlonzo.Code.Interface.Monad.Instance
import qualified MAlonzo.Code.Interface.MonadError
import qualified MAlonzo.Code.Interface.MonadReader
import qualified MAlonzo.Code.Interface.MonadTC
import qualified MAlonzo.Code.Meta
import qualified MAlonzo.Code.Reflection.AST.Abstraction
import qualified MAlonzo.Code.Reflection.AST.Argument
import qualified MAlonzo.Code.Reflection.AST.Argument.Visibility
import qualified MAlonzo.Code.Reflection.AST.DeBruijn
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.Ext
import qualified MAlonzo.Code.Reflection.TCI
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Tactic.ClauseBuilder
import qualified MAlonzo.Code.Tactic.Helpers

-- Tactic.DeriveComp.STSConstr
d_STSConstr_14 = ()
data T_STSConstr_14
  = C_STSConstr'46'constructor_239 AgdaAny
                                   [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
                                   [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
                                   MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
                                   MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
                                   MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
                                   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
-- Tactic.DeriveComp.STSConstr.name
d_name_30 :: T_STSConstr_14 -> AgdaAny
d_name_30 v0
  = case coe v0 of
      C_STSConstr'46'constructor_239 v1 v2 v3 v4 v5 v6 v7 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.DeriveComp.STSConstr.params
d_params_32 ::
  T_STSConstr_14 -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_params_32 v0
  = case coe v0 of
      C_STSConstr'46'constructor_239 v1 v2 v3 v4 v5 v6 v7 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.DeriveComp.STSConstr.clauses
d_clauses_34 ::
  T_STSConstr_14 -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_clauses_34 v0
  = case coe v0 of
      C_STSConstr'46'constructor_239 v1 v2 v3 v4 v5 v6 v7 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.DeriveComp.STSConstr.context
d_context_36 ::
  T_STSConstr_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_context_36 v0
  = case coe v0 of
      C_STSConstr'46'constructor_239 v1 v2 v3 v4 v5 v6 v7 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.DeriveComp.STSConstr.state
d_state_38 ::
  T_STSConstr_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_state_38 v0
  = case coe v0 of
      C_STSConstr'46'constructor_239 v1 v2 v3 v4 v5 v6 v7 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.DeriveComp.STSConstr.signal
d_signal_40 ::
  T_STSConstr_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_signal_40 v0
  = case coe v0 of
      C_STSConstr'46'constructor_239 v1 v2 v3 v4 v5 v6 v7 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.DeriveComp.STSConstr.result
d_result_42 ::
  T_STSConstr_14 -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_result_42 v0
  = case coe v0 of
      C_STSConstr'46'constructor_239 v1 v2 v3 v4 v5 v6 v7 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.DeriveComp.conOrVarToPattern
d_conOrVarToPattern_44 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_conOrVarToPattern_44 v0 v1
  = let v2 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 v3 v4
           -> case coe v4 of
                []
                  -> coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                          (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v3 v0))
                _ -> coe v2
         MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 v3 v4
           -> coe
                MAlonzo.Code.Interface.Monad.du__'60''36''62'__62
                (coe MAlonzo.Code.Interface.Monad.Instance.d_Monad'45'Maybe_38)
                (coe ()) (coe ())
                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 (coe v3))
                (coe
                   MAlonzo.Code.Interface.Monad.du_sequenceList_84
                   MAlonzo.Code.Interface.Monad.Instance.d_Monad'45'Maybe_38 ()
                   (coe d_conOrVarToPattern'8242'_60 v0 v3 v4 v0 v4))
         _ -> coe v2)
-- Tactic.DeriveComp._.conOrVarToPattern′
d_conOrVarToPattern'8242'_60 ::
  Integer ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_conOrVarToPattern'8242'_60 v0 v1 v2 v3
  = coe d_'46'extendedlambda0_64 (coe v0) (coe v1) (coe v2) (coe v3)
-- Tactic.DeriveComp._..extendedlambda0
d_'46'extendedlambda0_64 ::
  Integer ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_'46'extendedlambda0_64 v0 v1 v2 v3 v4
  = case coe v4 of
      [] -> coe v4
      (:) v5 v6
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v7 v8
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Interface.Monad.du__'60''36''62'__62
                       (coe MAlonzo.Code.Interface.Monad.Instance.d_Monad'45'Maybe_38)
                       (coe ()) (coe ())
                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v7))
                       (coe d_conOrVarToPattern_44 (coe v3) (coe v8)))
                    (coe d_conOrVarToPattern'8242'_60 v0 v1 v2 v3 v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.DeriveComp.isArg
d_isArg_74 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isArg_74 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_62
      (coe
         MAlonzo.Code.Reflection.AST.Argument.Visibility.d__'8799'__8
         (coe
            MAlonzo.Code.Generics.Utils.du_getVisibility_20
            (coe MAlonzo.Code.Reflection.AST.Abstraction.du_unAbs_36 (coe v0)))
         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50))
-- Tactic.DeriveComp.toSTSConstr
d_toSTSConstr_78 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Interface.MonadTC.T_TCEnv_22 -> AgdaAny
d_toSTSConstr_78 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> let v5
                        = coe
                            MAlonzo.Code.Interface.MonadTC.du_error1_664
                            (coe
                               MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
                               (coe MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
                            (coe ())
                            (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                            (coe ("toSTSConstr: wrong constructor" :: Data.Text.Text)) in
                  coe
                    (case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v6 v7
                         -> let v8
                                  = coe
                                      MAlonzo.Code.Data.List.Base.du_mapMaybe_32
                                      (coe
                                         (\ v8 ->
                                            d_conOrVarToPattern_44
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du_length_304
                                                 (coe
                                                    MAlonzo.Code.Data.List.Base.du_dropWhile_886
                                                    d_isArg_74 v3))
                                              (coe
                                                 MAlonzo.Code.Reflection.AST.Argument.du_unArg_74
                                                 (coe v8))))
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_take_622
                                         (coe (3 :: Integer)) (coe v7)) in
                            coe
                              (let v9
                                     = coe
                                         MAlonzo.Code.Interface.MonadTC.du_error1_664
                                         (coe
                                            MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
                                            (coe
                                               MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
                                         (coe ())
                                         (coe
                                            MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                         (coe
                                            MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                            (coe
                                               ("toSTSConstr: wrong number of arguments:"
                                                ::
                                                Data.Text.Text))
                                            (coe
                                               MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Show.d_show_56
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_length_304 v7))
                                               (coe
                                                  MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                  (coe ("," :: Data.Text.Text))
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Show.d_show_56
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_length_304
                                                        v8))))) in
                               coe
                                 (case coe v7 of
                                    (:) v10 v11
                                      -> case coe v11 of
                                           (:) v12 v13
                                             -> case coe v13 of
                                                  (:) v14 v15
                                                    -> case coe v15 of
                                                         (:) v16 v17
                                                           -> case coe v17 of
                                                                []
                                                                  -> case coe v8 of
                                                                       (:) v18 v19
                                                                         -> case coe v19 of
                                                                              (:) v20 v21
                                                                                -> case coe v21 of
                                                                                     (:) v22 v23
                                                                                       -> case coe
                                                                                                 v23 of
                                                                                            []
                                                                                              -> coe
                                                                                                   (\ v24 ->
                                                                                                      coe
                                                                                                        MAlonzo.Code.Interface.Monad.d_return_28
                                                                                                        MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12
                                                                                                        ()
                                                                                                        erased
                                                                                                        (coe
                                                                                                           C_STSConstr'46'constructor_239
                                                                                                           (coe
                                                                                                              v1)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Data.List.Base.du_takeWhile_880
                                                                                                              d_isArg_74
                                                                                                              v3)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Tactic.Helpers.du_zipWithIndex_14
                                                                                                              (coe
                                                                                                                 (\ v25 ->
                                                                                                                    MAlonzo.Code.Generics.Utils.d_mapVars_328
                                                                                                                      (coe
                                                                                                                         (\ v26 ->
                                                                                                                            coe
                                                                                                                              MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                              v26
                                                                                                                              v25))))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Interface.Monad.du__'60''36''62'__62
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Interface.Monad.Instance.d_Monad'45'List_34)
                                                                                                                 (coe
                                                                                                                    ())
                                                                                                                 (coe
                                                                                                                    ())
                                                                                                                 (coe
                                                                                                                    (\ v25 ->
                                                                                                                       coe
                                                                                                                         MAlonzo.Code.Reflection.AST.Argument.du_unArg_74
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Reflection.AST.Abstraction.du_unAbs_36
                                                                                                                            (coe
                                                                                                                               v25))))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Data.List.Base.du_dropWhile_886
                                                                                                                    d_isArg_74
                                                                                                                    v3)))
                                                                                                           (coe
                                                                                                              v18)
                                                                                                           (coe
                                                                                                              v20)
                                                                                                           (coe
                                                                                                              v22)
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Generics.Utils.d_mapVars_328
                                                                                                              (\ v25 ->
                                                                                                                 coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                   v25
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Data.List.Base.du_length_304
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Data.List.Base.du_dropWhile_886
                                                                                                                         d_isArg_74
                                                                                                                         v3)))
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Reflection.AST.Argument.du_unArg_74
                                                                                                                 (coe
                                                                                                                    v16)))))
                                                                                            _ -> coe
                                                                                                   v9
                                                                                     _ -> coe v9
                                                                              _ -> coe v9
                                                                       _ -> coe v9
                                                                _ -> coe v9
                                                         _ -> coe v9
                                                  _ -> coe v9
                                           _ -> coe v9
                                    _ -> coe v9))
                       _ -> coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.DeriveComp.errorIfNothing
d_errorIfNothing_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Interface.MonadTC.T_TCEnv_22 -> AgdaAny
d_errorIfNothing_124 v0 ~v1 v2 v3 = du_errorIfNothing_124 v0 v2 v3
du_errorIfNothing_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Interface.MonadTC.T_TCEnv_22 -> AgdaAny
du_errorIfNothing_124 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
        -> coe
             (\ v4 ->
                coe
                  MAlonzo.Code.Interface.Monad.d_return_28
                  MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12 v0 erased v3)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Interface.MonadTC.du_error1_664
             (coe
                MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
                (coe MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
             (coe v0)
             (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
             (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.DeriveComp.getSTSConstrs
d_getSTSConstrs_132 ::
  AgdaAny -> MAlonzo.Code.Interface.MonadTC.T_TCEnv_22 -> AgdaAny
d_getSTSConstrs_132 v0
  = coe
      MAlonzo.Code.Tactic.Helpers.du_inDebugPath_132
      (coe
         MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
         (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
      (coe
         MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
         (coe MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
      (coe
         MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
         (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
      (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154) (coe ())
      (coe ("getSTSConstrs" :: Data.Text.Text))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
              MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12 () erased () erased
              (coe
                 MAlonzo.Code.Tactic.Helpers.du_getDataDef_178
                 MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18
                 MAlonzo.Code.Reflection.TCI.d_MonadError'45'TC_22
                 (coe
                    MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                    (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                 MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154 v0 v1)
              (\ v2 ->
                 coe
                   MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                   MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12 () erased () erased
                   (coe
                      MAlonzo.Code.Interface.Monad.du_traverseList_70
                      MAlonzo.Code.Meta.d_iMonad'45'TC_2 () d_toSTSConstr_78
                      (MAlonzo.Code.Tactic.Helpers.d_constructors_32 (coe v2)) v1)
                   (\ v3 ->
                      coe
                        MAlonzo.Code.Interface.Monad.du__'62''62'__32
                        MAlonzo.Code.Meta.d_iMonad'45'TC_2 () ()
                        (coe
                           MAlonzo.Code.Interface.MonadTC.du_debugLog'7504'_508
                           (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                           (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                           (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                           (coe
                              MAlonzo.Code.Interface.MonadTC.du__'8759''7496''7504'__470
                              (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                              (coe
                                 MAlonzo.Code.Interface.MonadTC.du__'7515''8319'_486
                                 (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                                 (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                                 (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6) (coe ()) (coe v3))
                              (coe
                                 MAlonzo.Code.Interface.MonadTC.du_IsMErrorPart'45'MErrorPartWrap_462)
                              (coe
                                 MAlonzo.Code.Interface.Monad.d_return_28
                                 MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18 () erased
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                        (coe
                           MAlonzo.Code.Interface.Monad.d_return_28
                           MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased v3)
                        v1))))
-- Tactic.DeriveComp.generatePred
d_generatePred_140 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_generatePred_140 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
      (coe
         (MAlonzo.RTE.QName
            (50 :: Integer) (17154534930547628895 :: Integer)
            "Interface.Decidable.Instance.\191_\191"
            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
            (coe du_helper_148 (coe v0)))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Tactic.DeriveComp._.helper
d_helper_148 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_helper_148 ~v0 v1 = du_helper_148 v1
du_helper_148 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_helper_148 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
             (coe
                (MAlonzo.RTE.QName
                   (6 :: Integer) (13559399870857524843 :: Integer)
                   "Agda.Builtin.Unit.\8868"
                   (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
             (coe v0)
      (:) v1 v2
        -> case coe v2 of
             [] -> coe v1
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                    (coe
                       (MAlonzo.RTE.QName
                          (76 :: Integer) (14176793942586333973 :: Integer)
                          "Data.Product.Base._\215_"
                          (MAlonzo.RTE.Fixity
                             MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (2.0 :: Double)))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                          (coe v1))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                             (coe du_helper_148 (coe v2)))
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.DeriveComp.predWitness
d_predWitness_158 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_predWitness_158 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
             (coe
                (MAlonzo.RTE.QName
                   (8 :: Integer) (13559399870857524843 :: Integer)
                   "Agda.Builtin.Unit.tt"
                   (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe du_helper_166 (coe v1))
-- Tactic.DeriveComp._.helper
d_helper_166 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_helper_166 ~v0 v1 = du_helper_166 v1
du_helper_166 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_helper_166 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe (0 :: Integer))
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                (coe
                   (MAlonzo.RTE.QName
                      (32 :: Integer) (15581396396021577314 :: Integer)
                      "Agda.Builtin.Sigma._,_"
                      (MAlonzo.RTE.Fixity
                         MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (4.0 :: Double)))))
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172 (coe v0)
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                         (coe du_helper_166 (coe v1)))
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
-- Tactic.DeriveComp.curryPredProof
d_curryPredProof_170 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_curryPredProof_170 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      1 -> coe
             MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                (coe v1))
      2 -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                   (coe
                      (MAlonzo.RTE.QName
                         (28 :: Integer) (15581396396021577314 :: Integer)
                         "Agda.Builtin.Sigma.\931.fst"
                         (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                         (coe v1))
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                      (coe
                         (MAlonzo.RTE.QName
                            (30 :: Integer) (15581396396021577314 :: Integer)
                            "Agda.Builtin.Sigma.\931.snd"
                            (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                            (coe v1))
                         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      _ -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                   (coe
                      (MAlonzo.RTE.QName
                         (28 :: Integer) (15581396396021577314 :: Integer)
                         "Agda.Builtin.Sigma.\931.fst"
                         (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                         (coe v1))
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
             (coe
                d_curryPredProof_170 (coe subInt (coe v0) (coe (1 :: Integer)))
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                   (coe
                      (MAlonzo.RTE.QName
                         (30 :: Integer) (15581396396021577314 :: Integer)
                         "Agda.Builtin.Sigma.\931.snd"
                         (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                            (coe
                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                         (coe v1))
                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
-- Tactic.DeriveComp.computeFunctionBody
d_computeFunctionBody_182 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_computeFunctionBody_182 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
      (coe
         (MAlonzo.RTE.QName
            (42 :: Integer) (11214500610362984592 :: Integer)
            "Data.Bool.Base.if_then_else_"
            (MAlonzo.RTE.Fixity
               MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (0.0 :: Double)))))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
            (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                  (coe
                     (MAlonzo.RTE.QName
                        (16 :: Integer) (15412666033012224255 :: Integer)
                        "Agda.Builtin.Maybe.Maybe.just"
                        (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe v1))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                     (coe
                        (MAlonzo.RTE.QName
                           (18 :: Integer) (15412666033012224255 :: Integer)
                           "Agda.Builtin.Maybe.Maybe.nothing"
                           (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
-- Tactic.DeriveComp.generateFunctionClause
d_generateFunctionClause_188 ::
  ([MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154) ->
  T_STSConstr_14 -> MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160
d_generateFunctionClause_188 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
      (coe
         MAlonzo.Code.Interface.Monad.du__'60''36''62'__62
         (coe MAlonzo.Code.Interface.Monad.Instance.d_Monad'45'List_34)
         (coe ()) (coe ())
         (coe
            (\ v2 ->
               case coe v2 of
                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v3 v4
                   -> coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)
                 _ -> MAlonzo.RTE.mazUnreachableError))
         (coe d_params_32 (coe v1)))
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
               (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
            (coe d_context_36 (coe v1)))
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                  (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
               (coe d_state_38 (coe v1)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                  (coe d_signal_40 (coe v1)))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
      (coe
         d_computeFunctionBody_182
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
            (coe
               (MAlonzo.RTE.QName
                  (106 :: Integer) (16368259409245829246 :: Integer)
                  "Relation.Nullary.Decidable.Core.\8970_\8971"
                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                     (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                  (coe v0 (d_clauses_34 (coe v1))))
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
         (coe d_result_42 (coe v1)))
-- Tactic.DeriveComp._.clauses
d_clauses_196 ::
  T_STSConstr_14 -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_clauses_196 v0 = coe d_clauses_34 (coe v0)
-- Tactic.DeriveComp._.context
d_context_198 ::
  T_STSConstr_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_context_198 v0 = coe d_context_36 (coe v0)
-- Tactic.DeriveComp._.name
d_name_200 :: T_STSConstr_14 -> AgdaAny
d_name_200 v0 = coe d_name_30 (coe v0)
-- Tactic.DeriveComp._.params
d_params_202 ::
  T_STSConstr_14 -> [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112]
d_params_202 v0 = coe d_params_32 (coe v0)
-- Tactic.DeriveComp._.result
d_result_204 ::
  T_STSConstr_14 -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_result_204 v0 = coe d_result_42 (coe v0)
-- Tactic.DeriveComp._.signal
d_signal_206 ::
  T_STSConstr_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_signal_206 v0 = coe d_signal_40 (coe v0)
-- Tactic.DeriveComp._.state
d_state_208 ::
  T_STSConstr_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_state_208 v0 = coe d_state_38 (coe v0)
-- Tactic.DeriveComp.generateFunction
d_generateFunction_216 ::
  [T_STSConstr_14] -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_generateFunction_216 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
      (coe
         MAlonzo.Code.Interface.Monad.du__'60''36''62'__62
         (coe MAlonzo.Code.Interface.Monad.Instance.d_Monad'45'List_34)
         (coe ()) (coe ())
         (coe d_generateFunctionClause_188 (coe d_generatePred_140))
         (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Tactic.DeriveComp.rdOpts
d_rdOpts_220 ::
  MAlonzo.Code.Interface.MonadTC.T_ReductionOptions_14
d_rdOpts_220
  = coe
      MAlonzo.Code.Interface.MonadTC.C_onlyReduce_16
      (coe
         MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
         (coe
            (MAlonzo.RTE.QName
               (106 :: Integer) (16368259409245829246 :: Integer)
               "Relation.Nullary.Decidable.Core.\8970_\8971"
               (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated))))
-- Tactic.DeriveComp.derive⇐
d_derive'8656'_222 ::
  [T_STSConstr_14] ->
  MAlonzo.Code.Interface.MonadTC.T_TCEnv_22 -> AgdaAny
d_derive'8656'_222 v0
  = let v1
          = coe
              MAlonzo.Code.Interface.MonadTC.du_error1_664
              (coe
                 MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
                 (coe MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
              (coe ())
              (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
              (coe ("TODO: support multiple constructors" :: Data.Text.Text)) in
    coe
      (case coe v0 of
         (:) v2 v3
           -> case coe v2 of
                C_STSConstr'46'constructor_239 v4 v5 v6 v7 v8 v9 v10
                  -> case coe v3 of
                       []
                         -> coe
                              MAlonzo.Code.Tactic.Helpers.du_inDebugPath_132
                              (coe
                                 MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                 (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                              (coe
                                 MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
                                 (coe MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
                              (coe
                                 MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                                 (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                              (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154) (coe ())
                              (coe ("derive\8656" :: Data.Text.Text))
                              (coe
                                 (\ v11 ->
                                    coe
                                      MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                      MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12 () erased ()
                                      erased
                                      (coe
                                         MAlonzo.Code.Tactic.ClauseBuilder.du_currentTyConstrPatterns_512
                                         MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18
                                         MAlonzo.Code.Reflection.TCI.d_MonadError'45'TC_22
                                         (coe
                                            MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                                            (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                         MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154 v11)
                                      (\ v12 ->
                                         let v13
                                               = coe
                                                   MAlonzo.Code.Interface.MonadTC.du_error1_664
                                                   (coe
                                                      MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
                                                      (coe
                                                         MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
                                                   (coe ())
                                                   (coe
                                                      MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                   (coe
                                                      ("TODO: Support more than one constructor!"
                                                       ::
                                                       Data.Text.Text)) in
                                         coe
                                           (case coe v12 of
                                              (:) v14 v15
                                                -> case coe v15 of
                                                     []
                                                       -> coe
                                                            MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                                            MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12
                                                            () erased () erased
                                                            (coe
                                                               MAlonzo.Code.Tactic.ClauseBuilder.du_singleMatchExpr_656
                                                               (coe
                                                                  MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                                                  (coe
                                                                     MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                               (coe
                                                                  MAlonzo.Code.Tactic.ClauseBuilder.du_ContextMonad'45'MonadTC_598
                                                                  (coe
                                                                     MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                                                     (coe
                                                                        MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                                  (coe
                                                                     MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
                                                                     (coe
                                                                        MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
                                                                  (coe
                                                                     MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                                                                     (coe
                                                                        MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                                  (coe
                                                                     MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154))
                                                               v14
                                                               (coe
                                                                  MAlonzo.Code.Tactic.ClauseBuilder.du_finishMatch_724
                                                                  (coe
                                                                     MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                                                     (coe
                                                                        MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                                  (coe
                                                                     MAlonzo.Code.Interface.MonadTC.du_withGoalHole_784
                                                                     (coe
                                                                        MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                                                        (coe
                                                                           MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                                     (coe
                                                                        MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154)
                                                                     (coe
                                                                        MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                                                                        (coe
                                                                           MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                                     (coe
                                                                        MAlonzo.Code.Interface.MonadTC.du_unifyWithGoal_756
                                                                        (coe
                                                                           MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                                                                        (coe
                                                                           MAlonzo.Code.Reflection.TCI.d_MonadError'45'TC_22)
                                                                        (coe
                                                                           MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154)
                                                                        (coe
                                                                           MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                                                                           (coe
                                                                              MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                           (coe
                                                                              (MAlonzo.RTE.QName
                                                                                 (98 :: Integer)
                                                                                 (6189151057044369179 ::
                                                                                    Integer)
                                                                                 "Relation.Binary.PropositionalEquality.Core.subst"
                                                                                 (MAlonzo.RTE.Fixity
                                                                                    MAlonzo.RTE.NonAssoc
                                                                                    MAlonzo.RTE.Unrelated)))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                       (coe
                                                                                          ("g"
                                                                                           ::
                                                                                           Data.Text.Text))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                          (coe
                                                                                             (MAlonzo.RTE.QName
                                                                                                (12 ::
                                                                                                   Integer)
                                                                                                (1335258922519917603 ::
                                                                                                   Integer)
                                                                                                "Agda.Builtin.Equality._\8801_"
                                                                                                (MAlonzo.RTE.Fixity
                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                   (MAlonzo.RTE.Related
                                                                                                      (4.0 ::
                                                                                                         Double)))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                (coe
                                                                                                   d_computeFunctionBody_182
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                      (coe
                                                                                                         (0 ::
                                                                                                            Integer))
                                                                                                      (coe
                                                                                                         v15))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                                                                      (addInt
                                                                                                         (coe
                                                                                                            (2 ::
                                                                                                               Integer))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.List.Base.du_length_304
                                                                                                            v6))
                                                                                                      v10)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                                                                      (coe
                                                                                                         (MAlonzo.RTE.QName
                                                                                                            (16 ::
                                                                                                               Integer)
                                                                                                            (15412666033012224255 ::
                                                                                                               Integer)
                                                                                                            "Agda.Builtin.Maybe.Maybe.just"
                                                                                                            (MAlonzo.RTE.Fixity
                                                                                                               MAlonzo.RTE.NonAssoc
                                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                                                                               (addInt
                                                                                                                  (coe
                                                                                                                     (2 ::
                                                                                                                        Integer))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Data.List.Base.du_length_304
                                                                                                                     v6))
                                                                                                               v10))
                                                                                                         (coe
                                                                                                            v15))))
                                                                                                (coe
                                                                                                   v15)))))))
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                       (coe
                                                                                          (MAlonzo.RTE.QName
                                                                                             (92 ::
                                                                                                Integer)
                                                                                             (6189151057044369179 ::
                                                                                                Integer)
                                                                                             "Relation.Binary.PropositionalEquality.Core.sym"
                                                                                             (MAlonzo.RTE.Fixity
                                                                                                MAlonzo.RTE.NonAssoc
                                                                                                MAlonzo.RTE.Unrelated)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                (coe
                                                                                                   (MAlonzo.RTE.QName
                                                                                                      (126 ::
                                                                                                         Integer)
                                                                                                      (1919047259428906691 ::
                                                                                                         Integer)
                                                                                                      "Tactic.ReduceDec.fromWitness'"
                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                                                                         (addInt
                                                                                                            (coe
                                                                                                               (1 ::
                                                                                                                  Integer))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.List.Base.du_length_304
                                                                                                               v6))
                                                                                                         (d_generatePred_140
                                                                                                            (coe
                                                                                                               v6))))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                         (coe
                                                                                                            d_predWitness_158
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Data.List.Base.du_length_304
                                                                                                               v6)))
                                                                                                      (coe
                                                                                                         v15)))))
                                                                                          (coe
                                                                                             v15))))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                                                          (coe
                                                                                             (MAlonzo.RTE.QName
                                                                                                (20 ::
                                                                                                   Integer)
                                                                                                (1335258922519917603 ::
                                                                                                   Integer)
                                                                                                "Agda.Builtin.Equality._\8801_.refl"
                                                                                                (MAlonzo.RTE.Fixity
                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                          (coe
                                                                                             v15)))
                                                                                    (coe v15))))))))
                                                               v11)
                                                            (\ v16 ->
                                                               coe
                                                                 MAlonzo.Code.Interface.MonadTC.du_unifyWithGoal_756
                                                                 MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18
                                                                 MAlonzo.Code.Reflection.TCI.d_MonadError'45'TC_22
                                                                 MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154
                                                                 MAlonzo.Code.Meta.d_iMonadReader'45'TC_6
                                                                 (MAlonzo.Code.Tactic.ClauseBuilder.d_clauseExprToPatLam_434
                                                                    (coe v16))
                                                                 v11)
                                                     _ -> coe v13 v11
                                              _ -> coe v13 v11))))
                       _ -> coe v1
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- Tactic.DeriveComp.derive⇒
d_derive'8658'_242 ::
  AgdaAny ->
  [T_STSConstr_14] ->
  MAlonzo.Code.Interface.MonadTC.T_TCEnv_22 -> AgdaAny
d_derive'8658'_242 ~v0 v1 = du_derive'8658'_242 v1
du_derive'8658'_242 ::
  [T_STSConstr_14] ->
  MAlonzo.Code.Interface.MonadTC.T_TCEnv_22 -> AgdaAny
du_derive'8658'_242 v0
  = let v1
          = coe
              MAlonzo.Code.Interface.MonadTC.du_error1_664
              (coe
                 MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
                 (coe MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
              (coe ())
              (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
              (coe ("TODO: support multiple constructors" :: Data.Text.Text)) in
    coe
      (case coe v0 of
         (:) v2 v3
           -> case coe v2 of
                C_STSConstr'46'constructor_239 v4 v5 v6 v7 v8 v9 v10
                  -> case coe v3 of
                       []
                         -> coe
                              MAlonzo.Code.Tactic.Helpers.du_inDebugPath_132
                              (coe
                                 MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                 (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                              (coe
                                 MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
                                 (coe MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
                              (coe
                                 MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                                 (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                              (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154) (coe ())
                              (coe ("derive\8658" :: Data.Text.Text))
                              (coe
                                 (\ v11 ->
                                    coe
                                      MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                      MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12 () erased ()
                                      erased
                                      (coe
                                         MAlonzo.Code.Tactic.ClauseBuilder.du_introsExpr_694
                                         (coe
                                            MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                            (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                         (coe
                                            MAlonzo.Code.Tactic.ClauseBuilder.du_ContextMonad'45'MonadTC_598
                                            (coe
                                               MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                               (coe
                                                  MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                            (coe
                                               MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
                                               (coe
                                                  MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
                                            (coe
                                               MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                                               (coe
                                                  MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                            (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154))
                                         (MAlonzo.Code.Data.Maybe.Base.d_from'45'just_64
                                            (coe
                                               MAlonzo.Code.Data.List.NonEmpty.Base.du_fromList_66
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                     (coe ("h" :: Data.Text.Text)))
                                                  (coe v3))))
                                         (coe
                                            MAlonzo.Code.Tactic.ClauseBuilder.du_finishMatch_724
                                            (coe
                                               MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                               (coe
                                                  MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                            (coe
                                               MAlonzo.Code.Tactic.ClauseBuilder.du_caseMatch_502
                                               (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                                               (coe
                                                  MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                                                  (coe
                                                     MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                               (coe
                                                  MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154)
                                               (coe
                                                  MAlonzo.Code.Generics.Utils.d_mapVars_328
                                                  (\ v12 -> addInt (coe (2 :: Integer)) (coe v12))
                                                  (d_generatePred_140 (coe v6)))
                                               (coe
                                                  MAlonzo.Code.Tactic.ClauseBuilder.du_matchExprM_622
                                                  (coe
                                                     MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                                     (coe
                                                        MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                  (coe
                                                     MAlonzo.Code.Tactic.ClauseBuilder.du_ContextMonad'45'MonadTC_598
                                                     (coe
                                                        MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                                        (coe
                                                           MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                     (coe
                                                        MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
                                                        (coe
                                                           MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
                                                     (coe
                                                        MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                                                        (coe
                                                           MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                     (coe
                                                        MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Tactic.ClauseBuilder.d_multiSinglePattern_66
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                                                              (coe ("" :: Data.Text.Text)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                                                 (coe
                                                                    (MAlonzo.RTE.QName
                                                                       (32 :: Integer)
                                                                       (16368259409245829246 ::
                                                                          Integer)
                                                                       "Relation.Nullary.Decidable.Core._because_"
                                                                       (MAlonzo.RTE.Fixity
                                                                          MAlonzo.RTE.NonAssoc
                                                                          (MAlonzo.RTE.Related
                                                                             (2.0 :: Double)))))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                                                          (coe
                                                                             (MAlonzo.RTE.QName
                                                                                (8 :: Integer)
                                                                                (4305008439024043551 ::
                                                                                   Integer)
                                                                                "Agda.Builtin.Bool.Bool.false"
                                                                                (MAlonzo.RTE.Fixity
                                                                                   MAlonzo.RTE.NonAssoc
                                                                                   MAlonzo.RTE.Unrelated)))
                                                                          (coe v3)))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                                                             (coe
                                                                                (MAlonzo.RTE.QName
                                                                                   (26 :: Integer)
                                                                                   (5284306542668000596 ::
                                                                                      Integer)
                                                                                   "Relation.Nullary.Reflects.Reflects.of\8319"
                                                                                   (MAlonzo.RTE.Fixity
                                                                                      MAlonzo.RTE.NonAssoc
                                                                                      MAlonzo.RTE.Unrelated)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                                                                                      (coe
                                                                                         (0 ::
                                                                                            Integer))))
                                                                                (coe v3))))
                                                                       (coe v3))))))
                                                        (coe
                                                           MAlonzo.Code.Tactic.ClauseBuilder.du_finishMatch_724
                                                           (coe
                                                              MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
                                                           (coe
                                                              (\ v12 ->
                                                                 coe
                                                                   MAlonzo.Code.Interface.Monad.d_return_28
                                                                   MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12
                                                                   () erased
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                      (coe
                                                                         (MAlonzo.RTE.QName
                                                                            (234 :: Integer)
                                                                            (10779521135412943468 ::
                                                                               Integer)
                                                                            "Function.Base.case_of_"
                                                                            (MAlonzo.RTE.Fixity
                                                                               MAlonzo.RTE.NonAssoc
                                                                               (MAlonzo.RTE.Related
                                                                                  (0.0 ::
                                                                                     Double)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                               (coe
                                                                                  (MAlonzo.RTE.QName
                                                                                     (98 :: Integer)
                                                                                     (6189151057044369179 ::
                                                                                        Integer)
                                                                                     "Relation.Binary.PropositionalEquality.Core.subst"
                                                                                     (MAlonzo.RTE.Fixity
                                                                                        MAlonzo.RTE.NonAssoc
                                                                                        MAlonzo.RTE.Unrelated)))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                           (coe
                                                                                              ("g"
                                                                                               ::
                                                                                               Data.Text.Text))
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                              (coe
                                                                                                 (MAlonzo.RTE.QName
                                                                                                    (12 ::
                                                                                                       Integer)
                                                                                                    (1335258922519917603 ::
                                                                                                       Integer)
                                                                                                    "Agda.Builtin.Equality._\8801_"
                                                                                                    (MAlonzo.RTE.Fixity
                                                                                                       MAlonzo.RTE.NonAssoc
                                                                                                       (MAlonzo.RTE.Related
                                                                                                          (4.0 ::
                                                                                                             Double)))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                    (coe
                                                                                                       d_computeFunctionBody_182
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                          (coe
                                                                                                             (0 ::
                                                                                                                Integer))
                                                                                                          (coe
                                                                                                             v3))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                                                                          (4 ::
                                                                                                             Integer)
                                                                                                          v10)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                                                                          (coe
                                                                                                             (MAlonzo.RTE.QName
                                                                                                                (16 ::
                                                                                                                   Integer)
                                                                                                                (15412666033012224255 ::
                                                                                                                   Integer)
                                                                                                                "Agda.Builtin.Maybe.Maybe.just"
                                                                                                                (MAlonzo.RTE.Fixity
                                                                                                                   MAlonzo.RTE.NonAssoc
                                                                                                                   MAlonzo.RTE.Unrelated)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                                   (coe
                                                                                                                      (3 ::
                                                                                                                         Integer))
                                                                                                                   (coe
                                                                                                                      v3)))
                                                                                                             (coe
                                                                                                                v3))))
                                                                                                    (coe
                                                                                                       v3)))))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                           (coe
                                                                                              (MAlonzo.RTE.QName
                                                                                                 (142 ::
                                                                                                    Integer)
                                                                                                 (1919047259428906691 ::
                                                                                                    Integer)
                                                                                                 "Tactic.ReduceDec.fromWitnessFalse'"
                                                                                                 (MAlonzo.RTE.Fixity
                                                                                                    MAlonzo.RTE.NonAssoc
                                                                                                    MAlonzo.RTE.Unrelated)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                                                                    (3 ::
                                                                                                       Integer)
                                                                                                    (d_generatePred_140
                                                                                                       (coe
                                                                                                          v6))))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                       (coe
                                                                                                          (0 ::
                                                                                                             Integer))
                                                                                                       (coe
                                                                                                          v3)))
                                                                                                 (coe
                                                                                                    v3)))))
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                              (coe
                                                                                                 (1 ::
                                                                                                    Integer))
                                                                                              (coe
                                                                                                 v3)))
                                                                                        (coe
                                                                                           v3))))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278
                                                                                        (coe v3)
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                           (coe
                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_264
                                                                                                 (coe
                                                                                                    (0 ::
                                                                                                       Integer))))
                                                                                           (coe
                                                                                              v3)))
                                                                                     (coe v3))
                                                                                  (coe v3)))
                                                                            (coe v3))))))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Tactic.ClauseBuilder.d_multiSinglePattern_66
                                                              (coe
                                                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                                                                 (coe ("" :: Data.Text.Text)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                                                    (coe
                                                                       (MAlonzo.RTE.QName
                                                                          (32 :: Integer)
                                                                          (16368259409245829246 ::
                                                                             Integer)
                                                                          "Relation.Nullary.Decidable.Core._because_"
                                                                          (MAlonzo.RTE.Fixity
                                                                             MAlonzo.RTE.NonAssoc
                                                                             (MAlonzo.RTE.Related
                                                                                (2.0 :: Double)))))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                                                             (coe
                                                                                (MAlonzo.RTE.QName
                                                                                   (10 :: Integer)
                                                                                   (4305008439024043551 ::
                                                                                      Integer)
                                                                                   "Agda.Builtin.Bool.Bool.true"
                                                                                   (MAlonzo.RTE.Fixity
                                                                                      MAlonzo.RTE.NonAssoc
                                                                                      MAlonzo.RTE.Unrelated)))
                                                                             (coe v3)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_con_244
                                                                                (coe
                                                                                   (MAlonzo.RTE.QName
                                                                                      (22 ::
                                                                                         Integer)
                                                                                      (5284306542668000596 ::
                                                                                         Integer)
                                                                                      "Relation.Nullary.Reflects.Reflects.of\696"
                                                                                      (MAlonzo.RTE.Fixity
                                                                                         MAlonzo.RTE.NonAssoc
                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                                                                                         (coe
                                                                                            (0 ::
                                                                                               Integer))))
                                                                                   (coe v3))))
                                                                          (coe v3))))))
                                                           (coe
                                                              MAlonzo.Code.Tactic.ClauseBuilder.du_finishMatch_724
                                                              (coe
                                                                 MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                                                 (coe
                                                                    MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                              (coe
                                                                 (\ v12 ->
                                                                    coe
                                                                      MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                                                      MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12
                                                                      () erased () erased
                                                                      (coe
                                                                         MAlonzo.Code.Interface.MonadTC.du_goalTy_684
                                                                         MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18
                                                                         MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154
                                                                         (coe
                                                                            MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                                                                            (coe
                                                                               MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                                         v12)
                                                                      (\ v13 ->
                                                                         case coe v13 of
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v14 v15
                                                                             -> case coe v15 of
                                                                                  (:) v16 v17
                                                                                    -> case coe
                                                                                              v16 of
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v18 v19
                                                                                           -> case coe
                                                                                                     v18 of
                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v20 v21
                                                                                                  -> case coe
                                                                                                            v20 of
                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                         -> case coe
                                                                                                                   v21 of
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v22 v23
                                                                                                                -> case coe
                                                                                                                          v22 of
                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                                       -> case coe
                                                                                                                                 v23 of
                                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                              -> case coe
                                                                                                                                        v17 of
                                                                                                                                   (:) v24 v25
                                                                                                                                     -> case coe
                                                                                                                                               v24 of
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v26 v27
                                                                                                                                            -> case coe
                                                                                                                                                      v26 of
                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v28 v29
                                                                                                                                                   -> case coe
                                                                                                                                                             v28 of
                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                                                                          -> case coe
                                                                                                                                                                    v29 of
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v30 v31
                                                                                                                                                                 -> case coe
                                                                                                                                                                           v30 of
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                                                                                        -> case coe
                                                                                                                                                                                  v31 of
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                                                                               -> case coe
                                                                                                                                                                                         v25 of
                                                                                                                                                                                    (:) v32 v33
                                                                                                                                                                                      -> case coe
                                                                                                                                                                                                v32 of
                                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v34 v35
                                                                                                                                                                                             -> case coe
                                                                                                                                                                                                       v34 of
                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v36 v37
                                                                                                                                                                                                    -> case coe
                                                                                                                                                                                                              v36 of
                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                                                                                                                           -> case coe
                                                                                                                                                                                                                     v37 of
                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v38 v39
                                                                                                                                                                                                                  -> case coe
                                                                                                                                                                                                                            v38 of
                                                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                                                                                                                                         -> case coe
                                                                                                                                                                                                                                   v39 of
                                                                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                                                                                                                                -> case coe
                                                                                                                                                                                                                                          v33 of
                                                                                                                                                                                                                                     (:) v40 v41
                                                                                                                                                                                                                                       -> case coe
                                                                                                                                                                                                                                                 v40 of
                                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v42 v43
                                                                                                                                                                                                                                              -> case coe
                                                                                                                                                                                                                                                        v42 of
                                                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v44 v45
                                                                                                                                                                                                                                                     -> case coe
                                                                                                                                                                                                                                                               v44 of
                                                                                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                                                                                                                                                                            -> case coe
                                                                                                                                                                                                                                                                      v45 of
                                                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v46 v47
                                                                                                                                                                                                                                                                   -> case coe
                                                                                                                                                                                                                                                                             v46 of
                                                                                                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                                                                                                                                                                                          -> case coe
                                                                                                                                                                                                                                                                                    v47 of
                                                                                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                                                                                                                                                                                 -> case coe
                                                                                                                                                                                                                                                                                           v41 of
                                                                                                                                                                                                                                                                                      []
                                                                                                                                                                                                                                                                                        -> coe
                                                                                                                                                                                                                                                                                             MAlonzo.Code.Interface.Monad.d_return_28
                                                                                                                                                                                                                                                                                             MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12
                                                                                                                                                                                                                                                                                             ()
                                                                                                                                                                                                                                                                                             erased
                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                   (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                      (98 ::
                                                                                                                                                                                                                                                                                                         Integer)
                                                                                                                                                                                                                                                                                                      (6189151057044369179 ::
                                                                                                                                                                                                                                                                                                         Integer)
                                                                                                                                                                                                                                                                                                      "Relation.Binary.PropositionalEquality.Core.subst"
                                                                                                                                                                                                                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                         v42)
                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                            v14)
                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                                                  v42)
                                                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                                                  v19))
                                                                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                                                     v42)
                                                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                                                     v27))
                                                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                                                        v42)
                                                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                                                        v35))
                                                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                                                     v41))))))
                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                            v42)
                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                                                                               (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                  (22 ::
                                                                                                                                                                                                                                                                                                                     Integer)
                                                                                                                                                                                                                                                                                                                  (9726600929795345893 ::
                                                                                                                                                                                                                                                                                                                     Integer)
                                                                                                                                                                                                                                                                                                                  "Data.Maybe.Properties.just-injective"
                                                                                                                                                                                                                                                                                                                  (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                     MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                     MAlonzo.RTE.Unrelated)))
                                                                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                                                     v42)
                                                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                                                        (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                           (98 ::
                                                                                                                                                                                                                                                                                                                              Integer)
                                                                                                                                                                                                                                                                                                                           (6189151057044369179 ::
                                                                                                                                                                                                                                                                                                                              Integer)
                                                                                                                                                                                                                                                                                                                           "Relation.Binary.PropositionalEquality.Core.subst"
                                                                                                                                                                                                                                                                                                                           (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                              MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                              MAlonzo.RTE.Unrelated)))
                                                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                                                                                              v42)
                                                                                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
                                                                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                                                                 v44)
                                                                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                                                                    ("g"
                                                                                                                                                                                                                                                                                                                                     ::
                                                                                                                                                                                                                                                                                                                                     Data.Text.Text))
                                                                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                                                                       (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                          (12 ::
                                                                                                                                                                                                                                                                                                                                             Integer)
                                                                                                                                                                                                                                                                                                                                          (1335258922519917603 ::
                                                                                                                                                                                                                                                                                                                                             Integer)
                                                                                                                                                                                                                                                                                                                                          "Agda.Builtin.Equality._\8801_"
                                                                                                                                                                                                                                                                                                                                          (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                             MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                             (MAlonzo.RTE.Related
                                                                                                                                                                                                                                                                                                                                                (4.0 ::
                                                                                                                                                                                                                                                                                                                                                   Double)))))
                                                                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                                                                             v42)
                                                                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                                                                             d_computeFunctionBody_182
                                                                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                                                                   (0 ::
                                                                                                                                                                                                                                                                                                                                                      Integer))
                                                                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                                                                   v41))
                                                                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                                                                MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                                                                                                                                                                                                                                                                                                                (4 ::
                                                                                                                                                                                                                                                                                                                                                   Integer)
                                                                                                                                                                                                                                                                                                                                                v10)))
                                                                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                                                                v42)
                                                                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                                                                   (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                                      (16 ::
                                                                                                                                                                                                                                                                                                                                                         Integer)
                                                                                                                                                                                                                                                                                                                                                      (15412666033012224255 ::
                                                                                                                                                                                                                                                                                                                                                         Integer)
                                                                                                                                                                                                                                                                                                                                                      "Agda.Builtin.Maybe.Maybe.just"
                                                                                                                                                                                                                                                                                                                                                      (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                                         MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                                                                         v42)
                                                                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                                                                            (3 ::
                                                                                                                                                                                                                                                                                                                                                               Integer))
                                                                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                                                                            v41)))
                                                                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                                                                      v41))))
                                                                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                                                                             v41)))))))
                                                                                                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                                                                 v42)
                                                                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                                                                    (MAlonzo.RTE.QName
                                                                                                                                                                                                                                                                                                                                       (126 ::
                                                                                                                                                                                                                                                                                                                                          Integer)
                                                                                                                                                                                                                                                                                                                                       (1919047259428906691 ::
                                                                                                                                                                                                                                                                                                                                          Integer)
                                                                                                                                                                                                                                                                                                                                       "Tactic.ReduceDec.fromWitness'"
                                                                                                                                                                                                                                                                                                                                       (MAlonzo.RTE.Fixity
                                                                                                                                                                                                                                                                                                                                          MAlonzo.RTE.NonAssoc
                                                                                                                                                                                                                                                                                                                                          MAlonzo.RTE.Unrelated)))
                                                                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                                                                          v42)
                                                                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                                                                          MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                                                                                                                                                                                                                                                                                                          (3 ::
                                                                                                                                                                                                                                                                                                                                             Integer)
                                                                                                                                                                                                                                                                                                                                          (d_generatePred_140
                                                                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                                                                v6))))
                                                                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                                                                             v42)
                                                                                                                                                                                                                                                                                                                                          (coe
                                                                                                                                                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                                                                (0 ::
                                                                                                                                                                                                                                                                                                                                                   Integer))
                                                                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                                                                v41)))
                                                                                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                                                                                          v41)))))
                                                                                                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                                                                    v42)
                                                                                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                                                                       (1 ::
                                                                                                                                                                                                                                                                                                                                          Integer))
                                                                                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                                                                                       v41)))
                                                                                                                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                                                                                                                 v41))))))
                                                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                                                  v41))))
                                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                                                                               v42)
                                                                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                                                  v4)
                                                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                                                  d_curryPredProof_170
                                                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                                                     MAlonzo.Code.Data.List.Base.du_length_304
                                                                                                                                                                                                                                                                                                                     v6)
                                                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_var_172
                                                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                                                        (0 ::
                                                                                                                                                                                                                                                                                                                           Integer))
                                                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                                                        v41)))))
                                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                                            v41)))))
                                                                                                                                                                                                                                                                                      _ -> coe
                                                                                                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                                                                                                                                                                             ()
                                                                                                                                                                                                                                                                                             erased
                                                                                                                                                                                                                                                                                             (coe
                                                                                                                                                                                                                                                                                                MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                   ("BUG: Unexpected type"
                                                                                                                                                                                                                                                                                                    ::
                                                                                                                                                                                                                                                                                                    Data.Text.Text))
                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                   MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                                                                                                   MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                      v13)
                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                      MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                                                                                                      v3)))
                                                                                                                                                                                                                                                                               _ -> coe
                                                                                                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                                                                                                                                                                      ()
                                                                                                                                                                                                                                                                                      erased
                                                                                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                                                                                         MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                            ("BUG: Unexpected type"
                                                                                                                                                                                                                                                                                             ::
                                                                                                                                                                                                                                                                                             Data.Text.Text))
                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                            MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                                                                                                                                                                         (coe
                                                                                                                                                                                                                                                                                            MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                                                               v13)
                                                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                                                               MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                                                                               v3)))
                                                                                                                                                                                                                                                                        _ -> coe
                                                                                                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                                                                                                                                                               ()
                                                                                                                                                                                                                                                                               erased
                                                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                                                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                     ("BUG: Unexpected type"
                                                                                                                                                                                                                                                                                      ::
                                                                                                                                                                                                                                                                                      Data.Text.Text))
                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                     MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                                                     MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                        v13)
                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                        MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                                                                        v3)))
                                                                                                                                                                                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                                                                                          _ -> coe
                                                                                                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                                                                                                                                                 ()
                                                                                                                                                                                                                                                                 erased
                                                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                                                    MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       ("BUG: Unexpected type"
                                                                                                                                                                                                                                                                        ::
                                                                                                                                                                                                                                                                        Data.Text.Text))
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                                                       MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v13)
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                                                                                                                                                       (coe
                                                                                                                                                                                                                                                                          v3)))
                                                                                                                                                                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                                                                     _ -> coe
                                                                                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                                                                                                                            ()
                                                                                                                                                                                                                                            erased
                                                                                                                                                                                                                                            (coe
                                                                                                                                                                                                                                               MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  ("BUG: Unexpected type"
                                                                                                                                                                                                                                                   ::
                                                                                                                                                                                                                                                   Data.Text.Text))
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                                                                                                                               (coe
                                                                                                                                                                                                                                                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                     v13)
                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                     MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                                     v3)))
                                                                                                                                                                                                                              _ -> coe
                                                                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                                                                                                                     ()
                                                                                                                                                                                                                                     erased
                                                                                                                                                                                                                                     (coe
                                                                                                                                                                                                                                        MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                           ("BUG: Unexpected type"
                                                                                                                                                                                                                                            ::
                                                                                                                                                                                                                                            Data.Text.Text))
                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                           MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                                                                                                                        (coe
                                                                                                                                                                                                                                           MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                              v13)
                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                              MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                                                                                                                           (coe
                                                                                                                                                                                                                                              v3)))
                                                                                                                                                                                                                       _ -> coe
                                                                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                                                                                                              ()
                                                                                                                                                                                                                              erased
                                                                                                                                                                                                                              (coe
                                                                                                                                                                                                                                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    ("BUG: Unexpected type"
                                                                                                                                                                                                                                     ::
                                                                                                                                                                                                                                     Data.Text.Text))
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                                                                                                                 (coe
                                                                                                                                                                                                                                    MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       v13)
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                                                                                                                    (coe
                                                                                                                                                                                                                                       v3)))
                                                                                                                                                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                                         _ -> coe
                                                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                                                                                                ()
                                                                                                                                                                                                                erased
                                                                                                                                                                                                                (coe
                                                                                                                                                                                                                   MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                      ("BUG: Unexpected type"
                                                                                                                                                                                                                       ::
                                                                                                                                                                                                                       Data.Text.Text))
                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                      MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                                                                                                   (coe
                                                                                                                                                                                                                      MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         v13)
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                                                                                                      (coe
                                                                                                                                                                                                                         v3)))
                                                                                                                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                    _ -> coe
                                                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                                                                           ()
                                                                                                                                                                                           erased
                                                                                                                                                                                           (coe
                                                                                                                                                                                              MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 ("BUG: Unexpected type"
                                                                                                                                                                                                  ::
                                                                                                                                                                                                  Data.Text.Text))
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                                                                              (coe
                                                                                                                                                                                                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v13)
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                                                                                 (coe
                                                                                                                                                                                                    v3)))
                                                                                                                                                                             _ -> coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                                                                    ()
                                                                                                                                                                                    erased
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                       (coe
                                                                                                                                                                                          ("BUG: Unexpected type"
                                                                                                                                                                                           ::
                                                                                                                                                                                           Data.Text.Text))
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                                                                       (coe
                                                                                                                                                                                          MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v13)
                                                                                                                                                                                          (coe
                                                                                                                                                                                             MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                                                                          (coe
                                                                                                                                                                                             v3)))
                                                                                                                                                                      _ -> coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                                                             ()
                                                                                                                                                                             erased
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                (coe
                                                                                                                                                                                   ("BUG: Unexpected type"
                                                                                                                                                                                    ::
                                                                                                                                                                                    Data.Text.Text))
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v13)
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                                                                   (coe
                                                                                                                                                                                      v3)))
                                                                                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                        _ -> coe
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                                               ()
                                                                                                                                                               erased
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                  (coe
                                                                                                                                                                     ("BUG: Unexpected type"
                                                                                                                                                                      ::
                                                                                                                                                                      Data.Text.Text))
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                                     (coe
                                                                                                                                                                        v13)
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                                                     (coe
                                                                                                                                                                        v3)))
                                                                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                   _ -> coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                          ()
                                                                                                                                          erased
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                             (coe
                                                                                                                                                ("BUG: Unexpected type"
                                                                                                                                                 ::
                                                                                                                                                 Data.Text.Text))
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                                (coe
                                                                                                                                                   v13)
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                                (coe
                                                                                                                                                   v3)))
                                                                                                                            _ -> coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                                   ()
                                                                                                                                   erased
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                      (coe
                                                                                                                                         ("BUG: Unexpected type"
                                                                                                                                          ::
                                                                                                                                          Data.Text.Text))
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                         (coe
                                                                                                                                            v13)
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                         (coe
                                                                                                                                            v3)))
                                                                                                                     _ -> coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                                            ()
                                                                                                                            erased
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                               (coe
                                                                                                                                  ("BUG: Unexpected type"
                                                                                                                                   ::
                                                                                                                                   Data.Text.Text))
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                                  (coe
                                                                                                                                     v13)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                                  (coe
                                                                                                                                     v3)))
                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                       _ -> coe
                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                                              ()
                                                                                                              erased
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                 (coe
                                                                                                                    ("BUG: Unexpected type"
                                                                                                                     ::
                                                                                                                     Data.Text.Text))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                                                    (coe
                                                                                                                       v13)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                                                    (coe
                                                                                                                       v3)))
                                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                                         _ -> MAlonzo.RTE.mazUnreachableError
                                                                                  _ -> coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                         () erased
                                                                                         (coe
                                                                                            MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                            (coe
                                                                                               ("BUG: Unexpected type"
                                                                                                ::
                                                                                                Data.Text.Text))
                                                                                            (coe
                                                                                               MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                            (coe
                                                                                               MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                               (coe
                                                                                                  v13)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                               (coe
                                                                                                  v3)))
                                                                           _ -> coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.d_typeError_342
                                                                                  () erased
                                                                                  (coe
                                                                                     MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                     (coe
                                                                                        ("BUG: Unexpected type"
                                                                                         ::
                                                                                         Data.Text.Text))
                                                                                     (coe
                                                                                        MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                     (coe
                                                                                        MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                        (coe v13)
                                                                                        (coe
                                                                                           MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                        (coe
                                                                                           v3))))))))
                                                        (coe v3))))))
                                         v11)
                                      (\ v12 ->
                                         coe
                                           MAlonzo.Code.Interface.MonadTC.du_unifyWithGoal_756
                                           MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18
                                           MAlonzo.Code.Reflection.TCI.d_MonadError'45'TC_22
                                           MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154
                                           MAlonzo.Code.Meta.d_iMonadReader'45'TC_6
                                           (MAlonzo.Code.Tactic.ClauseBuilder.d_clauseExprToPatLam_434
                                              (coe v12))
                                           v11)))
                       _ -> coe v1
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> coe v1)
-- Tactic.DeriveComp._.derive⇔
d_derive'8660'_282 ::
  MAlonzo.Code.Reflection.Debug.T_DebugOptions_234 ->
  AgdaAny ->
  [T_STSConstr_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_derive'8660'_282 v0 ~v1 v2 = du_derive'8660'_282 v0 v2
du_derive'8660'_282 ::
  MAlonzo.Code.Reflection.Debug.T_DebugOptions_234 ->
  [T_STSConstr_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_derive'8660'_282 v0 v1
  = coe
      MAlonzo.Code.Tactic.Helpers.d_initTac_296 (coe v0)
      (coe
         MAlonzo.Code.Tactic.Helpers.du_inDebugPath_132
         (coe
            MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
            (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
         (coe
            MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
            (coe MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
         (coe
            MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
            (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
         (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154) (coe ())
         (coe ("derive\8660" :: Data.Text.Text))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                 MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12 () erased () erased
                 (coe
                    MAlonzo.Code.Interface.MonadTC.du_newMeta_308
                    MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154
                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216) v2)
                 (\ v3 ->
                    coe
                      MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                      MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                      (coe
                         MAlonzo.Code.Interface.MonadTC.du_newMeta_308
                         MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                      (\ v4 ->
                         coe
                           MAlonzo.Code.Interface.Monad.du__'62''62'__32
                           (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2) (coe ()) (coe ())
                           (coe
                              MAlonzo.Code.Interface.MonadTC.du_unifyWithGoal_756
                              (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2)
                              (coe MAlonzo.Code.Meta.d_iMonadError'45'TC_8)
                              (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                              (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2296 :: Integer) (16285757545730121603 :: Integer)
                                       "Function.Bundles._.mk\8660"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                       (coe v3))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                          (coe v4))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe
                              MAlonzo.Code.Interface.Monad.du__'62''62'__32
                              (coe
                                 MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                 (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                              (coe ()) (coe ())
                              (coe
                                 MAlonzo.Code.Interface.MonadTC.du_runWithHole_764
                                 (coe
                                    MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                                    (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                 () v4 (d_derive'8656'_222 (coe v1)))
                              (coe
                                 MAlonzo.Code.Interface.MonadTC.du_runWithHole_764
                                 (coe
                                    MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                                    (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                 () v3 (coe du_derive'8658'_242 (coe v1)))))
                      v2))))
-- Tactic.DeriveComp._.deriveComp
d_deriveComp_292 ::
  MAlonzo.Code.Reflection.Debug.T_DebugOptions_234 ->
  AgdaAny ->
  [T_STSConstr_14] ->
  MAlonzo.Code.Interface.MonadTC.T_TCEnv_22 -> AgdaAny
d_deriveComp_292 ~v0 v1 v2 = du_deriveComp_292 v1 v2
du_deriveComp_292 ::
  AgdaAny ->
  [T_STSConstr_14] ->
  MAlonzo.Code.Interface.MonadTC.T_TCEnv_22 -> AgdaAny
du_deriveComp_292 v0 v1
  = coe
      MAlonzo.Code.Interface.Monad.du__'62''62'__32
      (coe
         MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
         (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
      (coe ()) (coe ())
      (coe
         MAlonzo.Code.Interface.MonadTC.du_debugLog_500
         (coe
            MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
            (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
         (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154)
         (coe
            MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
            (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
         (coe
            MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
            (coe ("\nDerive computation function for: " :: Data.Text.Text))
            (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
            (coe
               MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v0)
               (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Name_26)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
      (coe
         MAlonzo.Code.Interface.MonadTC.du_unifyWithGoal_756
         (coe MAlonzo.Code.Reflection.TCI.d_Monad'45'TC_18)
         (coe MAlonzo.Code.Reflection.TCI.d_MonadError'45'TC_22)
         (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154)
         (coe
            MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
            (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
         (coe d_generateFunction_216 (coe v1)))
-- Tactic.DeriveComp._.deriveComputational
d_deriveComputational_298 ::
  MAlonzo.Code.Reflection.Debug.T_DebugOptions_234 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_deriveComputational_298 v0 v1 v2
  = coe
      MAlonzo.Code.Tactic.Helpers.d_initUnquoteWithGoal_302 (coe v0)
      (coe
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
         (coe
            (MAlonzo.RTE.QName
               (6 :: Integer) (2181690833759761001 :: Integer)
               "Agda.Builtin.Reflection.Name"
               (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe
         MAlonzo.Code.Tactic.Helpers.du_inDebugPath_132
         (coe
            MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
            (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
         (coe
            MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
            (coe MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
         (coe
            MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
            (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
         (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154) (coe ())
         (coe ("deriveComputational" :: Data.Text.Text))
         (coe
            MAlonzo.Code.Interface.Monad.du__'62''62'__32
            (coe
               MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
               (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
            (coe ()) (coe ())
            (coe
               MAlonzo.Code.Interface.MonadTC.du_debugLog1_668
               (coe
                  MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                  (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
               (coe MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154)
               (coe
                  MAlonzo.Code.Interface.MonadReader.du_MonadReader'45'ReaderT_132
                  (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
               (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                  (coe
                     (MAlonzo.RTE.QName
                        (50 :: Integer) (6501990554091597195 :: Integer)
                        "Interface.ComputationalRelation._.Computational"
                        (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v1)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
            (coe
               MAlonzo.Code.Interface.Monad.du__'62''62'__32
               (coe
                  MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                  (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
               (coe ()) (coe ())
               (coe
                  MAlonzo.Code.Interface.MonadTC.d_declareDef_180
                  MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                     (coe v2))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                     (coe
                        (MAlonzo.RTE.QName
                           (50 :: Integer) (6501990554091597195 :: Integer)
                           "Interface.ComputationalRelation._.Computational"
                           (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 (coe v1)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                       MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12 () erased () erased
                       (coe d_getSTSConstrs_132 v1 v3)
                       (\ v4 ->
                          coe
                            MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                            MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                            (coe
                               MAlonzo.Code.Tactic.Helpers.du_withSafeReset_256
                               (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2)
                               (coe MAlonzo.Code.Meta.d_iMonadError'45'TC_8)
                               (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                               (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                               (coe
                                  (\ v5 ->
                                     coe
                                       MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                       MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12 () erased ()
                                       erased
                                       (coe
                                          MAlonzo.Code.Interface.MonadTC.du_newMeta_308
                                          MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)
                                          v5)
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                            MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12 ()
                                            erased () erased
                                            (coe
                                               MAlonzo.Code.Interface.MonadTC.du_newMeta_308
                                               MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)
                                               v5)
                                            (\ v7 ->
                                               coe
                                                 MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                                 MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12 ()
                                                 erased () erased
                                                 (coe
                                                    MAlonzo.Code.Interface.MonadTC.du_mkRecord_274
                                                    (coe
                                                       MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                                       (coe
                                                          MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                    (coe
                                                       MAlonzo.Code.Interface.MonadReader.du_MonadError'45'ReaderT_144
                                                       (coe
                                                          MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60))
                                                    MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154
                                                    (MAlonzo.RTE.QName
                                                       (50 :: Integer)
                                                       (6501990554091597195 :: Integer)
                                                       "Interface.ComputationalRelation._.Computational"
                                                       (MAlonzo.RTE.Fixity
                                                          MAlonzo.RTE.NonAssoc
                                                          MAlonzo.RTE.Unrelated))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                          (coe v6))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                             (coe v7))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                    v5)
                                                 (\ v8 ->
                                                    coe
                                                      MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                                      MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12
                                                      () erased () erased
                                                      (coe
                                                         MAlonzo.Code.Interface.MonadTC.d_checkType_164
                                                         MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154
                                                         v8
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                            (coe
                                                               (MAlonzo.RTE.QName
                                                                  (50 :: Integer)
                                                                  (6501990554091597195 :: Integer)
                                                                  "Interface.ComputationalRelation._.Computational"
                                                                  (MAlonzo.RTE.Fixity
                                                                     MAlonzo.RTE.NonAssoc
                                                                     MAlonzo.RTE.Unrelated)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                     (coe v1)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                         v5)
                                                      (\ v9 ->
                                                         coe
                                                           MAlonzo.Code.Interface.Monad.du__'62''62'__32
                                                           MAlonzo.Code.Meta.d_iMonad'45'TC_2 () ()
                                                           (coe
                                                              MAlonzo.Code.Interface.MonadTC.du_debugLog1'7504'_516
                                                              (coe
                                                                 MAlonzo.Code.Meta.d_iMonad'45'TC_2)
                                                              (coe
                                                                 MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                                                              (coe
                                                                 MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                                                              (coe
                                                                 MAlonzo.Code.Interface.MonadTC.C_wrap_448
                                                                 (coe
                                                                    MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                                                    MAlonzo.Code.Meta.d_iMonad'45'TC_2
                                                                    () erased () erased
                                                                    (coe
                                                                       MAlonzo.Code.Interface.MonadTC.d_inferType_162
                                                                       MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4
                                                                       v6)
                                                                    (\ v10 ->
                                                                       coe
                                                                         MAlonzo.Code.Interface.Monad.d_return_28
                                                                         MAlonzo.Code.Meta.d_iMonad'45'TC_2
                                                                         () erased
                                                                         (coe
                                                                            MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                            (coe v6)
                                                                            (coe
                                                                               MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                            (coe
                                                                               MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                               (coe
                                                                                  (" : "
                                                                                   ::
                                                                                   Data.Text.Text))
                                                                               (coe
                                                                                  MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                               (coe
                                                                                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                  (coe v10)
                                                                                  (coe
                                                                                     MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                              (coe
                                                                 MAlonzo.Code.Interface.MonadTC.du_IsMErrorPart'45'MErrorPartWrap_462))
                                                           (coe
                                                              MAlonzo.Code.Interface.Monad.du__'62''62'__32
                                                              (coe
                                                                 MAlonzo.Code.Interface.MonadReader.du_Monad'45'ReaderT_118
                                                                 (coe
                                                                    MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12))
                                                              (coe ()) (coe ())
                                                              (coe
                                                                 MAlonzo.Code.Interface.MonadTC.du_runWithHole_764
                                                                 MAlonzo.Code.Meta.d_iMonadReader'45'TC_6
                                                                 () v6
                                                                 (coe
                                                                    du_deriveComp_292 (coe v1)
                                                                    (coe v4)))
                                                              (coe
                                                                 MAlonzo.Code.Interface.MonadTC.d_reduce_168
                                                                 MAlonzo.Code.Reflection.TCI.d_MonadTC'45'TCI_154
                                                                 v6))
                                                           v5)))))))
                            (\ v5 ->
                               coe
                                 MAlonzo.Code.Interface.Monad.du__'62''62'__32
                                 (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2) (coe ()) (coe ())
                                 (coe
                                    MAlonzo.Code.Interface.MonadTC.du_debugLog_500
                                    (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2)
                                    (coe MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                                    (coe MAlonzo.Code.Meta.d_iMonadReader'45'TC_6)
                                    (coe
                                       MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                       (coe ("compRes: " :: Data.Text.Text))
                                       (coe
                                          MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                       (coe
                                          MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                          (coe v5)
                                          (coe
                                             MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                 (coe
                                    MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                    MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                                    (coe
                                       MAlonzo.Code.Interface.MonadTC.du_newMeta_308
                                       MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                    (\ v6 ->
                                       coe
                                         MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                         MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                                         (coe
                                            MAlonzo.Code.Interface.MonadTC.du_newMeta_308
                                            MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                         (\ v7 ->
                                            coe
                                              MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                              MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased () erased
                                              (coe
                                                 MAlonzo.Code.Interface.MonadTC.du_newMeta_308
                                                 MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                              (\ v8 ->
                                                 coe
                                                   MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                                   MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased ()
                                                   erased
                                                   (coe
                                                      MAlonzo.Code.Reflection.Ext.du_extendContextTel'8242'_20
                                                      ()
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe ("c" :: Data.Text.Text))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                               (coe v6)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe ("s" :: Data.Text.Text))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                  (coe
                                                                     MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                                     (1 :: Integer) v7)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe ("sig" :: Data.Text.Text))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                     (coe
                                                                        MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                                        (2 :: Integer) v8)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                     (coe ("s'" :: Data.Text.Text))
                                                                     (coe
                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                        (coe
                                                                           MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                                           (3 :: Integer) v7)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                      (coe
                                                         MAlonzo.Code.Interface.MonadTC.du_newMeta_308
                                                         MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)))
                                                   (\ v9 ->
                                                      coe
                                                        MAlonzo.Code.Interface.Monad.d__'62''62''61'__30
                                                        MAlonzo.Code.Meta.d_iMonad'45'TC_2 () erased
                                                        () erased
                                                        (coe
                                                           MAlonzo.Code.Interface.MonadTC.du_mkRecord_274
                                                           (coe MAlonzo.Code.Meta.d_iMonad'45'TC_2)
                                                           (coe
                                                              MAlonzo.Code.Meta.d_iMonadError'45'TC_8)
                                                           (coe
                                                              MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4)
                                                           (coe
                                                              (MAlonzo.RTE.QName
                                                                 (50 :: Integer)
                                                                 (6501990554091597195 :: Integer)
                                                                 "Interface.ComputationalRelation._.Computational"
                                                                 (MAlonzo.RTE.Fixity
                                                                    MAlonzo.RTE.NonAssoc
                                                                    MAlonzo.RTE.Unrelated)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                 (coe v5))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                          (coe
                                                                             ("c"
                                                                              ::
                                                                              Data.Text.Text))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                (coe
                                                                                   ("s"
                                                                                    ::
                                                                                    Data.Text.Text))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                      (coe
                                                                                         ("sig"
                                                                                          ::
                                                                                          Data.Text.Text))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                            (coe
                                                                                               ("s'"
                                                                                                ::
                                                                                                Data.Text.Text))
                                                                                            (coe
                                                                                               v9))))))))))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                        (\ v10 ->
                                                           coe
                                                             MAlonzo.Code.Interface.Monad.du__'62''62'__32
                                                             (coe
                                                                MAlonzo.Code.Meta.d_iMonad'45'TC_2)
                                                             (coe ()) (coe ())
                                                             (coe
                                                                MAlonzo.Code.Interface.MonadTC.d_defineFun_184
                                                                MAlonzo.Code.Meta.d_iMonadTC'45'TCI_4
                                                                v2
                                                                (coe
                                                                   MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                                                                   (coe
                                                                      MAlonzo.Code.Tactic.ClauseBuilder.d_nonBindingClause_432
                                                                      v10)))
                                                             (coe
                                                                MAlonzo.Code.Reflection.Ext.du_extendContextTel'8242'_20
                                                                ()
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe ("c" :: Data.Text.Text))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                         (coe v6)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            ("s" :: Data.Text.Text))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                            (coe
                                                                               MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                                               (1 :: Integer) v7)))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                            (coe
                                                                               ("sig"
                                                                                ::
                                                                                Data.Text.Text))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                               (coe
                                                                                  MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                                                  (2 :: Integer)
                                                                                  v8)))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                               (coe
                                                                                  ("s'"
                                                                                   ::
                                                                                   Data.Text.Text))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                  (coe
                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                     (coe
                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                        (coe
                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                  (coe
                                                                                     MAlonzo.Code.Reflection.AST.DeBruijn.d_weaken_92
                                                                                     (3 :: Integer)
                                                                                     v7)))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                (\ v11 ->
                                                                   coe
                                                                     du_derive'8660'_282 v0 v4
                                                                     v9)))))))))
                            v3))))))
