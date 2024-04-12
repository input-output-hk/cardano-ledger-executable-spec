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
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Bundles
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
  MAlonzo.Code.Axiom.Set.T_Theory'7584'_734
d_List'45'Model'7584'_8
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model'7584'_58
-- Ledger.Set.Theory.List-Modelᵈ
d_List'45'Model'7496'_10 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280
d_List'45'Model'7496'_10
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model'7496'_208
-- Ledger.Set.Theory._._Preservesˢ_
d__Preserves'738'__20 ::
  () ->
  () -> ([AgdaAny] -> [AgdaAny]) -> (() -> [AgdaAny] -> ()) -> ()
d__Preserves'738'__20 = erased
-- Ledger.Set.Theory._._Preservesˢ₂_
d__Preserves'738''8322'__22 ::
  () ->
  () ->
  () ->
  ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) ->
  (() -> [AgdaAny] -> ()) -> ()
d__Preserves'738''8322'__22 = erased
-- Ledger.Set.Theory._._∈?_
d__'8712''63'__24 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63'__24
  = coe
      MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._._∈ᵇ_
d__'8712''7495'__26 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> [AgdaAny] -> Bool
d__'8712''7495'__26 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8712''7495'__1586
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._._∪_
d__'8746'__28 :: () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8746'__28
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'8746'__662
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3)
-- Ledger.Set.Theory._._≡ᵉ_
d__'8801''7497'__30 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801''7497'__30 = erased
-- Ledger.Set.Theory._._≡ᵉ'_
d__'8801''7497'''__32 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801''7497'''__32 = erased
-- Ledger.Set.Theory._._⊆_
d__'8838'__34 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__34 = erased
-- Ledger.Set.Theory._.All
d_All_36 :: () -> (AgdaAny -> ()) -> [AgdaAny] -> ()
d_All_36 = erased
-- Ledger.Set.Theory._.Any
d_Any_38 :: () -> (AgdaAny -> ()) -> [AgdaAny] -> ()
d_Any_38 = erased
-- Ledger.Set.Theory._.Dec-Allˢ
d_Dec'45'All'738'_40 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'All'738'_40 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1602
      (coe d_List'45'Model'7496'_10) v1 v3 v4
-- Ledger.Set.Theory._.Dec-Anyˢ
d_Dec'45'Any'738'_42 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Any'738'_42 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1606
      (coe d_List'45'Model'7496'_10) v1 v3 v4
-- Ledger.Set.Theory._.Dec-∈
d_Dec'45''8712'_44 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8712'_44 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1592
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_46 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_46 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_DecEq'8743'finite'8658'strongly'45'finite_300
      v1 v3
-- Ledger.Set.Theory._.FinSet
d_FinSet_48 :: () -> ()
d_FinSet_48 = erased
-- Ledger.Set.Theory._.all?
d_all'63'_50 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_50
  = coe
      MAlonzo.Code.Axiom.Set.d_all'63'_1568
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.allᵇ
d_all'7495'_52 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Bool
d_all'7495'_52 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_all'7495'_1618
      (coe d_List'45'Model'7496'_10) v1 v3 v4
-- Ledger.Set.Theory._.any?
d_any'63'_54 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_54
  = coe
      MAlonzo.Code.Axiom.Set.d_any'63'_1576
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.anyᵇ
d_any'7495'_56 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Bool
d_any'7495'_56 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_any'7495'_1622
      (coe d_List'45'Model'7496'_10) v1 v3 v4
-- Ledger.Set.Theory._.binary-unions
d_binary'45'unions_58 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_58
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_binary'45'unions_626
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.card
d_card_60 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_60 v0 v1 = coe MAlonzo.Code.Axiom.Set.du_card_318 v1
-- Ledger.Set.Theory._.card-∅
d_card'45''8709'_62 ::
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_62 = erased
-- Ledger.Set.Theory._.concatMapˢ
d_concatMap'738'_64 ::
  () -> () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d_concatMap'738'_64
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_concatMap'738'_490
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4)
-- Ledger.Set.Theory._.disjoint
d_disjoint_66 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d_disjoint_66 = erased
-- Ledger.Set.Theory._.filter
d_filter_68 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
d_filter_68
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_filter_402
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.finite
d_finite_70 :: () -> [AgdaAny] -> ()
d_finite_70 = erased
-- Ledger.Set.Theory._.fromList
d_fromList_72 :: () -> [AgdaAny] -> [AgdaAny]
d_fromList_72
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_fromList_410
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2)
-- Ledger.Set.Theory._.incl-set
d_incl'45'set_74 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_incl'45'set_74 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set_1664
      (coe d_List'45'Model'7496'_10) v1 v2
-- Ledger.Set.Theory._.incl-set'
d_incl'45'set''_76 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set''_76 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set''_1638
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._.incl-set-proj₁
d_incl'45'set'45'proj'8321'_78 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set'45'proj'8321'_78 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321'_1724
      (coe d_List'45'Model'7496'_10) v1 v2
-- Ledger.Set.Theory._.incl-set-proj₁⊆
d_incl'45'set'45'proj'8321''8838'_80 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_incl'45'set'45'proj'8321''8838'_80 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321''8838'_1674
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4
-- Ledger.Set.Theory._.incl-set-proj₁⊇
d_incl'45'set'45'proj'8321''8839'_82 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_incl'45'set'45'proj'8321''8839'_82 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321''8839'_1686
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4
-- Ledger.Set.Theory._.isMaximal
d_isMaximal_84 :: () -> [AgdaAny] -> ()
d_isMaximal_84 = erased
-- Ledger.Set.Theory._.listing
d_listing_86 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_86
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_listing_204
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.mapPartial
d_mapPartial_88 ::
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_mapPartial_88
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_mapPartial_558
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3)
-- Ledger.Set.Theory._.map
d_map_90 ::
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_map_90
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_map_380
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.maximal-unique
d_maximal'45'unique_92 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_92 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.du_maximal'45'unique_342 v3 v4
-- Ledger.Set.Theory._.maximal-⊆
d_maximal'45''8838'_94 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_maximal'45''8838'_94 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.du_maximal'45''8838'_338 v3 v4
-- Ledger.Set.Theory._.partialToSet
d_partialToSet_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> [AgdaAny]
d_partialToSet_96
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_partialToSet_454
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v4 v5)
-- Ledger.Set.Theory._.replacement
d_replacement_98 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_98
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_replacement_196
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.singleton
d_singleton_100 :: () -> AgdaAny -> [AgdaAny]
d_singleton_100
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_singleton_430
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2)
-- Ledger.Set.Theory._.sp
d_sp_102 :: MAlonzo.Code.Axiom.Set.T_SpecProperty_48
d_sp_102
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp_150
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.sp-¬
d_sp'45''172'_104 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sp'45''172'_104
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
         (coe
            MAlonzo.Code.Axiom.Set.d_sp_150
            (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))))
-- Ledger.Set.Theory._.sp-∘
d_sp'45''8728'_106 ::
  () ->
  (AgdaAny -> ()) ->
  () ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sp'45''8728'_106
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (coe
            MAlonzo.Code.Axiom.Set.d_sp_150
            (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))))
-- Ledger.Set.Theory._.spec-∈
d_spec'45''8712'_108 :: () -> ()
d_spec'45''8712'_108 = erased
-- Ledger.Set.Theory._.specProperty
d_specProperty_110 :: () -> (AgdaAny -> ()) -> ()
d_specProperty_110 = erased
-- Ledger.Set.Theory._.specification
d_specification_112 ::
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_112
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_specification_174
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.strictify
d_strictify_114 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_114
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_strictify_360
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4)
-- Ledger.Set.Theory._.strongly-finite
d_strongly'45'finite_116 :: () -> [AgdaAny] -> ()
d_strongly'45'finite_116 = erased
-- Ledger.Set.Theory._.th
d_th_118 :: MAlonzo.Code.Axiom.Set.T_Theory_82
d_th_118
  = coe
      MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.unions
d_unions_120 ::
  () -> [[AgdaAny]] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_120
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_unions_184
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.weakly-finite
d_weakly'45'finite_122 :: () -> [AgdaAny] -> ()
d_weakly'45'finite_122 = erased
-- Ledger.Set.Theory._.Set
d_Set_124 :: () -> ()
d_Set_124 = erased
-- Ledger.Set.Theory._.∅
d_'8709'_126 :: () -> [AgdaAny]
d_'8709'_126
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709'_424
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.∅-strongly-finite
d_'8709''45'strongly'45'finite_128 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_128
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709''45'strongly'45'finite_426
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.∈-concatMapˢ
d_'8712''45'concatMap'738'_130 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_130
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'concatMap'738'_502
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-filter
d_'8712''45'filter_132 ::
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_132
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-fromList
d_'8712''45'fromList_134 ::
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_134
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-irrelevant
d_'8712''45'irrelevant_136 :: () -> [AgdaAny] -> ()
d_'8712''45'irrelevant_136 = erased
-- Ledger.Set.Theory._.∈-map
d_'8712''45'map_138 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_138
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map_388
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-mapPartial
d_'8712''45'mapPartial_140 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_140
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'mapPartial_568
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-map′
d_'8712''45'map'8242'_142 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8242'_142
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_394
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4 v5 v6)
-- Ledger.Set.Theory._.∈-partialToSet
d_'8712''45'partialToSet_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_144
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'partialToSet_466
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v5)
-- Ledger.Set.Theory._.∈-singleton
d_'8712''45'singleton_146 ::
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_146
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_440
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-sp
d_'8712''45'sp_148 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8712''45'sp_148
  = coe
      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.∈-unions
d_'8712''45'unions_150 ::
  () ->
  AgdaAny ->
  [[AgdaAny]] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_150
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'unions_422
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-∪
d_'8712''45''8746'_152 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_152
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.≡→∈
d_'8801''8594''8712'_154 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8801''8594''8712'_154 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'8801''8594''8712'_154 v4
du_'8801''8594''8712'_154 ::
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8801''8594''8712'_154 v0 = coe v0
-- Ledger.Set.Theory._.⊆-mapPartial
d_'8838''45'mapPartial_156 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> Maybe AgdaAny) ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'mapPartial_156
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_586
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4 v5 v6)
-- Ledger.Set.Theory._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_158 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_158 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_'8838''45'weakly'45'finite_322 v3 v4
-- Ledger.Set.Theory._.❴_❵
d_'10100'_'10101'_160 :: () -> AgdaAny -> [AgdaAny]
d_'10100'_'10101'_160
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.Intersection._∩_
d__'8745'__164 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8745'__164
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'8745'__686
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.Intersection._＼_
d__'65340'__166 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'65340'__166
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'65340'__712
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.Intersection.disjoint'
d_disjoint''_168 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> ()
d_disjoint''_168 = erased
-- Ledger.Set.Theory._.Intersection.∈-∩
d_'8712''45''8745'_170 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_170
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3 v4 v5)
-- Ledger.Set.Theory._._∈_
d__'8712'__174 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_436 ->
  AgdaAny -> AgdaAny -> ()
d__'8712'__174 = erased
-- Ledger.Set.Theory._._∉_
d__'8713'__176 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_436 ->
  AgdaAny -> AgdaAny -> ()
d__'8713'__176 = erased
-- Ledger.Set.Theory._.All-syntax
d_All'45'syntax_178 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_436 ->
  (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_178 = erased
-- Ledger.Set.Theory._.IsSet
d_IsSet_180 a0 a1 = ()
-- Ledger.Set.Theory._.IsSet-Map
d_IsSet'45'Map_182 ::
  () -> () -> MAlonzo.Code.Interface.IsSet.T_IsSet_436
d_IsSet'45'Map_182 v0 v1
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_498
-- Ledger.Set.Theory._.IsSet-Set
d_IsSet'45'Set_184 ::
  () -> MAlonzo.Code.Interface.IsSet.T_IsSet_436
d_IsSet'45'Set_184 v0
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_494
-- Ledger.Set.Theory._.IsSet-TotalMap
d_IsSet'45'TotalMap_186 ::
  () -> () -> MAlonzo.Code.Interface.IsSet.T_IsSet_436
d_IsSet'45'TotalMap_186 v0 v1
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'TotalMap_500
-- Ledger.Set.Theory._.dom
d_dom_188 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_436 -> AgdaAny -> [AgdaAny]
d_dom_188 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Interface.IsSet.du_dom_490
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.range
d_range_190 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_436 -> AgdaAny -> [AgdaAny]
d_range_190 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Interface.IsSet.du_range_492
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.toSet
d_toSet_192 ::
  MAlonzo.Code.Interface.IsSet.T_IsSet_436 -> AgdaAny -> [AgdaAny]
d_toSet_192 v0
  = coe MAlonzo.Code.Interface.IsSet.d_toSet_444 (coe v0)
-- Ledger.Set.Theory._.IsSet._∈_
d__'8712'__196 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_436 ->
  AgdaAny -> AgdaAny -> ()
d__'8712'__196 = erased
-- Ledger.Set.Theory._.IsSet._∉_
d__'8713'__198 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_436 ->
  AgdaAny -> AgdaAny -> ()
d__'8713'__198 = erased
-- Ledger.Set.Theory._.IsSet.toSet
d_toSet_200 ::
  MAlonzo.Code.Interface.IsSet.T_IsSet_436 -> AgdaAny -> [AgdaAny]
d_toSet_200 v0
  = coe MAlonzo.Code.Interface.IsSet.d_toSet_444 (coe v0)
-- Ledger.Set.Theory._.card-≡ᵉ
d_card'45''8801''7497'_204 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_204 = erased
-- Ledger.Set.Theory.to-sp
d_to'45'sp_210 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_to'45'sp_210 ~v0 ~v1 v2 = du_to'45'sp_210 v2
du_to'45'sp_210 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_to'45'sp_210 v0
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v0)
-- Ledger.Set.Theory.finiteness
d_finiteness_214 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_finiteness_214 ~v0 = du_finiteness_214
du_finiteness_214 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_finiteness_214
  = coe
      MAlonzo.Code.Axiom.Set.d_finiteness_998 d_List'45'Model'7584'_8
      erased
-- Ledger.Set.Theory.lengthˢ
d_length'738'_222 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_436 -> AgdaAny -> Integer
d_length'738'_222 ~v0 ~v1 v2 v3 v4 = du_length'738'_222 v2 v3 v4
du_length'738'_222 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_436 -> AgdaAny -> Integer
du_length'738'_222 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_length'738'_1006
      (coe d_List'45'Model'7584'_8) (coe v0)
      (coe MAlonzo.Code.Interface.IsSet.d_toSet_444 v1 v2)
-- Ledger.Set.Theory.lengthˢ-≡ᵉ
d_length'738''45''8801''7497'_236 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_436 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'738''45''8801''7497'_236 = erased
-- Ledger.Set.Theory.lengthˢ-∅
d_length'738''45''8709'_246 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'738''45''8709'_246 = erased
-- Ledger.Set.Theory.setToList
d_setToList_248 :: () -> [AgdaAny] -> [AgdaAny]
d_setToList_248 ~v0 v1 = du_setToList_248 v1
du_setToList_248 :: [AgdaAny] -> [AgdaAny]
du_setToList_248 v0 = coe v0
-- Ledger.Set.Theory.DecEq-ℙ
d_DecEq'45'ℙ_252 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ℙ_252 ~v0 v1 = du_DecEq'45'ℙ_252 v1
du_DecEq'45'ℙ_252 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'ℙ_252 v0
  = coe MAlonzo.Code.Axiom.Set.List.du_DecEq'45'Set_206 (coe v0)
-- Ledger.Set.Theory._.Rel
d_Rel_256 :: () -> () -> ()
d_Rel_256 = erased
-- Ledger.Set.Theory._.disjoint-dom⇒disjoint
d_disjoint'45'dom'8658'disjoint_258 ::
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
d_disjoint'45'dom'8658'disjoint_258 = erased
-- Ledger.Set.Theory._.dom-mapʳ⊆
d_dom'45'map'691''8838'_260 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'map'691''8838'_260 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'map'691''8838'_446
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6
-- Ledger.Set.Theory._.dom-∅
d_dom'45''8709'_262 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45''8709'_262 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8709'_474
-- Ledger.Set.Theory._.dom-⊆mapʳ
d_dom'45''8838'map'691'_264 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45''8838'map'691'_264 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8838'map'691'_422
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6
-- Ledger.Set.Theory._.dom∈
d_dom'8712'_266 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8712'_266 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_394
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.impl⇒cores⊆
d_impl'8658'cores'8838'_268 ::
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
d_impl'8658'cores'8838'_268 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'cores'8838'_368
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v5 v6 v7 v8 v9
-- Ledger.Set.Theory._.impl⇒res⊆
d_impl'8658'res'8838'_270 ::
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
d_impl'8658'res'8838'_270 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'res'8838'_346
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v5 v6 v7 v8 v9
-- Ledger.Set.Theory._.mapMaybeWithKey
d_mapMaybeWithKey_272 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_mapMaybeWithKey_272 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_542
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapPartialLiftKey
d_mapPartialLiftKey_274 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_274 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_482 v3 v4
-- Ledger.Set.Theory._.mapPartialLiftKey-map
d_mapPartialLiftKey'45'map_276 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey'45'map_276 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey'45'map_502
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.mapʳ
d_map'691'_278 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'691'_278 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691'_384
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapʳ-dom
d_map'691''45'dom_280 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'691''45'dom_280 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691''45'dom_472
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapˡ
d_map'737'_282 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'737'_282 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'737'_378
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.relatedˡ
d_related'737'_284 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_related'737'_284 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_related'737'_306
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory._.∅ʳ
d_'8709''691'_286 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'8709''691'_286 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8709''691'_308
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory._.∈-mapMaybeWithKey
d_'8712''45'mapMaybeWithKey_288 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'mapMaybeWithKey_288 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'mapMaybeWithKey_558
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.Corestriction._↾_
d__'8638'__292 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8638'__292 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8638'__908
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Corestriction._↾_ᶜ
d__'8638'_'7580'_294 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8638'_'7580'_294 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8638'_'7580'_914
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Corestriction.coex-⊆
d_coex'45''8838'_296 ::
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
d_coex'45''8838'_296 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_922
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Corestriction.cores-⊆
d_cores'45''8838'_298 ::
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
d_cores'45''8838'_298 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_920
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restriction._∣_
d__'8739'__302 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__302 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__574
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restriction._∣_ᶜ
d__'8739'_'7580'_304 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_304 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_580
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restriction._⟪$⟫_
d__'10218''36''10219'__306 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__306 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restriction.curryʳ
d_curry'691'_308 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_308 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_712
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory._.Restriction.ex-⊆
d_ex'45''8838'_310 ::
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
d_ex'45''8838'_310 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_672
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restriction.res-comp-cong
d_res'45'comp'45'cong_312 ::
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
d_res'45'comp'45'cong_312 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_630
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restriction.res-comp-dom
d_res'45'comp'45'dom_314 ::
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
d_res'45'comp'45'dom_314 = erased
-- Ledger.Set.Theory._.Restriction.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_316 ::
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
d_res'45'comp'45'dom'7504'_316 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_658
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restriction.res-cong
d_res'45'cong_318 ::
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
d_res'45'cong_318 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_594
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restriction.res-dom
d_res'45'dom_320 ::
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
d_res'45'dom_320 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_604
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restriction.res-dom-comm
d_res'45'dom'45'comm_322 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_322 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory._.Restriction.res-dom-comm'
d_res'45'dom'45'comm''_324 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_324 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_846
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory._.Restriction.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_326 ::
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
d_res'45'dom'45'comm'8745''8838'_326 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_798
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7
-- Ledger.Set.Theory._.Restriction.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_328 ::
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
d_res'45'dom'45'comm'8838''8745'_328 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_790
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7
-- Ledger.Set.Theory._.Restriction.res-domᵐ
d_res'45'dom'7504'_330 ::
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
d_res'45'dom'7504'_330 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_616
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restriction.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_332 ::
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
d_res'45'ex'45'disj'45''8746'_332 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_704
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5
-- Ledger.Set.Theory._.Restriction.res-ex-disjoint
d_res'45'ex'45'disjoint_334 ::
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
d_res'45'ex'45'disjoint_334 = erased
-- Ledger.Set.Theory._.Restriction.res-ex-∪
d_res'45'ex'45''8746'_336 ::
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
d_res'45'ex'45''8746'_336 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5
-- Ledger.Set.Theory._.Restriction.res-∅
d_res'45''8709'_338 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_338 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_674
-- Ledger.Set.Theory._.Restriction.res-∅ᶜ
d_res'45''8709''7580'_340 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_340 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_676
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3
-- Ledger.Set.Theory._.Restriction.res-⊆
d_res'45''8838'_342 ::
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
d_res'45''8838'_342 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_670
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restriction.∈-curryʳ
d_'8712''45'curry'691'_344 ::
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
d_'8712''45'curry'691'_344 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_724
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7 v8
-- Ledger.Set.Theory._._ˢ
d__'738'_348 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'738'_348 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du__'738'_480 v2
-- Ledger.Set.Theory._._ᵐ
d__'7504'_350 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_424 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7504'_350 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du__'7504'_484 v2
-- Ledger.Set.Theory._._↾'_
d__'8638'''__352 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8638'''__352 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8638'''__986
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.Map
d_Map_354 :: () -> () -> ()
d_Map_354 = erased
-- Ledger.Set.Theory._._∣'_
d__'8739'''__356 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'''__356 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'''__978
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._._≡ᵉᵐ_
d__'8801''7497''7504'__358 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7497''7504'__358 = erased
-- Ledger.Set.Theory._._≡ᵐ_
d__'8801''7504'__360 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7504'__360 = erased
-- Ledger.Set.Theory._.FinMap
d_FinMap_362 :: () -> () -> ()
d_FinMap_362 = erased
-- Ledger.Set.Theory._.InjectiveOn
d_InjectiveOn_364 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> ()
d_InjectiveOn_364 = erased
-- Ledger.Set.Theory._.IsLeftUnique
d_IsLeftUnique_366 a0 a1 a2 = ()
-- Ledger.Set.Theory._.constMap
d_constMap_368 ::
  () ->
  () ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap_368 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap_992
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.disj-dom
d_disj'45'dom_370 ::
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
d_disj'45'dom_370 = erased
-- Ledger.Set.Theory._.disj-∪
d_disj'45''8746'_372 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disj'45''8746'_372 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disj'45''8746'_620
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.filterKeys
d_filterKeys_374 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_374 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filterKeys_666
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3
-- Ledger.Set.Theory._.filterᵐ-finite
d_filter'7504''45'finite_376 ::
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
d_filter'7504''45'finite_376 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504''45'finite_662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory._.filterᵐ
d_filter'7504'_378 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_378 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_652
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.fromListᵐ
d_fromList'7504'_380 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'7504'_380 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_514
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.idMap
d_idMap_382 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_idMap_382 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_idMap_896
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory._.left-unique
d_left'45'unique_384 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_left'45'unique_384 = erased
-- Ledger.Set.Theory._.left-unique-mapˢ
d_left'45'unique'45'map'738'_386 ::
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
d_left'45'unique'45'map'738'_386 = erased
-- Ledger.Set.Theory._.mapFromFun
d_mapFromFun_388 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromFun_388 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_908
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
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
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_854
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
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
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1048
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
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
      MAlonzo.Code.Axiom.Set.Map.du_mapValues_900
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
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
      MAlonzo.Code.Axiom.Set.Map.du_mapValues'45'dom_974
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
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
      MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_956
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
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
      MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_670
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.toFinMap
d_toFinMap_416 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toFinMap_416 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du_toFinMap_542 v2 v3
-- Ledger.Set.Theory._.toMap
d_toMap_418 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_418 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toMap_550 v2
-- Ledger.Set.Theory._.toRel
d_toRel_420 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_toRel_420 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toRel_556 v2
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
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_424
d_'738''45'left'45'unique_424 = erased
-- Ledger.Set.Theory._.∅-left-unique
d_'8709''45'left'45'unique_426 ::
  () -> () -> MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_424
d_'8709''45'left'45'unique_426 = erased
-- Ledger.Set.Theory._.∅ᵐ
d_'8709''7504'_428 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''7504'_428 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_510
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
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
  = coe MAlonzo.Code.Axiom.Set.Map.du_'8838''45'map_496 v2 v4
-- Ledger.Set.Theory._.❴_❵ᵐ
d_'10100'_'10101''7504'_434 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'10100'_'10101''7504'_434 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_678
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
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
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1408
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
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
      MAlonzo.Code.Axiom.Set.Map.du__'8638'__1392
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
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
      MAlonzo.Code.Axiom.Set.Map.du__'8638'_'7580'_1400
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
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
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__610
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory._.IsLeftUnique.isLeftUnique
d_isLeftUnique_450 ::
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_424 ->
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
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1354
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
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
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_456 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1358
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory._.Lookupᵐ.pullbackMap
d_pullbackMap_458 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pullbackMap_458 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1364
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7
-- Ledger.Set.Theory._.Restrictionᵐ._∣_
d__'8739'__462 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__462 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1120
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restrictionᵐ._∣_ᶜ
d__'8739'_'7580'_464 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_464 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1128
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restrictionᵐ._⦅_,-⦆
d__'10629'_'44''45''10630'_466 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_466 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1218
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory._.Restrictionᵐ.curryᵐ
d_curry'7504'_468 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_468 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1156
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.mapSingleValue
d_mapSingleValue_470 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_470 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1148
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.mapValueRestricted
d_mapValueRestricted_472 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_472 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1140
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton
d_res'45'singleton_474 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_474 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1170
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton'
d_res'45'singleton''_476 ::
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
d_res'45'singleton''_476 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1206
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_478 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_478 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'7504''45''8709''7580'_1138
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3
-- Ledger.Set.Theory._.Restrictionᵐ.update
d_update_480 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_480 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1220
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ._∪ˡ_
d__'8746''737'__484 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__484 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__696
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Unionᵐ._∪ˡ'_
d__'8746''737'''__486 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__486 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__690
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Unionᵐ.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_488 ::
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
d_disjoint'45''8746''737''45''8746'_488 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_710
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ.insert
d_insert_490 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_490 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_718
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ.insertIfJust
d_insertIfJust_492 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_492 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_726
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6
-- Ledger.Set.Theory._.TotalMap
d_TotalMap_496 a0 a1 = ()
-- Ledger.Set.Theory._.total
d_total_498 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_total_498 = erased
-- Ledger.Set.Theory._.FunTot.Fun⇒Map
d_Fun'8658'Map_502 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Fun'8658'Map_502 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'Map_214
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v5 v6
-- Ledger.Set.Theory._.FunTot.Fun⇒TotalMap
d_Fun'8658'TotalMap_504 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54
d_Fun'8658'TotalMap_504 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'TotalMap_224
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v4
-- Ledger.Set.Theory._.FunTot.Fun∈TotalMap
d_Fun'8712'TotalMap_506 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_Fun'8712'TotalMap_506 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8712'TotalMap_234
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6
-- Ledger.Set.Theory._.FunTot.lookup∘Fun⇒TotalMap-id
d_lookup'8728'Fun'8658'TotalMap'45'id_508 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'8728'Fun'8658'TotalMap'45'id_508 = erased
-- Ledger.Set.Theory._.LookupUpdate.lookup-update-id
d_lookup'45'update'45'id_512 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'update'45'id_512 = erased
-- Ledger.Set.Theory._.LookupUpdate.∈-rel-update
d_'8712''45'rel'45'update_514 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'rel'45'update_514 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_'8712''45'rel'45'update_188
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v5 v6 v7
-- Ledger.Set.Theory._.TotalMap.left-unique-rel
d_left'45'unique'45'rel_518 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_518 = erased
-- Ledger.Set.Theory._.TotalMap.lookup
d_lookup_520 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 -> AgdaAny -> AgdaAny
d_lookup_520 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup_74
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.TotalMap.lookup∈rel
d_lookup'8712'rel_522 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup'8712'rel_522 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup'8712'rel_78
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.TotalMap.rel
d_rel_524 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rel_524 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_rel_66 (coe v0)
-- Ledger.Set.Theory._.TotalMap.toMap
d_toMap_526 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_526 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.TotalMap.du_toMap_72 v2
-- Ledger.Set.Theory._.TotalMap.total-rel
d_total'45'rel_528 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_total'45'rel_528 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_total'45'rel_70 (coe v0)
-- Ledger.Set.Theory._.TotalMap.∈-rel⇒lookup-≡
d_'8712''45'rel'8658'lookup'45''8801'_530 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'rel'8658'lookup'45''8801'_530 = erased
-- Ledger.Set.Theory._.Update.mapWithKey
d_mapWithKey_534 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54
d_mapWithKey_534 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_mapWithKey_148
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v4 v5
-- Ledger.Set.Theory._.Update.update
d_update_536 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54
d_update_536 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_update_164
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory._.Update.updateFn-id
d_updateFn'45'id_538 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_updateFn'45'id_538 = erased
-- Ledger.Set.Theory._.fold-cong↭
d_fold'45'cong'8621'_570 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny
d_fold'45'cong'8621'_570 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_fold'45'cong'8621'_712 (coe v0) v2 v3
      v4 v5
-- Ledger.Set.Theory._.indexedSum
d_indexedSum_572 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum_572 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSum_734 (coe v0) v2 v3
-- Ledger.Set.Theory._.indexedSum-cong
d_indexedSum'45'cong_574 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'cong_574 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'cong_836 (coe v0) v2 v3
      v4 v5
-- Ledger.Set.Theory._.indexedSum-singleton
d_indexedSum'45'singleton_576 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_indexedSum'45'singleton_576 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton_864 (coe v0)
      v3 v4
-- Ledger.Set.Theory._.indexedSum-singleton'
d_indexedSum'45'singleton''_578 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'singleton''_578 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton''_870
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v0) v2 v3 v4 v5
-- Ledger.Set.Theory._.indexedSum-∅
d_indexedSum'45''8709'_580 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_indexedSum'45''8709'_580 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8709'_842
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v0) v2 v3
-- Ledger.Set.Theory._.indexedSum-∪
d_indexedSum'45''8746'_582 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
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
d_indexedSum'45''8746'_582 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8746'_848 (coe v0) v2
      v3 v6 v7
-- Ledger.Set.Theory._.indexedSumL
d_indexedSumL_584 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSumL_584 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_688 (coe v0) v2
-- Ledger.Set.Theory._.indexedSumL'
d_indexedSumL''_586 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSumL''_586 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL''_696 (coe v0) v2 v3
-- Ledger.Set.Theory._.indexedSumL-++
d_indexedSumL'45''43''43'_588 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny] -> AgdaAny
d_indexedSumL'45''43''43'_588 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL'45''43''43'_760 (coe v0)
      v2 v3 v4
-- Ledger.Set.Theory._.indexedSumᵐ
d_indexedSum'7504'_590 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504'_590 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504'_904 (coe v0) v3 v4
      v5 v6
-- Ledger.Set.Theory._.indexedSumᵐ-cong
d_indexedSum'7504''45'cong_592 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'cong_592 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'cong_918 (coe v0)
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.indexedSumᵛ
d_indexedSum'7515'_594 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'_594 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7515'_912 (coe v0) v3 v4
      v5
-- Ledger.Set.Theory._.IndexedSumUnionᵐ._∪ˡᶠ_
d__'8746''737''7584'__598 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737''7584'__598 ~v0 = du__'8746''737''7584'__598
du__'8746''737''7584'__598 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737''7584'__598 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__960
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_600 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
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
d_indexedSum'7504''45'partition_600 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                    v10 v11
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_1010
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v0) v3 v4 v5 v6 v7 v8 v9 v10 v11
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_602 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
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
d_indexedSum'7504''45''8746'_602 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_976
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v0) v3 v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.∪ˡ-finite
d_'8746''737''45'finite_604 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
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
d_'8746''737''45'finite_604 ~v0 = du_'8746''737''45'finite_604
du_'8746''737''45'finite_604 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
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
du_'8746''737''45'finite_604 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_954
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory._.Lookupᵐᵈ._∪⁺_
d__'8746''8314'__610 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''8314'__610 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__526
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.Lookupᵐᵈ.aggregate₊
d_aggregate'8330'_612 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_612 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_528
      (coe d_List'45'Model'7496'_10) v2 v3 v4
-- Ledger.Set.Theory._.Lookupᵐᵈ.unionThese
d_unionThese_614 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
d_unionThese_614 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_326
      (coe d_List'45'Model'7496'_10) v4 v5 v6 v7 v8
-- Ledger.Set.Theory._.Lookupᵐᵈ.unionWith
d_unionWith_616 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unionWith_616 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_388
      (coe d_List'45'Model'7496'_10) v5 v6 v7 v8
-- Ledger.Set.Theory._._ᶠ
d__'7584'_620 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584'_620 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Factor.du__'7584'_284 v1 v2
-- Ledger.Set.Theory._.∪-preserves-finite'
d_'8746''45'preserves'45'finite''_622 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite''_622 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_'8746''45'preserves'45'finite''_294
      (coe d_List'45'Model_6) v1 v2 v3 v4
-- Ledger.Set.Theory._.Factor.factor
d_factor_626 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor_626 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Factor.du_factor_316 v3 v5
-- Ledger.Set.Theory._.Factor.factor-cong
d_factor'45'cong_628 ::
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
d_factor'45'cong_628 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_320 v4 v5 v6 v7
-- Ledger.Set.Theory._.Factor.factor-∪
d_factor'45''8746'_630 ::
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
d_factor'45''8746'_630 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_356 v6 v7 v8 v9
      v10
-- Ledger.Set.Theory._.FactorUnique.deduplicate-Σ
d_deduplicate'45'Σ_634 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deduplicate'45'Σ_634 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_deduplicate'45'Σ_392 v2 v6
-- Ledger.Set.Theory._.FactorUnique.ext
d_ext_636 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  [AgdaAny] -> AgdaAny
d_ext_636 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_ext_396 v2 v4 v6
-- Ledger.Set.Theory._.FactorUnique.ext-cong
d_ext'45'cong_638 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
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
d_ext'45'cong_638 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_402 v2 v5 v6 v7 v8
-- Ledger.Set.Theory._.FactorUnique.f-cong'
d_f'45'cong''_640 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
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
d_f'45'cong''_640 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe MAlonzo.Code.Axiom.Set.Factor.du_f'45'cong''_384 v5 v6 v7 v8
-- Ledger.Set.Theory._.FactorUnique.factor
d_factor_642 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor_642 ~v0 ~v1 v2 ~v3 v4 ~v5 = du_factor_642 v2 v4
du_factor_642 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor_642 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor_316
      (coe MAlonzo.Code.Axiom.Set.Factor.du_ext_396 (coe v0) (coe v1))
-- Ledger.Set.Theory._.FactorUnique.factor-cong
d_factor'45'cong_644 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor'45'cong_644 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_factor'45'cong_644 v2 v5
du_factor'45'cong_644 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor'45'cong_644 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_320
      (coe
         MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_402 (coe v0) (coe v1))
-- Ledger.Set.Theory._.FactorUnique.factor-∪
d_factor'45''8746'_646 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
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
d_factor'45''8746'_646 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_factor'45''8746'_646
du_factor'45''8746'_646 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
du_factor'45''8746'_646 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_356 v1 v2 v3 v4
      v5
-- Ledger.Set.Theory._.FactorUnique.factor-∪'
d_factor'45''8746'''_648 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
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
d_factor'45''8746'''_648 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_438 v9 v10 v12
-- Ledger.Set.Theory._._._∣_
d__'8739'__660 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__660 ~v0 v1 = du__'8739'__660 v1
du__'8739'__660 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'__660 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__574
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣_ᶜ
d__'8739'_'7580'_662 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_662 ~v0 v1 = du__'8739'_'7580'_662 v1
du__'8739'_'7580'_662 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'_'7580'_662 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_580
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._⟪$⟫_
d__'10218''36''10219'__664 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__664 ~v0 v1 = du__'10218''36''10219'__664 v1
du__'10218''36''10219'__664 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
du__'10218''36''10219'__664 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._.curryʳ
d_curry'691'_666 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_666 ~v0 v1 = du_curry'691'_666 v1
du_curry'691'_666 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_curry'691'_666 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_712
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.ex-⊆
d_ex'45''8838'_668 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_ex'45''8838'_668 ~v0 v1 = du_ex'45''8838'_668 v1
du_ex'45''8838'_668 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_ex'45''8838'_668 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_672
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-comp-cong
d_res'45'comp'45'cong_670 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'comp'45'cong_670 ~v0 v1 = du_res'45'comp'45'cong_670 v1
du_res'45'comp'45'cong_670 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'comp'45'cong_670 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_630
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-comp-dom
d_res'45'comp'45'dom_672 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'comp'45'dom_672 = erased
-- Ledger.Set.Theory._._.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_674 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'comp'45'dom'7504'_674 ~v0 v1
  = du_res'45'comp'45'dom'7504'_674 v1
du_res'45'comp'45'dom'7504'_674 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'comp'45'dom'7504'_674 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_658
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-cong
d_res'45'cong_676 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_676 ~v0 v1 = du_res'45'cong_676 v1
du_res'45'cong_676 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'cong_676 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_594
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-dom
d_res'45'dom_678 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom_678 ~v0 v1 = du_res'45'dom_678 v1
du_res'45'dom_678 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom_678 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_604
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-dom-comm
d_res'45'dom'45'comm_680 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_680 ~v0 v1 = du_res'45'dom'45'comm_680 v1
du_res'45'dom'45'comm_680 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm_680 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.res-dom-comm'
d_res'45'dom'45'comm''_682 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_682 ~v0 v1 = du_res'45'dom'45'comm''_682 v1
du_res'45'dom'45'comm''_682 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm''_682 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_846
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_684 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8745''8838'_684 ~v0 v1
  = du_res'45'dom'45'comm'8745''8838'_684 v1
du_res'45'dom'45'comm'8745''8838'_684 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8745''8838'_684 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_798
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6
-- Ledger.Set.Theory._._.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_686 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8838''8745'_686 ~v0 v1
  = du_res'45'dom'45'comm'8838''8745'_686 v1
du_res'45'dom'45'comm'8838''8745'_686 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8838''8745'_686 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_790
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6
-- Ledger.Set.Theory._._.res-domᵐ
d_res'45'dom'7504'_688 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'7504'_688 ~v0 v1 = du_res'45'dom'7504'_688 v1
du_res'45'dom'7504'_688 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'7504'_688 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_616
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_690 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45'disj'45''8746'_690 ~v0 v1
  = du_res'45'ex'45'disj'45''8746'_690 v1
du_res'45'ex'45'disj'45''8746'_690 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45'disj'45''8746'_690 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_704
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4
-- Ledger.Set.Theory._._.res-ex-disjoint
d_res'45'ex'45'disjoint_692 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'ex'45'disjoint_692 = erased
-- Ledger.Set.Theory._._.res-ex-∪
d_res'45'ex'45''8746'_694 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45''8746'_694 ~v0 v1 = du_res'45'ex'45''8746'_694 v1
du_res'45'ex'45''8746'_694 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45''8746'_694 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4
-- Ledger.Set.Theory._._.res-∅
d_res'45''8709'_696 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_696 ~v0 ~v1 = du_res'45''8709'_696
du_res'45''8709'_696 ::
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709'_696 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_674
-- Ledger.Set.Theory._._.res-∅ᶜ
d_res'45''8709''7580'_698 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_698 ~v0 v1 = du_res'45''8709''7580'_698 v1
du_res'45''8709''7580'_698 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709''7580'_698 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_676
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2
-- Ledger.Set.Theory._._.res-⊆
d_res'45''8838'_700 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45''8838'_700 ~v0 v1 = du_res'45''8838'_700 v1
du_res'45''8838'_700 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45''8838'_700 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_670
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.∈-curryʳ
d_'8712''45'curry'691'_702 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'curry'691'_702 ~v0 v1 = du_'8712''45'curry'691'_702 v1
du_'8712''45'curry'691'_702 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'curry'691'_702 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_724
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory._._.coex-⊆
d_coex'45''8838'_706 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_coex'45''8838'_706 ~v0 v1 = du_coex'45''8838'_706 v1
du_coex'45''8838'_706 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_coex'45''8838'_706 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_922
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.cores-⊆
d_cores'45''8838'_708 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_cores'45''8838'_708 ~v0 v1 = du_cores'45''8838'_708 v1
du_cores'45''8838'_708 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_cores'45''8838'_708 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_920
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._._∣_
d__'8739'__712 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__712 ~v0 v1 = du__'8739'__712 v1
du__'8739'__712 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'__712 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1120
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣_ᶜ
d__'8739'_'7580'_714 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_714 ~v0 v1 = du__'8739'_'7580'_714 v1
du__'8739'_'7580'_714 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'_'7580'_714 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1128
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._⦅_,-⦆
d__'10629'_'44''45''10630'_716 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_716 ~v0 v1
  = du__'10629'_'44''45''10630'_716 v1
du__'10629'_'44''45''10630'_716 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'10629'_'44''45''10630'_716 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1218
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory._._.curryᵐ
d_curry'7504'_718 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_718 ~v0 v1 = du_curry'7504'_718 v1
du_curry'7504'_718 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_curry'7504'_718 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1156
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.mapSingleValue
d_mapSingleValue_720 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_720 ~v0 v1 = du_mapSingleValue_720 v1
du_mapSingleValue_720 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapSingleValue_720 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1148
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.mapValueRestricted
d_mapValueRestricted_722 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_722 ~v0 v1 = du_mapValueRestricted_722 v1
du_mapValueRestricted_722 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValueRestricted_722 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1140
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-singleton
d_res'45'singleton_724 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_724 ~v0 v1 = du_res'45'singleton_724 v1
du_res'45'singleton_724 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton_724 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1170
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-singleton'
d_res'45'singleton''_726 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''_726 ~v0 v1 = du_res'45'singleton''_726 v1
du_res'45'singleton''_726 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''_726 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1206
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_728 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_728 ~v0 v1
  = du_res'7504''45''8709''7580'_728 v1
du_res'7504''45''8709''7580'_728 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'7504''45''8709''7580'_728 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'7504''45''8709''7580'_1138
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2
-- Ledger.Set.Theory._._.update
d_update_730 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_730 ~v0 v1 = du_update_730 v1
du_update_730 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_update_730 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1220
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._._⁻¹_
d__'8315''185'__734 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
d__'8315''185'__734 ~v0 v1 = du__'8315''185'__734 v1
du__'8315''185'__734 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
du__'8315''185'__734 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1408
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._↾_
d__'8638'__736 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8638'__736 ~v0 v1 = du__'8638'__736 v1
du__'8638'__736 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8638'__736 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8638'__1392
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._↾_ᶜ
d__'8638'_'7580'_738 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8638'_'7580'_738 ~v0 v1 = du__'8638'_'7580'_738 v1
du__'8638'_'7580'_738 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8638'_'7580'_738 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8638'_'7580'_1400
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∪ˡ_
d__'8746''737'__742 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__742 ~v0 v1 = du__'8746''737'__742 v1
du__'8746''737'__742 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__742 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__696
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∪ˡ'_
d__'8746''737'''__744 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__744 ~v0 v1 = du__'8746''737'''__744 v1
du__'8746''737'''__744 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8746''737'''__744 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__690
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_746 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_746 ~v0 v1
  = du_disjoint'45''8746''737''45''8746'_746 v1
du_disjoint'45''8746''737''45''8746'_746 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_746 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_710
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.insert
d_insert_748 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_748 ~v0 v1 = du_insert_748 v1
du_insert_748 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_748 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_718
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.insertIfJust
d_insertIfJust_750 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_750 ~v0 v1 = du_insertIfJust_750 v1
du_insertIfJust_750 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_750 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_726
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5
-- Ledger.Set.Theory._._._∩_
d__'8745'__754 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8745'__754 ~v0 v1 = du__'8745'__754 v1
du__'8745'__754 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'8745'__754 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__686
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._._＼_
d__'65340'__756 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'65340'__756 ~v0 v1 = du__'65340'__756 v1
du__'65340'__756 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'65340'__756 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'65340'__712
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._.disjoint'
d_disjoint''_758 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> ()
d_disjoint''_758 = erased
-- Ledger.Set.Theory._._.∈-∩
d_'8712''45''8745'_760 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_760 ~v0 v1 = du_'8712''45''8745'_760 v1
du_'8712''45''8745'_760 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45''8745'_760 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._.lookupᵐ
d_lookup'7504'_764 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504'_764 ~v0 ~v1 = du_lookup'7504'_764
du_lookup'7504'_764 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_lookup'7504'_764 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1354
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory._._.lookupᵐ?
d_lookup'7504''63'_766 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_766 ~v0 ~v1 = du_lookup'7504''63'_766
du_lookup'7504''63'_766 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
du_lookup'7504''63'_766 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1358
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory._._.pullbackMap
d_pullbackMap_768 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pullbackMap_768 ~v0 ~v1 = du_pullbackMap_768
du_pullbackMap_768 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pullbackMap_768 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1364
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory._._._∪⁺_
d__'8746''8314'__772 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''8314'__772 ~v0 ~v1 = du__'8746''8314'__772
du__'8746''8314'__772 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''8314'__772
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__526
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._._.aggregate₊
d_aggregate'8330'_774 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_774 ~v0 ~v1 = du_aggregate'8330'_774
du_aggregate'8330'_774 ::
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aggregate'8330'_774
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_528
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._._.unionThese
d_unionThese_776 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
d_unionThese_776 ~v0 ~v1 = du_unionThese_776
du_unionThese_776 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
du_unionThese_776 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_326
      (coe d_List'45'Model'7496'_10) v2 v3 v4 v5 v6
-- Ledger.Set.Theory._._.unionWith
d_unionWith_778 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unionWith_778 ~v0 ~v1 = du_unionWith_778
du_unionWith_778 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unionWith_778 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_388
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6
-- Ledger.Set.Theory._._._∩ᵐ_
d__'8745''7504'__794 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__794 ~v0 ~v1 v2 v3 = du__'8745''7504'__794 v2 v3
du__'8745''7504'__794 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8745''7504'__794 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__610
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            v0 v1))
-- Ledger.Set.Theory._._._._∪ˡᶠ_
d__'8746''737''7584'__806 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737''7584'__806 ~v0 ~v1 v2 ~v3 ~v4
  = du__'8746''737''7584'__806 v2
du__'8746''737''7584'__806 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737''7584'__806 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__960
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 d_List'45'Model'7496'_10
              erased v0 v2 v1))
-- Ledger.Set.Theory._._._.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_808 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'partition_808 ~v0 ~v1 v2 v3 v4
  = du_indexedSum'7504''45'partition_808 v2 v3 v4
du_indexedSum'7504''45'partition_808 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504''45'partition_808 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_1010
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v2) (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v3 v4 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 d_List'45'Model'7496'_10
              erased v0 v4 v3))
-- Ledger.Set.Theory._._._.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_810 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_indexedSum'7504''45''8746'_810 ~v0 ~v1 v2 v3 v4
  = du_indexedSum'7504''45''8746'_810 v2 v3 v4
du_indexedSum'7504''45''8746'_810 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
du_indexedSum'7504''45''8746'_810 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_976
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v2) (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v7 v8 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 d_List'45'Model'7496'_10
              erased v0 v8 v7))
      v3 v4 v5
-- Ledger.Set.Theory._._._.∪ˡ-finite
d_'8746''737''45'finite_812 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'finite_812 ~v0 ~v1 v2 ~v3 ~v4
  = du_'8746''737''45'finite_812 v2
du_'8746''737''45'finite_812 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'finite_812 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_954
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 d_List'45'Model'7496'_10
              erased v0 v2 v1))
-- Ledger.Set.Theory.Properties._._≡_⨿_
d__'8801'_'10815'__818 ::
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801'_'10815'__818 = erased
-- Ledger.Set.Theory.Properties._.Dec-∈-fromList
d_Dec'45''8712''45'fromList_820 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'fromList_820 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'fromList_504
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.Dec-∈-singleton
d_Dec'45''8712''45'singleton_822 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'singleton_822 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'singleton_510
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Set-BddSemilattice
d_Set'45'BddSemilattice_824 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102
d_Set'45'BddSemilattice_824 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BddSemilattice_614
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.Set-BoundedJoinSemilattice
d_Set'45'BoundedJoinSemilattice_826 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_116
d_Set'45'BoundedJoinSemilattice_826 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BoundedJoinSemilattice_610
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.Set-JoinSemilattice
d_Set'45'JoinSemilattice_828 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_Set'45'JoinSemilattice_828 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'JoinSemilattice_608
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.card-≡ᵉ
d_card'45''8801''7497'_830 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_830 = erased
-- Ledger.Set.Theory.Properties._.cong-⊆⇒cong
d_cong'45''8838''8658'cong_832 ::
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
d_cong'45''8838''8658'cong_832 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_cong'45''8838''8658'cong_262
      v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.cong-⊆⇒cong₂
d_cong'45''8838''8658'cong'8322'_834 ::
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
d_cong'45''8838''8658'cong'8322'_834 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                     v10
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_cong'45''8838''8658'cong'8322'_270
      v4 v5 v6 v7 v8 v9 v10
-- Ledger.Set.Theory.Properties._.disjoint-sym
d_disjoint'45'sym_836 ::
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
d_disjoint'45'sym_836 = erased
-- Ledger.Set.Theory.Properties._.filter-finite
d_filter'45'finite_838 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'finite_838 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_528
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Properties._.filter-⊆
d_filter'45''8838'_840 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45''8838'_840 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_496
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Properties._.map-∅
d_map'45''8709'_842 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8709'_842 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8709'_442
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3
-- Ledger.Set.Theory.Properties._.map-∘
d_map'45''8728'_844 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8728'_844 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728'_380
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory.Properties._.map-∘⊆
d_map'45''8728''8838'_846 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8728''8838'_846 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728''8838'_364
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.map-≡ᵉ
d_map'45''8801''7497'_848 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8801''7497'_848 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_414
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.map-⊆
d_map'45''8838'_850 ::
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
d_map'45''8838'_850 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838'_388
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.map-⊆∘
d_map'45''8838''8728'_852 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8838''8728'_852 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838''8728'_342
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.mapPartial-∅
d_mapPartial'45''8709'_854 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartial'45''8709'_854 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_mapPartial'45''8709'_452
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory.Properties._.singleton-finite
d_singleton'45'finite_856 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_856 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_514
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.sublist-⇔
d_sublist'45''8660'_858 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_sublist'45''8660'_858 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_sublist'45''8660'_748
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∃-sublist-⇔
d_'8707''45'sublist'45''8660'_860 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8707''45'sublist'45''8660'_860 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8707''45'sublist'45''8660'_788
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.∃?-sublist-⇔
d_'8707''63''45'sublist'45''8660'_862 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8707''63''45'sublist'45''8660'_862 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8707''63''45'sublist'45''8660'_810
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.∅-finite
d_'8709''45'finite_864 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_864 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_436
-- Ledger.Set.Theory.Properties._.∅-least
d_'8709''45'least_866 ::
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'least_866 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_430 v2
-- Ledger.Set.Theory.Properties._.∅-minimum
d_'8709''45'minimum_868 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8709''45'minimum_868 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'minimum_426
-- Ledger.Set.Theory.Properties._.∅-weakly-finite
d_'8709''45'weakly'45'finite_870 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'weakly'45'finite_870 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'weakly'45'finite_434
-- Ledger.Set.Theory.Properties._.∈-filter⁺'
d_'8712''45'filter'8314'''_872 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'filter'8314'''_872 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_196
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Properties._.∈-filter⁻'
d_'8712''45'filter'8315'''_874 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'8315'''_874 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_194
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Properties._.∈-fromList⁺
d_'8712''45'fromList'8314'_876 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8314'_876 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8314'_230
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Properties._.∈-fromList⁻
d_'8712''45'fromList'8315'_878 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8315'_878 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_224
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∈-map⁺'
d_'8712''45'map'8314'''_880 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''_880 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''_168
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.∈-map⁺''
d_'8712''45'map'8314'''''_882 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''''_882 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_176
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.∈-map⁻'
d_'8712''45'map'8315'''_884 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'map'8315'''_884 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_164
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.∈-×
d_'8712''45''215'_886 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45''215'_886 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''215'_320
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.∈-∪⁺
d_'8712''45''8746''8314'_888 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45''8746''8314'_888 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_212
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∈-∪⁻
d_'8712''45''8746''8315'_890 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8712''45''8746''8315'_890 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_210
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∉-∅
d_'8713''45''8709'_892 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45''8709'_892 = erased
-- Ledger.Set.Theory.Properties._.∪-Supremum
d_'8746''45'Supremum_894 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'Supremum_894 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'Supremum_574
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-cong
d_'8746''45'cong_896 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'cong_896 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_584
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4
-- Ledger.Set.Theory.Properties._.∪-cong-⊆
d_'8746''45'cong'45''8838'_898 ::
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
d_'8746''45'cong'45''8838'_898 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong'45''8838'_578
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.∪-identityʳ
d_'8746''45'identity'691'_900 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'691'_900 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'691'_642
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.∪-identityˡ
d_'8746''45'identity'737'_902 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'737'_902 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'737'_638
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.∪-preserves-finite
d_'8746''45'preserves'45'finite_904 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite_904 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4
-- Ledger.Set.Theory.Properties._.∪-sym
d_'8746''45'sym_906 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'sym_906 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'sym_606
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-⊆
d_'8746''45''8838'_908 ::
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
d_'8746''45''8838'_908 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838'_552
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.∪-⊆ʳ
d_'8746''45''8838''691'_910 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''691'_910 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''691'_550
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∪-⊆ˡ
d_'8746''45''8838''737'_912 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''737'_912 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''737'_548
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.≡ᵉ-Setoid
d_'8801''7497''45'Setoid_914 ::
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''7497''45'Setoid_914 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_298
-- Ledger.Set.Theory.Properties._.≡ᵉ-isEquivalence
d_'8801''7497''45'isEquivalence_916 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'8801''7497''45'isEquivalence_916 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_284
-- Ledger.Set.Theory.Properties._.≡ᵉ⇔≡ᵉ'
d_'8801''7497''8660''8801''7497'''_918 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''7497''8660''8801''7497'''_918 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_246
-- Ledger.Set.Theory.Properties._.⊆-PartialOrder
d_'8838''45'PartialOrder_920 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8838''45'PartialOrder_920 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'PartialOrder_314
-- Ledger.Set.Theory.Properties._.⊆-Preorder
d_'8838''45'Preorder_922 ::
  () ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8838''45'Preorder_922 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Preorder_310
-- Ledger.Set.Theory.Properties._.⊆-Transitive
d_'8838''45'Transitive_924 ::
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
d_'8838''45'Transitive_924 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_278 v4 v5
      v6 v7
-- Ledger.Set.Theory.Properties._.⊆-isPreorder
d_'8838''45'isPreorder_926 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8838''45'isPreorder_926 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'isPreorder_302
-- Ledger.Set.Theory.Properties._.⊆→∪
d_'8838''8594''8746'_928 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''8594''8746'_928 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''8594''8746'_560
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.Set-Lattice
d_Set'45'Lattice_932 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_Set'45'Lattice_932 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_720
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_934 ::
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
d_disjoint'''8658'disjoint_934 = erased
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_936 ::
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
d_disjoint'8658'disjoint''_936 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_664
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-Infimum
d_'8745''45'Infimum_938 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_938 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_688
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_940 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'691'_940 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_712
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_942 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'737'_942 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_718
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-cong
d_'8745''45'cong_944 ::
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
d_'8745''45'cong_944 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-cong-⊆
d_'8745''45'cong'45''8838'_946 ::
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
d_'8745''45'cong'45''8838'_946 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_698
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-preserves-finite
d_'8745''45'preserves'45'finite_948 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_948 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_696
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-sym
d_'8745''45'sym_950 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_950 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_736
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-sym⊆
d_'8745''45'sym'8838'_952 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_952 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_722
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆
d_'8745''45''8838'_954 ::
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
d_'8745''45''8838'_954 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6 v7 v8
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆ʳ
d_'8745''45''8838''691'_956 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_956 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_678
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆ˡ
d_'8745''45''8838''737'_958 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_958 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_676
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._._.Set-Lattice
d_Set'45'Lattice_970 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_Set'45'Lattice_970 ~v0 v1 = du_Set'45'Lattice_970 v1
du_Set'45'Lattice_970 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
du_Set'45'Lattice_970 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_720
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_972 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'''8658'disjoint_972 = erased
-- Ledger.Set.Theory.Properties._._.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_974 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'8658'disjoint''_974 ~v0 ~v1
  = du_disjoint'8658'disjoint''_974
du_disjoint'8658'disjoint''_974 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'8658'disjoint''_974 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_664
-- Ledger.Set.Theory.Properties._._.∩-Infimum
d_'8745''45'Infimum_976 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_976 ~v0 v1 = du_'8745''45'Infimum_976 v1
du_'8745''45'Infimum_976 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'Infimum_976 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_688
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_978 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'691'_978 ~v0 v1
  = du_'8745''45'OrderHomomorphism'691'_978 v1
du_'8745''45'OrderHomomorphism'691'_978 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'691'_978 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_712
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_980 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'737'_980 ~v0 v1
  = du_'8745''45'OrderHomomorphism'737'_980 v1
du_'8745''45'OrderHomomorphism'737'_980 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'737'_980 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_718
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-cong
d_'8745''45'cong_982 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'cong_982 ~v0 v1 = du_'8745''45'cong_982 v1
du_'8745''45'cong_982 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'cong_982 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-cong-⊆
d_'8745''45'cong'45''8838'_984 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
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
d_'8745''45'cong'45''8838'_984 ~v0 v1
  = du_'8745''45'cong'45''8838'_984 v1
du_'8745''45'cong'45''8838'_984 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
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
du_'8745''45'cong'45''8838'_984 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_698
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-preserves-finite
d_'8745''45'preserves'45'finite_986 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_986 ~v0 v1
  = du_'8745''45'preserves'45'finite_986 v1
du_'8745''45'preserves'45'finite_986 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'preserves'45'finite_986 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_696
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v1 v2
-- Ledger.Set.Theory.Properties._._.∩-sym
d_'8745''45'sym_988 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_988 ~v0 v1 = du_'8745''45'sym_988 v1
du_'8745''45'sym_988 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'sym_988 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_736
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-sym⊆
d_'8745''45'sym'8838'_990 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_990 ~v0 v1 = du_'8745''45'sym'8838'_990 v1
du_'8745''45'sym'8838'_990 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45'sym'8838'_990 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_722
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-⊆
d_'8745''45''8838'_992 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
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
d_'8745''45''8838'_992 ~v0 v1 = du_'8745''45''8838'_992 v1
du_'8745''45''8838'_992 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
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
du_'8745''45''8838'_992 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._._.∩-⊆ʳ
d_'8745''45''8838''691'_994 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_994 ~v0 v1
  = du_'8745''45''8838''691'_994 v1
du_'8745''45''8838''691'_994 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''691'_994 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_678
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-⊆ˡ
d_'8745''45''8838''737'_996 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_996 ~v0 v1
  = du_'8745''45''8838''737'_996 v1
du_'8745''45''8838''737'_996 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''737'_996 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_676
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory._ᶠᵐ
d__'7584''7504'_998 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''7504'_998 ~v0 ~v1 v2 = du__'7584''7504'_998 v2
du__'7584''7504'_998 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''7504'_998 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                (coe du_finiteness_214 v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Set.Theory._ᶠˢ
d__'7584''738'_1004 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''738'_1004 ~v0 v1 = du__'7584''738'_1004 v1
du__'7584''738'_1004 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''738'_1004 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
      (coe du_finiteness_214 v0)
-- Ledger.Set.Theory.filterˢ
d_filter'738'_1012 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
d_filter'738'_1012 ~v0 ~v1 v2 = du_filter'738'_1012 v2
du_filter'738'_1012 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
du_filter'738'_1012 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_402
      (MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe du_to'45'sp_210 (coe v0))
-- Ledger.Set.Theory.filterᵐ
d_filter'7504'_1020 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_1020 ~v0 ~v1 ~v2 v3 = du_filter'7504'_1020 v3
du_filter'7504'_1020 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504'_1020 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_652
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe du_to'45'sp_210 (coe v0))
-- Ledger.Set.Theory.filterKeys
d_filterKeys_1028 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_1028 ~v0 ~v1 ~v2 v3 = du_filterKeys_1028 v3
du_filterKeys_1028 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterKeys_1028 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filterKeys_666
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe du_to'45'sp_210 (coe v0))
-- Ledger.Set.Theory._↾'_
d__'8638'''__1036 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8638'''__1036 ~v0 ~v1 v2 ~v3 v4 = du__'8638'''__1036 v2 v4
du__'8638'''__1036 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8638'''__1036 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8638'''__986
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v0) (coe du_to'45'sp_210 (coe v1))
-- Ledger.Set.Theory.indexedSumᵛ'
d_indexedSum'7515'''_1042 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'''_1042 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_indexedSum'7515'''_1042 v3 v4 v5 v6 v7
du_indexedSum'7515'''_1042 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7515'''_1042 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7515'_912
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
         (coe v2))
      v0 v1 v3 (coe du__'7584''7504'_998 (coe v4))
-- Ledger.Set.Theory.indexedSum'
d_indexedSum''_1048 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSum''_1048 ~v0 ~v1 v2 v3 v4 v5
  = du_indexedSum''_1048 v2 v3 v4 v5
du_indexedSum''_1048 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_indexedSum''_1048 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum_734
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
         (coe v1))
      v0 v2 (coe du__'7584''738'_1004 (coe v3))
