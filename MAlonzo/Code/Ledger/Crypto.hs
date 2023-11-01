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

module MAlonzo.Code.Ledger.Crypto where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Crypto.isHashableSet
d_isHashableSet_6 a0 = ()
data T_isHashableSet_6
  = C_mkIsHashableSet_26 MAlonzo.Code.Interface.DecEq.T_DecEq_14
                         MAlonzo.Code.Interface.DecEq.T_DecEq_14
                         MAlonzo.Code.Interface.Hashable.T_Hashable_8
-- Ledger.Crypto.isHashableSet.THash
d_THash_18 :: T_isHashableSet_6 -> ()
d_THash_18 = erased
-- Ledger.Crypto.isHashableSet.DecEq-THash
d_DecEq'45'THash_20 ::
  T_isHashableSet_6 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_20 v0
  = case coe v0 of
      C_mkIsHashableSet_26 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.isHashableSet.DecEq-T
d_DecEq'45'T_22 ::
  T_isHashableSet_6 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_22 v0
  = case coe v0 of
      C_mkIsHashableSet_26 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.isHashableSet.T-Hashable
d_T'45'Hashable_24 ::
  T_isHashableSet_6 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_24 v0
  = case coe v0 of
      C_mkIsHashableSet_26 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.HashableSet
d_HashableSet_28 = ()
newtype T_HashableSet_28 = C_mkHashableSet_48 T_isHashableSet_6
-- Ledger.Crypto.HashableSet.T
d_T_34 :: T_HashableSet_28 -> ()
d_T_34 = erased
-- Ledger.Crypto.HashableSet.T-isHashable
d_T'45'isHashable_36 :: T_HashableSet_28 -> T_isHashableSet_6
d_T'45'isHashable_36 v0
  = case coe v0 of
      C_mkHashableSet_48 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.HashableSet._.DecEq-T
d_DecEq'45'T_40 ::
  T_HashableSet_28 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'T_40 v0
  = coe d_DecEq'45'T_22 (coe d_T'45'isHashable_36 (coe v0))
-- Ledger.Crypto.HashableSet._.DecEq-THash
d_DecEq'45'THash_42 ::
  T_HashableSet_28 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_42 v0
  = coe d_DecEq'45'THash_20 (coe d_T'45'isHashable_36 (coe v0))
-- Ledger.Crypto.HashableSet._.T-Hashable
d_T'45'Hashable_44 ::
  T_HashableSet_28 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_44 v0
  = coe d_T'45'Hashable_24 (coe d_T'45'isHashable_36 (coe v0))
-- Ledger.Crypto.HashableSet._.THash
d_THash_46 :: T_HashableSet_28 -> ()
d_THash_46 = erased
-- Ledger.Crypto.PKKScheme
d_PKKScheme_50 = ()
data T_PKKScheme_50
  = C_PKKScheme'46'constructor_1763 (AgdaAny -> AgdaAny -> AgdaAny)
                                    (AgdaAny ->
                                     AgdaAny ->
                                     AgdaAny ->
                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20)
                                    (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                     AgdaAny ->
                                     AgdaAny ->
                                     MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny)
                                    MAlonzo.Code.Interface.DecEq.T_DecEq_14
                                    MAlonzo.Code.Interface.DecEq.T_DecEq_14
-- Ledger.Crypto.PKKScheme.SKey
d_SKey_96 :: T_PKKScheme_50 -> ()
d_SKey_96 = erased
-- Ledger.Crypto.PKKScheme.VKey
d_VKey_98 :: T_PKKScheme_50 -> ()
d_VKey_98 = erased
-- Ledger.Crypto.PKKScheme.Sig
d_Sig_100 :: T_PKKScheme_50 -> ()
d_Sig_100 = erased
-- Ledger.Crypto.PKKScheme.Ser
d_Ser_102 :: T_PKKScheme_50 -> ()
d_Ser_102 = erased
-- Ledger.Crypto.PKKScheme.isKeyPair
d_isKeyPair_104 :: T_PKKScheme_50 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_104 = erased
-- Ledger.Crypto.PKKScheme.isSigned
d_isSigned_106 ::
  T_PKKScheme_50 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_106 = erased
-- Ledger.Crypto.PKKScheme.sign
d_sign_108 :: T_PKKScheme_50 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_108 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1763 v7 v8 v9 v10 v11 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.PKKScheme.KeyPair
d_KeyPair_110 :: T_PKKScheme_50 -> ()
d_KeyPair_110 = erased
-- Ledger.Crypto.PKKScheme.isSigned?
d_isSigned'63'_122 ::
  T_PKKScheme_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isSigned'63'_122 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1763 v7 v8 v9 v10 v11 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.PKKScheme.isSigned-correct
d_isSigned'45'correct_134 ::
  T_PKKScheme_50 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_134 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1763 v7 v8 v9 v10 v11 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.PKKScheme.DecEq-Sig
d_DecEq'45'Sig_136 ::
  T_PKKScheme_50 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Sig_136 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1763 v7 v8 v9 v10 v11 -> coe v10
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.PKKScheme.DecEq-Ser
d_DecEq'45'Ser_138 ::
  T_PKKScheme_50 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Ser_138 v0
  = case coe v0 of
      C_PKKScheme'46'constructor_1763 v7 v8 v9 v10 v11 -> coe v11
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.PKKScheme.Dec-isSigned
d_Dec'45'isSigned_146 ::
  T_PKKScheme_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'isSigned_146 v0 v1 v2 v3
  = coe d_isSigned'63'_122 v0 v1 v2 v3
-- Ledger.Crypto.Crypto
d_Crypto_148 = ()
data T_Crypto_148
  = C_Crypto'46'constructor_2513 T_PKKScheme_50 T_isHashableSet_6
                                 MAlonzo.Code.Interface.DecEq.T_DecEq_14
-- Ledger.Crypto._.Dec-isSigned
d_Dec'45'isSigned_154 ::
  T_PKKScheme_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'isSigned_154 v0 = coe d_Dec'45'isSigned_146 (coe v0)
-- Ledger.Crypto._.DecEq-Ser
d_DecEq'45'Ser_156 ::
  T_PKKScheme_50 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Ser_156 v0 = coe d_DecEq'45'Ser_138 (coe v0)
-- Ledger.Crypto._.DecEq-Sig
d_DecEq'45'Sig_158 ::
  T_PKKScheme_50 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Sig_158 v0 = coe d_DecEq'45'Sig_136 (coe v0)
-- Ledger.Crypto._.KeyPair
d_KeyPair_160 :: T_PKKScheme_50 -> ()
d_KeyPair_160 = erased
-- Ledger.Crypto._.SKey
d_SKey_162 :: T_PKKScheme_50 -> ()
d_SKey_162 = erased
-- Ledger.Crypto._.Ser
d_Ser_164 :: T_PKKScheme_50 -> ()
d_Ser_164 = erased
-- Ledger.Crypto._.Sig
d_Sig_166 :: T_PKKScheme_50 -> ()
d_Sig_166 = erased
-- Ledger.Crypto._.VKey
d_VKey_168 :: T_PKKScheme_50 -> ()
d_VKey_168 = erased
-- Ledger.Crypto._.isKeyPair
d_isKeyPair_170 :: T_PKKScheme_50 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_170 = erased
-- Ledger.Crypto._.isSigned
d_isSigned_172 ::
  T_PKKScheme_50 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_172 = erased
-- Ledger.Crypto._.isSigned-correct
d_isSigned'45'correct_174 ::
  T_PKKScheme_50 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_174 v0
  = coe d_isSigned'45'correct_134 (coe v0)
-- Ledger.Crypto._.isSigned?
d_isSigned'63'_176 ::
  T_PKKScheme_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isSigned'63'_176 v0 = coe d_isSigned'63'_122 (coe v0)
-- Ledger.Crypto._.sign
d_sign_178 :: T_PKKScheme_50 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_178 v0 = coe d_sign_108 (coe v0)
-- Ledger.Crypto.Crypto.pkk
d_pkk_186 :: T_Crypto_148 -> T_PKKScheme_50
d_pkk_186 v0
  = case coe v0 of
      C_Crypto'46'constructor_2513 v1 v2 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.Crypto._.Dec-isSigned
d_Dec'45'isSigned_190 ::
  T_Crypto_148 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45'isSigned_190 v0
  = coe d_Dec'45'isSigned_146 (coe d_pkk_186 (coe v0))
-- Ledger.Crypto.Crypto._.DecEq-Ser
d_DecEq'45'Ser_192 ::
  T_Crypto_148 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Ser_192 v0
  = coe d_DecEq'45'Ser_138 (coe d_pkk_186 (coe v0))
-- Ledger.Crypto.Crypto._.DecEq-Sig
d_DecEq'45'Sig_194 ::
  T_Crypto_148 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Sig_194 v0
  = coe d_DecEq'45'Sig_136 (coe d_pkk_186 (coe v0))
-- Ledger.Crypto.Crypto._.KeyPair
d_KeyPair_196 :: T_Crypto_148 -> ()
d_KeyPair_196 = erased
-- Ledger.Crypto.Crypto._.SKey
d_SKey_198 :: T_Crypto_148 -> ()
d_SKey_198 = erased
-- Ledger.Crypto.Crypto._.Ser
d_Ser_200 :: T_Crypto_148 -> ()
d_Ser_200 = erased
-- Ledger.Crypto.Crypto._.Sig
d_Sig_202 :: T_Crypto_148 -> ()
d_Sig_202 = erased
-- Ledger.Crypto.Crypto._.VKey
d_VKey_204 :: T_Crypto_148 -> ()
d_VKey_204 = erased
-- Ledger.Crypto.Crypto._.isKeyPair
d_isKeyPair_206 :: T_Crypto_148 -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_206 = erased
-- Ledger.Crypto.Crypto._.isSigned
d_isSigned_208 ::
  T_Crypto_148 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_208 = erased
-- Ledger.Crypto.Crypto._.isSigned-correct
d_isSigned'45'correct_210 ::
  T_Crypto_148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_210 v0
  = coe d_isSigned'45'correct_134 (coe d_pkk_186 (coe v0))
-- Ledger.Crypto.Crypto._.isSigned?
d_isSigned'63'_212 ::
  T_Crypto_148 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isSigned'63'_212 v0
  = coe d_isSigned'63'_122 (coe d_pkk_186 (coe v0))
-- Ledger.Crypto.Crypto._.sign
d_sign_214 :: T_Crypto_148 -> AgdaAny -> AgdaAny -> AgdaAny
d_sign_214 v0 = coe d_sign_108 (coe d_pkk_186 (coe v0))
-- Ledger.Crypto.Crypto.khs
d_khs_216 :: T_Crypto_148 -> T_isHashableSet_6
d_khs_216 v0
  = case coe v0 of
      C_Crypto'46'constructor_2513 v1 v2 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.Crypto.ScriptHash
d_ScriptHash_218 :: T_Crypto_148 -> ()
d_ScriptHash_218 = erased
-- Ledger.Crypto.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_220 ::
  T_Crypto_148 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ScriptHash_220 v0
  = case coe v0 of
      C_Crypto'46'constructor_2513 v1 v2 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Crypto.Crypto._.DecEq-THash
d_DecEq'45'THash_224 ::
  T_Crypto_148 -> MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_224 v0
  = coe d_DecEq'45'THash_20 (coe d_khs_216 (coe v0))
-- Ledger.Crypto.Crypto._.THash
d_THash_226 :: T_Crypto_148 -> ()
d_THash_226 = erased
-- Ledger.Crypto.Crypto._.T-Hashable
d_T'45'Hashable_228 ::
  T_Crypto_148 -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_228 v0
  = coe d_T'45'Hashable_24 (coe d_khs_216 (coe v0))
