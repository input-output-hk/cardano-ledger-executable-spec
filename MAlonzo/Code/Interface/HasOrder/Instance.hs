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

module MAlonzo.Code.Interface.HasOrder.Instance where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Data.Integer.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.Decidable.Instance
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Interface.HasOrder.Instance.ℕ-hasPreorder
d_ℕ'45'hasPreorder_10 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_ℕ'45'hasPreorder_10
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasPreorder'46'constructor_843
      MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2620
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_1322
           (coe
              (\ v2 ->
                 let v3
                       = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                           (coe v0) (coe v1) in
                 case coe v3 of
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v4 v5
                     -> if coe v4
                          then case coe v5 of
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v6
                                   -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v6)
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          else coe
                                 seq (coe v5)
                                 (coe
                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_2748
                                       (coe v1) (coe v2)))
                   _ -> MAlonzo.RTE.mazUnreachableError))
           (coe
              (\ v2 ->
                 case coe v2 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
                     -> coe
                          MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2684 (coe v3)
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
                     -> coe
                          MAlonzo.Code.Data.Nat.Properties.du_'8804''45'reflexive_2566
                          (coe v0)
                   _ -> MAlonzo.RTE.mazUnreachableError)))
-- Interface.HasOrder.Instance.ℕ-hasPartialOrder
d_ℕ'45'hasPartialOrder_30 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPartialOrder_184
d_ℕ'45'hasPartialOrder_30
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasPartialOrder'46'constructor_8651
      (coe d_ℕ'45'hasPreorder_10) erased
-- Interface.HasOrder.Instance.ℕ-Dec-≤
d_ℕ'45'Dec'45''8804'_32 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_ℕ'45'Dec'45''8804'_32
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_Decidable'178''8658'Dec_110
      (coe MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612)
-- Interface.HasOrder.Instance.ℕ-Dec-<
d_ℕ'45'Dec'45''60'_34 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_ℕ'45'Dec'45''60'_34
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_Decidable'178''8658'Dec_110
      (coe MAlonzo.Code.Data.Nat.Properties.d__'60''63'__2860)
-- Interface.HasOrder.Instance.ℕ-hasDecPartialOrder
d_ℕ'45'hasDecPartialOrder_36 ::
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_238
d_ℕ'45'hasDecPartialOrder_36
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasDecPartialOrder'46'constructor_18711
      (coe d_ℕ'45'hasPartialOrder_30)
      (coe
         (\ v0 v1 ->
            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612
              (coe v0) (coe v1)))
      (coe
         (\ v0 v1 ->
            MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612
              (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)))
-- Interface.HasOrder.Instance.ℤ-hasPreorder
d_ℤ'45'hasPreorder_38 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_ℤ'45'hasPreorder_38
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasPreorder'46'constructor_843
      MAlonzo.Code.Data.Integer.Properties.d_'8804''45'isPreorder_2584
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_1322
           (coe
              (\ v2 ->
                 let v3
                       = MAlonzo.Code.Data.Integer.Properties.d__'8799'__2476
                           (coe v0) (coe v1) in
                 case coe v3 of
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v4 v5
                     -> if coe v4
                          then case coe v5 of
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v6
                                   -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v6)
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          else coe
                                 seq (coe v5)
                                 (coe
                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                    (coe
                                       MAlonzo.Code.Data.Integer.Properties.du_'8804''8743''8802''8658''60'_2712
                                       (coe v0) (coe v1) (coe v2)))
                   _ -> MAlonzo.RTE.mazUnreachableError))
           (coe
              (\ v2 ->
                 case coe v2 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
                     -> coe
                          MAlonzo.Code.Data.Integer.Properties.du_'60''8658''8804'_2630
                          (coe v3)
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
                     -> coe
                          MAlonzo.Code.Data.Integer.Properties.du_'8804''45'reflexive_2506
                          (coe v0)
                   _ -> MAlonzo.RTE.mazUnreachableError)))
-- Interface.HasOrder.Instance.ℤ-hasPartialOrder
d_ℤ'45'hasPartialOrder_58 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPartialOrder_184
d_ℤ'45'hasPartialOrder_58
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasPartialOrder'46'constructor_8651
      (coe d_ℤ'45'hasPreorder_38) erased
-- Interface.HasOrder.Instance.ℤ-Dec-≤
d_ℤ'45'Dec'45''8804'_60 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_ℤ'45'Dec'45''8804'_60
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_Decidable'178''8658'Dec_110
      (coe MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2556)
-- Interface.HasOrder.Instance.ℤ-Dec-<
d_ℤ'45'Dec'45''60'_62 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_ℤ'45'Dec'45''60'_62
  = coe
      MAlonzo.Code.Interface.Decidable.Instance.du_Decidable'178''8658'Dec_110
      (coe MAlonzo.Code.Data.Integer.Properties.d__'60''63'__2866)
-- Interface.HasOrder.Instance.ℤ-hasDecPartialOrder
d_ℤ'45'hasDecPartialOrder_64 ::
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_238
d_ℤ'45'hasDecPartialOrder_64
  = coe
      MAlonzo.Code.Interface.HasOrder.C_HasDecPartialOrder'46'constructor_18711
      (coe d_ℤ'45'hasPartialOrder_58)
      (coe
         (\ v0 v1 ->
            MAlonzo.Code.Data.Integer.Properties.d__'8804''63'__2556
              (coe v0) (coe v1)))
      (coe
         (\ v0 v1 ->
            MAlonzo.Code.Data.Integer.Properties.d__'60''63'__2866
              (coe v0) (coe v1)))
