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

module MAlonzo.Code.Interface.IsSet where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Axiom.Set.TotalMap

-- Interface.IsSet.Map.Map
d_Map_126 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Map_126 = erased
-- Interface.IsSet.TotalMap.TotalMap
d_TotalMap_258 a0 a1 a2 = ()
-- Interface.IsSet.IsSet
d_IsSet_440 a0 a1 a2 = ()
newtype T_IsSet_440
  = C_IsSet'46'constructor_1807 (AgdaAny -> AgdaAny)
-- Interface.IsSet.IsSet.toSet
d_toSet_448 :: T_IsSet_440 -> AgdaAny -> AgdaAny
d_toSet_448 v0
  = case coe v0 of
      C_IsSet'46'constructor_1807 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.IsSet.IsSet._∈_
d__'8712'__450 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_440 -> AgdaAny -> AgdaAny -> ()
d__'8712'__450 = erased
-- Interface.IsSet.IsSet._∉_
d__'8713'__452 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_440 -> AgdaAny -> AgdaAny -> ()
d__'8713'__452 = erased
-- Interface.IsSet._._∈_
d__'8712'__464 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_440 -> AgdaAny -> AgdaAny -> ()
d__'8712'__464 = erased
-- Interface.IsSet._._∉_
d__'8713'__466 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_440 -> AgdaAny -> AgdaAny -> ()
d__'8713'__466 = erased
-- Interface.IsSet._.toSet
d_toSet_468 :: T_IsSet_440 -> AgdaAny -> AgdaAny
d_toSet_468 v0 = coe d_toSet_448 (coe v0)
-- Interface.IsSet.All-syntax
d_All'45'syntax_476 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_440 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_476 = erased
-- Interface.IsSet._.dom
d_dom_494 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> T_IsSet_440 -> AgdaAny -> AgdaAny
d_dom_494 v0 ~v1 ~v2 ~v3 v4 v5 = du_dom_494 v0 v4 v5
du_dom_494 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_IsSet_440 -> AgdaAny -> AgdaAny
du_dom_494 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_314 v0 (coe d_toSet_448 v1 v2)
-- Interface.IsSet._.range
d_range_496 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> T_IsSet_440 -> AgdaAny -> AgdaAny
d_range_496 v0 ~v1 ~v2 ~v3 v4 v5 = du_range_496 v0 v4 v5
du_range_496 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_IsSet_440 -> AgdaAny -> AgdaAny
du_range_496 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_316 v0 (coe d_toSet_448 v1 v2)
-- Interface.IsSet.IsSet-Set
d_IsSet'45'Set_498 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> T_IsSet_440
d_IsSet'45'Set_498 ~v0 ~v1 = du_IsSet'45'Set_498
du_IsSet'45'Set_498 :: T_IsSet_440
du_IsSet'45'Set_498
  = coe C_IsSet'46'constructor_1807 (coe (\ v0 -> v0))
-- Interface.IsSet.IsSet-Map
d_IsSet'45'Map_502 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_IsSet_440
d_IsSet'45'Map_502 ~v0 ~v1 ~v2 = du_IsSet'45'Map_502
du_IsSet'45'Map_502 :: T_IsSet_440
du_IsSet'45'Map_502
  = coe
      C_IsSet'46'constructor_1807
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_484)
-- Interface.IsSet.IsSet-TotalMap
d_IsSet'45'TotalMap_504 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_IsSet_440
d_IsSet'45'TotalMap_504 ~v0 ~v1 ~v2 = du_IsSet'45'TotalMap_504
du_IsSet'45'TotalMap_504 :: T_IsSet_440
du_IsSet'45'TotalMap_504
  = coe
      C_IsSet'46'constructor_1807
      (coe (\ v0 -> MAlonzo.Code.Axiom.Set.TotalMap.d_rel_66 (coe v0)))
