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

module MAlonzo.Code.Ledger.Set.Theory where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Factor
import qualified MAlonzo.Code.Axiom.Set.List
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Axiom.Set.TotalMap
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Structures
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Set.Theory.List-Model
d_List'45'Model_6 :: MAlonzo.Code.Axiom.Set.T_Theory_82
d_List'45'Model_6
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model_6
-- Ledger.Set.Theory.List-Modelᶠ
d_List'45'Model'7584'_8 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7584'_728
d_List'45'Model'7584'_8
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model'7584'_58
-- Ledger.Set.Theory.List-Modelᵈ
d_List'45'Model'7496'_10 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1266
d_List'45'Model'7496'_10
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model'7496'_206
-- Ledger.Set.Theory._._Preservesˢ_
d__Preserves'738'__14 ::
  () ->
  () -> ([AgdaAny] -> [AgdaAny]) -> (() -> [AgdaAny] -> ()) -> ()
d__Preserves'738'__14 = erased
-- Ledger.Set.Theory._._Preservesˢ₂_
d__Preserves'738''8322'__16 ::
  () ->
  () ->
  () ->
  ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) ->
  (() -> [AgdaAny] -> ()) -> ()
d__Preserves'738''8322'__16 = erased
-- Ledger.Set.Theory._._∈?_
d__'8712''63'__18 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63'__18
  = coe
      MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._._∈ᵇ_
d__'8712''7495'__20 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny -> [AgdaAny] -> Bool
d__'8712''7495'__20 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8712''7495'__1568
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._._∪_
d__'8746'__22 :: () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8746'__22
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'8746'__662
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v2 v3)
-- Ledger.Set.Theory._._≡ᵉ_
d__'8801''7497'__24 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801''7497'__24 = erased
-- Ledger.Set.Theory._._≡ᵉ'_
d__'8801''7497'''__26 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801''7497'''__26 = erased
-- Ledger.Set.Theory._._≡ᵉ?_
d__'8801''7497''63'__28 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8801''7497''63'__28 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8801''7497''63'__1588
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._._⊆_
d__'8838'__30 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__30 = erased
-- Ledger.Set.Theory._.All
d_All_32 :: () -> (AgdaAny -> ()) -> [AgdaAny] -> ()
d_All_32 = erased
-- Ledger.Set.Theory._.Any
d_Any_34 :: () -> (AgdaAny -> ()) -> [AgdaAny] -> ()
d_Any_34 = erased
-- Ledger.Set.Theory._.Dec-All
d_Dec'45'All_36 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'All_36 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45'All_1646
      (coe d_List'45'Model'7496'_10) v1 v3 v4
-- Ledger.Set.Theory._.Dec-Any
d_Dec'45'Any_38 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'Any_38 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45'Any_1650
      (coe d_List'45'Model'7496'_10) v1 v3 v4
-- Ledger.Set.Theory._.Dec-∈
d_Dec'45''8712'_40 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712'_40 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1578
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_42 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_42 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_DecEq'8743'finite'8658'strongly'45'finite_300
      v1 v3
-- Ledger.Set.Theory._.FinSet
d_FinSet_44 :: () -> ()
d_FinSet_44 = erased
-- Ledger.Set.Theory._.all?
d_all'63'_46 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_46
  = coe
      MAlonzo.Code.Axiom.Set.d_all'63'_1550
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.allᵇ
d_all'7495'_48 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Bool
d_all'7495'_48 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_all'7495'_1664
      (coe d_List'45'Model'7496'_10) v1 v3 v4
-- Ledger.Set.Theory._.any?
d_any'63'_50 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_50
  = coe
      MAlonzo.Code.Axiom.Set.d_any'63'_1558
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.anyᵇ
d_any'7495'_52 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Bool
d_any'7495'_52 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_any'7495'_1668
      (coe d_List'45'Model'7496'_10) v1 v3 v4
-- Ledger.Set.Theory._.binary-unions
d_binary'45'unions_54 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_54
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_binary'45'unions_626
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.card
d_card_56 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_56 v0 v1 = coe MAlonzo.Code.Axiom.Set.du_card_318 v1
-- Ledger.Set.Theory._.card-∅
d_card'45''8709'_58 ::
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_58 = erased
-- Ledger.Set.Theory._.concatMapˢ
d_concatMap'738'_60 ::
  () -> () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d_concatMap'738'_60
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_concatMap'738'_490
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v3 v4)
-- Ledger.Set.Theory._.disjoint
d_disjoint_62 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d_disjoint_62 = erased
-- Ledger.Set.Theory._.filter
d_filter_64 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
d_filter_64
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_filter_402
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)))
-- Ledger.Set.Theory._.finite
d_finite_66 :: () -> [AgdaAny] -> ()
d_finite_66 = erased
-- Ledger.Set.Theory._.fromList
d_fromList_68 :: () -> [AgdaAny] -> [AgdaAny]
d_fromList_68
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_fromList_410
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v2)
-- Ledger.Set.Theory._.incl-set
d_incl'45'set_70 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_incl'45'set_70 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set_1704
      (coe d_List'45'Model'7496'_10) v1 v2
-- Ledger.Set.Theory._.incl-set'
d_incl'45'set''_72 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set''_72 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set''_1678
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._.incl-set-proj₁
d_incl'45'set'45'proj'8321'_74 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set'45'proj'8321'_74 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321'_1764
      (coe d_List'45'Model'7496'_10) v1 v2
-- Ledger.Set.Theory._.incl-set-proj₁⊆
d_incl'45'set'45'proj'8321''8838'_76 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_incl'45'set'45'proj'8321''8838'_76 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321''8838'_1714
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4
-- Ledger.Set.Theory._.incl-set-proj₁⊇
d_incl'45'set'45'proj'8321''8839'_78 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_incl'45'set'45'proj'8321''8839'_78 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321''8839'_1726
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4
-- Ledger.Set.Theory._.isMaximal
d_isMaximal_80 :: () -> [AgdaAny] -> ()
d_isMaximal_80 = erased
-- Ledger.Set.Theory._.listing
d_listing_82 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_82
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_listing_204
         (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)))
-- Ledger.Set.Theory._.mapPartial
d_mapPartial_84 ::
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_mapPartial_84
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_mapPartial_558
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v3)
-- Ledger.Set.Theory._.map
d_map_86 ::
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_map_86
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_map_380
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)))
-- Ledger.Set.Theory._.maximal-unique
d_maximal'45'unique_88 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_88 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.du_maximal'45'unique_342 v3 v4
-- Ledger.Set.Theory._.maximal-⊆
d_maximal'45''8838'_90 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_maximal'45''8838'_90 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.du_maximal'45''8838'_338 v3 v4
-- Ledger.Set.Theory._.partialToSet
d_partialToSet_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> [AgdaAny]
d_partialToSet_92
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_partialToSet_454
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v4 v5)
-- Ledger.Set.Theory._.replacement
d_replacement_94 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_94
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_replacement_196
         (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)))
-- Ledger.Set.Theory._.singleton
d_singleton_96 :: () -> AgdaAny -> [AgdaAny]
d_singleton_96
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_singleton_430
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v2)
-- Ledger.Set.Theory._.sp
d_sp_98 :: MAlonzo.Code.Axiom.Set.T_SpecProperty_48
d_sp_98
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp_150
         (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)))
-- Ledger.Set.Theory._.sp-¬
d_sp'45''172'_100 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sp'45''172'_100
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
         (coe
            MAlonzo.Code.Axiom.Set.d_sp_150
            (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0))))
-- Ledger.Set.Theory._.sp-∘
d_sp'45''8728'_102 ::
  () ->
  (AgdaAny -> ()) ->
  () ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sp'45''8728'_102
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (coe
            MAlonzo.Code.Axiom.Set.d_sp_150
            (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0))))
-- Ledger.Set.Theory._.spec-∈
d_spec'45''8712'_104 :: () -> ()
d_spec'45''8712'_104 = erased
-- Ledger.Set.Theory._.specProperty
d_specProperty_106 :: () -> (AgdaAny -> ()) -> ()
d_specProperty_106 = erased
-- Ledger.Set.Theory._.specification
d_specification_108 ::
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_108
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_specification_174
         (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)))
-- Ledger.Set.Theory._.strictify
d_strictify_110 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_110
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_strictify_360
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v3 v4)
-- Ledger.Set.Theory._.strongly-finite
d_strongly'45'finite_112 :: () -> [AgdaAny] -> ()
d_strongly'45'finite_112 = erased
-- Ledger.Set.Theory._.th
d_th_114 :: MAlonzo.Code.Axiom.Set.T_Theory_82
d_th_114
  = coe
      MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.unions
d_unions_116 ::
  () -> [[AgdaAny]] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_116
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_unions_184
         (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)))
-- Ledger.Set.Theory._.weakly-finite
d_weakly'45'finite_118 :: () -> [AgdaAny] -> ()
d_weakly'45'finite_118 = erased
-- Ledger.Set.Theory._.Set
d_Set_120 :: () -> ()
d_Set_120 = erased
-- Ledger.Set.Theory._.∅
d_'8709'_122 :: () -> [AgdaAny]
d_'8709'_122
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709'_424
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)))
-- Ledger.Set.Theory._.∅-strongly-finite
d_'8709''45'strongly'45'finite_124 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_124
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709''45'strongly'45'finite_426
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)))
-- Ledger.Set.Theory._.∈-concatMapˢ
d_'8712''45'concatMap'738'_126 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_126
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'concatMap'738'_502
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-filter
d_'8712''45'filter_128 ::
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_128
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-fromList
d_'8712''45'fromList_130 ::
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_130
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-irrelevant
d_'8712''45'irrelevant_132 :: () -> [AgdaAny] -> ()
d_'8712''45'irrelevant_132 = erased
-- Ledger.Set.Theory._.∈-map
d_'8712''45'map_134 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_134
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map_388
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-mapPartial
d_'8712''45'mapPartial_136 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_136
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'mapPartial_568
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-map′
d_'8712''45'map'8242'_138 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8242'_138
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_394
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v3 v4 v5 v6)
-- Ledger.Set.Theory._.∈-partialToSet
d_'8712''45'partialToSet_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_140
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'partialToSet_466
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v5)
-- Ledger.Set.Theory._.∈-singleton
d_'8712''45'singleton_142 ::
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_142
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_440
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-sp
d_'8712''45'sp_144 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8712''45'sp_144
  = coe
      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.∈-unions
d_'8712''45'unions_146 ::
  () ->
  AgdaAny ->
  [[AgdaAny]] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_146
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'unions_422
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-∪
d_'8712''45''8746'_148 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_148
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.≡→∈
d_'8801''8594''8712'_150 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8801''8594''8712'_150 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'8801''8594''8712'_150 v4
du_'8801''8594''8712'_150 ::
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8801''8594''8712'_150 v0 = coe v0
-- Ledger.Set.Theory._.⊆-mapPartial
d_'8838''45'mapPartial_152 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> Maybe AgdaAny) ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'mapPartial_152
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_586
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v3 v4 v5 v6)
-- Ledger.Set.Theory._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_154 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_154 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_'8838''45'weakly'45'finite_322 v3 v4
-- Ledger.Set.Theory._.❴_❵
d_'10100'_'10101'_156 :: () -> AgdaAny -> [AgdaAny]
d_'10100'_'10101'_156
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
         (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)))
-- Ledger.Set.Theory._.Intersection._∩_
d__'8745'__160 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8745'__160
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'8745'__686
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.Intersection.disjoint'
d_disjoint''_162 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> ()
d_disjoint''_162 = erased
-- Ledger.Set.Theory._.Intersection.∈-∩
d_'8712''45''8745'_164 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_164
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694
           (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v0)) v2 v3 v4 v5)
-- Ledger.Set.Theory._._∈_
d__'8712'__168 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_424 ->
  AgdaAny -> AgdaAny -> ()
d__'8712'__168 = erased
-- Ledger.Set.Theory._._∉_
d__'8713'__170 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_424 ->
  AgdaAny -> AgdaAny -> ()
d__'8713'__170 = erased
-- Ledger.Set.Theory._.All-syntax
d_All'45'syntax_172 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_424 ->
  (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_172 = erased
-- Ledger.Set.Theory._.IsSet
d_IsSet_174 a0 a1 = ()
-- Ledger.Set.Theory._.IsSet-Map
d_IsSet'45'Map_176 ::
  () -> () -> MAlonzo.Code.Interface.IsSet.T_IsSet_424
d_IsSet'45'Map_176 v0 v1
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486
-- Ledger.Set.Theory._.IsSet-Set
d_IsSet'45'Set_178 ::
  () -> MAlonzo.Code.Interface.IsSet.T_IsSet_424
d_IsSet'45'Set_178 v0
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_482
-- Ledger.Set.Theory._.IsSet-TotalMap
d_IsSet'45'TotalMap_180 ::
  () -> () -> MAlonzo.Code.Interface.IsSet.T_IsSet_424
d_IsSet'45'TotalMap_180 v0 v1
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'TotalMap_488
-- Ledger.Set.Theory._.dom
d_dom_182 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_424 -> AgdaAny -> [AgdaAny]
d_dom_182 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Interface.IsSet.du_dom_478
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.range
d_range_184 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_424 -> AgdaAny -> [AgdaAny]
d_range_184 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Interface.IsSet.du_range_480
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.toSet
d_toSet_186 ::
  MAlonzo.Code.Interface.IsSet.T_IsSet_424 -> AgdaAny -> [AgdaAny]
d_toSet_186 v0
  = coe MAlonzo.Code.Interface.IsSet.d_toSet_432 (coe v0)
-- Ledger.Set.Theory._.IsSet._∈_
d__'8712'__190 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_424 ->
  AgdaAny -> AgdaAny -> ()
d__'8712'__190 = erased
-- Ledger.Set.Theory._.IsSet._∉_
d__'8713'__192 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_424 ->
  AgdaAny -> AgdaAny -> ()
d__'8713'__192 = erased
-- Ledger.Set.Theory._.IsSet.toSet
d_toSet_194 ::
  MAlonzo.Code.Interface.IsSet.T_IsSet_424 -> AgdaAny -> [AgdaAny]
d_toSet_194 v0
  = coe MAlonzo.Code.Interface.IsSet.d_toSet_432 (coe v0)
-- Ledger.Set.Theory._.card-≡ᵉ
d_card'45''8801''7497'_198 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_198 = erased
-- Ledger.Set.Theory.to-sp
d_to'45'sp_204 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_to'45'sp_204 ~v0 ~v1 v2 = du_to'45'sp_204 v2
du_to'45'sp_204 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_to'45'sp_204 v0 = coe v0
-- Ledger.Set.Theory.finiteness
d_finiteness_210 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_finiteness_210 ~v0 = du_finiteness_210
du_finiteness_210 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_finiteness_210
  = coe
      MAlonzo.Code.Axiom.Set.d_finiteness_988 d_List'45'Model'7584'_8
      erased
-- Ledger.Set.Theory.lengthˢ
d_length'738'_220 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_424 -> AgdaAny -> Integer
d_length'738'_220 ~v0 ~v1 v2 v3 v4 = du_length'738'_220 v2 v3 v4
du_length'738'_220 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_424 -> AgdaAny -> Integer
du_length'738'_220 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_length'738'_996
      (coe d_List'45'Model'7584'_8) (coe v0)
      (coe MAlonzo.Code.Interface.IsSet.d_toSet_432 v1 v2)
-- Ledger.Set.Theory.lengthˢ-≡ᵉ
d_length'738''45''8801''7497'_236 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_424 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'738''45''8801''7497'_236 = erased
-- Ledger.Set.Theory.lengthˢ-∅
d_length'738''45''8709'_248 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'738''45''8709'_248 = erased
-- Ledger.Set.Theory.setToList
d_setToList_252 :: () -> [AgdaAny] -> [AgdaAny]
d_setToList_252 ~v0 v1 = du_setToList_252 v1
du_setToList_252 :: [AgdaAny] -> [AgdaAny]
du_setToList_252 v0 = coe v0
-- Ledger.Set.Theory.DecEq-ℙ
d_DecEq'45'ℙ_258 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ℙ_258 ~v0 v1 = du_DecEq'45'ℙ_258 v1
du_DecEq'45'ℙ_258 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'ℙ_258 v0
  = coe MAlonzo.Code.Axiom.Set.List.du_DecEq'45'Set_204 (coe v0)
-- Ledger.Set.Theory._.Rel
d_Rel_262 :: () -> () -> ()
d_Rel_262 = erased
-- Ledger.Set.Theory._.disjoint-dom⇒disjoint
d_disjoint'45'dom'8658'disjoint_264 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'dom'8658'disjoint_264 = erased
-- Ledger.Set.Theory._.dom-mapʳ⊆
d_dom'45'map'691''8838'_266 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'map'691''8838'_266 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'map'691''8838'_430
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6
-- Ledger.Set.Theory._.dom-∅
d_dom'45''8709'_268 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45''8709'_268 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8709'_458
-- Ledger.Set.Theory._.dom-⊆mapʳ
d_dom'45''8838'map'691'_270 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45''8838'map'691'_270 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8838'map'691'_406
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6
-- Ledger.Set.Theory._.dom∈
d_dom'8712'_272 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8712'_272 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_378
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.impl⇒cores⊆
d_impl'8658'cores'8838'_274 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_impl'8658'cores'8838'_274 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'cores'8838'_352
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v5 v6 v7 v8 v9
-- Ledger.Set.Theory._.impl⇒res⊆
d_impl'8658'res'8838'_276 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_impl'8658'res'8838'_276 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'res'8838'_330
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v5 v6 v7 v8 v9
-- Ledger.Set.Theory._.mapMaybeWithKey
d_mapMaybeWithKey_278 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_mapMaybeWithKey_278 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_526
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapPartialLiftKey
d_mapPartialLiftKey_280 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_280 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_466 v3 v4
-- Ledger.Set.Theory._.mapPartialLiftKey-map
d_mapPartialLiftKey'45'map_282 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey'45'map_282 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey'45'map_486
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.mapʳ
d_map'691'_284 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'691'_284 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691'_368
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapʳ-dom
d_map'691''45'dom_286 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'691''45'dom_286 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691''45'dom_456
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapˡ
d_map'737'_288 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'737'_288 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'737'_362
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.relatedˡ
d_related'737'_290 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_related'737'_290 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_related'737'_290
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory._.∅ʳ
d_'8709''691'_292 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'8709''691'_292 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8709''691'_292
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory._.∈-mapMaybeWithKey
d_'8712''45'mapMaybeWithKey_294 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'mapMaybeWithKey_294 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'mapMaybeWithKey_542
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.Corestriction._↾_
d__'8638'__298 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8638'__298 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8638'__886
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Corestriction._↾_ᶜ
d__'8638'_'7580'_300 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8638'_'7580'_300 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8638'_'7580'_892
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Corestriction.coex-⊆
d_coex'45''8838'_302 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_coex'45''8838'_302 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_900
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Corestriction.cores-⊆
d_cores'45''8838'_304 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_cores'45''8838'_304 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_898
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restriction._∣_
d__'8739'__308 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__308 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restriction._∣_ᶜ
d__'8739'_'7580'_310 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_310 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restriction._⟪$⟫_
d__'10218''36''10219'__312 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__312 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__570
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restriction.curryʳ
d_curry'691'_314 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_314 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_692
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory._.Restriction.ex-⊆
d_ex'45''8838'_316 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_ex'45''8838'_316 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_656
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restriction.res-comp-cong
d_res'45'comp'45'cong_318 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'comp'45'cong_318 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_614
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restriction.res-comp-dom
d_res'45'comp'45'dom_320 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'comp'45'dom_320 = erased
-- Ledger.Set.Theory._.Restriction.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_322 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'comp'45'dom'7504'_322 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_642
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restriction.res-cong
d_res'45'cong_324 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_324 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_578
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restriction.res-dom
d_res'45'dom_326 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom_326 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_588
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restriction.res-dom-comm
d_res'45'dom'45'comm_328 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_328 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_830
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory._.Restriction.res-dom-comm'
d_res'45'dom'45'comm''_330 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_330 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_824
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory._.Restriction.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_332 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8745''8838'_332 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_776
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7
-- Ledger.Set.Theory._.Restriction.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_334 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8838''8745'_334 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_768
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7
-- Ledger.Set.Theory._.Restriction.res-domᵐ
d_res'45'dom'7504'_336 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'7504'_336 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_600
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restriction.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_338 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45'disj'45''8746'_338 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_684
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5
-- Ledger.Set.Theory._.Restriction.res-ex-disjoint
d_res'45'ex'45'disjoint_340 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'ex'45'disjoint_340 = erased
-- Ledger.Set.Theory._.Restriction.res-ex-∪
d_res'45'ex'45''8746'_342 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45''8746'_342 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5
-- Ledger.Set.Theory._.Restriction.res-∅
d_res'45''8709'_344 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_344 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_658
-- Ledger.Set.Theory._.Restriction.res-⊆
d_res'45''8838'_346 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45''8838'_346 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_654
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restriction.∈-curryʳ
d_'8712''45'curry'691'_348 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'curry'691'_348 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_704
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7 v8
-- Ledger.Set.Theory._._ˢ
d__'738'_352 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'738'_352 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du__'738'_462 v2
-- Ledger.Set.Theory._._ᵐ
d__'7504'_354 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7504'_354 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du__'7504'_466 v2
-- Ledger.Set.Theory._._↾'_
d__'8638'''__356 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8638'''__356 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8638'''__956
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.Map
d_Map_358 :: () -> () -> ()
d_Map_358 = erased
-- Ledger.Set.Theory._._∣'_
d__'8739'''__360 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'''__360 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'''__948
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._._≡ᵉᵐ_
d__'8801''7497''7504'__362 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7497''7504'__362 = erased
-- Ledger.Set.Theory._._≡ᵐ_
d__'8801''7504'__364 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7504'__364 = erased
-- Ledger.Set.Theory._.FinMap
d_FinMap_366 :: () -> () -> ()
d_FinMap_366 = erased
-- Ledger.Set.Theory._.InjectiveOn
d_InjectiveOn_368 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> ()
d_InjectiveOn_368 = erased
-- Ledger.Set.Theory._.IsLeftUnique
d_IsLeftUnique_370 a0 a1 a2 = ()
-- Ledger.Set.Theory._.constMap
d_constMap_372 ::
  () ->
  () ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap_372 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap_962
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.disj-dom
d_disj'45'dom_374 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disj'45'dom_374 = erased
-- Ledger.Set.Theory._.disj-∪
d_disj'45''8746'_376 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disj'45''8746'_376 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disj'45''8746'_600
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.filterKeys
d_filterKeys_378 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_378 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filterKeys_646
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3
-- Ledger.Set.Theory._.filterᵐ
d_filter'7504'_380 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_380 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_632
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.filterᵐ-finite
d_filter'7504''45'finite_382 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'finite_382 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504''45'finite_642
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory._.fromListᵐ
d_fromList'7504'_384 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'7504'_384 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.left-unique
d_left'45'unique_386 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_left'45'unique_386 = erased
-- Ledger.Set.Theory._.left-unique-mapˢ
d_left'45'unique'45'map'738'_388 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'map'738'_388 = erased
-- Ledger.Set.Theory._.mapKeys
d_mapKeys_390 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapKeys_390 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_834
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapMaybeWithKeyᵐ
d_mapMaybeWithKey'7504'_392 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapMaybeWithKey'7504'_392 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1018
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapPartial-uniq
d_mapPartial'45'uniq_394 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mapPartial'45'uniq_394 = erased
-- Ledger.Set.Theory._.mapPartialLiftKey-just-uniq
d_mapPartialLiftKey'45'just'45'uniq_396 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mapPartialLiftKey'45'just'45'uniq_396 = erased
-- Ledger.Set.Theory._.mapValues
d_mapValues_398 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues_398 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues_876
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapValues-dom
d_mapValues'45'dom_400 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues'45'dom_400 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues'45'dom_944
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapWithKey
d_mapWithKey_402 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapWithKey_402 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_926
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapWithKey-uniq
d_mapWithKey'45'uniq_404 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mapWithKey'45'uniq_404 = erased
-- Ledger.Set.Theory._.mapʳ-uniq
d_map'691''45'uniq_406 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'691''45'uniq_406 = erased
-- Ledger.Set.Theory._.mapˡ-uniq
d_map'737''45'uniq_408 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'737''45'uniq_408 = erased
-- Ledger.Set.Theory._.mapˡ∘map⦅×-dup⦆-uniq
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_410 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_410 = erased
-- Ledger.Set.Theory._.map⦅×-dup⦆-uniq
d_map'10629''215''45'dup'10630''45'uniq_412 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'10629''215''45'dup'10630''45'uniq_412 = erased
-- Ledger.Set.Theory._.singletonᵐ
d_singleton'7504'_414 ::
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'7504'_414 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_650
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.toFinMap
d_toFinMap_416 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toFinMap_416 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du_toFinMap_524 v2 v3
-- Ledger.Set.Theory._.toMap
d_toMap_418 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_418 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toMap_532 v2
-- Ledger.Set.Theory._.toRel
d_toRel_420 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_toRel_420 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toRel_538 v2
-- Ledger.Set.Theory._.weaken-Injective
d_weaken'45'Injective_422 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_weaken'45'Injective_422 = erased
-- Ledger.Set.Theory._.ˢ-left-unique
d_'738''45'left'45'unique_424 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_406
d_'738''45'left'45'unique_424 = erased
-- Ledger.Set.Theory._.∅-left-unique
d_'8709''45'left'45'unique_426 ::
  () -> () -> MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_406
d_'8709''45'left'45'unique_426 = erased
-- Ledger.Set.Theory._.∅ᵐ
d_'8709''7504'_428 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''7504'_428 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory._.⊆-left-unique
d_'8838''45'left'45'unique_430 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''45'left'45'unique_430 = erased
-- Ledger.Set.Theory._.⊆-map
d_'8838''45'map_432 ::
  () ->
  () ->
  ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'map_432 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Map.du_'8838''45'map_478 v2 v4
-- Ledger.Set.Theory._.❴_❵ᵐ
d_'10100'_'10101''7504'_434 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'10100'_'10101''7504'_434 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_658
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory._.Corestrictionᵐ._⁻¹_
d__'8315''185'__438 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
d__'8315''185'__438 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1356
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Corestrictionᵐ._↾_
d__'8638'__440 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8638'__440 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8638'__1340
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Corestrictionᵐ._↾_ᶜ
d__'8638'_'7580'_442 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8638'_'7580'_442 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8638'_'7580'_1348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Intersectionᵐ._∩ᵐ_
d__'8745''7504'__446 ::
  () ->
  () ->
  ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__446 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__590
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory._.IsLeftUnique.isLeftUnique
d_isLeftUnique_450 ::
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_406 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isLeftUnique_450 = erased
-- Ledger.Set.Theory._.Lookupᵐ.lookupᵐ
d_lookup'7504'_454 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504'_454 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1314
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory._.Lookupᵐ.lookupᵐ?
d_lookup'7504''63'_456 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  Maybe AgdaAny
d_lookup'7504''63'_456 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1318
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ._∣_
d__'8739'__460 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__460 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1088
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restrictionᵐ._∣_ᶜ
d__'8739'_'7580'_462 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_462 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1096
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restrictionᵐ._⦅_,-⦆
d__'10629'_'44''45''10630'_464 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_464 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1182
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory._.Restrictionᵐ.curryᵐ
d_curry'7504'_466 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_466 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1120
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.mapSingleValue
d_mapSingleValue_468 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_468 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1112
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.mapValueRestricted
d_mapValueRestricted_470 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_470 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1104
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton
d_res'45'singleton_472 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_472 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1134
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton'
d_res'45'singleton''_474 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''_474 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1170
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.update
d_update_476 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_476 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1184
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ._∪ˡ_
d__'8746''737'__480 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__480 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__676
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Unionᵐ._∪ˡ'_
d__'8746''737'''__482 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__482 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__670
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Unionᵐ.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_484 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_484 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_690
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ.insert
d_insert_486 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_486 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_698
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ.insertIfJust
d_insertIfJust_488 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_488 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6
-- Ledger.Set.Theory._.TotalMap
d_TotalMap_492 a0 a1 = ()
-- Ledger.Set.Theory._.total
d_total_494 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_total_494 = erased
-- Ledger.Set.Theory._.FunTot.Fun⇒Map
d_Fun'8658'Map_498 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Fun'8658'Map_498 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'Map_214
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v5 v6
-- Ledger.Set.Theory._.FunTot.Fun⇒TotalMap
d_Fun'8658'TotalMap_500 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54
d_Fun'8658'TotalMap_500 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'TotalMap_224
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v4
-- Ledger.Set.Theory._.FunTot.Fun∈TotalMap
d_Fun'8712'TotalMap_502 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_Fun'8712'TotalMap_502 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8712'TotalMap_234
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6
-- Ledger.Set.Theory._.FunTot.lookup∘Fun⇒TotalMap-id
d_lookup'8728'Fun'8658'TotalMap'45'id_504 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'8728'Fun'8658'TotalMap'45'id_504 = erased
-- Ledger.Set.Theory._.LookupUpdate.lookup-update-id
d_lookup'45'update'45'id_508 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'update'45'id_508 = erased
-- Ledger.Set.Theory._.LookupUpdate.∈-rel-update
d_'8712''45'rel'45'update_510 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'rel'45'update_510 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_'8712''45'rel'45'update_188
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v5 v6 v7
-- Ledger.Set.Theory._.TotalMap.left-unique-rel
d_left'45'unique'45'rel_514 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_514 = erased
-- Ledger.Set.Theory._.TotalMap.lookup
d_lookup_516 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 -> AgdaAny -> AgdaAny
d_lookup_516 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup_74
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.TotalMap.lookup∈rel
d_lookup'8712'rel_518 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup'8712'rel_518 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup'8712'rel_78
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.TotalMap.rel
d_rel_520 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rel_520 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_rel_66 (coe v0)
-- Ledger.Set.Theory._.TotalMap.toMap
d_toMap_522 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_522 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.TotalMap.du_toMap_72 v2
-- Ledger.Set.Theory._.TotalMap.total-rel
d_total'45'rel_524 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_total'45'rel_524 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_total'45'rel_70 (coe v0)
-- Ledger.Set.Theory._.TotalMap.∈-rel⇒lookup-≡
d_'8712''45'rel'8658'lookup'45''8801'_526 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'rel'8658'lookup'45''8801'_526 = erased
-- Ledger.Set.Theory._.Update.mapWithKey
d_mapWithKey_530 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54
d_mapWithKey_530 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_mapWithKey_148
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v4 v5
-- Ledger.Set.Theory._.Update.update
d_update_532 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54
d_update_532 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_update_164
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory._.Update.updateFn-id
d_updateFn'45'id_534 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_updateFn'45'id_534 = erased
-- Ledger.Set.Theory._.fold-cong↭
d_fold'45'cong'8621'_566 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny
d_fold'45'cong'8621'_566 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_fold'45'cong'8621'_686 (coe v0) v2 v3
      v4 v5
-- Ledger.Set.Theory._.indexedSum
d_indexedSum_568 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum_568 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSum_708 (coe v0) v2 v3
-- Ledger.Set.Theory._.indexedSum-cong
d_indexedSum'45'cong_570 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'cong_570 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'cong_810 (coe v0) v2 v3
      v4 v5
-- Ledger.Set.Theory._.indexedSum-singleton
d_indexedSum'45'singleton_572 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_indexedSum'45'singleton_572 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton_838 (coe v0)
      v3 v4
-- Ledger.Set.Theory._.indexedSum-singleton'
d_indexedSum'45'singleton''_574 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'singleton''_574 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton''_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe v0) v2 v3 v4 v5
-- Ledger.Set.Theory._.indexedSum-∅
d_indexedSum'45''8709'_576 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_indexedSum'45''8709'_576 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8709'_816
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe v0) v2 v3
-- Ledger.Set.Theory._.indexedSum-∪
d_indexedSum'45''8746'_578 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_indexedSum'45''8746'_578 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8746'_822 (coe v0) v2
      v3 v6 v7
-- Ledger.Set.Theory._.indexedSumL
d_indexedSumL_580 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSumL_580 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_662 (coe v0) v2
-- Ledger.Set.Theory._.indexedSumL'
d_indexedSumL''_582 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSumL''_582 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL''_670 (coe v0) v2 v3
-- Ledger.Set.Theory._.indexedSumL-++
d_indexedSumL'45''43''43'_584 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny] -> AgdaAny
d_indexedSumL'45''43''43'_584 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL'45''43''43'_734 (coe v0)
      v2 v3 v4
-- Ledger.Set.Theory._.indexedSumᵐ
d_indexedSum'7504'_586 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504'_586 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504'_878 (coe v0) v3 v4
      v5 v6
-- Ledger.Set.Theory._.indexedSumᵐ-cong
d_indexedSum'7504''45'cong_588 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'cong_588 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'cong_892 (coe v0)
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.indexedSumᵛ
d_indexedSum'7515'_590 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'_590 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7515'_886 (coe v0) v3 v4
      v5
-- Ledger.Set.Theory._.IndexedSumUnionᵐ._∪ˡᶠ_
d__'8746''737''7584'__594 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737''7584'__594 ~v0 = du__'8746''737''7584'__594
du__'8746''737''7584'__594 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737''7584'__594 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__934
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_596 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'partition_596 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                    v10 v11
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_984
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe v0) v3 v4 v5 v6 v7 v8 v9 v10 v11
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_598 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_indexedSum'7504''45''8746'_598 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_950
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe v0) v3 v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.∪ˡ-finite
d_'8746''737''45'finite_600 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'finite_600 ~v0 = du_'8746''737''45'finite_600
du_'8746''737''45'finite_600 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'finite_600 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_928
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory._.Lookupᵐᵈ._∪⁺_
d__'8746''8314'__606 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''8314'__606 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__514
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.Lookupᵐᵈ.aggregate₊
d_aggregate'8330'_608 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_608 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_516
      (coe d_List'45'Model'7496'_10) v2 v3 v4
-- Ledger.Set.Theory._.Lookupᵐᵈ.unionThese
d_unionThese_610 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
d_unionThese_610 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_314
      (coe d_List'45'Model'7496'_10) v4 v5 v6 v7 v8
-- Ledger.Set.Theory._.Lookupᵐᵈ.unionWith
d_unionWith_612 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unionWith_612 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_376
      (coe d_List'45'Model'7496'_10) v5 v6 v7 v8
-- Ledger.Set.Theory._._ᶠ
d__'7584'_616 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584'_616 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Factor.du__'7584'_268 v1 v2
-- Ledger.Set.Theory._.∪-preserves-finite'
d_'8746''45'preserves'45'finite''_618 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite''_618 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_'8746''45'preserves'45'finite''_278
      (coe d_List'45'Model_6) v1 v2 v3 v4
-- Ledger.Set.Theory._.Factor.factor
d_factor_622 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor_622 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Factor.du_factor_300 v3 v5
-- Ledger.Set.Theory._.Factor.factor-cong
d_factor'45'cong_624 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor'45'cong_624 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_304 v4 v5 v6 v7
-- Ledger.Set.Theory._.Factor.factor-∪
d_factor'45''8746'_626 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
d_factor'45''8746'_626 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_340 v6 v7 v8 v9
      v10
-- Ledger.Set.Theory._.FactorUnique.deduplicate-Σ
d_deduplicate'45'Σ_630 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deduplicate'45'Σ_630 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_deduplicate'45'Σ_376 v2 v6
-- Ledger.Set.Theory._.FactorUnique.ext
d_ext_632 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  [AgdaAny] -> AgdaAny
d_ext_632 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_ext_380 v2 v4 v6
-- Ledger.Set.Theory._.FactorUnique.ext-cong
d_ext'45'cong_634 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
  AgdaAny
d_ext'45'cong_634 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_386 v2 v5 v6 v7 v8
-- Ledger.Set.Theory._.FactorUnique.f-cong'
d_f'45'cong''_636 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
  AgdaAny
d_f'45'cong''_636 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe MAlonzo.Code.Axiom.Set.Factor.du_f'45'cong''_368 v5 v6 v7 v8
-- Ledger.Set.Theory._.FactorUnique.factor
d_factor_638 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor_638 ~v0 ~v1 v2 ~v3 v4 ~v5 = du_factor_638 v2 v4
du_factor_638 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor_638 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor_300
      (coe MAlonzo.Code.Axiom.Set.Factor.du_ext_380 (coe v0) (coe v1))
-- Ledger.Set.Theory._.FactorUnique.factor-cong
d_factor'45'cong_640 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor'45'cong_640 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_factor'45'cong_640 v2 v5
du_factor'45'cong_640 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor'45'cong_640 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_304
      (coe
         MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_386 (coe v0) (coe v1))
-- Ledger.Set.Theory._.FactorUnique.factor-∪
d_factor'45''8746'_642 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
d_factor'45''8746'_642 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_factor'45''8746'_642
du_factor'45''8746'_642 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
du_factor'45''8746'_642 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_340 v1 v2 v3 v4
      v5
-- Ledger.Set.Theory._.FactorUnique.factor-∪'
d_factor'45''8746'''_644 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
d_factor'45''8746'''_644 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_422 v9 v10 v12
-- Ledger.Set.Theory._._._∣_
d__'8739'__656 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__656 ~v0 v1 = du__'8739'__656 v1
du__'8739'__656 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'__656 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣_ᶜ
d__'8739'_'7580'_658 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_658 ~v0 v1 = du__'8739'_'7580'_658 v1
du__'8739'_'7580'_658 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'_'7580'_658 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._⟪$⟫_
d__'10218''36''10219'__660 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__660 ~v0 v1 = du__'10218''36''10219'__660 v1
du__'10218''36''10219'__660 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
du__'10218''36''10219'__660 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__570
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._.curryʳ
d_curry'691'_662 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_662 ~v0 v1 = du_curry'691'_662 v1
du_curry'691'_662 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_curry'691'_662 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_692
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.ex-⊆
d_ex'45''8838'_664 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_ex'45''8838'_664 ~v0 v1 = du_ex'45''8838'_664 v1
du_ex'45''8838'_664 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_ex'45''8838'_664 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_656
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-comp-cong
d_res'45'comp'45'cong_666 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'comp'45'cong_666 ~v0 v1 = du_res'45'comp'45'cong_666 v1
du_res'45'comp'45'cong_666 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'comp'45'cong_666 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_614
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-comp-dom
d_res'45'comp'45'dom_668 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'comp'45'dom_668 = erased
-- Ledger.Set.Theory._._.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_670 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'comp'45'dom'7504'_670 ~v0 v1
  = du_res'45'comp'45'dom'7504'_670 v1
du_res'45'comp'45'dom'7504'_670 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'comp'45'dom'7504'_670 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_642
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-cong
d_res'45'cong_672 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_672 ~v0 v1 = du_res'45'cong_672 v1
du_res'45'cong_672 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'cong_672 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_578
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-dom
d_res'45'dom_674 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom_674 ~v0 v1 = du_res'45'dom_674 v1
du_res'45'dom_674 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom_674 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_588
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-dom-comm
d_res'45'dom'45'comm_676 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_676 ~v0 v1 = du_res'45'dom'45'comm_676 v1
du_res'45'dom'45'comm_676 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm_676 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_830
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.res-dom-comm'
d_res'45'dom'45'comm''_678 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_678 ~v0 v1 = du_res'45'dom'45'comm''_678 v1
du_res'45'dom'45'comm''_678 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm''_678 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_824
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_680 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8745''8838'_680 ~v0 v1
  = du_res'45'dom'45'comm'8745''8838'_680 v1
du_res'45'dom'45'comm'8745''8838'_680 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8745''8838'_680 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_776
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6
-- Ledger.Set.Theory._._.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_682 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8838''8745'_682 ~v0 v1
  = du_res'45'dom'45'comm'8838''8745'_682 v1
du_res'45'dom'45'comm'8838''8745'_682 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8838''8745'_682 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_768
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6
-- Ledger.Set.Theory._._.res-domᵐ
d_res'45'dom'7504'_684 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'7504'_684 ~v0 v1 = du_res'45'dom'7504'_684 v1
du_res'45'dom'7504'_684 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'7504'_684 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_600
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_686 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45'disj'45''8746'_686 ~v0 v1
  = du_res'45'ex'45'disj'45''8746'_686 v1
du_res'45'ex'45'disj'45''8746'_686 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45'disj'45''8746'_686 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_684
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4
-- Ledger.Set.Theory._._.res-ex-disjoint
d_res'45'ex'45'disjoint_688 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'ex'45'disjoint_688 = erased
-- Ledger.Set.Theory._._.res-ex-∪
d_res'45'ex'45''8746'_690 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45''8746'_690 ~v0 v1 = du_res'45'ex'45''8746'_690 v1
du_res'45'ex'45''8746'_690 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45''8746'_690 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4
-- Ledger.Set.Theory._._.res-∅
d_res'45''8709'_692 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_692 ~v0 ~v1 = du_res'45''8709'_692
du_res'45''8709'_692 ::
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709'_692 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_658
-- Ledger.Set.Theory._._.res-⊆
d_res'45''8838'_694 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45''8838'_694 ~v0 v1 = du_res'45''8838'_694 v1
du_res'45''8838'_694 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45''8838'_694 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_654
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.∈-curryʳ
d_'8712''45'curry'691'_696 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'curry'691'_696 ~v0 v1 = du_'8712''45'curry'691'_696 v1
du_'8712''45'curry'691'_696 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'curry'691'_696 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_704
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory._._.coex-⊆
d_coex'45''8838'_700 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_coex'45''8838'_700 ~v0 v1 = du_coex'45''8838'_700 v1
du_coex'45''8838'_700 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_coex'45''8838'_700 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_900
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.cores-⊆
d_cores'45''8838'_702 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_cores'45''8838'_702 ~v0 v1 = du_cores'45''8838'_702 v1
du_cores'45''8838'_702 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_cores'45''8838'_702 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_898
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._._∣_
d__'8739'__706 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__706 ~v0 v1 = du__'8739'__706 v1
du__'8739'__706 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'__706 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1088
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣_ᶜ
d__'8739'_'7580'_708 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_708 ~v0 v1 = du__'8739'_'7580'_708 v1
du__'8739'_'7580'_708 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'_'7580'_708 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1096
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._⦅_,-⦆
d__'10629'_'44''45''10630'_710 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_710 ~v0 v1
  = du__'10629'_'44''45''10630'_710 v1
du__'10629'_'44''45''10630'_710 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'10629'_'44''45''10630'_710 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1182
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory._._.curryᵐ
d_curry'7504'_712 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_712 ~v0 v1 = du_curry'7504'_712 v1
du_curry'7504'_712 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_curry'7504'_712 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1120
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.mapSingleValue
d_mapSingleValue_714 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_714 ~v0 v1 = du_mapSingleValue_714 v1
du_mapSingleValue_714 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapSingleValue_714 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1112
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.mapValueRestricted
d_mapValueRestricted_716 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_716 ~v0 v1 = du_mapValueRestricted_716 v1
du_mapValueRestricted_716 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValueRestricted_716 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1104
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-singleton
d_res'45'singleton_718 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_718 ~v0 v1 = du_res'45'singleton_718 v1
du_res'45'singleton_718 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton_718 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1134
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-singleton'
d_res'45'singleton''_720 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''_720 ~v0 v1 = du_res'45'singleton''_720 v1
du_res'45'singleton''_720 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''_720 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1170
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.update
d_update_722 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_722 ~v0 v1 = du_update_722 v1
du_update_722 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_update_722 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1184
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._._⁻¹_
d__'8315''185'__726 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
d__'8315''185'__726 ~v0 v1 = du__'8315''185'__726 v1
du__'8315''185'__726 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
du__'8315''185'__726 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1356
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._↾_
d__'8638'__728 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8638'__728 ~v0 v1 = du__'8638'__728 v1
du__'8638'__728 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8638'__728 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8638'__1340
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._↾_ᶜ
d__'8638'_'7580'_730 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8638'_'7580'_730 ~v0 v1 = du__'8638'_'7580'_730 v1
du__'8638'_'7580'_730 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8638'_'7580'_730 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8638'_'7580'_1348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∪ˡ_
d__'8746''737'__734 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__734 ~v0 v1 = du__'8746''737'__734 v1
du__'8746''737'__734 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__734 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__676
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∪ˡ'_
d__'8746''737'''__736 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__736 ~v0 v1 = du__'8746''737'''__736 v1
du__'8746''737'''__736 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8746''737'''__736 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__670
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_738 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_738 ~v0 v1
  = du_disjoint'45''8746''737''45''8746'_738 v1
du_disjoint'45''8746''737''45''8746'_738 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_738 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_690
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.insert
d_insert_740 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_740 ~v0 v1 = du_insert_740 v1
du_insert_740 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_740 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_698
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.insertIfJust
d_insertIfJust_742 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_742 ~v0 v1 = du_insertIfJust_742 v1
du_insertIfJust_742 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_742 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5
-- Ledger.Set.Theory._._._∩_
d__'8745'__746 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8745'__746 ~v0 v1 = du__'8745'__746 v1
du__'8745'__746 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'8745'__746 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__686
         (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._.disjoint'
d_disjoint''_748 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] -> [AgdaAny] -> ()
d_disjoint''_748 = erased
-- Ledger.Set.Theory._._.∈-∩
d_'8712''45''8745'_750 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_750 ~v0 v1 = du_'8712''45''8745'_750 v1
du_'8712''45''8745'_750 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45''8745'_750 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694
         (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._.lookupᵐ
d_lookup'7504'_754 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504'_754 ~v0 ~v1 = du_lookup'7504'_754
du_lookup'7504'_754 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_lookup'7504'_754 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1314
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory._._.lookupᵐ?
d_lookup'7504''63'_756 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  Maybe AgdaAny
d_lookup'7504''63'_756 ~v0 ~v1 = du_lookup'7504''63'_756
du_lookup'7504''63'_756 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  Maybe AgdaAny
du_lookup'7504''63'_756 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1318
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory._._._∪⁺_
d__'8746''8314'__760 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''8314'__760 ~v0 ~v1 = du__'8746''8314'__760
du__'8746''8314'__760 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''8314'__760
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__514
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._._.aggregate₊
d_aggregate'8330'_762 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_762 ~v0 ~v1 = du_aggregate'8330'_762
du_aggregate'8330'_762 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aggregate'8330'_762
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_516
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._._.unionThese
d_unionThese_764 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
d_unionThese_764 ~v0 ~v1 = du_unionThese_764
du_unionThese_764 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
du_unionThese_764 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_314
      (coe d_List'45'Model'7496'_10) v2 v3 v4 v5 v6
-- Ledger.Set.Theory._._.unionWith
d_unionWith_766 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unionWith_766 ~v0 ~v1 = du_unionWith_766
du_unionWith_766 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unionWith_766 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_376
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6
-- Ledger.Set.Theory._._._∩ᵐ_
d__'8745''7504'__782 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__782 ~v0 ~v1 v2 v3 = du__'8745''7504'__782 v2 v3
du__'8745''7504'__782 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8745''7504'__782 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__590
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased
         (coe
            MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38 (coe v0)
            (coe v1)))
-- Ledger.Set.Theory._._._._∪ˡᶠ_
d__'8746''737''7584'__794 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737''7584'__794 ~v0 ~v1 v2 ~v3 ~v4
  = du__'8746''737''7584'__794 v2
du__'8746''737''7584'__794 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737''7584'__794 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__934
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1542 d_List'45'Model'7496'_10
              erased v0 v2 v1))
-- Ledger.Set.Theory._._._.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_796 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'partition_796 ~v0 ~v1 v2 v3 v4
  = du_indexedSum'7504''45'partition_796 v2 v3 v4
du_indexedSum'7504''45'partition_796 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504''45'partition_796 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_984
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe v2) (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v3 v4 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1542 d_List'45'Model'7496'_10
              erased v0 v4 v3))
-- Ledger.Set.Theory._._._.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_798 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_indexedSum'7504''45''8746'_798 ~v0 ~v1 v2 v3 v4
  = du_indexedSum'7504''45''8746'_798 v2 v3 v4
du_indexedSum'7504''45''8746'_798 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
du_indexedSum'7504''45''8746'_798 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_950
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe v2) (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v7 v8 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1542 d_List'45'Model'7496'_10
              erased v0 v8 v7))
      v3 v4 v5
-- Ledger.Set.Theory._._._.∪ˡ-finite
d_'8746''737''45'finite_800 ::
  () ->
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'finite_800 ~v0 ~v1 v2 ~v3 ~v4
  = du_'8746''737''45'finite_800 v2
du_'8746''737''45'finite_800 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'finite_800 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_928
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1542 d_List'45'Model'7496'_10
              erased v0 v2 v1))
-- Ledger.Set.Theory.Properties._._≡_⨿_
d__'8801'_'10815'__806 ::
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801'_'10815'__806 = erased
-- Ledger.Set.Theory.Properties._.Dec-∈-fromList
d_Dec'45''8712''45'fromList_808 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'fromList_808 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'fromList_502
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.Dec-∈-singleton
d_Dec'45''8712''45'singleton_810 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'singleton_810 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'singleton_508
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Set-BoundedJoinSemilattice
d_Set'45'BoundedJoinSemilattice_812 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_116
d_Set'45'BoundedJoinSemilattice_812 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BoundedJoinSemilattice_594
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.Set-JoinSemilattice
d_Set'45'JoinSemilattice_814 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_Set'45'JoinSemilattice_814 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'JoinSemilattice_592
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.card-≡ᵉ
d_card'45''8801''7497'_816 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_816 = erased
-- Ledger.Set.Theory.Properties._.cong-⊆⇒cong
d_cong'45''8838''8658'cong_818 ::
  () ->
  () ->
  ([AgdaAny] -> [AgdaAny]) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45''8838''8658'cong_818 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_cong'45''8838''8658'cong_260
      v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.cong-⊆⇒cong₂
d_cong'45''8838''8658'cong'8322'_820 ::
  () ->
  () ->
  () ->
  ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45''8838''8658'cong'8322'_820 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                     v10
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_cong'45''8838''8658'cong'8322'_268
      v4 v5 v6 v7 v8 v9 v10
-- Ledger.Set.Theory.Properties._.disjoint-sym
d_disjoint'45'sym_822 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'sym_822 = erased
-- Ledger.Set.Theory.Properties._.filter-finite
d_filter'45'finite_824 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'finite_824 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_526
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Properties._.filter-⊆
d_filter'45''8838'_826 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45''8838'_826 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_494
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Properties._.map-∅
d_map'45''8709'_828 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8709'_828 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8709'_440
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3
-- Ledger.Set.Theory.Properties._.map-∘
d_map'45''8728'_830 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8728'_830 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728'_378
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory.Properties._.map-∘⊆
d_map'45''8728''8838'_832 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8728''8838'_832 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728''8838'_362
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.map-≡ᵉ
d_map'45''8801''7497'_834 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8801''7497'_834 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_412
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.map-⊆
d_map'45''8838'_836 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8838'_836 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838'_386
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.map-⊆∘
d_map'45''8838''8728'_838 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8838''8728'_838 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838''8728'_340
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.mapPartial-∅
d_mapPartial'45''8709'_840 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartial'45''8709'_840 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_mapPartial'45''8709'_450
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory.Properties._.singleton-finite
d_singleton'45'finite_842 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_842 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_512
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.∅-finite
d_'8709''45'finite_844 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_844 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_434
-- Ledger.Set.Theory.Properties._.∅-least
d_'8709''45'least_846 ::
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'least_846 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_428 v2
-- Ledger.Set.Theory.Properties._.∅-minimum
d_'8709''45'minimum_848 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8709''45'minimum_848 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'minimum_424
-- Ledger.Set.Theory.Properties._.∅-weakly-finite
d_'8709''45'weakly'45'finite_850 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'weakly'45'finite_850 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'weakly'45'finite_432
-- Ledger.Set.Theory.Properties._.∈-filter⁺'
d_'8712''45'filter'8314'''_852 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'filter'8314'''_852 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Properties._.∈-filter⁻'
d_'8712''45'filter'8315'''_854 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'8315'''_854 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Properties._.∈-fromList⁺
d_'8712''45'fromList'8314'_856 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8314'_856 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8314'_228
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Properties._.∈-fromList⁻
d_'8712''45'fromList'8315'_858 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8315'_858 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_222
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∈-map⁺'
d_'8712''45'map'8314'''_860 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''_860 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''_166
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.∈-map⁺''
d_'8712''45'map'8314'''''_862 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''''_862 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_174
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.∈-map⁻'
d_'8712''45'map'8315'''_864 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'map'8315'''_864 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_162
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.∈-×
d_'8712''45''215'_866 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45''215'_866 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''215'_318
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.∈-∪⁺
d_'8712''45''8746''8314'_868 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45''8746''8314'_868 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_210
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∈-∪⁻
d_'8712''45''8746''8315'_870 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8712''45''8746''8315'_870 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_208
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∉-∅
d_'8713''45''8709'_872 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45''8709'_872 = erased
-- Ledger.Set.Theory.Properties._.∪-Supremum
d_'8746''45'Supremum_874 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'Supremum_874 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'Supremum_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-cong
d_'8746''45'cong_876 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'cong_876 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_568
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4
-- Ledger.Set.Theory.Properties._.∪-cong-⊆
d_'8746''45'cong'45''8838'_878 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45'cong'45''8838'_878 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong'45''8838'_562
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.∪-preserves-finite
d_'8746''45'preserves'45'finite_880 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite_880 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_570
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4
-- Ledger.Set.Theory.Properties._.∪-sym
d_'8746''45'sym_882 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'sym_882 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'sym_590
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-⊆
d_'8746''45''8838'_884 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838'_884 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838'_550
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.∪-⊆ʳ
d_'8746''45''8838''691'_886 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''691'_886 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''691'_548
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∪-⊆ˡ
d_'8746''45''8838''737'_888 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''737'_888 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''737'_546
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.≡ᵉ-Setoid
d_'8801''7497''45'Setoid_890 ::
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''7497''45'Setoid_890 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296
-- Ledger.Set.Theory.Properties._.≡ᵉ-isEquivalence
d_'8801''7497''45'isEquivalence_892 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'8801''7497''45'isEquivalence_892 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282
-- Ledger.Set.Theory.Properties._.≡ᵉ⇔≡ᵉ'
d_'8801''7497''8660''8801''7497'''_894 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''7497''8660''8801''7497'''_894 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244
-- Ledger.Set.Theory.Properties._.⊆-PartialOrder
d_'8838''45'PartialOrder_896 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8838''45'PartialOrder_896 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'PartialOrder_312
-- Ledger.Set.Theory.Properties._.⊆-Preorder
d_'8838''45'Preorder_898 ::
  () ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8838''45'Preorder_898 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Preorder_308
-- Ledger.Set.Theory.Properties._.⊆-Transitive
d_'8838''45'Transitive_900 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'Transitive_900 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276 v4 v5
      v6 v7
-- Ledger.Set.Theory.Properties._.⊆-isPreorder
d_'8838''45'isPreorder_902 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8838''45'isPreorder_902 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'isPreorder_300
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.Set-Lattice
d_Set'45'Lattice_906 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_Set'45'Lattice_906 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_670
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_908 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'''8658'disjoint_908 = erased
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_910 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'8658'disjoint''_910 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_614
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-Infimum
d_'8745''45'Infimum_912 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_912 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_638
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_914 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'691'_914 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_916 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'737'_916 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_668
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-cong
d_'8745''45'cong_918 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'cong_918 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_656
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-cong-⊆
d_'8745''45'cong'45''8838'_920 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'cong'45''8838'_920 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_648
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-preserves-finite
d_'8745''45'preserves'45'finite_922 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_922 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_646
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-sym
d_'8745''45'sym_924 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_924 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_686
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-sym⊆
d_'8745''45'sym'8838'_926 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_926 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_672
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆
d_'8745''45''8838'_928 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838'_928 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_630
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6 v7 v8
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆ʳ
d_'8745''45''8838''691'_930 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_930 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_628
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆ˡ
d_'8745''45''8838''737'_932 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_932 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_626
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._._.Set-Lattice
d_Set'45'Lattice_944 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_Set'45'Lattice_944 ~v0 v1 = du_Set'45'Lattice_944 v1
du_Set'45'Lattice_944 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
du_Set'45'Lattice_944 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_670
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_946 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'''8658'disjoint_946 = erased
-- Ledger.Set.Theory.Properties._._.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_948 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'8658'disjoint''_948 ~v0 ~v1
  = du_disjoint'8658'disjoint''_948
du_disjoint'8658'disjoint''_948 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'8658'disjoint''_948 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_614
-- Ledger.Set.Theory.Properties._._.∩-Infimum
d_'8745''45'Infimum_950 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_950 ~v0 v1 = du_'8745''45'Infimum_950 v1
du_'8745''45'Infimum_950 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'Infimum_950 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_638
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_952 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'691'_952 ~v0 v1
  = du_'8745''45'OrderHomomorphism'691'_952 v1
du_'8745''45'OrderHomomorphism'691'_952 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'691'_952 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_954 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'737'_954 ~v0 v1
  = du_'8745''45'OrderHomomorphism'737'_954 v1
du_'8745''45'OrderHomomorphism'737'_954 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'737'_954 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_668
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-cong
d_'8745''45'cong_956 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'cong_956 ~v0 v1 = du_'8745''45'cong_956 v1
du_'8745''45'cong_956 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'cong_956 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_656
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-cong-⊆
d_'8745''45'cong'45''8838'_958 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'cong'45''8838'_958 ~v0 v1
  = du_'8745''45'cong'45''8838'_958 v1
du_'8745''45'cong'45''8838'_958 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45'cong'45''8838'_958 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_648
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-preserves-finite
d_'8745''45'preserves'45'finite_960 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_960 ~v0 v1
  = du_'8745''45'preserves'45'finite_960 v1
du_'8745''45'preserves'45'finite_960 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'preserves'45'finite_960 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_646
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v1 v2
-- Ledger.Set.Theory.Properties._._.∩-sym
d_'8745''45'sym_962 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_962 ~v0 v1 = du_'8745''45'sym_962 v1
du_'8745''45'sym_962 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'sym_962 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_686
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-sym⊆
d_'8745''45'sym'8838'_964 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_964 ~v0 v1 = du_'8745''45'sym'8838'_964 v1
du_'8745''45'sym'8838'_964 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45'sym'8838'_964 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_672
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-⊆
d_'8745''45''8838'_966 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838'_966 ~v0 v1 = du_'8745''45''8838'_966 v1
du_'8745''45''8838'_966 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838'_966 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_630
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._._.∩-⊆ʳ
d_'8745''45''8838''691'_968 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_968 ~v0 v1
  = du_'8745''45''8838''691'_968 v1
du_'8745''45''8838''691'_968 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''691'_968 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_628
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-⊆ˡ
d_'8745''45''8838''737'_970 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_970 ~v0 v1
  = du_'8745''45''8838''737'_970 v1
du_'8745''45''8838''737'_970 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''737'_970 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_626
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory._ᶠᵐ
d__'7584''7504'_976 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''7504'_976 ~v0 ~v1 v2 = du__'7584''7504'_976 v2
du__'7584''7504'_976 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''7504'_976 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                (coe du_finiteness_210 v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Set.Theory._ᶠˢ
d__'7584''738'_984 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''738'_984 ~v0 v1 = du__'7584''738'_984 v1
du__'7584''738'_984 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''738'_984 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
      (coe du_finiteness_210 v0)
-- Ledger.Set.Theory.filterᵐ?
d_filter'7504''63'_996 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''63'_996 ~v0 ~v1 ~v2 v3 = du_filter'7504''63'_996 v3
du_filter'7504''63'_996 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''63'_996 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_632
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414 (coe d_List'45'Model'7496'_10))
      (coe v0)
-- Ledger.Set.Theory.filterᵐᵇ
d_filter'7504''7495'_1004 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''7495'_1004 ~v0 ~v1 v2
  = du_filter'7504''7495'_1004 v2
du_filter'7504''7495'_1004 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Bool) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''7495'_1004 v0
  = coe
      du_filter'7504''63'_996
      (coe
         (\ v1 ->
            MAlonzo.Code.Data.Bool.Properties.d__'8799'__2946
              (coe v0 v1) (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)))
