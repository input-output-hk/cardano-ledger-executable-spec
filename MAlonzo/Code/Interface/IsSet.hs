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
d_Map_152 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Map_152 = erased
-- Interface.IsSet.TotalMap.TotalMap
d_TotalMap_290 a0 a1 a2 = ()
-- Interface.IsSet.IsSet
d_IsSet_470 a0 a1 a2 = ()
newtype T_IsSet_470
  = C_IsSet'46'constructor_1983 (AgdaAny -> AgdaAny)
-- Interface.IsSet.IsSet.toSet
d_toSet_478 :: T_IsSet_470 -> AgdaAny -> AgdaAny
d_toSet_478 v0
  = case coe v0 of
      C_IsSet'46'constructor_1983 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.IsSet.IsSet._∈_
d__'8712'__480 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_470 -> AgdaAny -> AgdaAny -> ()
d__'8712'__480 = erased
-- Interface.IsSet.IsSet._∉_
d__'8713'__482 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_470 -> AgdaAny -> AgdaAny -> ()
d__'8713'__482 = erased
-- Interface.IsSet._._∈_
d__'8712'__494 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_470 -> AgdaAny -> AgdaAny -> ()
d__'8712'__494 = erased
-- Interface.IsSet._._∉_
d__'8713'__496 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_470 -> AgdaAny -> AgdaAny -> ()
d__'8713'__496 = erased
-- Interface.IsSet._.toSet
d_toSet_498 :: T_IsSet_470 -> AgdaAny -> AgdaAny
d_toSet_498 v0 = coe d_toSet_478 (coe v0)
-- Interface.IsSet.All-syntax
d_All'45'syntax_506 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsSet_470 -> (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_506 = erased
-- Interface.IsSet._.dom
d_dom_524 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> T_IsSet_470 -> AgdaAny -> AgdaAny
d_dom_524 v0 ~v1 ~v2 ~v3 v4 v5 = du_dom_524 v0 v4 v5
du_dom_524 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_IsSet_470 -> AgdaAny -> AgdaAny
du_dom_524 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_336 v0 (coe d_toSet_478 v1 v2)
-- Interface.IsSet._.range
d_range_526 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> T_IsSet_470 -> AgdaAny -> AgdaAny
d_range_526 v0 ~v1 ~v2 ~v3 v4 v5 = du_range_526 v0 v4 v5
du_range_526 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_IsSet_470 -> AgdaAny -> AgdaAny
du_range_526 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_338 v0 (coe d_toSet_478 v1 v2)
-- Interface.IsSet.IsSet-Set
d_IsSet'45'Set_528 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> T_IsSet_470
d_IsSet'45'Set_528 ~v0 ~v1 = du_IsSet'45'Set_528
du_IsSet'45'Set_528 :: T_IsSet_470
du_IsSet'45'Set_528
  = coe C_IsSet'46'constructor_1983 (coe (\ v0 -> v0))
-- Interface.IsSet.IsSet-Map
d_IsSet'45'Map_532 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_IsSet_470
d_IsSet'45'Map_532 ~v0 ~v1 ~v2 = du_IsSet'45'Map_532
du_IsSet'45'Map_532 :: T_IsSet_470
du_IsSet'45'Map_532
  = coe
      C_IsSet'46'constructor_1983
      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532)
-- Interface.IsSet.IsSet-TotalMap
d_IsSet'45'TotalMap_534 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_IsSet_470
d_IsSet'45'TotalMap_534 ~v0 ~v1 ~v2 = du_IsSet'45'TotalMap_534
du_IsSet'45'TotalMap_534 :: T_IsSet_470
du_IsSet'45'TotalMap_534
  = coe
      C_IsSet'46'constructor_1983
      (coe (\ v0 -> MAlonzo.Code.Axiom.Set.TotalMap.d_rel_66 (coe v0)))
