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

module MAlonzo.Code.Ledger.Foreign.HSLedger.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Construct.Identity
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.PairOp
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.MOf
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Unit.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.HasOrder.Instance
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Foreign.HSLedger.Core._.∀Hashable
d_'8704'Hashable_16 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_'8704'Hashable_16 ~v0 ~v1 = du_'8704'Hashable_16
du_'8704'Hashable_16 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_'8704'Hashable_16
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> v0))
-- Ledger.Foreign.HSLedger.Core._.∀isHashableSet
d_'8704'isHashableSet_20 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_'8704'isHashableSet_20 ~v0 v1 = du_'8704'isHashableSet_20 v1
du_'8704'isHashableSet_20 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
du_'8704'isHashableSet_20 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26 v0 v0
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v1 -> v1)))
-- Ledger.Foreign.HSLedger.Core.Hashable-⊤
d_Hashable'45''8868'_22 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45''8868'_22
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> seq (coe v0) (coe (0 :: Integer))))
-- Ledger.Foreign.HSLedger.Core.Implementation.Network
d_Network_28 :: ()
d_Network_28 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_30 :: Integer
d_SlotsPerEpoch'7580'_30 = coe (100 :: Integer)
-- Ledger.Foreign.HSLedger.Core.Implementation.StabilityWindowᶜ
d_StabilityWindow'7580'_32 :: Integer
d_StabilityWindow'7580'_32 = coe (10 :: Integer)
-- Ledger.Foreign.HSLedger.Core.Implementation.Quorum
d_Quorum_34 :: Integer
d_Quorum_34 = coe (1 :: Integer)
-- Ledger.Foreign.HSLedger.Core.Implementation.NetworkId
d_NetworkId_36 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_36 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Foreign.HSLedger.Core.Implementation.SKey
d_SKey_38 :: ()
d_SKey_38 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.VKey
d_VKey_40 :: ()
d_VKey_40 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Sig
d_Sig_42 :: ()
d_Sig_42 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Ser
d_Ser_44 :: ()
d_Ser_44 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.isKeyPair
d_isKeyPair_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_46 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.sign
d_sign_48 ::
  () ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_48 ~v0 v1 = du_sign_48 v1
du_sign_48 ::
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_48 v0
  = coe MAlonzo.Code.Interface.HasAdd.d__'43'__12 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation.ScriptHash
d_ScriptHash_50 :: ()
d_ScriptHash_50 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Data
d_Data_52 :: ()
d_Data_52 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Dataʰ
d_Data'688'_54 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_54
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkHashableSet_48
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
-- Ledger.Foreign.HSLedger.Core.Implementation.toData
d_toData_58 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_58 ~v0 ~v1 = du_toData_58
du_toData_58 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_toData_58 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Foreign.HSLedger.Core.Implementation.PlutusScript
d_PlutusScript_60 :: ()
d_PlutusScript_60 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.ExUnits
d_ExUnits_62 :: ()
d_ExUnits_62 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_64 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_64
  = coe
      MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
      (coe
         MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
         (coe MAlonzo.Code.Algebra.PairOp.du__'8729''7510'__12 (coe addInt))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (0 :: Integer))
            (coe (0 :: Integer)))
         (coe
            MAlonzo.Code.Algebra.PairOp.du_pairOpRespectsComm_92
            (coe (0 :: Integer))
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'isCommutativeMonoid_3194)))
-- Ledger.Foreign.HSLedger.Core.Implementation._≥ᵉ_
d__'8805''7497'__90 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__90 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.CostModel
d_CostModel_92 :: ()
d_CostModel_92 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Language
d_Language_94 :: ()
d_Language_94 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.LangDepView
d_LangDepView_96 :: ()
d_LangDepView_96 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Prices
d_Prices_98 :: ()
d_Prices_98 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra
d_TokenAlgebra_102 = ()
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra._∙_
d__'8729'__106 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__106 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra._≈_
d__'8776'__108 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__108 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__110 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__110 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.AssetName
d_AssetName_112 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_AssetName_112 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_114 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_114 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_226 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_116 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_116 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_118 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_120 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_122 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value
d_Value_126 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_Value_126 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_128 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_128
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_130 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_130 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.addValue
d_addValue_132 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_132
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_228
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coin
d_coin_134 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_coin_134 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_138 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_138 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_222
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.inject
d_inject_140 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> AgdaAny
d_inject_140 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.monoid
d_monoid_142 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_142 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.policies
d_policies_144 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> [Integer]
d_policies_144 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.property
d_property_146 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_146 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.rawMonoid
d_rawMonoid_148 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_148 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.size
d_size_150 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_size_150 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_212 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.specialAsset
d_specialAsset_152 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_specialAsset_152 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_218 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.ε
d_ε_156 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_ε_156 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_160 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_160 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_162 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_162 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_164 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_166 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_168 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_172 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_174 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_176 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_178 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_178 ~v0 = du_isMagmaIsomorphism_178
du_isMagmaIsomorphism_178 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_178 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_180 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_180 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_180 v2
du_isMagmaMonomorphism_180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_180 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_186 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
               (coe v0))))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_188 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_188 ~v0 ~v1 v2 = du_isRelIsomorphism_188 v2
du_isRelIsomorphism_188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_188 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_190 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_190 ~v0 ~v1 v2 = du_isRelMonomorphism_190 v2
du_isRelMonomorphism_190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_190 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe v1)))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_192 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_192 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_194 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_194 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_196 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_196 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_200 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_200 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_202 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_202 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_204 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_204 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_206 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_206 ~v0 = du_isMagmaMonomorphism_206
du_isMagmaMonomorphism_206 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_206 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_208 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_208 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_210 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_210 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_212 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_212 ~v0 ~v1 v2 = du_isRelMonomorphism_212 v2
du_isRelMonomorphism_212 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_212 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_214 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_214 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_216 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_216 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.coinTokenAlgebra
d_coinTokenAlgebra_218 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
d_coinTokenAlgebra_218 = coe d_'46'extendedlambda1_224
-- Ledger.Foreign.HSLedger.Core.Implementation._..extendedlambda1
d_'46'extendedlambda1_224 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
d_'46'extendedlambda1_224
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.C_TokenAlgebra'46'constructor_1995
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (\ v0 -> v0) (\ v0 -> v0)
      (\ v0 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709'_424
           (coe
              MAlonzo.Code.Axiom.Set.d_th_1430
              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
      (\ v0 -> 1 :: Integer) ("Ada" :: Data.Text.Text)
      (coe
         MAlonzo.Code.Algebra.Morphism.Construct.Identity.du_isMonoidHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_890
               (coe
                  MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
                     (coe d_'46'extendedlambda1_224)))))
         erased)
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74 v0
           v1)
-- Ledger.Foreign.HSLedger.Core.Implementation.TxId
d_TxId_232 :: ()
d_TxId_232 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Ix
d_Ix_234 :: ()
d_Ix_234 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.AuxiliaryData
d_AuxiliaryData_236 :: ()
d_AuxiliaryData_236 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.DocHash
d_DocHash_238 :: ()
d_DocHash_238 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.networkId
d_networkId_240 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_240 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Foreign.HSLedger.Core.Implementation.tokenAlgebra
d_tokenAlgebra_242 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
d_tokenAlgebra_242 = coe d_coinTokenAlgebra_218
-- Ledger.Foreign.HSLedger.Core.HSGlobalConstants
d_HSGlobalConstants_244 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
d_HSGlobalConstants_244
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.C_GlobalConstants'46'constructor_4803
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      d_SlotsPerEpoch'7580'_30
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      d_StabilityWindow'7580'_32 d_Quorum_34 d_NetworkId_36
-- Ledger.Foreign.HSLedger.Core.HSEpochStructure
d_HSEpochStructure_246 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_HSEpochStructure_246
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_256
      (coe d_HSGlobalConstants_244)
-- Ledger.Foreign.HSLedger.Core._
d___248 :: MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d___248 = coe d_HSEpochStructure_246
-- Ledger.Foreign.HSLedger.Core.HSCrypto
d_HSCrypto_250 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_HSCrypto_250
  = coe
      MAlonzo.Code.Ledger.Crypto.C_Crypto'46'constructor_2229
      d_HSPKKScheme_256
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
-- Ledger.Foreign.HSLedger.Core._.HSPKKScheme
d_HSPKKScheme_256 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_HSPKKScheme_256
  = coe
      MAlonzo.Code.Ledger.Crypto.C_PKKScheme'46'constructor_1781 addInt
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
           (coe addInt (coe v0) (coe v1)))
      erased MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
-- Ledger.Foreign.HSLedger.Core._
d___270 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d___270 = coe d_HSCrypto_250
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure
d_P1ScriptStructure_278 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_282 = ()
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_296 = ()
-- Ledger.Foreign.HSLedger.Core._.Timelock
d_Timelock_298 = ()
-- Ledger.Foreign.HSLedger.Core._.evalTimelock
d_evalTimelock_312 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_316 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_316 v0
  = coe MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_318 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_318 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_320 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_320 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.P1Script
d_P1Script_322 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 -> ()
d_P1Script_322 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.validP1Script
d_validP1Script_324 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_324 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__328 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__328 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_330 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_CostModel_330 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T
d_T_332 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_T_332 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.THash
d_THash_334 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_THash_334 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_336 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_336 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_340 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_340 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_214 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_342 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_342 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_344 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_344 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_346 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_346 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_348 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_348 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_184 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-T
d_DecEq'45'T_350 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_350 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_352 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_352 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_354 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_354 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_356 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_ExUnits_356 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_358 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_358 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_360 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_LangDepView_360 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_362 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Language_362 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_364 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_PlutusScript_364 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_366 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Prices_366 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-Hashable
d_T'45'Hashable_370 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_370 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-isHashable
d_T'45'isHashable_372 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_372 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_374 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny
d_language_374 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_376 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  () -> AgdaAny -> AgdaAny
d_toData_376 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_220 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_378 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_378 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure._≥ᵉ_
d__'8805''7497'__382 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__382 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.CostModel
d_CostModel_384 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_CostModel_384 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T
d_T_386 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_T_386 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.THash
d_THash_388 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_THash_388 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dataʰ
d_Data'688'_390 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_390 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_164
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_394 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_394
  = let v0 = d___270 in
    coe
      (let v1 = d___248 in
       coe
         (coe
            (\ v2 ->
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v0) (coe v1) (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_396 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_396 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_398 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_398 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_400 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_400 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_402 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_402 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_404 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_404 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_184
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_406 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_406
  = let v0 = d___270 in
    coe
      (let v1 = d___248 in
       coe
         (coe
            (\ v2 ->
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v0) (coe v1) (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-T
d_DecEq'45'T_408 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_408 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_410 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_410 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_412 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_412 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnits
d_ExUnits_414 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_ExUnits_414 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_416 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_416 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_396 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_418 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_418
  = let v0 = d___270 in
    coe
      (let v1 = d___248 in
       coe
         (coe
            (\ v2 ->
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v0) (coe v1) (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_420 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_420 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.LangDepView
d_LangDepView_424 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_LangDepView_424 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Language
d_Language_426 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Language_426 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.P1Script
d_P1Script_428 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_P1Script_428 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusScript
d_PlutusScript_430 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_PlutusScript_430 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Prices
d_Prices_432 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Prices_432 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Script
d_Script_436 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Script_436 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-Hashable
d_T'45'Hashable_438 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_438 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-isHashable
d_T'45'isHashable_440 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_440 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_164
         (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_442 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_442 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_394 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.language
d_language_444 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny -> AgdaAny
d_language_444 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_446 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_446
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_398 (coe d___270) (coe d___248)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_448 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_448 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.toData
d_toData_450 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () -> AgdaAny -> AgdaAny
d_toData_450 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validP1Script
d_validP1Script_452 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 -> ()
d_validP1Script_452 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validPlutusScript
d_validPlutusScript_454 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_454 = erased
-- Ledger.Foreign.HSLedger.Core.HSScriptStructure
d_HSScriptStructure_484 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360
d_HSScriptStructure_484
  = coe
      MAlonzo.Code.Ledger.Script.C_ScriptStructure'46'constructor_70479
      (coe d_hashRespectsUnion_498) (coe d_Hashable'45'Timelock_490)
      (coe d_HSP2ScriptStructure_500)
-- Ledger.Foreign.HSLedger.Core._.Hashable-Timelock
d_Hashable'45'Timelock_490
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger.Core._.Hashable-Timelock"
-- Ledger.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_498
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger.Core._.hashRespectsUnion"
-- Ledger.Foreign.HSLedger.Core._.HSP2ScriptStructure
d_HSP2ScriptStructure_500 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_HSP2ScriptStructure_500
  = coe
      MAlonzo.Code.Ledger.Script.C_PlutusStructure'46'constructor_2721
      d_Data'688'_54 d_ExUnit'45'CommutativeMonoid_64
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v0 -> seq (coe v0) (coe (0 :: Integer)))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20)
      (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 -> coe du_toData_58)
-- Ledger.Foreign.HSLedger.Core._
d___510 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_360
d___510 = coe d_HSScriptStructure_484
-- Ledger.Foreign.HSLedger.Core._._?↗_
d__'63''8599'__514 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__514 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__864 v1 v2
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_520 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_520
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_1046
      (let v0 = d_HSGlobalConstants_244 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_237
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                    (coe v0)))
            (\ v1 ->
               mulInt
                 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                    (coe v0)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
               (coe v0))
            (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
      (coe d___510)
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_522 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_522
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1048
      (let v0 = d_HSGlobalConstants_244 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_237
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                    (coe v0)))
            (\ v1 ->
               mulInt
                 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                    (coe v0)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
               (coe v0))
            (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
      (coe d___510)
-- Ledger.Foreign.HSLedger.Core._.GovParams
d_GovParams_528 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_534 = ()
-- Ledger.Foreign.HSLedger.Core._.PParams
d_PParams_536 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_538 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate
d_PParamsUpdate_540 = ()
-- Ledger.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_542 :: ()
d_ProtVer_542 = erased
-- Ledger.Foreign.HSLedger.Core._.applyPParamsUpdate
d_applyPParamsUpdate_548 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220
d_applyPParamsUpdate_548
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_912
-- Ledger.Foreign.HSLedger.Core._.modifiedUpdateGroups
d_modifiedUpdateGroups_554 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_144]
d_modifiedUpdateGroups_554
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_848
-- Ledger.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_566 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> ()
d_paramsWellFormed_566 = erased
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_568 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_576 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_576 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_578 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_578 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_580 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_580 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1192 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.THash
d_THash_582 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1136 -> ()
d_THash_582 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_584 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_584 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_586 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1136 -> ()
d_UpdateT_586 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_588 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_applyUpdate_588 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1120
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1166 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_590 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_590 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_592 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104
d_ppUpd_592 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1166 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_594 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_594 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1128
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1166 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_598 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_144]
d_updateGroups_598 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1122
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1166 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_614 :: MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_Emax_614 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_314 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a
d_a_616 :: MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_a_616 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_296 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a0
d_a0_618 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_618 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_312 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.b
d_b_620 :: MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_b_620 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_622 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_ccMaxTermLength_622 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_336 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_624 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_ccMinSize_624 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_334 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_626 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_coinsPerUTxOByte_626 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_304 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_628 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_collateralPercentage_628 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_318 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_630 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_630 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_320 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_632 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_drepActivity_632 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_332 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_634 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_drepDeposit_634 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_330 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_636 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156
d_drepThresholds_636 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_322 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_638 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_govActionDeposit_638 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_328 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_640 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_govActionLifetime_640 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_326 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_642 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_keyDeposit_642 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_300 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_644 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_644 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_292 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_646 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxBlockSize_646 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_280 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_648 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxCollateralInputs_648 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_288 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_650 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxHeaderSize_650 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_284 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_652 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_652 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_290 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_654 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxTxSize_654 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_282 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_656 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxValSize_656 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_286 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_658 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_658 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_306
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_660 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_minUTxOValue_660 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_310 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_662 :: MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_nopt_662 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_316 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_664 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_poolDeposit_664 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_302 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_666 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198
d_poolThresholds_666 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_324 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.prices
d_prices_668 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_668 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_308 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.pv
d_pv_670 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_670 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_294 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_674 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 -> ()
d_UpdateT_674 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_676 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_applyUpdate_676 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1120 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_678 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_678 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1128 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_682 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_144]
d_updateGroups_682 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1122 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.Emax
d_Emax_686 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_Emax_686 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_500 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.a
d_a_688 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_a_688 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_482 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.a0
d_a0_690 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_690 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_498 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.b
d_b_692 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_b_692 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_484 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_694 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_ccMaxTermLength_694 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_522 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.ccMinSize
d_ccMinSize_696 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_ccMinSize_696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_520 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_698 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_coinsPerUTxOByte_698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_490 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.collateralPercentage
d_collateralPercentage_700 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_collateralPercentage_700 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_504 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.costmdls
d_costmdls_702 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_702 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_506 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.drepActivity
d_drepActivity_704 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_drepActivity_704 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_518 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.drepDeposit
d_drepDeposit_706 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_drepDeposit_706 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_516 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.drepThresholds
d_drepThresholds_708 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156
d_drepThresholds_708 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_508 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.govActionDeposit
d_govActionDeposit_710 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_govActionDeposit_710 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_514 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.govActionLifetime
d_govActionLifetime_712 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_govActionLifetime_712 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_512 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.keyDeposit
d_keyDeposit_714 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_keyDeposit_714 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_486 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_716 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_716 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_478 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxBlockSize
d_maxBlockSize_718 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxBlockSize_718 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_466 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_720 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxCollateralInputs_720 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_474 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_722 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxHeaderSize_722 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_470 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_724 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_724 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_476 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxTxSize
d_maxTxSize_726 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxTxSize_726 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_468 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxValSize
d_maxValSize_728 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxValSize_728 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_472 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_730 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_730 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_492
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.minUTxOValue
d_minUTxOValue_732 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_minUTxOValue_732 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_496 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.nopt
d_nopt_734 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_nopt_734 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_502 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.poolDeposit
d_poolDeposit_736 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_poolDeposit_736 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_488 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.poolThresholds
d_poolThresholds_738 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198
d_poolThresholds_738 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_510 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.prices
d_prices_740 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_740 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_494 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.pv
d_pv_742 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_742 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_480 (coe v0)
-- Ledger.Foreign.HSLedger.Core.HsGovParams
d_HsGovParams_750 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1136
d_HsGovParams_750
  = coe
      MAlonzo.Code.Ledger.PParams.C_GovParams'46'constructor_1082203
      (coe
         MAlonzo.Code.Ledger.PParams.C_PParamsDiff'46'constructor_1081463
         (coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_912)
         (coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_848)
         (\ v0 -> coe d_ppWF_760 v0))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_1046
            (let v0 = d_HSGlobalConstants_244 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_237
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                          (coe v0)))
                  (\ v1 ->
                     mulInt
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                          (coe v0)))
                  (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
                     (coe v0))
                  (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
            (coe d___510))
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_1046
            (let v0 = d_HSGlobalConstants_244 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_237
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                          (coe v0)))
                  (\ v1 ->
                     mulInt
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                          (coe v0)))
                  (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
                     (coe v0))
                  (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
            (coe d___510))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1048
         (let v0 = d_HSGlobalConstants_244 in
          coe
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_237
               MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               (\ v1 ->
                  coe
                    MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                       (coe v0)))
               (\ v1 ->
                  mulInt
                    (coe v1)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                       (coe v0)))
               (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
                  (coe v0))
               (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
         (coe d___510))
-- Ledger.Foreign.HSLedger.Core._.ppWF
d_ppWF_760
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger.Core._.ppWF"
-- Ledger.Foreign.HSLedger.Core.HSTransactionStructure
d_HSTransactionStructure_766 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d_HSTransactionStructure_766
  = coe
      MAlonzo.Code.Ledger.Transaction.C_TransactionStructure'46'constructor_12113
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      d_HSGlobalConstants_244 d_HSCrypto_250 d_HSEpochStructure_246
      d_HSScriptStructure_484 d_HsGovParams_750 d_tokenAlgebra_242
      (\ v0 -> v0) d_networkId_240
-- Ledger.Foreign.HSLedger.Core._
d___768 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d___768 = coe d_HSTransactionStructure_766
-- Ledger.Foreign.HSLedger.Core._._+ᵉ_
d__'43''7497'__772 :: Integer -> Integer -> Integer
d__'43''7497'__772
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._._∙_
d__'8729'__774 :: Integer -> Integer -> Integer
d__'8729'__774
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._._?↗_
d__'63''8599'__776 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__776 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__864 v1 v2
-- Ledger.Foreign.HSLedger.Core._._≈_
d__'8776'__778 :: Integer -> Integer -> ()
d__'8776'__778 = erased
-- Ledger.Foreign.HSLedger.Core._._≤ᵗ_
d__'8804''7511'__780 :: Integer -> Integer -> ()
d__'8804''7511'__780 = erased
-- Ledger.Foreign.HSLedger.Core._._≥ᵉ_
d__'8805''7497'__782 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__782 = erased
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__784 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__786 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_750 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_810 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_718] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_810 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__786 = erased
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__788 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__790 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__792 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__794 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_796 :: ()
d_THash_796 = erased
-- Ledger.Foreign.HSLedger.Core._.Acnt
d_Acnt_798 = ()
-- Ledger.Foreign.HSLedger.Core._.Addr
d_Addr_800 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_800 = erased
-- Ledger.Foreign.HSLedger.Core._.Anchor
d_Anchor_802 = ()
-- Ledger.Foreign.HSLedger.Core._.AssetName
d_AssetName_804 :: ()
d_AssetName_804 = erased
-- Ledger.Foreign.HSLedger.Core._.AuxiliaryData
d_AuxiliaryData_806 :: ()
d_AuxiliaryData_806 = erased
-- Ledger.Foreign.HSLedger.Core._.BaseAddr
d_BaseAddr_808 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr
d_BootstrapAddr_810 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.CertEnv
d_CertEnv_822 = ()
-- Ledger.Foreign.HSLedger.Core._.CertState
d_CertState_824 = ()
-- Ledger.Foreign.HSLedger.Core._.CostModel
d_CostModel_828 :: ()
d_CostModel_828 = erased
-- Ledger.Foreign.HSLedger.Core._.Credential
d_Credential_830 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_830 = erased
-- Ledger.Foreign.HSLedger.Core._.DCert
d_DCert_832 = ()
-- Ledger.Foreign.HSLedger.Core._.DState
d_DState_840 = ()
-- Ledger.Foreign.HSLedger.Core._.T
d_T_842 :: ()
d_T_842 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_844 :: ()
d_THash_844 = erased
-- Ledger.Foreign.HSLedger.Core._.Dataʰ
d_Data'688'_846 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_846
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_164
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Datum
d_Datum_848 :: ()
d_Datum_848 = erased
-- Ledger.Foreign.HSLedger.Core._.Dec-evalTimelock
d_Dec'45'evalTimelock_850 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_850
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_280
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Dec-isScript
d_Dec'45'isScript_852 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_852 ~v0 ~v1 ~v2 = du_Dec'45'isScript_852
du_Dec'45'isScript_852 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_852
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
-- Ledger.Foreign.HSLedger.Core._.Dec-isSigned
d_Dec'45'isSigned_854 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_854
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.Dec-isVKey
d_Dec'45'isVKey_856 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_856 ~v0 ~v1 ~v2 = du_Dec'45'isVKey_856
du_Dec'45'isVKey_856 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_856
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_108
-- Ledger.Foreign.HSLedger.Core._.Dec-validP1Script
d_Dec'45'validP1Script_858 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_858
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_860 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_860
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Dec-≤ᵗ
d_Dec'45''8804''7511'_862 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_862
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_226
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEQ-Prices
d_DecEQ'45'Prices_864 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_864
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_866 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_866 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Foreign.HSLedger.Core._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_868 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_868 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Foreign.HSLedger.Core._.DecEq-CostModel
d_DecEq'45'CostModel_870 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_870
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_872 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_872
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_1042
-- Ledger.Foreign.HSLedger.Core._.DecEq-Epoch
d_DecEq'45'Epoch_874 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_874
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-ExUnits
d_DecEq'45'ExUnits_876 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_876
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-GovRole
d_DecEq'45'GovRole_878 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_878
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_698
-- Ledger.Foreign.HSLedger.Core._.DecEq-Ix
d_DecEq'45'Ix_880 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_880
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1072
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.DecEq-LangDepView
d_DecEq'45'LangDepView_882 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_882
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_184
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Netw
d_DecEq'45'Netw_884 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_884
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-P1Script
d_DecEq'45'P1Script_886 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_886
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_888 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_888
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_1050
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_890 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_890
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_1046
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_892 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_892
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1048
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_894 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_894
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_1044
-- Ledger.Foreign.HSLedger.Core._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_896 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_896 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Foreign.HSLedger.Core._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_898 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_898
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Ser
d_DecEq'45'Ser_900 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_900
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_126
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Sig
d_DecEq'45'Sig_902 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_902
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Slot
d_DecEq'45'Slot_904 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_904
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_38
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_906 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_906
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1076 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_908 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_908
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_164
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_412
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_910 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_910
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1962 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_912 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_912
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1076 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_914 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_914
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_916 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_916
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_164
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_412
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_918 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_918
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1962 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Timelock
d_DecEq'45'Timelock_920 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_920
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_236
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-TxId
d_DecEq'45'TxId_922 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_922
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.DecEq-UpdT
d_DecEq'45'UpdT_924 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_924
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1192
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1962 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-VDeleg
d_DecEq'45'VDeleg_926 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_926
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_702
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Value
d_DecEq'45'Value_928 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_928
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Vote
d_DecEq'45'Vote_930 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_930
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_700
-- Ledger.Foreign.HSLedger.Core._.DecPo-Slot
d_DecPo'45'Slot_932 ::
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_932
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DelegEnv
d_DelegEnv_934 = ()
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds
d_DrepThresholds_936 = ()
-- Ledger.Foreign.HSLedger.Core._.Epoch
d_Epoch_940 :: ()
d_Epoch_940 = erased
-- Ledger.Foreign.HSLedger.Core._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_942 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_942
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.ExUnits
d_ExUnits_944 :: ()
d_ExUnits_944 = erased
-- Ledger.Foreign.HSLedger.Core._.GState
d_GState_952 = ()
-- Ledger.Foreign.HSLedger.Core._.GovAction
d_GovAction_954 = ()
-- Ledger.Foreign.HSLedger.Core._.GovActionID
d_GovActionID_956 :: ()
d_GovActionID_956 = erased
-- Ledger.Foreign.HSLedger.Core._.GovActionState
d_GovActionState_958 = ()
-- Ledger.Foreign.HSLedger.Core._.GovCertEnv
d_GovCertEnv_960 :: ()
d_GovCertEnv_960 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams
d_GovParams_962 = ()
-- Ledger.Foreign.HSLedger.Core._.GovProposal
d_GovProposal_964 = ()
-- Ledger.Foreign.HSLedger.Core._.GovRole
d_GovRole_966 = ()
-- Ledger.Foreign.HSLedger.Core._.GovVote
d_GovVote_968 = ()
-- Ledger.Foreign.HSLedger.Core._.HasCoin-TxOut
d_HasCoin'45'TxOut_972 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_972
  = coe
      MAlonzo.Code.Ledger.Transaction.d_HasCoin'45'TxOut_2676
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.Hash-Timelock
d_Hash'45'Timelock_974 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_974
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_396
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.HashProtected
d_HashProtected_976 :: () -> ()
d_HashProtected_976 = erased
-- Ledger.Foreign.HSLedger.Core._.Hashable-P1Script
d_Hashable'45'P1Script_978 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_978
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_980 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_980
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Hashable-Script
d_Hashable'45'Script_982 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_982
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_470
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_986 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_988 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_990 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.Ix
d_Ix_992 :: ()
d_Ix_992 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_994 :: ()
d_THash_994 = erased
-- Ledger.Foreign.HSLedger.Core._.KeyPair
d_KeyPair_996 :: ()
d_KeyPair_996 = erased
-- Ledger.Foreign.HSLedger.Core._.LangDepView
d_LangDepView_998 :: ()
d_LangDepView_998 = erased
-- Ledger.Foreign.HSLedger.Core._.Language
d_Language_1000 :: ()
d_Language_1000 = erased
-- Ledger.Foreign.HSLedger.Core._.MemoryEstimate
d_MemoryEstimate_1002 :: ()
d_MemoryEstimate_1002 = erased
-- Ledger.Foreign.HSLedger.Core._.NeedsHash
d_NeedsHash_1004 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 -> ()
d_NeedsHash_1004 = erased
-- Ledger.Foreign.HSLedger.Core._.Network
d_Network_1006 :: ()
d_Network_1006 = erased
-- Ledger.Foreign.HSLedger.Core._.NetworkId
d_NetworkId_1010 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_1010
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1018 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1018
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_248
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Number-Epoch
d_Number'45'Epoch_1020 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1020
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.P1Script
d_P1Script_1022 :: ()
d_P1Script_1022 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure
d_P1ScriptStructure_1024 = ()
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1026 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_P1ScriptStructure'45'TL_1026
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_358
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.PlutusScript
d_PlutusScript_1028 :: ()
d_PlutusScript_1028 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_1034 :: ()
d_THash_1034 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_1036 = ()
-- Ledger.Foreign.HSLedger.Core._.PParams
d_PParams_1038 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_1040 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate
d_PParamsUpdate_1042 = ()
-- Ledger.Foreign.HSLedger.Core._.PState
d_PState_1044 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_1046 = ()
-- Ledger.Foreign.HSLedger.Core._.PoolEnv
d_PoolEnv_1048 :: ()
d_PoolEnv_1048 = erased
-- Ledger.Foreign.HSLedger.Core._.PoolParams
d_PoolParams_1050 = ()
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds
d_PoolThresholds_1052 = ()
-- Ledger.Foreign.HSLedger.Core._.Prices
d_Prices_1054 :: ()
d_Prices_1054 = erased
-- Ledger.Foreign.HSLedger.Core._.ProposedPPUpdates
d_ProposedPPUpdates_1056 :: ()
d_ProposedPPUpdates_1056 = erased
-- Ledger.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_1058 :: ()
d_ProtVer_1058 = erased
-- Ledger.Foreign.HSLedger.Core._.Quorum
d_Quorum_1060 :: Integer
d_Quorum_1060
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_252
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.RdmrPtr
d_RdmrPtr_1062 :: ()
d_RdmrPtr_1062 = erased
-- Ledger.Foreign.HSLedger.Core._.Redeemer
d_Redeemer_1064 :: ()
d_Redeemer_1064 = erased
-- Ledger.Foreign.HSLedger.Core._.RwdAddr
d_RwdAddr_1078 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.SKey
d_SKey_1082 :: ()
d_SKey_1082 = erased
-- Ledger.Foreign.HSLedger.Core._.Script
d_Script_1086 :: ()
d_Script_1086 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptAddr
d_ScriptAddr_1088 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_1088 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptBaseAddr
d_ScriptBaseAddr_1090 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_1090 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1092 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_1092 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptHash
d_ScriptHash_1094 :: ()
d_ScriptHash_1094 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_1096 = ()
-- Ledger.Foreign.HSLedger.Core._.Ser
d_Ser_1100 :: ()
d_Ser_1100 = erased
-- Ledger.Foreign.HSLedger.Core._.Sig
d_Sig_1102 :: ()
d_Sig_1102 = erased
-- Ledger.Foreign.HSLedger.Core._.Slot
d_Slot_1104 :: ()
d_Slot_1104 = erased
-- Ledger.Foreign.HSLedger.Core._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1106 :: Integer
d_SlotsPerEpoch'7580'_1106
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Slotʳ
d_Slot'691'_1108 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_1108
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.StabilityWindow
d_StabilityWindow_1110 :: Integer
d_StabilityWindow_1110
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_44
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.StabilityWindowᶜ
d_StabilityWindow'7580'_1112 :: Integer
d_StabilityWindow'7580'_1112
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1114 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1114
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1076 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1116 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1116
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1118 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1118
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_164
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_412
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1120 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1120
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1962 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.T-isHashable
d_T'45'isHashable_1122 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1122
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
         (coe
            MAlonzo.Code.Ledger.Script.d_Data'688'_164
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_412
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0)))))
-- Ledger.Foreign.HSLedger.Core._.Timelock
d_Timelock_1126 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra
d_TokenAlgebra_1128 = ()
-- Ledger.Foreign.HSLedger.Core._.Tx
d_Tx_1134 = ()
-- Ledger.Foreign.HSLedger.Core._.TxBody
d_TxBody_1136 = ()
-- Ledger.Foreign.HSLedger.Core._.TxId
d_TxId_1138 :: ()
d_TxId_1138 = erased
-- Ledger.Foreign.HSLedger.Core._.TxIn
d_TxIn_1140 :: ()
d_TxIn_1140 = erased
-- Ledger.Foreign.HSLedger.Core._.TxOut
d_TxOut_1142 :: ()
d_TxOut_1142 = erased
-- Ledger.Foreign.HSLedger.Core._.TxOutʰ
d_TxOut'688'_1144 :: ()
d_TxOut'688'_1144 = erased
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses
d_TxWitnesses_1146 = ()
-- Ledger.Foreign.HSLedger.Core._.UTxO
d_UTxO_1148 :: ()
d_UTxO_1148 = erased
-- Ledger.Foreign.HSLedger.Core._.Update
d_Update_1150 :: ()
d_Update_1150 = erased
-- Ledger.Foreign.HSLedger.Core._.UpdateT
d_UpdateT_1152 :: ()
d_UpdateT_1152 = erased
-- Ledger.Foreign.HSLedger.Core._.VDeleg
d_VDeleg_1154 = ()
-- Ledger.Foreign.HSLedger.Core._.VKey
d_VKey_1156 :: ()
d_VKey_1156 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyAddr
d_VKeyAddr_1158 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1158 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyBaseAddr
d_VKeyBaseAddr_1160 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1160 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1162 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1162 = erased
-- Ledger.Foreign.HSLedger.Core._.Value
d_Value_1166 :: ()
d_Value_1166 = erased
-- Ledger.Foreign.HSLedger.Core._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1168 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1168
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1170 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1170
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Voter
d_Voter_1172 :: ()
d_Voter_1172 = erased
-- Ledger.Foreign.HSLedger.Core._.Wdrl
d_Wdrl_1174 :: ()
d_Wdrl_1174 = erased
-- Ledger.Foreign.HSLedger.Core._.actionWellFormed
d_actionWellFormed_1178 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 -> ()
d_actionWellFormed_1178 = erased
-- Ledger.Foreign.HSLedger.Core._.actionWellFormed?
d_actionWellFormed'63'_1180 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1180
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_614
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.adHashingScheme
d_adHashingScheme_1182 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1182
  = coe
      MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1076
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.addEpoch
d_addEpoch_1184 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1184
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.addSlot
d_addSlot_1186 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1186
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_214
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.addValue
d_addValue_1188 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1188
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_228
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.applyPParamsUpdate
d_applyPParamsUpdate_1190 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220
d_applyPParamsUpdate_1190
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_912
-- Ledger.Foreign.HSLedger.Core._.applyUpdate
d_applyUpdate_1192 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220
d_applyUpdate_1192
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_applyUpdate_1120
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1166
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1962 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.coin
d_coin_1200 :: Integer -> Integer
d_coin_1200
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.coin-inject-lemma
d_coin'45'inject'45'lemma_1202 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1202 = erased
-- Ledger.Foreign.HSLedger.Core._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1204 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1204
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_222
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.crypto
d_crypto_1208 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_crypto_1208
  = coe
      MAlonzo.Code.Ledger.Transaction.d_crypto_1108
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.cwitness
d_cwitness_1210 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_718 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cwitness_1210 = coe MAlonzo.Code.Ledger.Certs.d_cwitness_734
-- Ledger.Foreign.HSLedger.Core._.epoch
d_epoch_1218 :: Integer -> Integer
d_epoch_1218
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.epochStructure
d_epochStructure_1220 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_1220
  = coe
      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.evalTimelock
d_evalTimelock_1234 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.firstSlot
d_firstSlot_1236 :: Integer -> Integer
d_firstSlot_1236
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.getDRepVote
d_getDRepVote_1238 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_1238
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_704
-- Ledger.Foreign.HSLedger.Core._.getScriptHash
d_getScriptHash_1240 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> Integer
d_getScriptHash_1240 ~v0 ~v1 ~v2 = du_getScriptHash_1240
du_getScriptHash_1240 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> Integer
du_getScriptHash_1240
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_148
-- Ledger.Foreign.HSLedger.Core._.getValue
d_getValue_1242 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1242
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2560
-- Ledger.Foreign.HSLedger.Core._.getValueʰ
d_getValue'688'_1244 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1244
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2576
-- Ledger.Foreign.HSLedger.Core._.globalConstants
d_globalConstants_1246 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
d_globalConstants_1246
  = coe
      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.govParams
d_govParams_1248 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1136
d_govParams_1248
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govParams_1962
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.govStructure
d_govStructure_1250 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_1250
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govStructure_2110
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_1252 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1252
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_394
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.inject
d_inject_1254 :: Integer -> Integer
d_inject_1254
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.isKeyPair
d_isKeyPair_1256 :: Integer -> Integer -> ()
d_isKeyPair_1256 = erased
-- Ledger.Foreign.HSLedger.Core._.isP2Script
d_isP2Script_1258 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_1258
  = coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2674
-- Ledger.Foreign.HSLedger.Core._.isScript
d_isScript_1260 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._.isScriptAddr
d_isScriptAddr_1262 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1262 = erased
-- Ledger.Foreign.HSLedger.Core._.isScriptRwdAddr
d_isScriptRwdAddr_1264 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> ()
d_isScriptRwdAddr_1264 = erased
-- Ledger.Foreign.HSLedger.Core._.isSigned
d_isSigned_1266 :: Integer -> Integer -> Integer -> ()
d_isSigned_1266 = erased
-- Ledger.Foreign.HSLedger.Core._.isSigned-correct
d_isSigned'45'correct_1268 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1268 = erased
-- Ledger.Foreign.HSLedger.Core._.isVKey
d_isVKey_1270 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._.isVKeyAddr
d_isVKeyAddr_1272 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1272 = erased
-- Ledger.Foreign.HSLedger.Core._.khs
d_khs_1274 :: MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1274
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_khs_192
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.language
d_language_1276 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1276
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_language_216
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.lookupScriptHash
d_lookupScriptHash_1278 ::
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1278
  = coe
      MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2660
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.maximum
d_maximum_1280 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1280
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_558
-- Ledger.Foreign.HSLedger.Core._.modifiedUpdateGroups
d_modifiedUpdateGroups_1282 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_144]
d_modifiedUpdateGroups_1282
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_848
-- Ledger.Foreign.HSLedger.Core._.modifiesEconomicGroup
d_modifiesEconomicGroup_1284 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Bool
d_modifiesEconomicGroup_1284
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_656
-- Ledger.Foreign.HSLedger.Core._.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1286 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Bool
d_modifiesGovernanceGroup_1286
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_784
-- Ledger.Foreign.HSLedger.Core._.modifiesNetworkGroup
d_modifiesNetworkGroup_1288 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Bool
d_modifiesNetworkGroup_1288
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_592
-- Ledger.Foreign.HSLedger.Core._.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1290 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Bool
d_modifiesTechnicalGroup_1290
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_720
-- Ledger.Foreign.HSLedger.Core._.monoid
d_monoid_1292 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1292
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_890
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.netId
d_netId_1294 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netId_1294 ~v0 ~v1 ~v2 = du_netId_1294
du_netId_1294 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_netId_1294 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.Foreign.HSLedger.Core._.networkId
d_networkId_1296 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_1296
  = coe
      MAlonzo.Code.Ledger.Transaction.d_networkId_2108
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.p1s
d_p1s_1300 :: MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1300
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_398
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1302 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> ()
d_paramsUpdateWellFormed_1302 = erased
-- Ledger.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_1304 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> ()
d_paramsWellFormed_1304 = erased
-- Ledger.Foreign.HSLedger.Core._.payCred
d_payCred_1306 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_payCred_1306 ~v0 ~v1 ~v2 = du_payCred_1306
du_payCred_1306 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_payCred_1306 = coe MAlonzo.Code.Ledger.Address.du_payCred_90
-- Ledger.Foreign.HSLedger.Core._.pkk
d_pkk_1308 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_1308
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_pkk_164
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.policies
d_policies_1310 :: Integer -> [Integer]
d_policies_1310
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppHashingScheme
d_ppHashingScheme_1312 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1312
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1962 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppUpd
d_ppUpd_1314 :: MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104
d_ppUpd_1314
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1166
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1962 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppWF?
d_ppWF'63'_1316 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1316
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1128
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1166
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1962 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.ppdWellFormed
d_ppdWellFormed_1318 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> ()
d_ppdWellFormed_1318 = erased
-- Ledger.Foreign.HSLedger.Core._.preoEpoch
d_preoEpoch_1320 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1320
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.property
d_property_1322 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1322 = erased
-- Ledger.Foreign.HSLedger.Core._.ps
d_ps_1324 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_1324
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_1326 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow?
d_pvCanFollow'63'_1328 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1328
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1056
-- Ledger.Foreign.HSLedger.Core._.rawMonoid
d_rawMonoid_1330 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1330
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.refScripts
d_refScripts_1332 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1332
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refScripts_2600
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.scriptOuts
d_scriptOuts_1340 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1340
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptOuts_2586
-- Ledger.Foreign.HSLedger.Core._.scriptStructure
d_scriptStructure_1342 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360
d_scriptStructure_1342
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.sign
d_sign_1344 :: Integer -> Integer -> Integer
d_sign_1344
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_sign_102
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.size
d_size_1346 :: Integer -> Integer
d_size_1346
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_212
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.specialAsset
d_specialAsset_1348 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1348
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_218
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.sucᵉ
d_suc'7497'_1350 :: Integer -> Integer
d_suc'7497'_1350
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_46
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.sumᵛ
d_sum'7515'_1352 :: [Integer] -> Integer
d_sum'7515'_1352
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_246
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.toData
d_toData_1354 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_1354
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_toData_220
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1600 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.tokenAlgebra
d_tokenAlgebra_1356 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
d_tokenAlgebra_1356
  = coe
      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.txOutHash
d_txOutHash_1358 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1358
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2566
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.txidBytes
d_txidBytes_1360 :: Integer -> Integer
d_txidBytes_1360
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txidBytes_2106
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.txinsScript
d_txinsScript_1362 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1362
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsScript_2594
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.txinsVKey
d_txinsVKey_1364 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1364
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsVKey_2580
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.txscripts
d_txscripts_1366 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1366
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txscripts_2650
      (coe d_HSTransactionStructure_766)
-- Ledger.Foreign.HSLedger.Core._.updateGroups
d_updateGroups_1368 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_144]
d_updateGroups_1368
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_updateGroups_1122
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1166
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1962 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.validP1Script
d_validP1Script_1370 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 -> ()
d_validP1Script_1370 = erased
-- Ledger.Foreign.HSLedger.Core._.validPlutusScript
d_validPlutusScript_1372 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> ()
d_validPlutusScript_1372 = erased
-- Ledger.Foreign.HSLedger.Core._.ε
d_ε_1374 :: Integer
d_ε_1374
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1990 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.d_ε_842
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.ℕEpochStructure
d_ℕEpochStructure_1376 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_ℕEpochStructure_1376
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_256
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1088 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ℕtoEpoch
d_ℕtoEpoch_1378 :: Integer -> Integer
d_ℕtoEpoch_1378
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.≡-update
d_'8801''45'update_1380 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_1380 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_878 v1
-- Ledger.Foreign.HSLedger.Core._.Acnt.reserves
d_reserves_1428 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_126 -> Integer
d_reserves_1428 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_134 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Acnt.treasury
d_treasury_1430 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_126 -> Integer
d_treasury_1430 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_132 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Anchor.hash
d_hash_1434 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_hash_1434 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_590 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Anchor.url
d_url_1436 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1436 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_588 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.net
d_net_1440 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1440 v0 = coe MAlonzo.Code.Ledger.Address.d_net_38 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.pay
d_pay_1442 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1442 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_40 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.stake
d_stake_1444 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1444 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_42 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.attrsSize
d_attrsSize_1448 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> Integer
d_attrsSize_1448 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_56 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.net
d_net_1450 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1450 v0 = coe MAlonzo.Code.Ledger.Address.d_net_52 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.pay
d_pay_1452 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1452 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_54 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.epoch
d_epoch_1456 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_750 -> Integer
d_epoch_1456 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_760 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.pp
d_pp_1458 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_750 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pp_1458 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_762 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.votes
d_votes_1460 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_750 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632]
d_votes_1460 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_764 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.wdrls
d_wdrls_1462 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_750 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1462 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_766 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.dState
d_dState_1466 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_810 ->
  MAlonzo.Code.Ledger.Certs.T_DState_770
d_dState_1466 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_818 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.gState
d_gState_1468 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_810 ->
  MAlonzo.Code.Ledger.Certs.T_GState_798
d_gState_1468 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_822 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.pState
d_pState_1470 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_810 ->
  MAlonzo.Code.Ledger.Certs.T_PState_786
d_pState_1470 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_820 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.rewards
d_rewards_1490 ::
  MAlonzo.Code.Ledger.Certs.T_DState_770 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1490 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_782 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.stakeDelegs
d_stakeDelegs_1492 ::
  MAlonzo.Code.Ledger.Certs.T_DState_770 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1492 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_780 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.voteDelegs
d_voteDelegs_1494 ::
  MAlonzo.Code.Ledger.Certs.T_DState_770 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1494 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_778 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.pools
d_pools_1498 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1498 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_834 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.pparams
d_pparams_1500 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_826 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_1500 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_832 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P1
d_P1_1504 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1504 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_178 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P2a
d_P2a_1506 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1506 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_180 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P2b
d_P2b_1508 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1508 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_182 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P3
d_P3_1510 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1510 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_184 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P4
d_P4_1512 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1512 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_186 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5a
d_P5a_1514 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1514 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_188 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5b
d_P5b_1516 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1516 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_190 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5c
d_P5c_1518 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1518 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_192 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5d
d_P5d_1520 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1520 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_194 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P6
d_P6_1522 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1522 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_196 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.ccHotKeys
d_ccHotKeys_1526 ::
  MAlonzo.Code.Ledger.Certs.T_GState_798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1526 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_806 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.dreps
d_dreps_1528 ::
  MAlonzo.Code.Ledger.Certs.T_GState_798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1528 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_804 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.action
d_action_1548 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592
d_action_1548 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_694 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.expiresIn
d_expiresIn_1550 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  Integer
d_expiresIn_1550 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_692 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.prevAction
d_prevAction_1552 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  AgdaAny
d_prevAction_1552 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_696 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.returnAddr
d_returnAddr_1554 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_1554 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_690 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.votes
d_votes_1556 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1556 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_688 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_1560 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1560 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_1562 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1562 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1564 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1564 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1192 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.THash
d_THash_1566 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1136 -> ()
d_THash_1566 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_1568 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1568 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_1570 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 -> ()
d_UpdateT_1570 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_1572 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_applyUpdate_1572 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1120
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1166 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_1574 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1574 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1180 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_1576 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104
d_ppUpd_1576 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1166 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_1578 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1578 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1128
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1166 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppdWellFormed
d_ppdWellFormed_1580 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 -> AgdaAny -> ()
d_ppdWellFormed_1580 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_1582 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1136 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_144]
d_updateGroups_1582 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1122
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1166 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovProposal.action
d_action_1586 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592
d_action_1586 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_664 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.anchor
d_anchor_1588 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582
d_anchor_1588 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_674 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.deposit
d_deposit_1590 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650 -> Integer
d_deposit_1590 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_670 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.policy
d_policy_1592 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650 ->
  Maybe Integer
d_policy_1592 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_668 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.prevAction
d_prevAction_1594 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650 -> AgdaAny
d_prevAction_1594 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_666 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.returnAddr
d_returnAddr_1596 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_1596 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_672 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.anchor
d_anchor_1608 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582
d_anchor_1608 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_648 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.gid
d_gid_1610 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1610 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_642 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.vote
d_vote_1612 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_624
d_vote_1612 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_646 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.voter
d_voter_1614 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1614 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_644 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.homo
d_homo_1618 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1618 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1620 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1620 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1622 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1622 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1624 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1624 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.cong
d_cong_1626 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1626 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.homo
d_homo_1630 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1630 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.injective
d_injective_1632 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1632 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1634 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1634 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1636 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1636 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1638 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1638 ~v0 v1 = du_isMagmaMonomorphism_1638 v1
du_isMagmaMonomorphism_1638 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1638 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1640 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1640 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1642 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1642 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1644 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1644 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
               (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1646 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1646 ~v0 v1 = du_isRelIsomorphism_1646 v1
du_isRelIsomorphism_1646 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1646 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1648 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1648 ~v0 v1 = du_isRelMonomorphism_1648 v1
du_isRelMonomorphism_1648 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1648 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.surjective
d_surjective_1650 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1650 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1652 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1652 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.cong
d_cong_1654 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1654 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.homo
d_homo_1658 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1658 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.injective
d_injective_1660 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1660 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1662 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1662 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1664 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1664 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1666 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1666 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1668 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1668 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1670 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1670 ~v0 v1 = du_isRelMonomorphism_1670 v1
du_isRelMonomorphism_1670 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1670 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1672 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1672 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.cong
d_cong_1674 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1674 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1678 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1678 v0
  = coe MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1680 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1680 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1682 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1682 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.P1Script
d_P1Script_1684 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 -> ()
d_P1Script_1684 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.validP1Script
d_validP1Script_1686 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1686 = erased
-- Ledger.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_1702 :: MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_Emax_1702 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_314 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a
d_a_1704 :: MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_a_1704 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_296 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a0
d_a0_1706 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1706 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_312 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.b
d_b_1708 :: MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_b_1708 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_1710 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_ccMaxTermLength_1710 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_336 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_1712 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_ccMinSize_1712 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_334 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1714 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_coinsPerUTxOByte_1714 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_304 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_1716 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_collateralPercentage_1716 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_318 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_1718 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1718 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_320 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_1720 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_drepActivity_1720 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_332 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_1722 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_drepDeposit_1722 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_330 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_1724 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156
d_drepThresholds_1724 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_322 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_1726 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_govActionDeposit_1726 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_328 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_1728 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_govActionLifetime_1728 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_326 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_1730 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_keyDeposit_1730 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_300 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_1732 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1732 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_292 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_1734 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxBlockSize_1734 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_280 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_1736 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxCollateralInputs_1736 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_288 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_1738 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxHeaderSize_1738 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_284 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_1740 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1740 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_290 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_1742 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxTxSize_1742 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_282 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_1744 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_maxValSize_1744 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_286 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1746 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1746 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_306
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_1748 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_minUTxOValue_1748 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_310 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_1750 :: MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_nopt_1750 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_316 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_1752 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 -> Integer
d_poolDeposit_1752 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_302 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_1754 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198
d_poolThresholds_1754 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_324 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.prices
d_prices_1756 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1756 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_308 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.pv
d_pv_1758 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1758 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_294 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_1762 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 -> ()
d_UpdateT_1762 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_1764 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_applyUpdate_1764 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1120 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_1766 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1766 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1128 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1768 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 -> AgdaAny -> ()
d_ppdWellFormed_1768 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_1770 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1104 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_144]
d_updateGroups_1770 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1122 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.Emax
d_Emax_1774 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_Emax_1774 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_500 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.a
d_a_1776 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_a_1776 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_482 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.a0
d_a0_1778 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1778 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_498 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.b
d_b_1780 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_b_1780 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_484 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1782 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_ccMaxTermLength_1782 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_522 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.ccMinSize
d_ccMinSize_1784 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_ccMinSize_1784 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_520 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1786 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_coinsPerUTxOByte_1786 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_490 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.collateralPercentage
d_collateralPercentage_1788 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_collateralPercentage_1788 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_504 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.costmdls
d_costmdls_1790 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1790 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_506 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.drepActivity
d_drepActivity_1792 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_drepActivity_1792 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_518 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.drepDeposit
d_drepDeposit_1794 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_drepDeposit_1794 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_516 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.drepThresholds
d_drepThresholds_1796 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_156
d_drepThresholds_1796 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_508 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.govActionDeposit
d_govActionDeposit_1798 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_govActionDeposit_1798 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_514 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.govActionLifetime
d_govActionLifetime_1800 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_govActionLifetime_1800 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_512 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.keyDeposit
d_keyDeposit_1802 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_keyDeposit_1802 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_486 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1804 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1804 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_478 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxBlockSize
d_maxBlockSize_1806 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxBlockSize_1806 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_466 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1808 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxCollateralInputs_1808 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_474 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1810 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxHeaderSize_1810 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_470 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1812 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1812 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_476 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxTxSize
d_maxTxSize_1814 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxTxSize_1814 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_468 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.maxValSize
d_maxValSize_1816 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_maxValSize_1816 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_472 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1818 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1818 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_492
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.minUTxOValue
d_minUTxOValue_1820 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_minUTxOValue_1820 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_496 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.nopt
d_nopt_1822 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_nopt_1822 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_502 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.poolDeposit
d_poolDeposit_1824 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 -> Maybe Integer
d_poolDeposit_1824 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_488 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.poolThresholds
d_poolThresholds_1826 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198
d_poolThresholds_1826 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_510 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.prices
d_prices_1828 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1828 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_494 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.pv
d_pv_1830 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_406 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1830 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_480 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PState.pools
d_pools_1834 ::
  MAlonzo.Code.Ledger.Certs.T_PState_786 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1834 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_792 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PState.retiring
d_retiring_1836 ::
  MAlonzo.Code.Ledger.Certs.T_PState_786 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1836 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_794 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1840 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1840 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_1842 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_CostModel_1842 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T
d_T_1844 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_T_1844 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.THash
d_THash_1846 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_THash_1846 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_1848 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1848 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Datum
d_Datum_1850 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Datum_1850 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1852 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1852 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_214 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1854 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1854 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1856 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1856 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1858 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1858 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1860 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1860 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_184 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-T
d_DecEq'45'T_1862 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1862 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1864 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1864 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1866 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1866 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_1868 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_ExUnits_1868 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1870 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1870 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_1872 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_LangDepView_1872 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_1874 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Language_1874 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_1876 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_PlutusScript_1876 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_1878 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Prices_1878 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Redeemer
d_Redeemer_1880 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Redeemer_1880 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-Hashable
d_T'45'Hashable_1882 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1882 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-isHashable
d_T'45'isHashable_1884 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1884 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_1886 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny
d_language_1886 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_1888 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  () -> AgdaAny -> AgdaAny
d_toData_1888 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_220 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_1890 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1890 = erased
-- Ledger.Foreign.HSLedger.Core._.PoolParams.rewardAddr
d_rewardAddr_1894 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_712 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_1894 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_716 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q1
d_Q1_1898 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1898 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q2a
d_Q2a_1900 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1900 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_212 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q2b
d_Q2b_1902 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1902 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_214 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q4
d_Q4_1904 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1904 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q5e
d_Q5e_1906 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_198 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_1906 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_218 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.RwdAddr.net
d_net_1910 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1910 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.RwdAddr.stake
d_stake_1912 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1912 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1916 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1916 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.CostModel
d_CostModel_1918 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_CostModel_1918 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T
d_T_1920 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_T_1920 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.THash
d_THash_1922 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_THash_1922 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dataʰ
d_Data'688'_1924 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1924 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_164
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Datum
d_Datum_1926 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Datum_1926 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1928 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1928
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1930 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1930 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1932 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1932 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1934 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1934 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1936 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1936 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1938 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1938 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_184
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1940 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1940
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-T
d_DecEq'45'T_1942 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1942 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1944 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1944 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1946 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1946 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnits
d_ExUnits_1948 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_ExUnits_1948 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_1950 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1950 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_396 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1952 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1952
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1954 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1954 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1956 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1956
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_470
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.LangDepView
d_LangDepView_1958 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_LangDepView_1958 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Language
d_Language_1960 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Language_1960 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.P1Script
d_P1Script_1962 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_P1Script_1962 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusScript
d_PlutusScript_1964 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_PlutusScript_1964 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Prices
d_Prices_1966 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Prices_1966 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Redeemer
d_Redeemer_1968 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Redeemer_1968 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Script
d_Script_1970 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Script_1970 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-Hashable
d_T'45'Hashable_1972 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1972 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-isHashable
d_T'45'isHashable_1974 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1974 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_164
         (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1976 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1976 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_394 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.language
d_language_1978 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny -> AgdaAny
d_language_1978 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_1980 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1980
  = let v0 = d_HSTransactionStructure_766 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_398
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1352 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_1982 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_1982 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.toData
d_toData_1984 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () -> AgdaAny -> AgdaAny
d_toData_1984 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validP1Script
d_validP1Script_1986 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 -> ()
d_validP1Script_1986 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validPlutusScript
d_validPlutusScript_1988 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1988 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._∙_
d__'8729'__2006 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2006 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._≈_
d__'8776'__2008 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2008 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2010 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2010 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.AssetName
d_AssetName_2012 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_AssetName_2012 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2014 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2014 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_226 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2016 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2016 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2018 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2020 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2022 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.MemoryEstimate
d_MemoryEstimate_2024 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_MemoryEstimate_2024 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value
d_Value_2026 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_Value_2026 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2028 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_2028
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_2030 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_2030 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.addValue
d_addValue_2032 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_2032
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_228
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coin
d_coin_2034 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_coin_2034 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2036 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2036 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2038 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_2038 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_222
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.inject
d_inject_2040 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> AgdaAny
d_inject_2040 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.monoid
d_monoid_2042 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_2042 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.policies
d_policies_2044 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> [Integer]
d_policies_2044 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.property
d_property_2046 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2046 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.rawMonoid
d_rawMonoid_2048 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_2048 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.size
d_size_2050 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_size_2050 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_212 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.specialAsset
d_specialAsset_2052 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_specialAsset_2052 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_218 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.sumᵛ
d_sum'7515'_2054 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2054
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_246
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.ε
d_ε_2056 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_ε_2056 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2060 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2060 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2062 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2062 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2064 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2064 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2066 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2066 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2068 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2068 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2072 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2072 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2074 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2074 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2076 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2076 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2078 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_2078 ~v0 = du_isMagmaIsomorphism_2078
du_isMagmaIsomorphism_2078 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_2078 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2080 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2080 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2080 v2
du_isMagmaMonomorphism_2080 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2080 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2082 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2082 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2084 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_2084 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2086 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2086 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
               (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2088 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2088 ~v0 ~v1 v2 = du_isRelIsomorphism_2088 v2
du_isRelIsomorphism_2088 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2088 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2090 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2090 ~v0 ~v1 v2 = du_isRelMonomorphism_2090 v2
du_isRelMonomorphism_2090 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2090 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_2092 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2092 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2094 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2094 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2096 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2096 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2100 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2100 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2102 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2102 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2104 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2104 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2106 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2106 ~v0 = du_isMagmaMonomorphism_2106
du_isMagmaMonomorphism_2106 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2106 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2108 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2108 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2110 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2110 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2112 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2112 ~v0 ~v1 v2 = du_isRelMonomorphism_2112 v2
du_isRelMonomorphism_2112 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2112 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2114 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2114 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2116 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2116 = erased
-- Ledger.Foreign.HSLedger.Core._.Tx.body
d_body_2120 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444
d_body_2120 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2552 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.isValid
d_isValid_2122 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2542 -> Bool
d_isValid_2122 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2556 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.txAD
d_txAD_2124 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_2124 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2558 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.wits
d_wits_2126 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2542 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2522
d_wits_2126 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2554 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.collateral
d_collateral_2130 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2130 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2516 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.mint
d_mint_2132 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 -> Integer
d_mint_2132 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2492 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.netwrk
d_netwrk_2134 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netwrk_2134 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_netwrk_2510 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.refInputs
d_refInputs_2136 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2136 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2486 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.reqSigHash
d_reqSigHash_2138 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 -> [Integer]
d_reqSigHash_2138 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2518 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.scriptIntHash
d_scriptIntHash_2140 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 -> Maybe Integer
d_scriptIntHash_2140 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2520 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txADhash
d_txADhash_2142 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txADhash_2142 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2508 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txcerts
d_txcerts_2144 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_718]
d_txcerts_2144 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2496 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txdonation
d_txdonation_2146 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 -> Integer
d_txdonation_2146 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2504 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txfee
d_txfee_2148 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 -> Integer
d_txfee_2148 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2490 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txid
d_txid_2150 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 -> Integer
d_txid_2150 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2514 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txins
d_txins_2152 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2152 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2484 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txouts
d_txouts_2154 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2154 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2488 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txprop
d_txprop_2156 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650]
d_txprop_2156 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2502 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txsize
d_txsize_2158 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 -> Integer
d_txsize_2158 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2512 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txup
d_txup_2160 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2160 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2506 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txvldt
d_txvldt_2162 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2162 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2494 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txvote
d_txvote_2164 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632]
d_txvote_2164 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2500 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txwdrls
d_txwdrls_2166 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2166 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2498 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.scripts
d_scripts_2170 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2522 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2170 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scripts_2534 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.scriptsP1
d_scriptsP1_2172 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2522 ->
  [MAlonzo.Code.Ledger.Script.T_Timelock_222]
d_scriptsP1_2172
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2540
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.txdats
d_txdats_2174 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2174 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdats_2536 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.txrdmrs
d_txrdmrs_2176 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2176 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2538 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.vkSigs
d_vkSigs_2178 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2178 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2532 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions
d_AbstractFunctions_2218 = ()
-- Ledger.Foreign.HSLedger.Core._.indexOf
d_indexOf_2220 = ()
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.indexOfImp
d_indexOfImp_2224 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1452
d_indexOfImp_2224 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1494 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.runPLCScript
d_runPLCScript_2226 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] -> Bool
d_runPLCScript_2226 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1496 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.scriptSize
d_scriptSize_2228 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2228 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1498 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.serSize
d_serSize_2230 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  Integer -> Integer
d_serSize_2230 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_serSize_1492 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.txscriptfee
d_txscriptfee_2232 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2232 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1490 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfDCert
d_indexOfDCert_2236 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1452 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_718 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_718] -> Maybe Integer
d_indexOfDCert_2236 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1466 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfPolicyId
d_indexOfPolicyId_2238 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1452 ->
  Integer -> [Integer] -> Maybe Integer
d_indexOfPolicyId_2238 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1472 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfProposal
d_indexOfProposal_2240 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1452 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650] ->
  Maybe Integer
d_indexOfProposal_2240 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1476 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_2242 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1452 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_indexOfRwdAddr_2242 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1468 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfTxIn
d_indexOfTxIn_2244 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1452 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe Integer
d_indexOfTxIn_2244 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1470 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfVote
d_indexOfVote_2246 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1452 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe Integer
d_indexOfVote_2246 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1474 (coe v0)
-- Ledger.Foreign.HSLedger.Core.HSAbstractFunctions
d_HSAbstractFunctions_2248 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1478
d_HSAbstractFunctions_2248
  = coe
      MAlonzo.Code.Ledger.Abstract.C_AbstractFunctions'46'constructor_2741
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> v0))
      (coe
         MAlonzo.Code.Ledger.Abstract.C_indexOf'46'constructor_2479
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe
            (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
      (coe
         (\ v0 v1 v2 v3 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
      (coe (\ v0 -> 0 :: Integer))
