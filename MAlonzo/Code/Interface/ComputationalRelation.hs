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

module MAlonzo.Code.Interface.ComputationalRelation where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.Bifunctor
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.Functor
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Interface.ComputationalRelation._.ExtendedRel
d_ExtendedRel_32 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> Maybe AgdaAny -> ()
d_ExtendedRel_32 = erased
-- Interface.ComputationalRelation._.Computational
d_Computational_50 a0 a1 a2 a3 = ()
newtype T_Computational_50
  = C_MkComputational_176 (AgdaAny ->
                           AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Interface.ComputationalRelation._.Computational.computeProof
d_computeProof_88 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeProof_88 v0
  = case coe v0 of
      C_MkComputational_176 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation._.Computational.compute
d_compute_90 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Maybe AgdaAny
d_compute_90 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_compute_90 v4 v5 v6 v7
du_compute_90 ::
  T_Computational_50 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Maybe AgdaAny
du_compute_90 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_map_68
      (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
      (coe d_computeProof_88 v0 v1 v2 v3)
-- Interface.ComputationalRelation._.Computational.completeness
d_completeness_106 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_106 = erased
-- Interface.ComputationalRelation._.Computational.≡-just⇔STS
d_'8801''45'just'8660'STS_108 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_928
d_'8801''45'just'8660'STS_108 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8
  = du_'8801''45'just'8660'STS_108 v4 v5 v6 v7
du_'8801''45'just'8660'STS_108 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_928
du_'8801''45'just'8660'STS_108 v0 v1 v2 v3
  = let v4 = coe d_computeProof_88 v0 v1 v2 v3 in
    case coe v4 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 (coe (\ v8 -> v7))
                    erased
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.Function.Bundles.du_mk'8660'_1322 erased erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation._.Computational.nothing⇒∀¬STS
d_nothing'8658''8704''172'STS_152 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nothing'8658''8704''172'STS_152 = erased
-- Interface.ComputationalRelation._.Computational.recomputeProof
d_recomputeProof_174 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_recomputeProof_174 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 ~v9
  = du_recomputeProof_174 v4 v5 v6 v7
du_recomputeProof_174 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_recomputeProof_174 v0 v1 v2 v3
  = coe d_computeProof_88 v0 v1 v2 v3
-- Interface.ComputationalRelation._._.completeness
d_completeness_194 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_194 = erased
-- Interface.ComputationalRelation._._.compute
d_compute_196 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Maybe AgdaAny
d_compute_196 ~v0 ~v1 ~v2 ~v3 v4 = du_compute_196 v4
du_compute_196 ::
  T_Computational_50 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Maybe AgdaAny
du_compute_196 v0 = coe du_compute_90 (coe v0)
-- Interface.ComputationalRelation._._.computeProof
d_computeProof_198 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeProof_198 v0 = coe d_computeProof_88 (coe v0)
-- Interface.ComputationalRelation._._.nothing⇒∀¬STS
d_nothing'8658''8704''172'STS_200 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nothing'8658''8704''172'STS_200 = erased
-- Interface.ComputationalRelation._._.recomputeProof
d_recomputeProof_202 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_recomputeProof_202 ~v0 ~v1 ~v2 ~v3 v4 = du_recomputeProof_202 v4
du_recomputeProof_202 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_recomputeProof_202 v0 v1 v2 v3 v4 v5
  = coe du_recomputeProof_174 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.≡-just⇔STS
d_'8801''45'just'8660'STS_204 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_928
d_'8801''45'just'8660'STS_204 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8801''45'just'8660'STS_204 v4
du_'8801''45'just'8660'STS_204 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_928
du_'8801''45'just'8660'STS_204 v0 v1 v2 v3 v4
  = coe du_'8801''45'just'8660'STS_108 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._.ExtendedRelSTS
d_ExtendedRelSTS_206 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Maybe AgdaAny -> ()
d_ExtendedRelSTS_206 = erased
-- Interface.ComputationalRelation._.ExtendedRel-compute
d_ExtendedRel'45'compute_208 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_ExtendedRel'45'compute_208 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_ExtendedRel'45'compute_208 v4 v5 v6 v7
du_ExtendedRel'45'compute_208 ::
  T_Computational_50 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_ExtendedRel'45'compute_208 v0 v1 v2 v3
  = let v4 = coe du_compute_90 (coe v0) (coe v1) (coe v2) (coe v3) in
    case coe v4 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> coe
             MAlonzo.Code.Function.Bundles.d_to_938
             (coe
                du_'8801''45'just'8660'STS_108 (coe v0) (coe v1) (coe v2) (coe v3))
             erased
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation._.ExtendedRel-rightUnique
d_ExtendedRel'45'rightUnique_240 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  Maybe AgdaAny ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ExtendedRel'45'rightUnique_240 = erased
-- Interface.ComputationalRelation._.computational⇒rightUnique
d_computational'8658'rightUnique_266 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_computational'8658'rightUnique_266 = erased
-- Interface.ComputationalRelation._.Computational⇒Dec
d_Computational'8658'Dec_282 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Computational'8658'Dec_282 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_Computational'8658'Dec_282 v4 v5 v6 v7 v8 v9
du_Computational'8658'Dec_282 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Computational'8658'Dec_282 v0 v1 v2 v3 v4 v5
  = let v6 = coe du_compute_90 (coe v0) (coe v1) (coe v2) (coe v3) in
    let v7
          = coe
              du_ExtendedRel'45'compute_208 (coe v0) (coe v1) (coe v2)
              (coe v3) in
    case coe v6 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
        -> let v9
                 = coe MAlonzo.Code.Interface.DecEq.d__'8799'__20 v5 v8 v4 in
           case coe v9 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v10 v11
               -> if coe v10
                    then coe
                           seq (coe v11)
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                              (coe v10)
                              (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 (coe v7)))
                    else coe
                           seq (coe v11)
                           (coe
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                              (coe v10)
                              (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation._._.completeness
d_completeness_368 ::
  T_Computational_50 ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_368 = erased
-- Interface.ComputationalRelation._._.computeProof
d_computeProof_370 ::
  T_Computational_50 ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeProof_370 v0 ~v1 = du_computeProof_370 v0
du_computeProof_370 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_computeProof_370 v0 = coe d_computeProof_88 (coe v0)
-- Interface.ComputationalRelation._._.compute
d_compute_372 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  T_Computational_50 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Maybe AgdaAny
d_compute_372 ~v0 ~v1 ~v2 ~v3 v4 ~v5 = du_compute_372 v4
du_compute_372 ::
  T_Computational_50 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Maybe AgdaAny
du_compute_372 v0 = coe du_compute_90 (coe v0)
-- Interface.ComputationalRelation._._.nothing⇒∀¬STS
d_nothing'8658''8704''172'STS_374 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nothing'8658''8704''172'STS_374 = erased
-- Interface.ComputationalRelation._._.recomputeProof
d_recomputeProof_376 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_recomputeProof_376 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_recomputeProof_376 v4
du_recomputeProof_376 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_recomputeProof_376 v0 v1 v2 v3 v4 v5
  = coe du_recomputeProof_174 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.≡-just⇔STS
d_'8801''45'just'8660'STS_378 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_928
d_'8801''45'just'8660'STS_378 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'8801''45'just'8660'STS_378 v4
du_'8801''45'just'8660'STS_378 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_928
du_'8801''45'just'8660'STS_378 v0 v1 v2 v3 v4
  = coe du_'8801''45'just'8660'STS_108 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.completeness
d_completeness_382 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_382 = erased
-- Interface.ComputationalRelation._._.computeProof
d_computeProof_384 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeProof_384 v0 = coe d_computeProof_88 (coe v0)
-- Interface.ComputationalRelation._._.compute
d_compute_386 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  T_Computational_50 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Maybe AgdaAny
d_compute_386 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_compute_386 v5
du_compute_386 ::
  T_Computational_50 ->
  AgdaAny -> AgdaAny -> AgdaAny -> Maybe AgdaAny
du_compute_386 v0 = coe du_compute_90 (coe v0)
-- Interface.ComputationalRelation._._.nothing⇒∀¬STS
d_nothing'8658''8704''172'STS_388 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_nothing'8658''8704''172'STS_388 = erased
-- Interface.ComputationalRelation._._.recomputeProof
d_recomputeProof_390 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_recomputeProof_390 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_recomputeProof_390 v5
du_recomputeProof_390 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_recomputeProof_390 v0 v1 v2 v3 v4 v5
  = coe du_recomputeProof_174 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.≡-just⇔STS
d_'8801''45'just'8660'STS_392 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_928
d_'8801''45'just'8660'STS_392 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8801''45'just'8660'STS_392 v5
du_'8801''45'just'8660'STS_392 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_928
du_'8801''45'just'8660'STS_392 v0 v1 v2 v3 v4
  = coe du_'8801''45'just'8660'STS_108 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._.compute-ext≡
d_compute'45'ext'8801'_394 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_compute'45'ext'8801'_394 = erased
-- Interface.ComputationalRelation.Computational⇒Dec'
d_Computational'8658'Dec''_402 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Computational'8658'Dec''_402 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 ~v8 v9
  = du_Computational'8658'Dec''_402 v3 v4 v5 v6 v7 v9
du_Computational'8658'Dec''_402 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  T_Computational_50 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Computational'8658'Dec''_402 v0 v1 v2 v3 v4 v5
  = coe
      du_Computational'8658'Dec_282 (coe v5) (coe v0) (coe v1) (coe v2)
      (coe v3) (coe v4)
-- Interface.ComputationalRelation._.completeness
d_completeness_408 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_408 = erased
-- Interface.ComputationalRelation._.computeProof
d_computeProof_412 ::
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeProof_412 v0 = coe d_computeProof_88 (coe v0)
-- Interface.ComputationalRelation.Computational-Id
d_Computational'45'Id_424 :: () -> () -> T_Computational_50
d_Computational'45'Id_424 ~v0 ~v1 = du_Computational'45'Id_424
du_Computational'45'Id_424 :: T_Computational_50
du_Computational'45'Id_424
  = coe
      C_MkComputational_176
      (\ v0 v1 v2 ->
         coe
           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
              (coe MAlonzo.Code.Interface.STS.C_Id'45'nop_94)))
-- Interface.ComputationalRelation._._.Computational-SS⇒BSᵇ
d_Computational'45'SS'8658'BS'7495'_450 ::
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_50 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 -> T_Computational_50
d_Computational'45'SS'8658'BS'7495'_450 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
  = du_Computational'45'SS'8658'BS'7495'_450 v3 v6
du_Computational'45'SS'8658'BS'7495'_450 ::
  T_Computational_50 -> T_Computational_50 -> T_Computational_50
du_Computational'45'SS'8658'BS'7495'_450 v0 v1
  = coe
      C_MkComputational_176
      (\ v2 v3 v4 ->
         case coe v4 of
           []
             -> coe
                  MAlonzo.Code.Interface.Functor.du_map_30
                  MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162 () erased ()
                  erased
                  (coe
                     MAlonzo.Code.Interface.Bifunctor.du_map'8322''8242'_60
                     (coe MAlonzo.Code.Interface.Bifunctor.du_Bifunctor'45'Σ_78)
                     (\ v5 v6 -> coe MAlonzo.Code.Interface.STS.C_BS'45'base_60 v6))
                  (coe
                     d_computeProof_88 v0 v2 v3
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
           (:) v5 v6
             -> coe
                  MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__76
                  (coe d_computeProof_88 v1 v2 v3 v5)
                  (coe
                     du_'46'extendedlambda0_468 (coe v0) (coe v1) (coe v2) (coe v6))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._._._..extendedlambda0
d_'46'extendedlambda0_468 ::
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_50 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'extendedlambda0_468 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 ~v8 ~v9 v10
                          v11
  = du_'46'extendedlambda0_468 v3 v6 v7 v10 v11
du_'46'extendedlambda0_468 ::
  T_Computational_50 ->
  T_Computational_50 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'46'extendedlambda0_468 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__76
             (coe
                d_computeProof_88
                (coe du_Computational'45'SS'8658'BS'7495'_450 (coe v0) (coe v1)) v2
                v5 v3)
             (coe
                (\ v7 ->
                   case coe v7 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                               (coe MAlonzo.Code.Interface.STS.C_BS'45'ind_62 v5 v6 v9))
                     _ -> MAlonzo.RTE.mazUnreachableError))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation._._.Computational-SS⇒BSᵢᵇ
d_Computational'45'SS'8658'BS'7522''7495'_572 ::
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_50 ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 -> T_Computational_50
d_Computational'45'SS'8658'BS'7522''7495'_572 ~v0 ~v1 ~v2 v3 ~v4
                                              ~v5 v6
  = du_Computational'45'SS'8658'BS'7522''7495'_572 v3 v6
du_Computational'45'SS'8658'BS'7522''7495'_572 ::
  T_Computational_50 -> T_Computational_50 -> T_Computational_50
du_Computational'45'SS'8658'BS'7522''7495'_572 v0 v1
  = coe
      C_MkComputational_176
      (\ v2 v3 v4 ->
         case coe v4 of
           []
             -> coe
                  MAlonzo.Code.Interface.Functor.du_map_30
                  MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162 () erased ()
                  erased
                  (coe
                     MAlonzo.Code.Interface.Bifunctor.du_map'8322''8242'_60
                     (coe MAlonzo.Code.Interface.Bifunctor.du_Bifunctor'45'Σ_78)
                     (\ v5 v6 -> coe MAlonzo.Code.Interface.STS.C_BS'45'base_80 v6))
                  (coe
                     d_computeProof_88 v0 v2 v3
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
           (:) v5 v6
             -> coe
                  MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__76
                  (coe
                     d_computeProof_88 v1
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                        (coe MAlonzo.Code.Data.List.Base.du_length_304 v6))
                     v3 v5)
                  (coe
                     du_'46'extendedlambda0_590 (coe v0) (coe v1) (coe v2) (coe v6))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._._._..extendedlambda0
d_'46'extendedlambda0_590 ::
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_50 ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'extendedlambda0_590 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 ~v8 ~v9 v10
                          v11
  = du_'46'extendedlambda0_590 v3 v6 v7 v10 v11
du_'46'extendedlambda0_590 ::
  T_Computational_50 ->
  T_Computational_50 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'46'extendedlambda0_590 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__76
             (coe
                d_computeProof_88
                (coe
                   du_Computational'45'SS'8658'BS'7522''7495'_572 (coe v0) (coe v1))
                v2 v5 v3)
             (coe
                (\ v7 ->
                   case coe v7 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                               (coe MAlonzo.Code.Interface.STS.C_BS'45'ind_82 v5 v6 v9))
                     _ -> MAlonzo.RTE.mazUnreachableError))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation.Computational-SS⇒BS
d_Computational'45'SS'8658'BS_686 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 -> T_Computational_50
d_Computational'45'SS'8658'BS_686 ~v0 ~v1 ~v2 ~v3 v4
  = du_Computational'45'SS'8658'BS_686 v4
du_Computational'45'SS'8658'BS_686 ::
  T_Computational_50 -> T_Computational_50
du_Computational'45'SS'8658'BS_686 v0
  = coe
      du_Computational'45'SS'8658'BS'7495'_450
      (coe du_Computational'45'Id_424) (coe v0)
-- Interface.ComputationalRelation.Computational-SS⇒BSᵢ
d_Computational'45'SS'8658'BS'7522'_690 ::
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_50 -> T_Computational_50
d_Computational'45'SS'8658'BS'7522'_690 ~v0 ~v1 ~v2 ~v3 v4
  = du_Computational'45'SS'8658'BS'7522'_690 v4
du_Computational'45'SS'8658'BS'7522'_690 ::
  T_Computational_50 -> T_Computational_50
du_Computational'45'SS'8658'BS'7522'_690 v0
  = coe
      du_Computational'45'SS'8658'BS'7522''7495'_572
      (coe du_Computational'45'Id_424) (coe v0)
