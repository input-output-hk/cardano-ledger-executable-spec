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

module MAlonzo.Code.Interface.HasSingleton where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map

-- Interface.HasSingleton._.Map
d_Map_152 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Map_152 = erased
-- Interface.HasSingleton.HasSingleton
d_HasSingleton_284 a0 a1 a2 = ()
newtype T_HasSingleton_284
  = C_HasSingleton'46'constructor_995 (AgdaAny -> AgdaAny)
-- Interface.HasSingleton.HasSingleton.❴_❵
d_'10100'_'10101'_292 :: T_HasSingleton_284 -> AgdaAny -> AgdaAny
d_'10100'_'10101'_292 v0
  = case coe v0 of
      C_HasSingleton'46'constructor_995 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.HasSingleton.HasSingletonSet-Set
d_HasSingletonSet'45'Set_296 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> T_HasSingleton_284
d_HasSingletonSet'45'Set_296 v0 ~v1
  = du_HasSingletonSet'45'Set_296 v0
du_HasSingletonSet'45'Set_296 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> T_HasSingleton_284
du_HasSingletonSet'45'Set_296 v0
  = coe
      C_HasSingleton'46'constructor_995
      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased)
-- Interface.HasSingleton.HasSingletonSet-Map
d_HasSingletonSet'45'Map_302 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_HasSingleton_284
d_HasSingletonSet'45'Map_302 v0 ~v1 ~v2
  = du_HasSingletonSet'45'Map_302 v0
du_HasSingletonSet'45'Map_302 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> T_HasSingleton_284
du_HasSingletonSet'45'Map_302 v0
  = coe
      C_HasSingleton'46'constructor_995
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_678 (coe v0))
-- Interface.HasSingleton._.❴_❵
d_'10100'_'10101'_306 :: T_HasSingleton_284 -> AgdaAny -> AgdaAny
d_'10100'_'10101'_306 v0 = coe d_'10100'_'10101'_292 (coe v0)
