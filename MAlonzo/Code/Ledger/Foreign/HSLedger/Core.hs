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
import qualified MAlonzo.Code.Relation.Nullary.Reflects

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
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_518 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_518
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_408
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
d_GovParams_524 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_530 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_532 = ()
-- Ledger.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_534 :: ()
d_ProtVer_534 = erased
-- Ledger.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_544 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> ()
d_paramsWellFormed_544 = erased
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_546 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_552 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_552 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_540 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_554 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_554 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_540 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_556 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_556 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_552 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.THash
d_THash_558 :: MAlonzo.Code.Ledger.PParams.T_GovParams_496 -> ()
d_THash_558 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_560 :: MAlonzo.Code.Ledger.PParams.T_GovParams_496 -> ()
d_UpdateT_560 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_562 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_562 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_540 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_564 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_564 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_480
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_566 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_566 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_540 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_568 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_464
d_ppUpd_568 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_570 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_570 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_488
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_574 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_574 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_482
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_590 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_464 -> ()
d_UpdateT_590 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_592 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_464 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_592 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_480 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_594 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_464 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_594 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_488 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_598 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_464 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_598 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_482 (coe v0)
-- Ledger.Foreign.HSLedger.Core.HsGovParams
d_HsGovParams_606 :: MAlonzo.Code.Ledger.PParams.T_GovParams_496
d_HsGovParams_606
  = coe
      MAlonzo.Code.Ledger.PParams.C_GovParams'46'constructor_557107
      (coe
         MAlonzo.Code.Ledger.PParams.C_PParamsDiff'46'constructor_556365
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_3067
              (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_278 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_280 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_282 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_284 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_286 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_288 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_290 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_pv_292 (coe v0)) (coe v1)
              (coe MAlonzo.Code.Ledger.PParams.d_b_296 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_298 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_300 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_302 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_304
                 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_prices_306 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_308 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_a0_310 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_Emax_312 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_nopt_314 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.PParams.d_collateralPercentage_316 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_costmdls_318 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_324 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_328 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_drepActivity_330 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_332 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_334 (coe v0)))
         (\ v0 ->
            coe
              MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
              (MAlonzo.Code.Axiom.Set.d_th_1430
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
              erased (coe MAlonzo.Code.Ledger.PParams.C_EconomicGroup_146))
         (\ v0 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                 (coe
                    MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                    (coe (\ v1 v2 -> v2))))))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_408
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
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_408
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
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
-- Ledger.Foreign.HSLedger.Core.HSTransactionStructure
d_HSTransactionStructure_620 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d_HSTransactionStructure_620
  = coe
      MAlonzo.Code.Ledger.Transaction.C_TransactionStructure'46'constructor_11319
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
      d_HSScriptStructure_484 d_HsGovParams_606 d_tokenAlgebra_242
      (\ v0 -> v0) d_networkId_240
-- Ledger.Foreign.HSLedger.Core._
d___622 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d___622 = coe d_HSTransactionStructure_620
-- Ledger.Foreign.HSLedger.Core._._+ᵉ_
d__'43''7497'__626 :: Integer -> Integer -> Integer
d__'43''7497'__626
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._._∙_
d__'8729'__628 :: Integer -> Integer -> Integer
d__'8729'__628
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._._≈_
d__'8776'__630 :: Integer -> Integer -> ()
d__'8776'__630 = erased
-- Ledger.Foreign.HSLedger.Core._._≤ᵗ_
d__'8804''7511'__632 :: Integer -> Integer -> ()
d__'8804''7511'__632 = erased
-- Ledger.Foreign.HSLedger.Core._._≥ᵉ_
d__'8805''7497'__634 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__634 = erased
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__636 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__638 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_668 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_728 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_636] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_728 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__638 = erased
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__640 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__642 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__644 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__646 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_648 :: ()
d_THash_648 = erased
-- Ledger.Foreign.HSLedger.Core._.Acnt
d_Acnt_650 = ()
-- Ledger.Foreign.HSLedger.Core._.Addr
d_Addr_652 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_652 = erased
-- Ledger.Foreign.HSLedger.Core._.Anchor
d_Anchor_654 = ()
-- Ledger.Foreign.HSLedger.Core._.AssetName
d_AssetName_656 :: ()
d_AssetName_656 = erased
-- Ledger.Foreign.HSLedger.Core._.AuxiliaryData
d_AuxiliaryData_658 :: ()
d_AuxiliaryData_658 = erased
-- Ledger.Foreign.HSLedger.Core._.BaseAddr
d_BaseAddr_660 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr
d_BootstrapAddr_662 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.CertEnv
d_CertEnv_674 = ()
-- Ledger.Foreign.HSLedger.Core._.CertState
d_CertState_676 = ()
-- Ledger.Foreign.HSLedger.Core._.CostModel
d_CostModel_680 :: ()
d_CostModel_680 = erased
-- Ledger.Foreign.HSLedger.Core._.Credential
d_Credential_682 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_682 = erased
-- Ledger.Foreign.HSLedger.Core._.DCert
d_DCert_684 = ()
-- Ledger.Foreign.HSLedger.Core._.DState
d_DState_692 = ()
-- Ledger.Foreign.HSLedger.Core._.T
d_T_694 :: ()
d_T_694 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_696 :: ()
d_THash_696 = erased
-- Ledger.Foreign.HSLedger.Core._.Dataʰ
d_Data'688'_698 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_698
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_164
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Datum
d_Datum_700 :: ()
d_Datum_700 = erased
-- Ledger.Foreign.HSLedger.Core._.Dec-evalTimelock
d_Dec'45'evalTimelock_702 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_702
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_280
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Dec-isScript
d_Dec'45'isScript_704 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_704 ~v0 ~v1 ~v2 = du_Dec'45'isScript_704
du_Dec'45'isScript_704 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_704
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_122
-- Ledger.Foreign.HSLedger.Core._.Dec-isSigned
d_Dec'45'isSigned_706 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_706
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.Dec-isVKey
d_Dec'45'isVKey_708 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_708 ~v0 ~v1 ~v2 = du_Dec'45'isVKey_708
du_Dec'45'isVKey_708 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_708
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_108
-- Ledger.Foreign.HSLedger.Core._.Dec-validP1Script
d_Dec'45'validP1Script_710 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_710
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_712 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_712
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Dec-≤ᵗ
d_Dec'45''8804''7511'_714 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_714
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_226
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEQ-Prices
d_DecEQ'45'Prices_716 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_716
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_718 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_718 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_154 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Foreign.HSLedger.Core._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_720 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_720 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_156 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Foreign.HSLedger.Core._.DecEq-CostModel
d_DecEq'45'CostModel_722 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_722
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_724 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_724
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_404
-- Ledger.Foreign.HSLedger.Core._.DecEq-Epoch
d_DecEq'45'Epoch_726 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_726
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-ExUnits
d_DecEq'45'ExUnits_728 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_728
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-GovRole
d_DecEq'45'GovRole_730 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_730
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_616
-- Ledger.Foreign.HSLedger.Core._.DecEq-Ix
d_DecEq'45'Ix_732 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_732
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_990
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.DecEq-LangDepView
d_DecEq'45'LangDepView_734 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_734
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_184
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Netw
d_DecEq'45'Netw_736 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_736
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-P1Script
d_DecEq'45'P1Script_738 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_738
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_740 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_740
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_410
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_742 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_742
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_408
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_744 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_744
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_406
-- Ledger.Foreign.HSLedger.Core._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_746 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_746 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v0)
      (coe v1) (coe v2)
-- Ledger.Foreign.HSLedger.Core._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_748 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_748
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Ser
d_DecEq'45'Ser_750 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_750
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_126
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Sig
d_DecEq'45'Sig_752 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_752
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Slot
d_DecEq'45'Slot_754 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_754
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_38
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_756 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_756
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_994 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_758 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_758
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_164
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_412
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_760 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_760
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_540
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1798 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_762 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_762
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_994 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_764 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_764
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_766 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_766
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_164
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_412
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_768 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_768
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_540
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1798 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Timelock
d_DecEq'45'Timelock_770 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_770
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_236
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-TxId
d_DecEq'45'TxId_772 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_772
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_992
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.DecEq-UpdT
d_DecEq'45'UpdT_774 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_774
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_552
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1798 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-VDeleg
d_DecEq'45'VDeleg_776 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_776
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Value
d_DecEq'45'Value_778 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_778
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Vote
d_DecEq'45'Vote_780 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_780
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_618
-- Ledger.Foreign.HSLedger.Core._.DecPo-Slot
d_DecPo'45'Slot_782 ::
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_782
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DelegEnv
d_DelegEnv_784 = ()
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds
d_DrepThresholds_786 = ()
-- Ledger.Foreign.HSLedger.Core._.Epoch
d_Epoch_790 :: ()
d_Epoch_790 = erased
-- Ledger.Foreign.HSLedger.Core._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_792 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_792
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.ExUnits
d_ExUnits_794 :: ()
d_ExUnits_794 = erased
-- Ledger.Foreign.HSLedger.Core._.GState
d_GState_802 = ()
-- Ledger.Foreign.HSLedger.Core._.GovAction
d_GovAction_804 = ()
-- Ledger.Foreign.HSLedger.Core._.GovActionID
d_GovActionID_806 :: ()
d_GovActionID_806 = erased
-- Ledger.Foreign.HSLedger.Core._.GovActionState
d_GovActionState_808 = ()
-- Ledger.Foreign.HSLedger.Core._.GovCertEnv
d_GovCertEnv_810 :: ()
d_GovCertEnv_810 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams
d_GovParams_812 = ()
-- Ledger.Foreign.HSLedger.Core._.GovProposal
d_GovProposal_814 = ()
-- Ledger.Foreign.HSLedger.Core._.GovRole
d_GovRole_816 = ()
-- Ledger.Foreign.HSLedger.Core._.GovVote
d_GovVote_818 = ()
-- Ledger.Foreign.HSLedger.Core._.HasCoin-TxOut
d_HasCoin'45'TxOut_822 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_822
  = coe
      MAlonzo.Code.Ledger.Transaction.d_HasCoin'45'TxOut_2512
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.Hash-Timelock
d_Hash'45'Timelock_824 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_824
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_396
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.HashProtected
d_HashProtected_826 :: () -> ()
d_HashProtected_826 = erased
-- Ledger.Foreign.HSLedger.Core._.Hashable-P1Script
d_Hashable'45'P1Script_828 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_828
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_830 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_830
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Hashable-Script
d_Hashable'45'Script_832 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_832
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_470
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_836 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_838 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_840 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.Ix
d_Ix_842 :: ()
d_Ix_842 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_844 :: ()
d_THash_844 = erased
-- Ledger.Foreign.HSLedger.Core._.KeyPair
d_KeyPair_846 :: ()
d_KeyPair_846 = erased
-- Ledger.Foreign.HSLedger.Core._.LangDepView
d_LangDepView_848 :: ()
d_LangDepView_848 = erased
-- Ledger.Foreign.HSLedger.Core._.Language
d_Language_850 :: ()
d_Language_850 = erased
-- Ledger.Foreign.HSLedger.Core._.MemoryEstimate
d_MemoryEstimate_852 :: ()
d_MemoryEstimate_852 = erased
-- Ledger.Foreign.HSLedger.Core._.NeedsHash
d_NeedsHash_854 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 -> ()
d_NeedsHash_854 = erased
-- Ledger.Foreign.HSLedger.Core._.Network
d_Network_856 :: ()
d_Network_856 = erased
-- Ledger.Foreign.HSLedger.Core._.NetworkId
d_NetworkId_860 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_860
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_868 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_868
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_248
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Number-Epoch
d_Number'45'Epoch_870 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_870
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.P1Script
d_P1Script_872 :: ()
d_P1Script_872 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure
d_P1ScriptStructure_874 = ()
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_876 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_P1ScriptStructure'45'TL_876
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_358
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.PlutusScript
d_PlutusScript_878 :: ()
d_PlutusScript_878 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_884 :: ()
d_THash_884 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_886 = ()
-- Ledger.Foreign.HSLedger.Core._.PParams
d_PParams_888 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_890 = ()
-- Ledger.Foreign.HSLedger.Core._.UpdateT
d_UpdateT_892 :: ()
d_UpdateT_892 = erased
-- Ledger.Foreign.HSLedger.Core._.PState
d_PState_894 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_896 = ()
-- Ledger.Foreign.HSLedger.Core._.PoolEnv
d_PoolEnv_898 :: ()
d_PoolEnv_898 = erased
-- Ledger.Foreign.HSLedger.Core._.PoolParams
d_PoolParams_900 = ()
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds
d_PoolThresholds_902 = ()
-- Ledger.Foreign.HSLedger.Core._.Prices
d_Prices_904 :: ()
d_Prices_904 = erased
-- Ledger.Foreign.HSLedger.Core._.ProposedPPUpdates
d_ProposedPPUpdates_906 :: ()
d_ProposedPPUpdates_906 = erased
-- Ledger.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_908 :: ()
d_ProtVer_908 = erased
-- Ledger.Foreign.HSLedger.Core._.Quorum
d_Quorum_910 :: Integer
d_Quorum_910
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_252
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.RdmrPtr
d_RdmrPtr_912 :: ()
d_RdmrPtr_912 = erased
-- Ledger.Foreign.HSLedger.Core._.Redeemer
d_Redeemer_914 :: ()
d_Redeemer_914 = erased
-- Ledger.Foreign.HSLedger.Core._.RwdAddr
d_RwdAddr_928 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.SKey
d_SKey_932 :: ()
d_SKey_932 = erased
-- Ledger.Foreign.HSLedger.Core._.Script
d_Script_936 :: ()
d_Script_936 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptAddr
d_ScriptAddr_938 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_938 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptBaseAddr
d_ScriptBaseAddr_940 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_940 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_942 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_942 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptHash
d_ScriptHash_944 :: ()
d_ScriptHash_944 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_946 = ()
-- Ledger.Foreign.HSLedger.Core._.Ser
d_Ser_950 :: ()
d_Ser_950 = erased
-- Ledger.Foreign.HSLedger.Core._.Sig
d_Sig_952 :: ()
d_Sig_952 = erased
-- Ledger.Foreign.HSLedger.Core._.Slot
d_Slot_954 :: ()
d_Slot_954 = erased
-- Ledger.Foreign.HSLedger.Core._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_956 :: Integer
d_SlotsPerEpoch'7580'_956
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Slotʳ
d_Slot'691'_958 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_958
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.StabilityWindow
d_StabilityWindow_960 :: Integer
d_StabilityWindow_960
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_44
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.StabilityWindowᶜ
d_StabilityWindow'7580'_962 :: Integer
d_StabilityWindow'7580'_962
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_964 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_964
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_994 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_966 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_966
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_968 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_968
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_164
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_412
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_970 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_970
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_540
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1798 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.T-isHashable
d_T'45'isHashable_972 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_972
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
         (coe
            MAlonzo.Code.Ledger.Script.d_Data'688'_164
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_412
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0)))))
-- Ledger.Foreign.HSLedger.Core._.Timelock
d_Timelock_976 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra
d_TokenAlgebra_978 = ()
-- Ledger.Foreign.HSLedger.Core._.Tx
d_Tx_984 = ()
-- Ledger.Foreign.HSLedger.Core._.TxBody
d_TxBody_986 = ()
-- Ledger.Foreign.HSLedger.Core._.TxId
d_TxId_988 :: ()
d_TxId_988 = erased
-- Ledger.Foreign.HSLedger.Core._.TxIn
d_TxIn_990 :: ()
d_TxIn_990 = erased
-- Ledger.Foreign.HSLedger.Core._.TxOut
d_TxOut_992 :: ()
d_TxOut_992 = erased
-- Ledger.Foreign.HSLedger.Core._.TxOutʰ
d_TxOut'688'_994 :: ()
d_TxOut'688'_994 = erased
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses
d_TxWitnesses_996 = ()
-- Ledger.Foreign.HSLedger.Core._.UTxO
d_UTxO_998 :: ()
d_UTxO_998 = erased
-- Ledger.Foreign.HSLedger.Core._.Update
d_Update_1000 :: ()
d_Update_1000 = erased
-- Ledger.Foreign.HSLedger.Core._.VDeleg
d_VDeleg_1002 = ()
-- Ledger.Foreign.HSLedger.Core._.VKey
d_VKey_1004 :: ()
d_VKey_1004 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyAddr
d_VKeyAddr_1006 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_1006 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyBaseAddr
d_VKeyBaseAddr_1008 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_1008 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1010 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_1010 = erased
-- Ledger.Foreign.HSLedger.Core._.Value
d_Value_1014 :: ()
d_Value_1014 = erased
-- Ledger.Foreign.HSLedger.Core._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1016 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1016
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1018 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1018
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Voter
d_Voter_1020 :: ()
d_Voter_1020 = erased
-- Ledger.Foreign.HSLedger.Core._.Wdrl
d_Wdrl_1022 :: ()
d_Wdrl_1022 = erased
-- Ledger.Foreign.HSLedger.Core._.actionWellFormed
d_actionWellFormed_1026 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 -> ()
d_actionWellFormed_1026 = erased
-- Ledger.Foreign.HSLedger.Core._.actionWellFormed?
d_actionWellFormed'63'_1028 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1028
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_532
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.adHashingScheme
d_adHashingScheme_1030 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1030
  = coe
      MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_994
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.addEpoch
d_addEpoch_1032 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1032
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.addSlot
d_addSlot_1034 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1034
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_214
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.addValue
d_addValue_1036 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1036
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_228
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.applyUpdate
d_applyUpdate_1038 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  Integer -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_1038
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_applyUpdate_480
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_526
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1798 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.coin
d_coin_1046 :: Integer -> Integer
d_coin_1046
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.coin-inject-lemma
d_coin'45'inject'45'lemma_1048 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1048 = erased
-- Ledger.Foreign.HSLedger.Core._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1050 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1050
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_222
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.crypto
d_crypto_1054 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_crypto_1054
  = coe
      MAlonzo.Code.Ledger.Transaction.d_crypto_1026
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.cwitness
d_cwitness_1056 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_636 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cwitness_1056 = coe MAlonzo.Code.Ledger.Certs.d_cwitness_652
-- Ledger.Foreign.HSLedger.Core._.epoch
d_epoch_1064 :: Integer -> Integer
d_epoch_1064
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.epochStructure
d_epochStructure_1066 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_1066
  = coe
      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.evalTimelock
d_evalTimelock_1080 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.firstSlot
d_firstSlot_1082 :: Integer -> Integer
d_firstSlot_1082
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.getDRepVote
d_getDRepVote_1084 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_1084
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_622
-- Ledger.Foreign.HSLedger.Core._.getScriptHash
d_getScriptHash_1086 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> Integer
d_getScriptHash_1086 ~v0 ~v1 ~v2 = du_getScriptHash_1086
du_getScriptHash_1086 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_24 -> Integer
du_getScriptHash_1086
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_148
-- Ledger.Foreign.HSLedger.Core._.getValue
d_getValue_1088 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1088
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2396
-- Ledger.Foreign.HSLedger.Core._.getValueʰ
d_getValue'688'_1090 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1090
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2412
-- Ledger.Foreign.HSLedger.Core._.globalConstants
d_globalConstants_1092 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
d_globalConstants_1092
  = coe
      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.govParams
d_govParams_1094 :: MAlonzo.Code.Ledger.PParams.T_GovParams_496
d_govParams_1094
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govParams_1798
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.govStructure
d_govStructure_1096 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_1096
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govStructure_1946
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_1098 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1098
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_394
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.inject
d_inject_1100 :: Integer -> Integer
d_inject_1100
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.isKeyPair
d_isKeyPair_1102 :: Integer -> Integer -> ()
d_isKeyPair_1102 = erased
-- Ledger.Foreign.HSLedger.Core._.isP2Script
d_isP2Script_1104 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_1104
  = coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2510
-- Ledger.Foreign.HSLedger.Core._.isScript
d_isScript_1106 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._.isScriptAddr
d_isScriptAddr_1108 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1108 = erased
-- Ledger.Foreign.HSLedger.Core._.isScriptRwdAddr
d_isScriptRwdAddr_1110 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 -> ()
d_isScriptRwdAddr_1110 = erased
-- Ledger.Foreign.HSLedger.Core._.isSigned
d_isSigned_1112 :: Integer -> Integer -> Integer -> ()
d_isSigned_1112 = erased
-- Ledger.Foreign.HSLedger.Core._.isSigned-correct
d_isSigned'45'correct_1114 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1114 = erased
-- Ledger.Foreign.HSLedger.Core._.isVKey
d_isVKey_1116 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._.isVKeyAddr
d_isVKeyAddr_1118 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1118 = erased
-- Ledger.Foreign.HSLedger.Core._.khs
d_khs_1120 :: MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1120
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_khs_192
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.language
d_language_1122 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1122
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_language_216
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.lookupScriptHash
d_lookupScriptHash_1124 ::
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1124
  = coe
      MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2496
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.maximum
d_maximum_1126 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1126
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_476
-- Ledger.Foreign.HSLedger.Core._.monoid
d_monoid_1128 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1128
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_890
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.netId
d_netId_1130 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netId_1130 ~v0 ~v1 ~v2 = du_netId_1130
du_netId_1130 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_netId_1130 = coe MAlonzo.Code.Ledger.Address.du_netId_92
-- Ledger.Foreign.HSLedger.Core._.networkId
d_networkId_1132 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_1132
  = coe
      MAlonzo.Code.Ledger.Transaction.d_networkId_1944
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.p1s
d_p1s_1136 :: MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1136
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_398
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_1138 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> ()
d_paramsWellFormed_1138 = erased
-- Ledger.Foreign.HSLedger.Core._.payCred
d_payCred_1140 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_payCred_1140 ~v0 ~v1 ~v2 = du_payCred_1140
du_payCred_1140 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_payCred_1140 = coe MAlonzo.Code.Ledger.Address.du_payCred_90
-- Ledger.Foreign.HSLedger.Core._.pkk
d_pkk_1142 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_1142
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_pkk_164
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.policies
d_policies_1144 :: Integer -> [Integer]
d_policies_1144
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppHashingScheme
d_ppHashingScheme_1146 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1146
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_540
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1798 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppUpd
d_ppUpd_1148 :: MAlonzo.Code.Ledger.PParams.T_PParamsDiff_464
d_ppUpd_1148
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_526
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1798 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppWF?
d_ppWF'63'_1150 ::
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1150
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppWF'63'_488
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_526
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1798 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.ppdWellFormed
d_ppdWellFormed_1152 :: Integer -> ()
d_ppdWellFormed_1152 = erased
-- Ledger.Foreign.HSLedger.Core._.preoEpoch
d_preoEpoch_1154 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1154
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.property
d_property_1156 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1156 = erased
-- Ledger.Foreign.HSLedger.Core._.ps
d_ps_1158 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_1158
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_412
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_1160 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow?
d_pvCanFollow'63'_1162 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1162
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_416
-- Ledger.Foreign.HSLedger.Core._.rawMonoid
d_rawMonoid_1164 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1164
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0) in
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
d_refScripts_1166 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1166
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refScripts_2436
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.scriptOuts
d_scriptOuts_1174 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1174
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptOuts_2422
-- Ledger.Foreign.HSLedger.Core._.scriptStructure
d_scriptStructure_1176 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360
d_scriptStructure_1176
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.sign
d_sign_1178 :: Integer -> Integer -> Integer
d_sign_1178
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_sign_102
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.size
d_size_1180 :: Integer -> Integer
d_size_1180
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_212
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.specialAsset
d_specialAsset_1182 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1182
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_218
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.sucᵉ
d_suc'7497'_1184 :: Integer -> Integer
d_suc'7497'_1184
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_46
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.sumᵛ
d_sum'7515'_1186 :: [Integer] -> Integer
d_sum'7515'_1186
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_246
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.toData
d_toData_1188 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_1188
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_toData_220
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1518 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.tokenAlgebra
d_tokenAlgebra_1190 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
d_tokenAlgebra_1190
  = coe
      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.txOutHash
d_txOutHash_1192 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1192
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2402
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.txidBytes
d_txidBytes_1194 :: Integer -> Integer
d_txidBytes_1194
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txidBytes_1942
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.txinsScript
d_txinsScript_1196 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1196
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsScript_2430
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.txinsVKey
d_txinsVKey_1198 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1198
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsVKey_2416
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.txscripts
d_txscripts_1200 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1200
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txscripts_2486
      (coe d_HSTransactionStructure_620)
-- Ledger.Foreign.HSLedger.Core._.updateGroups
d_updateGroups_1202 ::
  Integer -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_1202
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_updateGroups_482
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_526
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1798 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.validP1Script
d_validP1Script_1204 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 -> ()
d_validP1Script_1204 = erased
-- Ledger.Foreign.HSLedger.Core._.validPlutusScript
d_validPlutusScript_1206 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> ()
d_validPlutusScript_1206 = erased
-- Ledger.Foreign.HSLedger.Core._.ε
d_ε_1208 :: Integer
d_ε_1208
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1826 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.d_ε_842
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.ℕEpochStructure
d_ℕEpochStructure_1210 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_ℕEpochStructure_1210
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_256
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1006 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ℕtoEpoch
d_ℕtoEpoch_1212 :: Integer -> Integer
d_ℕtoEpoch_1212
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Acnt.reserves
d_reserves_1260 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_124 -> Integer
d_reserves_1260 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_132 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Acnt.treasury
d_treasury_1262 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_124 -> Integer
d_treasury_1262 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_130 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Anchor.hash
d_hash_1266 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_500 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_hash_1266 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_508 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Anchor.url
d_url_1268 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_500 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1268 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_506 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.net
d_net_1272 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1272 v0 = coe MAlonzo.Code.Ledger.Address.d_net_38 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.pay
d_pay_1274 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1274 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_40 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.stake
d_stake_1276 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1276 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_42 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.attrsSize
d_attrsSize_1280 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> Integer
d_attrsSize_1280 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_56 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.net
d_net_1282 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1282 v0 = coe MAlonzo.Code.Ledger.Address.d_net_52 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.pay
d_pay_1284 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1284 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_54 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.epoch
d_epoch_1288 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_668 -> Integer
d_epoch_1288 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_678 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.pp
d_pp_1290 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_668 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pp_1290 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_680 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.votes
d_votes_1292 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_668 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
d_votes_1292 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_682 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.wdrls
d_wdrls_1294 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_668 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1294 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_684 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.dState
d_dState_1298 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_728 ->
  MAlonzo.Code.Ledger.Certs.T_DState_688
d_dState_1298 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_736 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.gState
d_gState_1300 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_728 ->
  MAlonzo.Code.Ledger.Certs.T_GState_716
d_gState_1300 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_740 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.pState
d_pState_1302 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_728 ->
  MAlonzo.Code.Ledger.Certs.T_PState_704
d_pState_1302 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_738 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.rewards
d_rewards_1322 ::
  MAlonzo.Code.Ledger.Certs.T_DState_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1322 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_700 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.stakeDelegs
d_stakeDelegs_1324 ::
  MAlonzo.Code.Ledger.Certs.T_DState_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1324 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_698 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.voteDelegs
d_voteDelegs_1326 ::
  MAlonzo.Code.Ledger.Certs.T_DState_688 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1326 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_696 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.pools
d_pools_1330 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_744 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1330 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_752 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.pparams
d_pparams_1332 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_744 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1332 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_750 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P1
d_P1_1336 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1336 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_176 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P2a
d_P2a_1338 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1338 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_178 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P2b
d_P2b_1340 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1340 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_180 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P3
d_P3_1342 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1342 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_182 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P4
d_P4_1344 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1344 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_184 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5a
d_P5a_1346 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1346 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_186 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5b
d_P5b_1348 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1348 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_188 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5c
d_P5c_1350 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1350 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_190 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5d
d_P5d_1352 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1352 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_192 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P6
d_P6_1354 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1354 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_194 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.ccHotKeys
d_ccHotKeys_1358 ::
  MAlonzo.Code.Ledger.Certs.T_GState_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1358 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_724 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.dreps
d_dreps_1360 ::
  MAlonzo.Code.Ledger.Certs.T_GState_716 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1360 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_722 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.action
d_action_1380 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510
d_action_1380 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_612 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.expiresIn
d_expiresIn_1382 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 ->
  Integer
d_expiresIn_1382 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_610 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.prevAction
d_prevAction_1384 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 ->
  AgdaAny
d_prevAction_1384 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_614 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.returnAddr
d_returnAddr_1386 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_1386 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_608 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.votes
d_votes_1388 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1388 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_606 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_1392 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1392 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_540 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_1394 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1394 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_540 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1396 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1396 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_552 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.THash
d_THash_1398 :: MAlonzo.Code.Ledger.PParams.T_GovParams_496 -> ()
d_THash_1398 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_1400 :: MAlonzo.Code.Ledger.PParams.T_GovParams_496 -> ()
d_UpdateT_1400 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_1402 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1402 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_540 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_1404 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_1404 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_480
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_1406 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1406 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_540 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_1408 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_464
d_ppUpd_1408 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_1410 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1410 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_488
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppdWellFormed
d_ppdWellFormed_1412 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 -> AgdaAny -> ()
d_ppdWellFormed_1412 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_1414 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_496 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_1414 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_482
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_526 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovProposal.action
d_action_1418 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_510
d_action_1418 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_582 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.anchor
d_anchor_1420 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_500
d_anchor_1420 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_592 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.deposit
d_deposit_1422 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568 -> Integer
d_deposit_1422 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_588 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.policy
d_policy_1424 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568 ->
  Maybe Integer
d_policy_1424 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_586 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.prevAction
d_prevAction_1426 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568 -> AgdaAny
d_prevAction_1426 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_584 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.returnAddr
d_returnAddr_1428 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_1428 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_590 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.anchor
d_anchor_1440 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_500
d_anchor_1440 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_566 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.gid
d_gid_1442 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1442 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_560 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.vote
d_vote_1444 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_542
d_vote_1444 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_564 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.voter
d_voter_1446 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1446 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_562 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.homo
d_homo_1450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1450 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1452 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1454 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1456 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.cong
d_cong_1458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1458 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.homo
d_homo_1462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1462 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.injective
d_injective_1464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1464 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1466 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1468 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1468 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1470 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1470 ~v0 v1 = du_isMagmaMonomorphism_1470 v1
du_isMagmaMonomorphism_1470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1470 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1472 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1474 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1474 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1476 v0
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
d_isRelIsomorphism_1478 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1478 ~v0 v1 = du_isRelIsomorphism_1478 v1
du_isRelIsomorphism_1478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1478 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1480 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1480 ~v0 v1 = du_isRelMonomorphism_1480 v1
du_isRelMonomorphism_1480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1480 v0
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
d_surjective_1482 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1482 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1484 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.cong
d_cong_1486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1486 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.homo
d_homo_1490 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1490 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.injective
d_injective_1492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1492 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1494 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1494 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1496 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1496 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1498 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1498 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1500 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1502 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1502 ~v0 v1 = du_isRelMonomorphism_1502 v1
du_isRelMonomorphism_1502 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1502 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1504 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1504 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.cong
d_cong_1506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1506 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1510 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1510 v0
  = coe MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1512 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1512 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1514 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1514 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.P1Script
d_P1Script_1516 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 -> ()
d_P1Script_1516 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.validP1Script
d_validP1Script_1518 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1518 = erased
-- Ledger.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_1534 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_Emax_1534 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_312 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a
d_a_1536 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_a_1536 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_294 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a0
d_a0_1538 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1538 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_310 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.b
d_b_1540 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_b_1540 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_296 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_1542 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_ccMaxTermLength_1542 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_334 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_1544 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_ccMinSize_1544 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_332 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1546 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_coinsPerUTxOByte_1546 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_302 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_1548 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_collateralPercentage_1548 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_316 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_1550 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1550 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_318 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_1552 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_drepActivity_1552 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_330 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_1554 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_drepDeposit_1554 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_328 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_1556 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_154
d_drepThresholds_1556 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_320 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_1558 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_govActionDeposit_1558 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_326 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_1560 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_govActionLifetime_1560 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_324 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_1562 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_keyDeposit_1562 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_1564 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1564 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_290 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_1566 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxBlockSize_1566 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_278 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_1568 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxCollateralInputs_1568 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_286 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_1570 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxHeaderSize_1570 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_282 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_1572 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1572 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_288 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_1574 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxTxSize_1574 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_280 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_1576 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_maxValSize_1576 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_284 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1578 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1578 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_304
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_1580 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_minUTxOValue_1580 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_308 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_1582 :: MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_nopt_1582 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_314 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_1584 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 -> Integer
d_poolDeposit_1584 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_300 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_1586 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196
d_poolThresholds_1586 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_322 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.prices
d_prices_1588 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1588 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_306 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.pv
d_pv_1590 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1590 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_292 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_1594 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_464 -> ()
d_UpdateT_1594 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_1596 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_464 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_applyUpdate_1596 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_480 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_1598 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_464 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1598 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_488 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1600 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_464 -> AgdaAny -> ()
d_ppdWellFormed_1600 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_1602 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_464 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_142]
d_updateGroups_1602 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_482 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PState.pools
d_pools_1606 ::
  MAlonzo.Code.Ledger.Certs.T_PState_704 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1606 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_710 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PState.retiring
d_retiring_1608 ::
  MAlonzo.Code.Ledger.Certs.T_PState_704 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1608 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_712 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1612 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1612 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_1614 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_CostModel_1614 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T
d_T_1616 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_T_1616 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.THash
d_THash_1618 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_THash_1618 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_1620 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1620 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Datum
d_Datum_1622 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Datum_1622 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1624 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1624 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_214 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1626 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1626 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1628 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1628 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1630 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1630 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1632 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1632 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_184 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-T
d_DecEq'45'T_1634 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1634 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1636 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1636 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1638 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1638 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_1640 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_ExUnits_1640 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1642 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1642 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_1644 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_LangDepView_1644 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_1646 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Language_1646 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_1648 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_PlutusScript_1648 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_1650 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Prices_1650 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Redeemer
d_Redeemer_1652 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Redeemer_1652 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-Hashable
d_T'45'Hashable_1654 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1654 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-isHashable
d_T'45'isHashable_1656 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1656 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_164 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_1658 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny
d_language_1658 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_1660 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  () -> AgdaAny -> AgdaAny
d_toData_1660 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_220 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_1662 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1662 = erased
-- Ledger.Foreign.HSLedger.Core._.PoolParams.rewardAddr
d_rewardAddr_1666 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_630 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_1666 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_634 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q1
d_Q1_1670 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1670 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q2a
d_Q2a_1672 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1672 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q2b
d_Q2b_1674 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1674 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_212 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q4
d_Q4_1676 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1676 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_214 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q5e
d_Q5e_1678 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_196 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_1678 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.RwdAddr.net
d_net_1682 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1682 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.RwdAddr.stake
d_stake_1684 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1684 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1688 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1688 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.CostModel
d_CostModel_1690 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_CostModel_1690 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T
d_T_1692 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_T_1692 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.THash
d_THash_1694 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_THash_1694 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dataʰ
d_Data'688'_1696 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1696 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_164
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Datum
d_Datum_1698 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Datum_1698 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1700 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1700
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1702 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1702 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1704 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1704 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1706 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1706 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_182
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1708 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1708 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_188
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1710 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1710 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_184
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1712 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1712
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-T
d_DecEq'45'T_1714 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1714 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1716 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1716 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1718 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1718 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_178
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnits
d_ExUnits_1720 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_ExUnits_1720 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_1722 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1722 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_396 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1724 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1724
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_398 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1726 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1726 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_180
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1728 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1728
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_470
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.LangDepView
d_LangDepView_1730 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_LangDepView_1730 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Language
d_Language_1732 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Language_1732 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.P1Script
d_P1Script_1734 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_P1Script_1734 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusScript
d_PlutusScript_1736 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_PlutusScript_1736 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Prices
d_Prices_1738 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Prices_1738 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Redeemer
d_Redeemer_1740 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Redeemer_1740 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Script
d_Script_1742 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 -> ()
d_Script_1742 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-Hashable
d_T'45'Hashable_1744 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1744 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_164
              (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-isHashable
d_T'45'isHashable_1746 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1746 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_164
         (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1748 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1748 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_394 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.language
d_language_1750 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny -> AgdaAny
d_language_1750 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_1752 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1752
  = let v0 = d_HSTransactionStructure_620 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_398
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1026 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_1754 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_1754 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.toData
d_toData_1756 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  () -> AgdaAny -> AgdaAny
d_toData_1756 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_412 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validP1Script
d_validP1Script_1758 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_222 -> ()
d_validP1Script_1758 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validPlutusScript
d_validPlutusScript_1760 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_360 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1760 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._∙_
d__'8729'__1778 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1778 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._≈_
d__'8776'__1780 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1780 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1782 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1782 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.AssetName
d_AssetName_1784 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_AssetName_1784 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1786 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1786 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_226 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1788 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1788 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1790 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1792 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1794 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.MemoryEstimate
d_MemoryEstimate_1796 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_MemoryEstimate_1796 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value
d_Value_1798 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_Value_1798 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1800 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1800
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1802 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1802 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.addValue
d_addValue_1804 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1804
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_228
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coin
d_coin_1806 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_coin_1806 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1808 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1808 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1810 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1810 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_222
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.inject
d_inject_1812 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> AgdaAny
d_inject_1812 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.monoid
d_monoid_1814 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1814 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.policies
d_policies_1816 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> [Integer]
d_policies_1816 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.property
d_property_1818 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1818 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.rawMonoid
d_rawMonoid_1820 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1820 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.size
d_size_1822 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_size_1822 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_212 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.specialAsset
d_specialAsset_1824 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_specialAsset_1824 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_218 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.sumᵛ
d_sum'7515'_1826 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1826
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_246
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.ε
d_ε_1828 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_ε_1828 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_124
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1832 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1832 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1834 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1834 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1836 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1836 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1838 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1838 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1840 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1840 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1844 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1844 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1846 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1846 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1848 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1848 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1850 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1850 ~v0 = du_isMagmaIsomorphism_1850
du_isMagmaIsomorphism_1850 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_1850 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1852 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1852 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1852 v2
du_isMagmaMonomorphism_1852 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1852 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1854 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1854 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1856 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1856 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1858 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1858 v0
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
d_isRelIsomorphism_1860 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1860 ~v0 ~v1 v2 = du_isRelIsomorphism_1860 v2
du_isRelIsomorphism_1860 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1860 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1862 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1862 ~v0 ~v1 v2 = du_isRelMonomorphism_1862 v2
du_isRelMonomorphism_1862 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1862 v0
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
d_surjective_1864 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1864 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1866 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1866 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1868 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1868 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1872 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1872 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1874 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1874 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1876 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1876 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1878 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1878 ~v0 = du_isMagmaMonomorphism_1878
du_isMagmaMonomorphism_1878 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1878 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1880 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1880 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1882 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1882 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1884 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1884 ~v0 ~v1 v2 = du_isRelMonomorphism_1884 v2
du_isRelMonomorphism_1884 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1884 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1886 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1886 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1888 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1888 = erased
-- Ledger.Foreign.HSLedger.Core._.Tx.body
d_body_1892 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280
d_body_1892 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2388 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.isValid
d_isValid_1894 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2378 -> Bool
d_isValid_1894 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2392 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.txAD
d_txAD_1896 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_1896 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2394 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.wits
d_wits_1898 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2378 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2358
d_wits_1898 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2390 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.collateral
d_collateral_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1902 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2352 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.mint
d_mint_1904 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Integer
d_mint_1904 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2328 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.netwrk
d_netwrk_1906 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netwrk_1906 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_netwrk_2346 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.refInputs
d_refInputs_1908 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_1908 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2322 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.reqSigHash
d_reqSigHash_1910 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> [Integer]
d_reqSigHash_1910 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2354 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.scriptIntHash
d_scriptIntHash_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Maybe Integer
d_scriptIntHash_1912 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2356 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txADhash
d_txADhash_1914 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txADhash_1914 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2344 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txcerts
d_txcerts_1916 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_636]
d_txcerts_1916 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2332 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txdonation
d_txdonation_1918 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Integer
d_txdonation_1918 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2340 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txfee
d_txfee_1920 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Integer
d_txfee_1920 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2326 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txid
d_txid_1922 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Integer
d_txid_1922 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2350 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txins
d_txins_1924 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_1924 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2320 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txouts
d_txouts_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_1926 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2324 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txprop
d_txprop_1928 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568]
d_txprop_1928 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2338 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txsize
d_txsize_1930 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 -> Integer
d_txsize_1930 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2348 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txup
d_txup_1932 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_1932 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2342 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txvldt
d_txvldt_1934 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_1934 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2330 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txvote
d_txvote_1936 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
d_txvote_1936 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2336 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txwdrls
d_txwdrls_1938 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_1938 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2334 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.scripts
d_scripts_1942 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2358 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_1942 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scripts_2370 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.scriptsP1
d_scriptsP1_1944 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2358 ->
  [MAlonzo.Code.Ledger.Script.T_Timelock_222]
d_scriptsP1_1944
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2376
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.txdats
d_txdats_1946 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_1946 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdats_2372 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.txrdmrs
d_txrdmrs_1948 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_1948 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2374 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.vkSigs
d_vkSigs_1950 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_1950 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2368 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions
d_AbstractFunctions_1990 = ()
-- Ledger.Foreign.HSLedger.Core._.indexOf
d_indexOf_1992 = ()
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.indexOfImp
d_indexOfImp_1996 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1370
d_indexOfImp_1996 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1412 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.runPLCScript
d_runPLCScript_1998 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] -> Bool
d_runPLCScript_1998 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1414 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.scriptSize
d_scriptSize_2000 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2000 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1416 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.serSize
d_serSize_2002 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  Integer -> Integer
d_serSize_2002 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_serSize_1410 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.txscriptfee
d_txscriptfee_2004 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2004 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1408 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfDCert
d_indexOfDCert_2008 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1370 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_636 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_636] -> Maybe Integer
d_indexOfDCert_2008 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1384 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfPolicyId
d_indexOfPolicyId_2010 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1370 ->
  Integer -> [Integer] -> Maybe Integer
d_indexOfPolicyId_2010 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1390 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfProposal
d_indexOfProposal_2012 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1370 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_568] ->
  Maybe Integer
d_indexOfProposal_2012 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1394 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_2014 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1370 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_indexOfRwdAddr_2014 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1386 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfTxIn
d_indexOfTxIn_2016 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe Integer
d_indexOfTxIn_2016 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1388 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfVote
d_indexOfVote_2018 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1370 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe Integer
d_indexOfVote_2018 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1392 (coe v0)
-- Ledger.Foreign.HSLedger.Core.HSAbstractFunctions
d_HSAbstractFunctions_2020 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396
d_HSAbstractFunctions_2020
  = coe
      MAlonzo.Code.Ledger.Abstract.C_AbstractFunctions'46'constructor_2643
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> v0))
      (coe
         MAlonzo.Code.Ledger.Abstract.C_indexOf'46'constructor_2381
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