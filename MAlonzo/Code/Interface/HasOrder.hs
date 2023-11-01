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

module MAlonzo.Code.Interface.HasOrder where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Interface.HasOrder._._.HasPreorder
d_HasPreorder_18 a0 a1 a2 = ()
data T_HasPreorder_18
  = C_HasPreorder'46'constructor_843 MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
                                     (AgdaAny ->
                                      AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_928)
-- Interface.HasOrder._._.HasPreorder._≤_
d__'8804'__34 :: T_HasPreorder_18 -> AgdaAny -> AgdaAny -> ()
d__'8804'__34 = erased
-- Interface.HasOrder._._.HasPreorder._<_
d__'60'__36 :: T_HasPreorder_18 -> AgdaAny -> AgdaAny -> ()
d__'60'__36 = erased
-- Interface.HasOrder._._.HasPreorder.≤-isPreorder
d_'8804''45'isPreorder_38 ::
  T_HasPreorder_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_38 v0
  = case coe v0 of
      C_HasPreorder'46'constructor_843 v3 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasPreorder.<-irrefl
d_'60''45'irrefl_40 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_40 = erased
-- Interface.HasOrder._._.HasPreorder.≤⇔<∨≈
d_'8804''8660''60''8744''8776'_46 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_928
d_'8804''8660''60''8744''8776'_46 v0
  = case coe v0 of
      C_HasPreorder'46'constructor_843 v3 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasPreorder._.isEquivalence
d_isEquivalence_50 ::
  T_HasPreorder_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_50 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe d_'8804''45'isPreorder_38 (coe v0))
-- Interface.HasOrder._._.HasPreorder._.refl
d_refl_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 -> AgdaAny -> AgdaAny
d_refl_52 ~v0 ~v1 ~v2 v3 = du_refl_52 v3
du_refl_52 :: T_HasPreorder_18 -> AgdaAny -> AgdaAny
du_refl_52 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe d_'8804''45'isPreorder_38 (coe v0))
-- Interface.HasOrder._._.HasPreorder._.trans
d_trans_54 ::
  T_HasPreorder_18 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_54 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe d_'8804''45'isPreorder_38 (coe v0))
-- Interface.HasOrder._._.HasPreorder._≤?_
d__'8804''63'__60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__60 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du__'8804''63'__60 v4 v5 v6
du__'8804''63'__60 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8804''63'__60 v0 v1 v2 = coe v0 v1 v2
-- Interface.HasOrder._._.HasPreorder._<?_
d__'60''63'__68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__68 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du__'60''63'__68 v4 v5 v6
du__'60''63'__68 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__68 v0 v1 v2 = coe v0 v1 v2
-- Interface.HasOrder._._.HasPreorder.<⇒≤∧≉
d_'60''8658''8804''8743''8777'_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''8658''8804''8743''8777'_74 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'60''8658''8804''8743''8777'_74 v3 v4 v5 v6
du_'60''8658''8804''8743''8777'_74 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''8658''8804''8743''8777'_74 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Function.Bundles.d_from_940
         (coe d_'8804''8660''60''8744''8776'_46 v0 v1 v2)
         (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v3)))
      erased
-- Interface.HasOrder._._.HasPreorder.≤∧≉⇒<
d_'8804''8743''8777''8658''60'_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8804''8743''8777''8658''60'_84 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'8804''8743''8777''8658''60'_84 v3 v4 v5 v6
du_'8804''8743''8777''8658''60'_84 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8804''8743''8777''8658''60'_84 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Function.Bundles.d_to_938
                     (coe d_'8804''8660''60''8744''8776'_46 v0 v1 v2) v4 in
           case coe v6 of
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7 -> coe v7
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
               -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasPreorder.≤-antisym⇒<-asym
d_'8804''45'antisym'8658''60''45'asym_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''45'antisym'8658''60''45'asym_118 = erased
-- Interface.HasOrder._._.HasDecPreorder
d_HasDecPreorder_154 a0 a1 a2 = ()
data T_HasDecPreorder_154
  = C_HasDecPreorder'46'constructor_8327 T_HasPreorder_18
                                         (AgdaAny ->
                                          AgdaAny ->
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
                                         (AgdaAny ->
                                          AgdaAny ->
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Interface.HasOrder._._.HasDecPreorder.hasPreorder
d_hasPreorder_170 :: T_HasDecPreorder_154 -> T_HasPreorder_18
d_hasPreorder_170 v0
  = case coe v0 of
      C_HasDecPreorder'46'constructor_8327 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasDecPreorder.dec-≤
d_dec'45''8804'_176 ::
  T_HasDecPreorder_154 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec'45''8804'_176 v0
  = case coe v0 of
      C_HasDecPreorder'46'constructor_8327 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasDecPreorder.dec-<
d_dec'45''60'_182 ::
  T_HasDecPreorder_154 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec'45''60'_182 v0
  = case coe v0 of
      C_HasDecPreorder'46'constructor_8327 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasPartialOrder
d_HasPartialOrder_184 a0 a1 a2 = ()
data T_HasPartialOrder_184
  = C_HasPartialOrder'46'constructor_8651 T_HasPreorder_18
                                          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Interface.HasOrder._._.HasPartialOrder.hasPreorder
d_hasPreorder_190 :: T_HasPartialOrder_184 -> T_HasPreorder_18
d_hasPreorder_190 v0
  = case coe v0 of
      C_HasPartialOrder'46'constructor_8651 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasPartialOrder.≤-antisym
d_'8804''45'antisym_192 ::
  T_HasPartialOrder_184 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8804''45'antisym_192 v0
  = case coe v0 of
      C_HasPartialOrder'46'constructor_8651 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasPartialOrder.≤-isPartialOrder
d_'8804''45'isPartialOrder_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_184 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_'8804''45'isPartialOrder_194 ~v0 ~v1 ~v2 v3
  = du_'8804''45'isPartialOrder_194 v3
du_'8804''45'isPartialOrder_194 ::
  T_HasPartialOrder_184 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
du_'8804''45'isPartialOrder_194 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_8515
      (coe d_'8804''45'isPreorder_38 (coe d_hasPreorder_190 (coe v0)))
      (coe d_'8804''45'antisym_192 (coe v0))
-- Interface.HasOrder._._.HasPartialOrder.<-asymmetric
d_'60''45'asymmetric_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_184 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asymmetric_196 = erased
-- Interface.HasOrder._._.HasPartialOrder.<-trans
d_'60''45'trans_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_184 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'trans_210 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'60''45'trans_210 v3 v4 v5 v6 v7 v8
du_'60''45'trans_210 ::
  T_HasPartialOrder_184 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'trans_210 v0 v1 v2 v3 v4 v5
  = coe
      du_'8804''8743''8777''8658''60'_84 (coe d_hasPreorder_190 (coe v0))
      (coe v1) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_84
            (d_'8804''45'isPreorder_38 (coe d_hasPreorder_190 (coe v0))) v1 v2
            v3
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'60''8658''8804''8743''8777'_74 (coe d_hasPreorder_190 (coe v0))
                  (coe v1) (coe v2) (coe v4)))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'60''8658''8804''8743''8777'_74 (coe d_hasPreorder_190 (coe v0))
                  (coe v2) (coe v3) (coe v5))))
         (coe
            (\ v6 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    du_'60''8658''8804''8743''8777'_74 (coe d_hasPreorder_190 (coe v0))
                    (coe v2) (coe v3) (coe v5))
                 (coe
                    d_'8804''45'antisym_192 v0 v2 v3
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          du_'60''8658''8804''8743''8777'_74 (coe d_hasPreorder_190 (coe v0))
                          (coe v2) (coe v3) (coe v5)))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                       (d_'8804''45'isPreorder_38 (coe d_hasPreorder_190 (coe v0))) v3 v1
                       v2
                       (coe
                          MAlonzo.Code.Function.Bundles.d_from_940
                          (coe
                             d_'8804''8660''60''8744''8776'_46 (d_hasPreorder_190 (coe v0)) v3
                             v1)
                          (coe
                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                                   (coe d_'8804''45'isPreorder_38 (coe d_hasPreorder_190 (coe v0))))
                                v1 v3 v6)))
                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             du_'60''8658''8804''8743''8777'_74 (coe d_hasPreorder_190 (coe v0))
                             (coe v1) (coe v2) (coe v4))))))))
-- Interface.HasOrder._._.HasPartialOrder.<⇒¬>⊎≈
d_'60''8658''172''62''8846''8776'_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_184 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''172''62''8846''8776'_228 = erased
-- Interface.HasOrder._._.HasDecPartialOrder
d_HasDecPartialOrder_238 a0 a1 a2 = ()
data T_HasDecPartialOrder_238
  = C_HasDecPartialOrder'46'constructor_18711 T_HasPartialOrder_184
                                              (AgdaAny ->
                                               AgdaAny ->
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
                                              (AgdaAny ->
                                               AgdaAny ->
                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
-- Interface.HasOrder._._.HasDecPartialOrder.hasPartialOrder
d_hasPartialOrder_254 ::
  T_HasDecPartialOrder_238 -> T_HasPartialOrder_184
d_hasPartialOrder_254 v0
  = case coe v0 of
      C_HasDecPartialOrder'46'constructor_18711 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasDecPartialOrder.dec-≤
d_dec'45''8804'_260 ::
  T_HasDecPartialOrder_238 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec'45''8804'_260 v0
  = case coe v0 of
      C_HasDecPartialOrder'46'constructor_18711 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._._.HasDecPartialOrder.dec-<
d_dec'45''60'_266 ::
  T_HasDecPartialOrder_238 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec'45''60'_266 v0
  = case coe v0 of
      C_HasDecPartialOrder'46'constructor_18711 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasOrder._.HasPreorder≡
d_HasPreorder'8801'_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()
d_HasPreorder'8801'_268 = erased
-- Interface.HasOrder._.HasDecPreorder≡
d_HasDecPreorder'8801'_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()
d_HasDecPreorder'8801'_270 = erased
-- Interface.HasOrder._.HasPartialOrder≡
d_HasPartialOrder'8801'_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()
d_HasPartialOrder'8801'_272 = erased
-- Interface.HasOrder._.HasDecPartialOrder≡
d_HasDecPartialOrder'8801'_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 -> () -> ()
d_HasDecPartialOrder'8801'_274 = erased
-- Interface.HasOrder._._<_
d__'60'__278 :: T_HasPreorder_18 -> AgdaAny -> AgdaAny -> ()
d__'60'__278 = erased
-- Interface.HasOrder._._<?_
d__'60''63'__280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__280 ~v0 ~v1 ~v2 ~v3 = du__'60''63'__280
du__'60''63'__280 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__280 = coe du__'60''63'__68
-- Interface.HasOrder._._≤_
d__'8804'__282 :: T_HasPreorder_18 -> AgdaAny -> AgdaAny -> ()
d__'8804'__282 = erased
-- Interface.HasOrder._._≤?_
d__'8804''63'__284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__284 ~v0 ~v1 ~v2 ~v3 = du__'8804''63'__284
du__'8804''63'__284 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8804''63'__284 = coe du__'8804''63'__60
-- Interface.HasOrder._.<-irrefl
d_'60''45'irrefl_286 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'irrefl_286 = erased
-- Interface.HasOrder._.<⇒≤∧≉
d_'60''8658''8804''8743''8777'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''8658''8804''8743''8777'_288 ~v0 ~v1 ~v2 v3
  = du_'60''8658''8804''8743''8777'_288 v3
du_'60''8658''8804''8743''8777'_288 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''8658''8804''8743''8777'_288 v0
  = coe du_'60''8658''8804''8743''8777'_74 (coe v0)
-- Interface.HasOrder._.isEquivalence
d_isEquivalence_290 ::
  T_HasPreorder_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_290 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe d_'8804''45'isPreorder_38 (coe v0))
-- Interface.HasOrder._.≤-antisym⇒<-asym
d_'8804''45'antisym'8658''60''45'asym_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8804''45'antisym'8658''60''45'asym_292 = erased
-- Interface.HasOrder._.≤-isPreorder
d_'8804''45'isPreorder_294 ::
  T_HasPreorder_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8804''45'isPreorder_294 v0
  = coe d_'8804''45'isPreorder_38 (coe v0)
-- Interface.HasOrder._.refl
d_refl_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 -> AgdaAny -> AgdaAny
d_refl_296 ~v0 ~v1 ~v2 v3 = du_refl_296 v3
du_refl_296 :: T_HasPreorder_18 -> AgdaAny -> AgdaAny
du_refl_296 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe d_'8804''45'isPreorder_38 (coe v0))
-- Interface.HasOrder._.trans
d_trans_298 ::
  T_HasPreorder_18 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_298 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe d_'8804''45'isPreorder_38 (coe v0))
-- Interface.HasOrder._.≤⇔<∨≈
d_'8804''8660''60''8744''8776'_300 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_928
d_'8804''8660''60''8744''8776'_300 v0
  = coe d_'8804''8660''60''8744''8776'_46 (coe v0)
-- Interface.HasOrder._.≤∧≉⇒<
d_'8804''8743''8777''8658''60'_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8804''8743''8777''8658''60'_302 ~v0 ~v1 ~v2 v3
  = du_'8804''8743''8777''8658''60'_302 v3
du_'8804''8743''8777''8658''60'_302 ::
  T_HasPreorder_18 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8804''8743''8777''8658''60'_302 v0
  = coe du_'8804''8743''8777''8658''60'_84 (coe v0)
-- Interface.HasOrder._.<-asymmetric
d_'60''45'asymmetric_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_184 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''45'asymmetric_306 = erased
-- Interface.HasOrder._.<-trans
d_'60''45'trans_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_184 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'trans_308 ~v0 ~v1 ~v2 v3 = du_'60''45'trans_308 v3
du_'60''45'trans_308 ::
  T_HasPartialOrder_184 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'trans_308 v0 = coe du_'60''45'trans_210 (coe v0)
-- Interface.HasOrder._.<⇒¬>⊎≈
d_'60''8658''172''62''8846''8776'_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_184 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'60''8658''172''62''8846''8776'_310 = erased
-- Interface.HasOrder._.≤-antisym
d_'8804''45'antisym_312 ::
  T_HasPartialOrder_184 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8804''45'antisym_312 v0 = coe d_'8804''45'antisym_192 (coe v0)
-- Interface.HasOrder._.≤-isPartialOrder
d_'8804''45'isPartialOrder_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T_HasPartialOrder_184 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
d_'8804''45'isPartialOrder_314 ~v0 ~v1 ~v2 v3
  = du_'8804''45'isPartialOrder_314 v3
du_'8804''45'isPartialOrder_314 ::
  T_HasPartialOrder_184 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_162
du_'8804''45'isPartialOrder_314 v0
  = coe du_'8804''45'isPartialOrder_194 (coe v0)
-- Interface.HasOrder._.dec-<
d_dec'45''60'_318 ::
  T_HasDecPartialOrder_238 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec'45''60'_318 v0 = coe d_dec'45''60'_266 (coe v0)
-- Interface.HasOrder._.dec-≤
d_dec'45''8804'_320 ::
  T_HasDecPartialOrder_238 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_dec'45''8804'_320 v0 = coe d_dec'45''8804'_260 (coe v0)
-- Interface.HasOrder._._._.hasPreorderFromNonStrict
d_hasPreorderFromNonStrict_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  T_HasPreorder_18
d_hasPreorderFromNonStrict_396 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_hasPreorderFromNonStrict_396 v4 v5
du_hasPreorderFromNonStrict_396 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  T_HasPreorder_18
du_hasPreorderFromNonStrict_396 v0 v1
  = coe
      C_HasPreorder'46'constructor_843 v0
      (\ v2 v3 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_1322
           (coe
              (\ v4 ->
                 let v5 = coe v1 v2 v3 in
                 case coe v5 of
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v6 v7
                     -> if coe v6
                          then case coe v7 of
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v8
                                   -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v8)
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          else coe
                                 seq (coe v7)
                                 (coe
                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) erased))
                   _ -> MAlonzo.RTE.mazUnreachableError))
           (coe
              (\ v4 ->
                 case coe v4 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
                     -> coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
                     -> coe
                          MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82 v0 v2 v3 v5
                   _ -> MAlonzo.RTE.mazUnreachableError)))
-- Interface.HasOrder._._._.hasPartialOrderFromNonStrict
d_hasPartialOrderFromNonStrict_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_HasPartialOrder_184
d_hasPartialOrderFromNonStrict_416 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_hasPartialOrderFromNonStrict_416 v4 v5 v6
du_hasPartialOrderFromNonStrict_416 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_HasPartialOrder_184
du_hasPartialOrderFromNonStrict_416 v0 v1 v2
  = coe
      C_HasPartialOrder'46'constructor_8651
      (coe du_hasPreorderFromNonStrict_396 (coe v0) (coe v1)) (coe v2)
-- Interface.HasOrder._._._.hasPreorderFromStrictPartialOrder
d_hasPreorderFromStrictPartialOrder_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  T_HasPreorder_18
d_hasPreorderFromStrictPartialOrder_472 ~v0 ~v1 ~v2 ~v3 v4
  = du_hasPreorderFromStrictPartialOrder_472 v4
du_hasPreorderFromStrictPartialOrder_472 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  T_HasPreorder_18
du_hasPreorderFromStrictPartialOrder_472 v0
  = coe
      C_HasPreorder'46'constructor_843
      (coe
         MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict.du_isPreorder'8322'_344
         (coe v0))
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 (coe (\ v3 -> v3))
           (coe (\ v3 -> v3)))
-- Interface.HasOrder._._._.hasPartialOrderFromStrictPartialOrder
d_hasPartialOrderFromStrictPartialOrder_476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  T_HasPartialOrder_184
d_hasPartialOrderFromStrictPartialOrder_476 ~v0 ~v1 ~v2 ~v3 v4
  = du_hasPartialOrderFromStrictPartialOrder_476 v4
du_hasPartialOrderFromStrictPartialOrder_476 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266 ->
  T_HasPartialOrder_184
du_hasPartialOrderFromStrictPartialOrder_476 v0
  = coe
      C_HasPartialOrder'46'constructor_8651
      (coe du_hasPreorderFromStrictPartialOrder_472 (coe v0))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.StrictToNonStrict.du_antisym_30
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_278
            (coe v0)))
-- Interface.HasOrder._._._.spo
d_spo_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_498 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
d_spo_484 ~v0 ~v1 ~v2 ~v3 v4 = du_spo_484 v4
du_spo_484 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_498 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_266
du_spo_484 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isStrictPartialOrder_536
      (coe v0)
-- Interface.HasOrder._._._.hasPreorderFromStrictTotalOrder
d_hasPreorderFromStrictTotalOrder_486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_498 ->
  T_HasPreorder_18
d_hasPreorderFromStrictTotalOrder_486 ~v0 ~v1 ~v2 ~v3 v4
  = du_hasPreorderFromStrictTotalOrder_486 v4
du_hasPreorderFromStrictTotalOrder_486 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_498 ->
  T_HasPreorder_18
du_hasPreorderFromStrictTotalOrder_486 v0
  = coe
      du_hasPreorderFromStrictPartialOrder_472 (coe du_spo_484 (coe v0))
-- Interface.HasOrder._._._.hasPartialOrderFromStrictTotalOrder
d_hasPartialOrderFromStrictTotalOrder_488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_498 ->
  T_HasPartialOrder_184
d_hasPartialOrderFromStrictTotalOrder_488 ~v0 ~v1 ~v2 ~v3 v4
  = du_hasPartialOrderFromStrictTotalOrder_488 v4
du_hasPartialOrderFromStrictTotalOrder_488 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_498 ->
  T_HasPartialOrder_184
du_hasPartialOrderFromStrictTotalOrder_488 v0
  = coe
      du_hasPartialOrderFromStrictPartialOrder_476
      (coe du_spo_484 (coe v0))
