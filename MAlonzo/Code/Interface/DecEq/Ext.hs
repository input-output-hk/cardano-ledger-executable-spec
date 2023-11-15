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

module MAlonzo.Code.Interface.DecEq.Ext where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.List.Membership.DecSetoid
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.DecRel
import qualified MAlonzo.Code.Interface.Decidable.Instance
import qualified MAlonzo.Code.Reflection.AST.Argument.Visibility
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Interface.DecEq.Ext.DecEq-Bool
d_DecEq'45'Bool_6 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Bool_6
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946)
-- Interface.DecEq.Ext.DecEq-ℚ
d_DecEq'45'ℚ_12 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ℚ_12
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe MAlonzo.Code.Data.Rational.Properties.d__'8799'__2550)
-- Interface.DecEq.Ext.DecEq-Vis
d_DecEq'45'Vis_18 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Vis_18
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (coe MAlonzo.Code.Reflection.AST.Argument.Visibility.d__'8799'__8)
-- Interface.DecEq.Ext._._._∼?_
d__'8764''63'__40 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8764''63'__40 v0
  = coe MAlonzo.Code.Interface.DecEq.d__'8799'__20 (coe v0)
-- Interface.DecEq.Ext._._._∼ᵇ_
d__'8764''7495'__42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny -> AgdaAny -> Bool
d__'8764''7495'__42 v0 ~v1 v2 = du__'8764''7495'__42 v0 v2
du__'8764''7495'__42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny -> AgdaAny -> Bool
du__'8764''7495'__42 v0 v1
  = coe
      MAlonzo.Code.Interface.DecRel.du__'8764''7495'__22 (coe v0)
      (coe
         MAlonzo.Code.Interface.DecRel.C_DecRel'46'constructor_307
         (coe MAlonzo.Code.Interface.DecEq.d__'8799'__20 (coe v1)))
-- Interface.DecEq.Ext._.≡ᵇ-refl
d_'8801''7495''45'refl_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8801''7495''45'refl_46 = erased
-- Interface.DecEq.Ext._._._∈?_
d__'8712''63'__64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63'__64 ~v0 ~v1 v2 = du__'8712''63'__64 v2
du__'8712''63'__64 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8712''63'__64 v0
  = let v1 = MAlonzo.Code.Interface.DecEq.d__'8799'__20 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Data.List.Membership.DecSetoid.du__'8712''63'__58
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
            (coe v1)))
-- Interface.DecEq.Ext._._._∉?_
d__'8713''63'__66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8713''63'__66 ~v0 ~v1 v2 = du__'8713''63'__66 v2
du__'8713''63'__66 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8713''63'__66 v0
  = let v1 = MAlonzo.Code.Interface.DecEq.d__'8799'__20 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Data.List.Membership.DecSetoid.du__'8713''63'__66
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
            (coe v1)))
-- Interface.DecEq.Ext._.Dec-∈ˡ
d_Dec'45''8712''737'_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''737'_68 ~v0 ~v1 v2 = du_Dec'45''8712''737'_68 v2
du_Dec'45''8712''737'_68 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45''8712''737'_68 v0
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_Decidable'178''8658'Dec_116
      (coe
         MAlonzo.Code.Data.List.Membership.DecSetoid.du__'8712''63'__58
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
            (coe MAlonzo.Code.Interface.DecEq.d__'8799'__20 (coe v0))))
-- Interface.DecEq.Ext._._∈ˡᵇ_
d__'8712''737''7495'__70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny -> [AgdaAny] -> Bool
d__'8712''737''7495'__70 v0 ~v1 v2
  = du__'8712''737''7495'__70 v0 v2
du__'8712''737''7495'__70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny -> [AgdaAny] -> Bool
du__'8712''737''7495'__70 v0 v1
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8322'__92
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.d_'8970'_'8971'_106 v0
              erased))
      (coe
         MAlonzo.Code.Data.List.Membership.DecSetoid.du__'8712''63'__58
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
            (coe MAlonzo.Code.Interface.DecEq.d__'8799'__20 (coe v1))))
-- Interface.DecEq.Ext.↔-DecEq
d_'8596''45'DecEq_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_'8596''45'DecEq_72 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_'8596''45'DecEq_72 v4 v5
du_'8596''45'DecEq_72 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_'8596''45'DecEq_72 v0 v1
  = coe
      MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63
      (case coe v1 of
         MAlonzo.Code.Interface.DecEq.C_DecEq'46'constructor_63 v2
           -> coe
                (\ v3 v4 ->
                   coe
                     MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
                     (coe
                        MAlonzo.Code.Function.Bundles.C_Equivalence'46'constructor_25777
                        erased
                        (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_1978 v0 v3 v4)
                        erased erased)
                     (coe
                        v2 (coe MAlonzo.Code.Function.Bundles.d_from_1974 v0 v3)
                        (coe MAlonzo.Code.Function.Bundles.d_from_1974 v0 v4)))
         _ -> MAlonzo.RTE.mazUnreachableError)
