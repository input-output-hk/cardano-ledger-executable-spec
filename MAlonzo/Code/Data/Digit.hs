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

module MAlonzo.Code.Data.Digit where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.DivMod
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Data.Digit.Digit
d_Digit_4 :: Integer -> ()
d_Digit_4 = erased
-- Data.Digit.Decimal
d_Decimal_8 :: ()
d_Decimal_8 = erased
-- Data.Digit.Bit
d_Bit_10 :: ()
d_Bit_10 = erased
-- Data.Digit.0b
d_0b_12 :: MAlonzo.Code.Data.Fin.Base.T_Fin_10
d_0b_12 = coe MAlonzo.Code.Data.Fin.Base.C_zero_12
-- Data.Digit.1b
d_1b_14 :: MAlonzo.Code.Data.Fin.Base.T_Fin_10
d_1b_14
  = coe
      MAlonzo.Code.Data.Fin.Base.C_suc_16
      (coe MAlonzo.Code.Data.Fin.Base.C_zero_12)
-- Data.Digit.toNatDigits
d_toNatDigits_20 :: Integer -> AgdaAny -> Integer -> [Integer]
d_toNatDigits_20 v0 ~v1 v2 = du_toNatDigits_20 v0 v2
du_toNatDigits_20 :: Integer -> Integer -> [Integer]
du_toNatDigits_20 v0 v1
  = case coe v0 of
      1 -> coe
             MAlonzo.Code.Data.List.Base.du_replicate_314 (coe v1)
             (coe (1 :: Integer))
      _ -> let v2 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (coe
                du_aux_36 (coe v2) (coe v1)
                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
-- Data.Digit._.aux
d_aux_36 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  [Integer] -> [Integer]
d_aux_36 v0 ~v1 ~v2 v3 ~v4 v5 = du_aux_36 v0 v3 v5
du_aux_36 :: Integer -> Integer -> [Integer] -> [Integer]
du_aux_36 v0 v1 v2
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe (0 :: Integer))
             (coe v2)
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (let v4
                    = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                        (coe
                           MAlonzo.Code.Data.Nat.Properties.d__'60''63'__2892
                           (coe (0 :: Integer))
                           (coe
                              MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v1)
                              (coe addInt (coe (2 :: Integer)) (coe v0)))) in
              coe
                (if coe v4
                   then coe
                          du_aux_36 (coe v0)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Nat.d_div'45'helper_60 (0 :: Integer)
                             (addInt (coe (1 :: Integer)) (coe v0)) v3 v0)
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v1)
                                (coe addInt (coe (2 :: Integer)) (coe v0)))
                             (coe v2))
                   else coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v1)
                             (coe addInt (coe (2 :: Integer)) (coe v0)))
                          (coe v2)))
-- Data.Digit._._.q<n
d_q'60'n_66 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  [Integer] -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_q'60'n_66 v0 v1 ~v2 ~v3 ~v4 ~v5 = du_q'60'n_66 v0 v1
du_q'60'n_66 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_q'60'n_66 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.DivMod.du_m'47'n'60'm_502
      (coe addInt (coe (1 :: Integer)) (coe v1))
      (coe addInt (coe (2 :: Integer)) (coe v0))
-- Data.Digit.Expansion
d_Expansion_68 :: Integer -> ()
d_Expansion_68 = erased
-- Data.Digit.fromDigits
d_fromDigits_74 ::
  Integer -> [MAlonzo.Code.Data.Fin.Base.T_Fin_10] -> Integer
d_fromDigits_74 v0 v1
  = case coe v1 of
      [] -> coe (0 :: Integer)
      (:) v2 v3
        -> coe
             addInt (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v2))
             (coe mulInt (coe d_fromDigits_74 (coe v0) (coe v3)) (coe v0))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Digit.toDigits
d_toDigits_90 ::
  Integer ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toDigits_90 v0 ~v1 v2 = du_toDigits_90 v0 v2
du_toDigits_90 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toDigits_90 v0 v1
  = let v2 = subInt (coe v0) (coe (2 :: Integer)) in
    coe
      (coe
         MAlonzo.Code.Induction.WellFounded.du_wfRec_168 erased
         (coe du_helper_144 (coe v2)) v1)
-- Data.Digit._.Pred
d_Pred_102 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer -> Integer -> ()
d_Pred_102 = erased
-- Data.Digit._.cons
d_cons_112 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cons_112 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_cons_112 v4 v5
du_cons_112 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cons_112 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v2))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Digit._.lem
d_lem_128 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__300
d_lem_128 ~v0 ~v1 ~v2 v3 v4 v5 = du_lem_128 v3 v4 v5
du_lem_128 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__300
du_lem_128 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'8804''8658''8804''8242'_5892
      (coe
         addInt
         (coe
            mulInt (coe addInt (coe (1 :: Integer)) (coe v0))
            (coe addInt (coe (2 :: Integer)) (coe v1)))
         (coe v2))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
            (\ v3 v4 v5 ->
               coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2716 v5))
         (addInt (coe (2 :: Integer)) (coe v0))
         (addInt
            (coe
               mulInt (coe addInt (coe (1 :: Integer)) (coe v0))
               (coe addInt (coe (2 :: Integer)) (coe v1)))
            (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
               (\ v3 v4 v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2848 v6
                    v7))
            (addInt (coe (2 :: Integer)) (coe v0))
            (addInt
               (coe
                  addInt
                  (coe
                     addInt
                     (coe
                        addInt (coe (2 :: Integer))
                        (coe mulInt (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)))
                     (coe v0))
                  (coe v0))
               (coe v2))
            (addInt
               (coe
                  mulInt (coe addInt (coe (1 :: Integer)) (coe v0))
                  (coe addInt (coe (2 :: Integer)) (coe v1)))
               (coe v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v3 v4 v5 v6 v7 -> v7)
               (addInt
                  (coe
                     addInt
                     (coe
                        addInt
                        (coe
                           addInt (coe (2 :: Integer))
                           (coe mulInt (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)))
                        (coe v0))
                     (coe v0))
                  (coe v2))
               (addInt
                  (coe
                     mulInt (coe addInt (coe (1 :: Integer)) (coe v0))
                     (coe addInt (coe (2 :: Integer)) (coe v1)))
                  (coe v2))
               (addInt
                  (coe
                     mulInt (coe addInt (coe (1 :: Integer)) (coe v0))
                     (coe addInt (coe (2 :: Integer)) (coe v1)))
                  (coe v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672))
                  (coe
                     addInt
                     (coe
                        mulInt (coe addInt (coe (1 :: Integer)) (coe v0))
                        (coe addInt (coe (2 :: Integer)) (coe v1)))
                     (coe v2)))
               erased)
            (coe
               MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3344
               (coe addInt (coe (2 :: Integer)) (coe v0)))))
-- Data.Digit._.helper
d_helper_144 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__300 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_helper_144 v0 ~v1 ~v2 v3 v4 = du_helper_144 v0 v3 v4
du_helper_144 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804''8242'__300 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_helper_144 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Data.Nat.DivMod.du__divMod__1116 (coe v1)
              (coe addInt (coe (2 :: Integer)) (coe v0)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Data.Nat.DivMod.C_result_1088 v4 v5
           -> case coe v4 of
                0 -> coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v5)) erased
                _ -> let v7 = subInt (coe v4) (coe (1 :: Integer)) in
                     coe
                       (coe
                          du_cons_112 (coe v5)
                          (coe
                             v2 v4
                             (coe
                                du_lem_128 (coe v7) (coe v0)
                                (coe MAlonzo.Code.Data.Fin.Base.du_toℕ_18 (coe v5)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Digit.digitChars
d_digitChars_170 :: MAlonzo.Code.Data.Vec.Base.T_Vec_28
d_digitChars_170
  = coe
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 '0'
      (coe
         MAlonzo.Code.Data.Vec.Base.C__'8759'__38 '1'
         (coe
            MAlonzo.Code.Data.Vec.Base.C__'8759'__38 '2'
            (coe
               MAlonzo.Code.Data.Vec.Base.C__'8759'__38 '3'
               (coe
                  MAlonzo.Code.Data.Vec.Base.C__'8759'__38 '4'
                  (coe
                     MAlonzo.Code.Data.Vec.Base.C__'8759'__38 '5'
                     (coe
                        MAlonzo.Code.Data.Vec.Base.C__'8759'__38 '6'
                        (coe
                           MAlonzo.Code.Data.Vec.Base.C__'8759'__38 '7'
                           (coe
                              MAlonzo.Code.Data.Vec.Base.C__'8759'__38 '8'
                              (coe
                                 MAlonzo.Code.Data.Vec.Base.C__'8759'__38 '9'
                                 (coe
                                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 'a'
                                    (coe
                                       MAlonzo.Code.Data.Vec.Base.C__'8759'__38 'b'
                                       (coe
                                          MAlonzo.Code.Data.Vec.Base.C__'8759'__38 'c'
                                          (coe
                                             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 'd'
                                             (coe
                                                MAlonzo.Code.Data.Vec.Base.C__'8759'__38 'e'
                                                (coe
                                                   MAlonzo.Code.Data.Vec.Base.C__'8759'__38 'f'
                                                   (coe
                                                      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32))))))))))))))))
-- Data.Digit.showDigit
d_showDigit_176 ::
  Integer ->
  AgdaAny ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6
d_showDigit_176 ~v0 ~v1 v2 = du_showDigit_176 v2
du_showDigit_176 ::
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  MAlonzo.Code.Agda.Builtin.Char.T_Char_6
du_showDigit_176 v0
  = coe
      MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe d_digitChars_170)
      (coe v0)
