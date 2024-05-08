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

module MAlonzo.Code.Interface.HasEmptySet where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map

-- Interface.HasEmptySet._.Map
d_Map_154 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Map_154 = erased
-- Interface.HasEmptySet.HasEmptySet
d_HasEmptySet_286 a0 a1 = ()
newtype T_HasEmptySet_286
  = C_HasEmptySet'46'constructor_1007 AgdaAny
-- Interface.HasEmptySet.HasEmptySet.∅
d_'8709'_292 :: T_HasEmptySet_286 -> AgdaAny
d_'8709'_292 v0
  = case coe v0 of
      C_HasEmptySet'46'constructor_1007 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasEmptySet.HasEmptySet-Set
d_HasEmptySet'45'Set_296 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> T_HasEmptySet_286
d_HasEmptySet'45'Set_296 v0 ~v1 = du_HasEmptySet'45'Set_296 v0
du_HasEmptySet'45'Set_296 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> T_HasEmptySet_286
du_HasEmptySet'45'Set_296 v0
  = coe
      C_HasEmptySet'46'constructor_1007
      (coe MAlonzo.Code.Axiom.Set.du_'8709'_428 (coe v0))
-- Interface.HasEmptySet.HasEmptySet-Map
d_HasEmptySet'45'Map_302 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> T_HasEmptySet_286
d_HasEmptySet'45'Map_302 v0 ~v1 ~v2 = du_HasEmptySet'45'Map_302 v0
du_HasEmptySet'45'Map_302 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> T_HasEmptySet_286
du_HasEmptySet'45'Map_302 v0
  = coe
      C_HasEmptySet'46'constructor_1007
      (coe MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_514 (coe v0))
-- Interface.HasEmptySet._.∅
d_'8709'_306 :: T_HasEmptySet_286 -> AgdaAny
d_'8709'_306 v0 = coe d_'8709'_292 (coe v0)
