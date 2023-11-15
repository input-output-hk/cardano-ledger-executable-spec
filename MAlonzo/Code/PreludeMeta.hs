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

module MAlonzo.Code.PreludeMeta where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Interface.MonadError
import qualified MAlonzo.Code.Interface.MonadTC

-- PreludeMeta._.catch
d_catch_4 ::
  MAlonzo.Code.Interface.MonadError.T_MonadError_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d_catch_4 v0
  = coe MAlonzo.Code.Interface.MonadError.d_catch_58 (coe v0)
-- PreludeMeta._.error
d_error_6 ::
  MAlonzo.Code.Interface.MonadError.T_MonadError_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny -> AgdaAny
d_error_6 v0
  = coe MAlonzo.Code.Interface.MonadError.d_error_56 (coe v0)
-- PreludeMeta.iTC
d_iTC_8 :: MAlonzo.Code.Interface.MonadTC.T_MonadTC_104
d_iTC_8 = coe MAlonzo.Code.Interface.MonadTC.d_MonadTC'45'TC_790
-- PreludeMeta.iTCE
d_iTCE_10 :: MAlonzo.Code.Interface.MonadError.T_MonadError_46
d_iTCE_10
  = coe MAlonzo.Code.Interface.MonadError.d_MonadError'45'TC_60
