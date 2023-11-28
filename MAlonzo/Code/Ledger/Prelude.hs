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

module MAlonzo.Code.Ledger.Prelude where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Interface.HasEmptySet
import qualified MAlonzo.Code.Ledger.Set.Theory

import Prelude
import qualified Data.Text as T
-- Ledger.Prelude._.HasEmptySet
d_HasEmptySet_6 a0 = ()
-- Ledger.Prelude._.HasEmptySet-Map
d_HasEmptySet'45'Map_8 ::
  () -> () -> MAlonzo.Code.Interface.HasEmptySet.T_HasEmptySet_272
d_HasEmptySet'45'Map_8 v0 v1
  = coe
      MAlonzo.Code.Interface.HasEmptySet.du_HasEmptySet'45'Map_288
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
-- Ledger.Prelude._.HasEmptySet-Set
d_HasEmptySet'45'Set_10 ::
  () -> MAlonzo.Code.Interface.HasEmptySet.T_HasEmptySet_272
d_HasEmptySet'45'Set_10 v0
  = coe
      MAlonzo.Code.Interface.HasEmptySet.du_HasEmptySet'45'Set_282
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1414
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
-- Ledger.Prelude._.∅
d_'8709'_12 ::
  MAlonzo.Code.Interface.HasEmptySet.T_HasEmptySet_272 -> AgdaAny
d_'8709'_12 v0
  = coe MAlonzo.Code.Interface.HasEmptySet.d_'8709'_278 (coe v0)
-- Ledger.Prelude._.HasEmptySet.∅
d_'8709'_16 ::
  MAlonzo.Code.Interface.HasEmptySet.T_HasEmptySet_272 -> AgdaAny
d_'8709'_16 v0
  = coe MAlonzo.Code.Interface.HasEmptySet.d_'8709'_278 (coe v0)
-- Ledger.Prelude.error
d_error_22 ::
  forall xℓ.
    forall xa.
      MAlonzo.Code.Agda.Primitive.T_Level_18 ->
      () -> MAlonzo.Code.Agda.Builtin.String.T_String_6 -> xa
d_error_22 = \_ _ -> error . T.unpack
