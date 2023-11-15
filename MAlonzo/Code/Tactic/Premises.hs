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

module MAlonzo.Code.Tactic.Premises where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Semigroup.Instances
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Membership.DecSetoid
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Generics.Debug
import qualified MAlonzo.Code.Generics.Utils
import qualified MAlonzo.Code.Interface.Bifunctor
import qualified MAlonzo.Code.Interface.Decidable.Instance
import qualified MAlonzo.Code.Interface.Functor
import qualified MAlonzo.Code.Interface.MonadError
import qualified MAlonzo.Code.Interface.MonadTC
import qualified MAlonzo.Code.Reflection.AST.Abstraction
import qualified MAlonzo.Code.Reflection.AST.Show
import qualified MAlonzo.Code.Reflection.Ext
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties

-- Tactic.Premises._.print
d_print_10 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 -> AgdaAny
d_print_10
  = coe
      MAlonzo.Code.Generics.Debug.d_print_24
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
-- Tactic.Premises.genPremises
d_genPremises_24 :: AgdaAny -> AgdaAny -> AgdaAny
d_genPremises_24 v0 v1
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__38
      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_34) (coe ())
      (coe ())
      (coe
         MAlonzo.Code.Generics.Debug.d_print_24
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe ("tactic.premises" :: Data.Text.Text)) (coe (100 :: Integer)))
         (coe
            MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
            (coe
               ("*** Generating premises for constructor:" :: Data.Text.Text))
            (coe
               MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
               (coe MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12 v1)
               (coe ("***" :: Data.Text.Text)))))
      (coe
         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__36
         MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_34 () erased ()
         erased
         (coe
            MAlonzo.Code.Class.Monad.Core.du__'61''60''60'__46
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_34) (coe ())
            (coe ()) (coe du_reduceRuleSyntax_34)
            (coe
               MAlonzo.Code.Interface.MonadTC.d_getType_186
               MAlonzo.Code.Interface.MonadTC.d_MonadTC'45'TC_790 v1))
         (\ v2 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__36
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_34 () erased ()
              erased
              (coe
                 MAlonzo.Code.Interface.Functor.du_map_30
                 MAlonzo.Code.Interface.Functor.d_Functor'45'TC_170 () erased ()
                 erased (d_unbundleHypotheses_42 (coe v0) (coe v1))
                 (coe
                    MAlonzo.Code.Reflection.Ext.du_extendContextTel_10 ()
                    (coe
                       MAlonzo.Code.Reflection.Ext.d_absTelescope_162
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             du_breakImplicits_40
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe MAlonzo.Code.Generics.Utils.d_viewTy_114 (coe v2))))))
                    (coe
                       MAlonzo.Code.Reflection.Ext.du_mapM_198
                       (coe MAlonzo.Code.Interface.Functor.d_Functor'45'TC_170)
                       (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_34) (coe ())
                       (coe du_reduceRuleSyntax_34)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             du_breakImplicits_40
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe MAlonzo.Code.Generics.Utils.d_viewTy_114 (coe v2))))))))
              (\ v3 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__36
                   MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_34 () erased ()
                   erased
                   (coe
                      MAlonzo.Code.Reflection.Ext.du_filterM_184
                      (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_34) (coe ())
                      (coe
                         du_isDecidable'63'_58
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_breakImplicits_40
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe MAlonzo.Code.Generics.Utils.d_viewTy_114 (coe v2))))))
                      (coe v3))
                   (\ v4 ->
                      coe
                        MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__36
                        MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_34 () erased ()
                        erased
                        (coe
                           du_removeUnusedImplicits_72
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 du_breakImplicits_40
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe MAlonzo.Code.Generics.Utils.d_viewTy_114 (coe v2)))))
                           (coe du_bundleHypotheses_64 v4))
                        (\ v5 ->
                           case coe v5 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                               -> coe
                                    MAlonzo.Code.Class.Monad.Core.du__'62''62'__38
                                    (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_34)
                                    (coe ()) (coe ())
                                    (coe
                                       MAlonzo.Code.Generics.Debug.d_print_24
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe ("tactic.premises" :: Data.Text.Text))
                                          (coe (100 :: Integer)))
                                       (coe
                                          MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__22
                                          MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                          ("```\n" :: Data.Text.Text)
                                          (MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.d_primShowQName_12
                                                v0)
                                             (coe
                                                MAlonzo.Code.Data.String.Base.d__'60''43''62'__46
                                                (coe (":" :: Data.Text.Text))
                                                (coe
                                                   MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__22
                                                   MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                   (MAlonzo.Code.Reflection.AST.Show.d_showTerm_38
                                                      (coe
                                                         MAlonzo.Code.Generics.Utils.d_tyView_126
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v6)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                               (coe
                                                                  (MAlonzo.RTE.QName
                                                                     (8 :: Integer)
                                                                     (17154534930547628895 ::
                                                                        Integer)
                                                                     "Interface.Decidable.Instance.\8707Dec"
                                                                     (MAlonzo.RTE.Fixity
                                                                        MAlonzo.RTE.NonAssoc
                                                                        MAlonzo.RTE.Unrelated)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                   ("\n" :: Data.Text.Text))))))
                                    (coe
                                       MAlonzo.Code.Class.Monad.Core.du__'62''62'__38
                                       (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_34)
                                       (coe ()) (coe ())
                                       (coe
                                          MAlonzo.Code.Interface.MonadTC.d_declareDef_180
                                          MAlonzo.Code.Interface.MonadTC.d_MonadTC'45'TC_790
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
                                             (coe v0))
                                          (MAlonzo.Code.Generics.Utils.d_tyView_126
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (8 :: Integer)
                                                         (17154534930547628895 :: Integer)
                                                         "Interface.Decidable.Instance.\8707Dec"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.NonAssoc
                                                            MAlonzo.RTE.Unrelated)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                       (coe
                                          MAlonzo.Code.Interface.MonadTC.d_defineFun_184
                                          MAlonzo.Code.Interface.MonadTC.d_MonadTC'45'TC_790 v0
                                          (coe
                                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
                                                (coe
                                                   MAlonzo.Code.Reflection.Ext.d_absTelescope_162
                                                   v6)
                                                (coe
                                                   MAlonzo.Code.Interface.Functor.du_map_30
                                                   MAlonzo.Code.Interface.Functor.d_Functor'45'List_100
                                                   () erased () erased
                                                   (\ v8 ->
                                                      coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                        (coe
                                                           MAlonzo.Code.Generics.Utils.du_argInfo_362
                                                           (coe
                                                              MAlonzo.Code.Reflection.AST.Abstraction.du_unAbs_36
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v8))))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                                                           (coe
                                                              MAlonzo.Code.Data.Fin.Base.du_toℕ_18
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v8)))))
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_uncurry_244
                                                      (coe MAlonzo.Code.Data.List.Base.du_zip_212)
                                                      (coe
                                                         MAlonzo.Code.Interface.Bifunctor.du_map'8321'_116
                                                         (coe
                                                            MAlonzo.Code.Interface.Bifunctor.du_Bifunctor'45''215'_158)
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_reverse_536)
                                                         (coe
                                                            MAlonzo.Code.Data.List.Base.du_unzip_216
                                                            (coe
                                                               MAlonzo.Code.Generics.Debug.du_enumerate_16
                                                               (coe v6))))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_con_178
                                                   (coe
                                                      (MAlonzo.RTE.QName
                                                         (32 :: Integer)
                                                         (15581396396021577314 :: Integer)
                                                         "Agda.Builtin.Sigma._,_"
                                                         (MAlonzo.RTE.Fixity
                                                            MAlonzo.RTE.RightAssoc
                                                            (MAlonzo.RTE.Related (4.0 :: Double)))))
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
                                                                     (264 :: Integer)
                                                                     (10779521135412943468 ::
                                                                        Integer)
                                                                     "Function.Base.it"
                                                                     (MAlonzo.RTE.Fixity
                                                                        MAlonzo.RTE.NonAssoc
                                                                        MAlonzo.RTE.Unrelated)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                             _ -> MAlonzo.RTE.mazUnreachableError)))))
-- Tactic.Premises._.reduceRuleSyntax
d_reduceRuleSyntax_34 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_reduceRuleSyntax_34 ~v0 ~v1 v2 = du_reduceRuleSyntax_34 v2
du_reduceRuleSyntax_34 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_reduceRuleSyntax_34 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.d_withReduceDefs_450 () erased
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
         (coe
            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
            (coe
               (MAlonzo.RTE.QName
                  (8 :: Integer) (8796295082965660208 :: Integer)
                  "Interface.STS._\8729_"
                  (MAlonzo.RTE.Fixity
                     MAlonzo.RTE.RightAssoc (MAlonzo.RTE.Related (-100.0 :: Double)))))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  (MAlonzo.RTE.QName
                     (4 :: Integer) (8796295082965660208 :: Integer)
                     "Interface.STS.\8729_"
                     (MAlonzo.RTE.Fixity
                        MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-150.0 :: Double)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     (MAlonzo.RTE.QName
                        (18 :: Integer) (8796295082965660208 :: Integer)
                        "Interface.STS._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                        (MAlonzo.RTE.Fixity
                           MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-500.0 :: Double)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        (MAlonzo.RTE.QName
                           (14 :: Integer) (8796295082965660208 :: Integer)
                           "Interface.STS.\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                           (MAlonzo.RTE.Fixity
                              MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-501.0 :: Double)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           (MAlonzo.RTE.QName
                              (28 :: Integer) (8796295082965660208 :: Integer)
                              "Interface.STS._\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                              (MAlonzo.RTE.Fixity
                                 MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-500.0 :: Double)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              (MAlonzo.RTE.QName
                                 (24 :: Integer) (8796295082965660208 :: Integer)
                                 "Interface.STS.\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472\9472_"
                                 (MAlonzo.RTE.Fixity
                                    MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (-501.0 :: Double)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
      (coe
         MAlonzo.Code.Interface.MonadTC.d_normalise_166
         MAlonzo.Code.Interface.MonadTC.d_MonadTC'45'TC_790 v0)
-- Tactic.Premises._.breakImplicits
d_breakImplicits_40 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_breakImplicits_40 ~v0 ~v1 v2 = du_breakImplicits_40 v2
du_breakImplicits_40 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_breakImplicits_40 v0
  = coe
      MAlonzo.Code.Interface.Bifunctor.du_map'8322'_128
      (coe MAlonzo.Code.Interface.Bifunctor.du_Bifunctor'45''215'_158)
      (\ v1 ->
         coe
           MAlonzo.Code.Generics.Utils.du_unArgs_84
           (coe
              MAlonzo.Code.Interface.Functor.du_map_30
              MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
              erased (coe MAlonzo.Code.Reflection.AST.Abstraction.du_unAbs_36)
              v1))
      (coe
         MAlonzo.Code.Data.List.Base.du_break_910
         (\ v1 ->
            coe
              MAlonzo.Code.Generics.Utils.du_isVisible'63'_368
              (coe MAlonzo.Code.Reflection.AST.Abstraction.du_unAbs_36 (coe v1)))
         v0)
-- Tactic.Premises._.unbundleHypotheses
d_unbundleHypotheses_42 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_unbundleHypotheses_42 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_concatMap_272
      (coe d_go_48 (coe v0) (coe v1))
-- Tactic.Premises._._.go
d_go_48 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_go_48 v0 v1 = coe d_'46'extendedlambda0_50 (coe v0) (coe v1)
-- Tactic.Premises._._..extendedlambda0
d_'46'extendedlambda0_50 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154]
d_'46'extendedlambda0_50 v0 v1 v2
  = let v3
          = coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v2) in
    coe
      (case coe v2 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184 v4 v5
           -> case coe v4 of
                MAlonzo.RTE.QName 76 14176793942586333973 _ _
                  -> case coe v5 of
                       (:) v6 v7
                         -> case coe v6 of
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v8 v9
                                -> case coe v8 of
                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v10 v11
                                       -> case coe v10 of
                                            MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52
                                              -> case coe v11 of
                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v12 v13
                                                     -> case coe v12 of
                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                            -> case coe v13 of
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                   -> case coe v7 of
                                                                        (:) v14 v15
                                                                          -> case coe v14 of
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v16 v17
                                                                                 -> case coe v16 of
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v18 v19
                                                                                        -> case coe
                                                                                                  v18 of
                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52
                                                                                               -> case coe
                                                                                                         v19 of
                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v20 v21
                                                                                                      -> case coe
                                                                                                                v20 of
                                                                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                             -> case coe
                                                                                                                       v21 of
                                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                    -> case coe
                                                                                                                              v15 of
                                                                                                                         (:) v22 v23
                                                                                                                           -> case coe
                                                                                                                                     v22 of
                                                                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v24 v25
                                                                                                                                  -> case coe
                                                                                                                                            v24 of
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v26 v27
                                                                                                                                         -> case coe
                                                                                                                                                   v26 of
                                                                                                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                                                                -> case coe
                                                                                                                                                          v27 of
                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v28 v29
                                                                                                                                                       -> case coe
                                                                                                                                                                 v28 of
                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                                                                              -> case coe
                                                                                                                                                                        v29 of
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                                                                     -> case coe
                                                                                                                                                                               v23 of
                                                                                                                                                                          (:) v30 v31
                                                                                                                                                                            -> case coe
                                                                                                                                                                                      v30 of
                                                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v32 v33
                                                                                                                                                                                   -> case coe
                                                                                                                                                                                             v32 of
                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82 v34 v35
                                                                                                                                                                                          -> case coe
                                                                                                                                                                                                    v34 of
                                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50
                                                                                                                                                                                                 -> case coe
                                                                                                                                                                                                           v35 of
                                                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74 v36 v37
                                                                                                                                                                                                        -> case coe
                                                                                                                                                                                                                  v36 of
                                                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58
                                                                                                                                                                                                               -> case coe
                                                                                                                                                                                                                         v37 of
                                                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66
                                                                                                                                                                                                                      -> case coe
                                                                                                                                                                                                                                v31 of
                                                                                                                                                                                                                           []
                                                                                                                                                                                                                             -> coe
                                                                                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     v25)
                                                                                                                                                                                                                                  (coe
                                                                                                                                                                                                                                     d_go_48
                                                                                                                                                                                                                                     v0
                                                                                                                                                                                                                                     v1
                                                                                                                                                                                                                                     v33)
                                                                                                                                                                                                                           _ -> coe
                                                                                                                                                                                                                                  v3
                                                                                                                                                                                                                    _ -> coe
                                                                                                                                                                                                                           v3
                                                                                                                                                                                                             _ -> coe
                                                                                                                                                                                                                    v3
                                                                                                                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                               _ -> coe
                                                                                                                                                                                                      v3
                                                                                                                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                                                          _ -> coe
                                                                                                                                                                                 v3
                                                                                                                                                                   _ -> coe
                                                                                                                                                                          v3
                                                                                                                                                            _ -> coe
                                                                                                                                                                   v3
                                                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                              _ -> coe
                                                                                                                                                     v3
                                                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                         _ -> coe
                                                                                                                                v3
                                                                                                                  _ -> coe
                                                                                                                         v3
                                                                                                           _ -> coe
                                                                                                                  v3
                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                             _ -> coe
                                                                                                    v3
                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> coe v3
                                                                 _ -> coe v3
                                                          _ -> coe v3
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> coe v3
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> coe v3
                _ -> coe v3
         _ -> coe v3)
-- Tactic.Premises._.isDecidable?
d_isDecidable'63'_58 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_isDecidable'63'_58 ~v0 ~v1 v2 v3 = du_isDecidable'63'_58 v2 v3
du_isDecidable'63'_58 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_isDecidable'63'_58 v0 v1
  = coe
      MAlonzo.Code.Interface.MonadTC.du_isSuccessful_240
      (coe MAlonzo.Code.Interface.MonadTC.d_Monad'45'TC_12)
      (coe MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60)
      (coe MAlonzo.Code.Interface.MonadTC.d_MonadTC'45'TC_790) (coe ())
      (coe
         MAlonzo.Code.Interface.MonadTC.d_checkType_164
         MAlonzo.Code.Interface.MonadTC.d_MonadTC'45'TC_790
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
            (coe
               (MAlonzo.RTE.QName
                  (264 :: Integer) (10779521135412943468 :: Integer)
                  "Function.Base.it"
                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         (MAlonzo.Code.Generics.Utils.d_tyView_126
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
               (coe
                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                  (coe
                     (MAlonzo.RTE.QName
                        (20 :: Integer) (16368259409245829246 :: Integer)
                        "Relation.Nullary.Decidable.Core.Dec"
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
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
-- Tactic.Premises._.bundleHypotheses
d_bundleHypotheses_64 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_bundleHypotheses_64 ~v0 ~v1 = du_bundleHypotheses_64
du_bundleHypotheses_64 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
du_bundleHypotheses_64
  = coe
      MAlonzo.Code.Reflection.Ext.du_fold_222 (coe ())
      (coe
         MAlonzo.Code.Class.Monoid.Core.C_Monoid'46'constructor_53
         (coe MAlonzo.Code.Reflection.Ext.d___254)
         (coe
            MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
            (coe
               (MAlonzo.RTE.QName
                  (6 :: Integer) (13559399870857524843 :: Integer)
                  "Agda.Builtin.Unit.\8868"
                  (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
-- Tactic.Premises._.removeUnusedImplicits
d_removeUnusedImplicits_72 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_removeUnusedImplicits_72 ~v0 ~v1 v2 v3
  = du_removeUnusedImplicits_72 v2 v3
du_removeUnusedImplicits_72 ::
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_removeUnusedImplicits_72 v0 v1
  = coe
      du_go_84 (coe v1)
      (coe
         MAlonzo.Code.Data.Nat.Base.d_pred_154
         (coe MAlonzo.Code.Data.List.Base.du_length_304 v0))
      (coe v0) (coe v1)
-- Tactic.Premises._._.fvs
d_fvs_82 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
d_fvs_82 ~v0 ~v1 ~v2 v3 = du_fvs_82 v3
du_fvs_82 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> [Integer]
du_fvs_82 v0 = coe MAlonzo.Code.Reflection.Ext.d_freeVars_54 v0
-- Tactic.Premises._._.go
d_go_84 ::
  AgdaAny ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_go_84 ~v0 ~v1 ~v2 v3 v4 v5 v6 = du_go_84 v3 v4 v5 v6
du_go_84 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Abs_112] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_go_84 v0 v1 v2 v3
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Class.Monad.Core.d_return_34
             MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_34 () erased
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
      (:) v4 v5
        -> coe
             MAlonzo.Code.Interface.Decidable.Instance.du_if'7496'_then_else__66
             (coe
                MAlonzo.Code.Interface.Decidable.Instance.du_Decidable'178''8658'Dec_116
                (coe
                   MAlonzo.Code.Data.List.Membership.DecSetoid.du__'8712''63'__58
                   (coe
                      MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
                      (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                (coe v1) (coe du_fvs_82 (coe v0)))
             (coe
                (\ v6 ->
                   coe
                     MAlonzo.Code.Interface.Functor.d__'60''36''62'__28
                     MAlonzo.Code.Interface.Functor.d_Functor'45'TC_170 () erased ()
                     erased
                     (coe
                        MAlonzo.Code.Interface.Bifunctor.du_map'8321'_116
                        (coe MAlonzo.Code.Interface.Bifunctor.du_Bifunctor'45''215'_158)
                        (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)))
                     (coe
                        du_go_84 (coe v0)
                        (coe MAlonzo.Code.Data.Nat.Base.d_pred_154 (coe v1)) (coe v5)
                        (coe v3))))
             (coe
                (\ v6 ->
                   coe
                     du_go_84 (coe v0)
                     (coe MAlonzo.Code.Data.Nat.Base.d_pred_154 (coe v1)) (coe v5)
                     (coe
                        MAlonzo.Code.Generics.Utils.d_mapFreeVars_192
                        MAlonzo.Code.Data.Nat.Base.d_pred_154 v1 v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
