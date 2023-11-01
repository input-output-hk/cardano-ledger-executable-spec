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

module MAlonzo.Code.Ledger.Foreign.HSLedger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.PairOp
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.Haskell.Coerce
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.Functor
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder.Instance
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.Foreign.LedgerTypes
import qualified MAlonzo.Code.Ledger.GovStructure
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Ledger.Utxo.Properties
import qualified MAlonzo.Code.Ledger.Utxow.Properties
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Foreign.HSLedger._.∀Hashable
d_'8704'Hashable_14 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_'8704'Hashable_14 ~v0 ~v1 = du_'8704'Hashable_14
du_'8704'Hashable_14 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_'8704'Hashable_14
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_211
      (\ v0 -> v0)
-- Ledger.Foreign.HSLedger._.∀isHashableSet
d_'8704'isHashableSet_18 ::
  () ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_'8704'isHashableSet_18 ~v0 v1 = du_'8704'isHashableSet_18 v1
du_'8704'isHashableSet_18 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
du_'8704'isHashableSet_18 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26 v0 v0
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_211
         (\ v1 -> v1))
-- Ledger.Foreign.HSLedger.mkHashable⊥
d_mkHashable'8869'_22 ::
  () -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_mkHashable'8869'_22 ~v0 = du_mkHashable'8869'_22
du_mkHashable'8869'_22 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_mkHashable'8869'_22
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_211
      (\ v0 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
-- Ledger.Foreign.HSLedger.Implementation.Network
d_Network_30 :: ()
d_Network_30 = erased
-- Ledger.Foreign.HSLedger.Implementation.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_32 :: Integer
d_SlotsPerEpoch'7580'_32 = coe (100 :: Integer)
-- Ledger.Foreign.HSLedger.Implementation.StabilityWindowᶜ
d_StabilityWindow'7580'_34 :: Integer
d_StabilityWindow'7580'_34 = coe (10 :: Integer)
-- Ledger.Foreign.HSLedger.Implementation.Quorum
d_Quorum_36 :: Integer
d_Quorum_36 = coe (1 :: Integer)
-- Ledger.Foreign.HSLedger.Implementation.NetworkId
d_NetworkId_38 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_38 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Foreign.HSLedger.Implementation.SKey
d_SKey_40 :: ()
d_SKey_40 = erased
-- Ledger.Foreign.HSLedger.Implementation.VKey
d_VKey_42 :: ()
d_VKey_42 = erased
-- Ledger.Foreign.HSLedger.Implementation.Sig
d_Sig_44 :: ()
d_Sig_44 = erased
-- Ledger.Foreign.HSLedger.Implementation.Ser
d_Ser_46 :: ()
d_Ser_46 = erased
-- Ledger.Foreign.HSLedger.Implementation.isKeyPair
d_isKeyPair_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_48 = erased
-- Ledger.Foreign.HSLedger.Implementation.sign
d_sign_50 ::
  () ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_50 ~v0 v1 = du_sign_50 v1
du_sign_50 ::
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_50 v0
  = coe MAlonzo.Code.Interface.HasAdd.d__'43'__12 (coe v0)
-- Ledger.Foreign.HSLedger.Implementation.ScriptHash
d_ScriptHash_52 :: ()
d_ScriptHash_52 = erased
-- Ledger.Foreign.HSLedger.Implementation.P1Script
d_P1Script_54 :: ()
d_P1Script_54 = erased
-- Ledger.Foreign.HSLedger.Implementation.Hashable-P1Script
d_Hashable'45'P1Script_56 ::
  () -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_56 v0 = coe du_mkHashable'8869'_22
-- Ledger.Foreign.HSLedger.Implementation.Data
d_Data_58 :: ()
d_Data_58 = erased
-- Ledger.Foreign.HSLedger.Implementation.Dataʰ
d_Data'688'_60 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_60
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkHashableSet_48
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26
         MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28
         MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_211
            (\ v0 -> v0)))
-- Ledger.Foreign.HSLedger.Implementation.toData
d_toData_64 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_64 ~v0 ~v1 = du_toData_64
du_toData_64 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_toData_64 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Foreign.HSLedger.Implementation.PlutusScript
d_PlutusScript_66 :: ()
d_PlutusScript_66 = erased
-- Ledger.Foreign.HSLedger.Implementation.Hashable-PlutusScript
d_Hashable'45'PlutusScript_68 ::
  () -> MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_68 v0 = coe du_mkHashable'8869'_22
-- Ledger.Foreign.HSLedger.Implementation.ExUnits
d_ExUnits_70 :: ()
d_ExUnits_70 = erased
-- Ledger.Foreign.HSLedger.Implementation.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_72 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_72
  = coe
      MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15055
      (coe MAlonzo.Code.Algebra.PairOp.du__'8729''7510'__12 (coe addInt))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (0 :: Integer))
         (coe (0 :: Integer)))
      (coe
         MAlonzo.Code.Algebra.PairOp.du_pairOpRespectsComm_92
         (coe (0 :: Integer))
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'isCommutativeMonoid_3196))
-- Ledger.Foreign.HSLedger.Implementation._≥ᵉ_
d__'8805''7497'__98 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__98 = erased
-- Ledger.Foreign.HSLedger.Implementation.CostModel
d_CostModel_100 :: ()
d_CostModel_100 = erased
-- Ledger.Foreign.HSLedger.Implementation.Language
d_Language_102 :: ()
d_Language_102 = erased
-- Ledger.Foreign.HSLedger.Implementation.LangDepView
d_LangDepView_104 :: ()
d_LangDepView_104 = erased
-- Ledger.Foreign.HSLedger.Implementation.Prices
d_Prices_106 :: ()
d_Prices_106 = erased
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra
d_TokenAlgebra_110 = ()
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__118 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__118 = erased
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.AssetName
d_AssetName_120 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_AssetName_120 = erased
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_122 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8804''7511'_122 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234 (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_124 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Value_124 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228 (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_126 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_128 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_130 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.Carrier
d_Carrier_134 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_Carrier_134 = erased
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_136 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_136 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
      (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.coin
d_coin_140 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_coin_140 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210 (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_142 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_coinIsMonoidHomomorphism_142 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.inject
d_inject_144 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> AgdaAny
d_inject_144 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212 (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.monoid
d_monoid_146 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_146 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.policies
d_policies_148 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> [Integer]
d_policies_148 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214 (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.property
d_property_150 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_150 = erased
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.rawMonoid
d_rawMonoid_152 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_152 v0
  = let v1
          = MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1))
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.size
d_size_156 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_size_156 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_216 (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.specialAsset
d_specialAsset_158 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_specialAsset_158 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_222 (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.ε
d_ε_162 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_ε_162 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_166 = erased
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_168 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_170 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe v0))
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_172 = erased
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_178 = erased
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_180 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_298
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
            (coe v0)))
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_188 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_190 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
      (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_192 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_192 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
               (coe v0))))
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_198 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_198 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_330 (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_200 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_200 = erased
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_206 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_206 = erased
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_208 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_208 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_210 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_210 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_214 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_214 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_216 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_216 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Implementation._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_220 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_220 = erased
-- Ledger.Foreign.HSLedger.Implementation.coinTokenAlgebra
d_coinTokenAlgebra_224 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
d_coinTokenAlgebra_224 = coe d_'46'extendedlambda1_230
-- Ledger.Foreign.HSLedger.Implementation._..extendedlambda1
d_'46'extendedlambda1_230 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
d_'46'extendedlambda1_230
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.C_TokenAlgebra'46'constructor_1585
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3206
      (\ v0 -> v0) (\ v0 -> v0)
      (\ v0 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709'_424
           (coe
              MAlonzo.Code.Axiom.Set.d_th_1414
              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
      (\ v0 -> 1 :: Integer) ("Ada" :: Data.Text.Text)
      d_'46'extendedlambda2_238
      MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
      (\ v0 v1 ->
         MAlonzo.Code.Data.Nat.Properties.d__'8804''63'__2612
           (coe v0) (coe v1))
-- Ledger.Foreign.HSLedger.Implementation._..extendedlambda2
d_'46'extendedlambda2_238 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_'46'extendedlambda2_238
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMonoidHomomorphism'46'constructor_5533
      (coe d_'46'extendedlambda3_240) erased
-- Ledger.Foreign.HSLedger.Implementation._..extendedlambda3
d_'46'extendedlambda3_240 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_'46'extendedlambda3_240
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.C_IsMagmaHomomorphism'46'constructor_1049
      (coe
         MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsRelHomomorphism'46'constructor_587
         (coe (\ v0 v1 v2 -> v2)))
      erased
-- Ledger.Foreign.HSLedger.Implementation.TxId
d_TxId_246 :: ()
d_TxId_246 = erased
-- Ledger.Foreign.HSLedger.Implementation.Ix
d_Ix_248 :: ()
d_Ix_248 = erased
-- Ledger.Foreign.HSLedger.Implementation.AuxiliaryData
d_AuxiliaryData_250 :: ()
d_AuxiliaryData_250 = erased
-- Ledger.Foreign.HSLedger.Implementation.DocHash
d_DocHash_252 :: ()
d_DocHash_252 = erased
-- Ledger.Foreign.HSLedger.Implementation.networkId
d_networkId_254 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_254 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Foreign.HSLedger.Implementation.tokenAlgebra
d_tokenAlgebra_256 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
d_tokenAlgebra_256 = coe d_coinTokenAlgebra_224
-- Ledger.Foreign.HSLedger.HSGlobalConstants
d_HSGlobalConstants_258 ::
  MAlonzo.Code.Ledger.Epoch.T_GlobalConstants_236
d_HSGlobalConstants_258
  = coe
      MAlonzo.Code.Ledger.Epoch.C_GlobalConstants'46'constructor_4991
      MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28
      d_SlotsPerEpoch'7580'_32
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_563
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      d_StabilityWindow'7580'_34 d_Quorum_36 d_NetworkId_38
-- Ledger.Foreign.HSLedger.HSEpochStructure
d_HSEpochStructure_260 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4
d_HSEpochStructure_260
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ℕEpochStructure_266
      (coe d_HSGlobalConstants_258)
-- Ledger.Foreign.HSLedger.HSCrypto
d_HSCrypto_264 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_148
d_HSCrypto_264
  = coe
      MAlonzo.Code.Ledger.Crypto.C_Crypto'46'constructor_2513
      d_HSPKKScheme_270
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26
         MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
         MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_211
            (\ v0 -> v0)))
      MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
-- Ledger.Foreign.HSLedger._.HSPKKScheme
d_HSPKKScheme_270 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_HSPKKScheme_270
  = coe
      MAlonzo.Code.Ledger.Crypto.C_PKKScheme'46'constructor_1763 addInt
      (\ v0 v1 ->
         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
           (coe addInt (coe v0) (coe v1)))
      erased MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
      MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
-- Ledger.Foreign.HSLedger._.P1ScriptStructure
d_P1ScriptStructure_296 = ()
-- Ledger.Foreign.HSLedger._.PlutusStructure
d_PlutusStructure_298 = ()
-- Ledger.Foreign.HSLedger._.ScriptStructure
d_ScriptStructure_312 = ()
-- Ledger.Foreign.HSLedger._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_336 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'P1Script_336 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114 (coe v0)
-- Ledger.Foreign.HSLedger._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_338 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_338 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112 (coe v0)
-- Ledger.Foreign.HSLedger._.P1ScriptStructure.P1Script
d_P1Script_340 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 -> ()
d_P1Script_340 = erased
-- Ledger.Foreign.HSLedger._.P1ScriptStructure.validP1Script
d_validP1Script_342 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_342 = erased
-- Ledger.Foreign.HSLedger._.P1ScriptStructure.validP1Script?
d_validP1Script'63'_344 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validP1Script'63'_344 v0
  = coe MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure._≥ᵉ_
d__'8805''7497'__352 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__352 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.CostModel
d_CostModel_354 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_CostModel_354 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.T
d_T_356 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_T_356 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.THash
d_THash_358 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_THash_358 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.Dataʰ
d_Data'688'_360 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_360 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_364 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEQ'45'Prices_364 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_366 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'CostModel_366 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_368 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ExUnits_368 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_370 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'LangDepView_370 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_222 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.DecEq-PlutusScript
d_DecEq'45'PlutusScript_372 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PlutusScript_372 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_218 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_376 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_376 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Foreign.HSLedger._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_378 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_378 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.Carrier
d_Carrier_380 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Carrier_380 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_382 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_382 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.LangDepView
d_LangDepView_384 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_LangDepView_384 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.Language
d_Language_386 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Language_386 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.PlutusScript
d_PlutusScript_388 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_PlutusScript_388 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.Prices
d_Prices_390 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Prices_390 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.T-isHashable
d_T'45'isHashable_396 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_396 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0))
-- Ledger.Foreign.HSLedger._.PlutusStructure.language
d_language_398 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny
d_language_398 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_272 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.toData
d_toData_402 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  () -> AgdaAny -> AgdaAny
d_toData_402 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_276 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.validPlutusScript
d_validPlutusScript_404 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_404 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.validPlutusScript?
d_validPlutusScript'63'_406 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validPlutusScript'63'_406 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validPlutusScript'63'_270 (coe v0)
-- Ledger.Foreign.HSLedger._.ScriptStructure._≥ᵉ_
d__'8805''7497'__416 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__416 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.CostModel
d_CostModel_418 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_CostModel_418 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.T
d_T_420 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_T_420 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.THash
d_THash_422 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_THash_422 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.Dataʰ
d_Data'688'_424 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_424 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_202
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_430 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEQ'45'Prices_430 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_432 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'CostModel_432 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_434 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ExUnits_434 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_436 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'LangDepView_436 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_222
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_438 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'P1Script_438 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEq-PlutusScript
d_DecEq'45'PlutusScript_440 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PlutusScript_440 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_444 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_444 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Foreign.HSLedger._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_446 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_446 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.Carrier
d_Carrier_448 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Carrier_448 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_450 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_450 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_452 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_452 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.LangDepView
d_LangDepView_456 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_LangDepView_456 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.Language
d_Language_458 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Language_458 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.P1Script
d_P1Script_460 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_P1Script_460 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.PlutusScript
d_PlutusScript_462 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_PlutusScript_462 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.Prices
d_Prices_464 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Prices_464 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.T-isHashable
d_T'45'isHashable_472 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_472 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_202
         (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)))
-- Ledger.Foreign.HSLedger._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_474 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_474 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_302 (coe v0)
-- Ledger.Foreign.HSLedger._.ScriptStructure.language
d_language_476 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny
d_language_476 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_272
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.p1s
d_p1s_478 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_478 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0)
-- Ledger.Foreign.HSLedger._.ScriptStructure.ps
d_ps_480 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124
d_ps_480 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)
-- Ledger.Foreign.HSLedger._.ScriptStructure.toData
d_toData_484 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  () -> AgdaAny -> AgdaAny
d_toData_484 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_276
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.validP1Script
d_validP1Script_486 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_486 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.validP1Script?
d_validP1Script'63'_488 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validP1Script'63'_488 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.validPlutusScript
d_validPlutusScript_490 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_490 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.validPlutusScript?
d_validPlutusScript'63'_492 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validPlutusScript'63'_492 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validPlutusScript'63'_270
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger.HSScriptStructure
d_HSScriptStructure_524 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278
d_HSScriptStructure_524
  = coe
      MAlonzo.Code.Ledger.Script.C_ScriptStructure'46'constructor_5411
      (coe d_HSP1ScriptStructure_530) (coe d_HSP2ScriptStructure_540)
      (coe d_hashRespectsUnion_548)
-- Ledger.Foreign.HSLedger._.HSP1ScriptStructure
d_HSP1ScriptStructure_530 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_HSP1ScriptStructure_530
  = coe
      MAlonzo.Code.Ledger.Script.C_P1ScriptStructure'46'constructor_419
      erased (coe d_Hashable'45'P1Script_56 erased)
      MAlonzo.Code.Interface.DecEq.d_DecEq'45''8869'_26
-- Ledger.Foreign.HSLedger._.HSP2ScriptStructure
d_HSP2ScriptStructure_540 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124
d_HSP2ScriptStructure_540
  = coe
      MAlonzo.Code.Ledger.Script.C_PlutusStructure'46'constructor_3183
      d_Data'688'_60 d_ExUnit'45'CommutativeMonoid_72
      (coe d_Hashable'45'PlutusScript_68 erased)
      MAlonzo.Code.Interface.DecEq.d_DecEq'45''8869'_26
      MAlonzo.Code.Interface.DecEq.d_DecEq'45''8869'_26
      MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28
      (coe
         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
         (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
         (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
      MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28 erased
      (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 -> coe du_toData_64)
-- Ledger.Foreign.HSLedger._.hashRespectsUnion
d_hashRespectsUnion_548
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger._.hashRespectsUnion"
-- Ledger.Foreign.HSLedger._.DecEq-PParams
d_DecEq'45'PParams_558 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PParams_558
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_382
      (let v0 = d_HSGlobalConstants_258 in
       coe
         MAlonzo.Code.Ledger.Epoch.C_EpochStructure'46'constructor_233
         MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3648
         MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
         MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_36
         MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
         (\ v1 ->
            coe
              MAlonzo.Code.Data.Nat.Base.du__'47'__248 (coe v1)
              (coe MAlonzo.Code.Ledger.Epoch.d_SlotsPerEpoch'7580'_256 (coe v0)))
         (\ v1 ->
            mulInt
              (coe v1)
              (coe MAlonzo.Code.Ledger.Epoch.d_SlotsPerEpoch'7580'_256 (coe v0)))
         (MAlonzo.Code.Ledger.Epoch.d_StabilityWindow'7580'_260 (coe v0))
         (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)))
      (coe d_HSScriptStructure_524)
-- Ledger.Foreign.HSLedger._.DrepThresholds
d_DrepThresholds_562 = ()
-- Ledger.Foreign.HSLedger._.GovParams
d_GovParams_566 = ()
-- Ledger.Foreign.HSLedger._.PParamGroup
d_PParamGroup_572 = ()
-- Ledger.Foreign.HSLedger._.PParams
d_PParams_574 = ()
-- Ledger.Foreign.HSLedger._.PParamsDiff
d_PParamsDiff_576 = ()
-- Ledger.Foreign.HSLedger._.PoolThresholds
d_PoolThresholds_578 = ()
-- Ledger.Foreign.HSLedger._.ProtVer
d_ProtVer_580 :: ()
d_ProtVer_580 = erased
-- Ledger.Foreign.HSLedger._.paramsWellFormed
d_paramsWellFormed_584 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> ()
d_paramsWellFormed_584 = erased
-- Ledger.Foreign.HSLedger._.DrepThresholds.P1
d_P1_594 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_594 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_172 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P2a
d_P2a_596 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_596 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_174 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P2b
d_P2b_598 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_598 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_176 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P3
d_P3_600 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_600 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_178 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P4
d_P4_602 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_602 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_180 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P5a
d_P5a_604 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_604 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_182 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P5b
d_P5b_606 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_606 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_184 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P5c
d_P5c_608 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_608 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_186 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P5d
d_P5d_610 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_610 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_188 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P6
d_P6_612 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_612 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_190 (coe v0)
-- Ledger.Foreign.HSLedger._.GovParams.DecEq-THash
d_DecEq'45'THash_618 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_618 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458 (coe v0))
-- Ledger.Foreign.HSLedger._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_620 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'UpdT_620 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_470 (coe v0)
-- Ledger.Foreign.HSLedger._.GovParams.THash
d_THash_622 :: MAlonzo.Code.Ledger.PParams.T_GovParams_414 -> ()
d_THash_622 = erased
-- Ledger.Foreign.HSLedger._.GovParams.UpdateT
d_UpdateT_624 :: MAlonzo.Code.Ledger.PParams.T_GovParams_414 -> ()
d_UpdateT_624 = erased
-- Ledger.Foreign.HSLedger._.GovParams.applyUpdate
d_applyUpdate_628 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_628 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_404
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.Foreign.HSLedger._.GovParams.ppHashingScheme
d_ppHashingScheme_630 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_630 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458 (coe v0)
-- Ledger.Foreign.HSLedger._.GovParams.ppUpd
d_ppUpd_632 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384
d_ppUpd_632 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0)
-- Ledger.Foreign.HSLedger._.GovParams.ppdWellFormed
d_ppdWellFormed_634 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 -> AgdaAny -> Bool
d_ppdWellFormed_634 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_406
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.Foreign.HSLedger._.GovParams.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_636 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_636 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_412
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.Foreign.HSLedger._.GovParams.updateGroups
d_updateGroups_638 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_638 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_402
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.Foreign.HSLedger._.PParams.Emax
d_Emax_652 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_Emax_652 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_292 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.a
d_a_654 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_a_654 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_280 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.b
d_b_656 :: MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_b_656 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_282 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.ccMaxTermLength
d_ccMaxTermLength_658 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_ccMaxTermLength_658 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.ccMinSize
d_ccMinSize_660 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_ccMinSize_660 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_310 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.coinsPerUTxOWord
d_coinsPerUTxOWord_662 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_coinsPerUTxOWord_662 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_288 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.collateralPercentage
d_collateralPercentage_664 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_collateralPercentage_664 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_294 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.costmdls
d_costmdls_666 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_costmdls_666 = erased
-- Ledger.Foreign.HSLedger._.PParams.drepActivity
d_drepActivity_668 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_drepActivity_668 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_308 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.drepDeposit
d_drepDeposit_670 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_drepDeposit_670 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_306 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.drepThresholds
d_drepThresholds_672 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150
d_drepThresholds_672 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_298 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.govActionDeposit
d_govActionDeposit_674 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_govActionDeposit_674 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.govActionLifetime
d_govActionLifetime_676 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_govActionLifetime_676 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.maxBlockExUnits
d_maxBlockExUnits_678 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_678 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_278 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.maxBlockSize
d_maxBlockSize_680 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxBlockSize_680 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_264 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.maxCollateralInputs
d_maxCollateralInputs_682 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxCollateralInputs_682 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_272 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.maxHeaderSize
d_maxHeaderSize_684 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxHeaderSize_684 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_268 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.maxTxExUnits
d_maxTxExUnits_686 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_686 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_276 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.maxTxSize
d_maxTxSize_688 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxTxSize_688 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_266 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.maxValSize
d_maxValSize_690 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_maxValSize_690 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_270 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.minUTxOValue
d_minUTxOValue_692 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_minUTxOValue_692 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.minimumAVS
d_minimumAVS_694 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_minimumAVS_694 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minimumAVS_314 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.poolDeposit
d_poolDeposit_696 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> Integer
d_poolDeposit_696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_286 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.poolThresholds
d_poolThresholds_698 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192
d_poolThresholds_698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_300 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.prices
d_prices_700 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_700 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_290 (coe v0)
-- Ledger.Foreign.HSLedger._.PParams.pv
d_pv_702 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_702 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_274 (coe v0)
-- Ledger.Foreign.HSLedger._.PParamsDiff.UpdateT
d_UpdateT_706 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 -> ()
d_UpdateT_706 = erased
-- Ledger.Foreign.HSLedger._.PParamsDiff.applyUpdate
d_applyUpdate_708 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_708 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_404 (coe v0)
-- Ledger.Foreign.HSLedger._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_710 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 -> AgdaAny -> Bool
d_ppdWellFormed_710 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_406 (coe v0)
-- Ledger.Foreign.HSLedger._.PParamsDiff.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_712 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_712 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_412 (coe v0)
-- Ledger.Foreign.HSLedger._.PParamsDiff.updateGroups
d_updateGroups_714 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_714 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_402 (coe v0)
-- Ledger.Foreign.HSLedger._.PoolThresholds.Q1
d_Q1_718 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_718 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_202 (coe v0)
-- Ledger.Foreign.HSLedger._.PoolThresholds.Q2a
d_Q2a_720 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_720 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_204 (coe v0)
-- Ledger.Foreign.HSLedger._.PoolThresholds.Q2b
d_Q2b_722 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_722 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_206 (coe v0)
-- Ledger.Foreign.HSLedger._.PoolThresholds.Q4
d_Q4_724 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_724 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_208 (coe v0)
-- Ledger.Foreign.HSLedger.HsGovParams
d_HsGovParams_726 :: MAlonzo.Code.Ledger.PParams.T_GovParams_414
d_HsGovParams_726
  = coe
      MAlonzo.Code.Ledger.PParams.C_GovParams'46'constructor_431361
      (coe
         MAlonzo.Code.Ledger.PParams.C_PParamsDiff'46'constructor_430961
         (\ v0 ->
            coe
              MAlonzo.Code.Axiom.Set.du_'8709'_424
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1414
                 (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
         (\ v0 v1 -> v0)
         (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
         (\ v0 v1 v2 v3 -> v3))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_382
            (let v0 = d_HSGlobalConstants_258 in
             coe
               MAlonzo.Code.Ledger.Epoch.C_EpochStructure'46'constructor_233
               MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3648
               MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
               MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_36
               MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
               (\ v1 ->
                  coe
                    MAlonzo.Code.Data.Nat.Base.du__'47'__248 (coe v1)
                    (coe MAlonzo.Code.Ledger.Epoch.d_SlotsPerEpoch'7580'_256 (coe v0)))
               (\ v1 ->
                  mulInt
                    (coe v1)
                    (coe MAlonzo.Code.Ledger.Epoch.d_SlotsPerEpoch'7580'_256 (coe v0)))
               (MAlonzo.Code.Ledger.Epoch.d_StabilityWindow'7580'_260 (coe v0))
               (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)))
            (coe d_HSScriptStructure_524))
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_382
            (let v0 = d_HSGlobalConstants_258 in
             coe
               MAlonzo.Code.Ledger.Epoch.C_EpochStructure'46'constructor_233
               MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3648
               MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
               MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_36
               MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
               (\ v1 ->
                  coe
                    MAlonzo.Code.Data.Nat.Base.du__'47'__248 (coe v1)
                    (coe MAlonzo.Code.Ledger.Epoch.d_SlotsPerEpoch'7580'_256 (coe v0)))
               (\ v1 ->
                  mulInt
                    (coe v1)
                    (coe MAlonzo.Code.Ledger.Epoch.d_SlotsPerEpoch'7580'_256 (coe v0)))
               (MAlonzo.Code.Ledger.Epoch.d_StabilityWindow'7580'_260 (coe v0))
               (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)))
            (coe d_HSScriptStructure_524))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_211
            (\ v0 -> v0)))
      (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28)
-- Ledger.Foreign.HSLedger.HSGovStructure
d_HSGovStructure_744 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4
d_HSGovStructure_744
  = coe
      MAlonzo.Code.Ledger.GovStructure.C_GovStructure'46'constructor_2341
      MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
      MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28 d_HSCrypto_264
      d_HSEpochStructure_260 d_HSScriptStructure_524 d_HsGovParams_726
-- Ledger.Foreign.HSLedger._.Anchor
d_Anchor_752 = ()
-- Ledger.Foreign.HSLedger._.GovAction
d_GovAction_786 = ()
-- Ledger.Foreign.HSLedger._.GovActionID
d_GovActionID_788 :: ()
d_GovActionID_788 = erased
-- Ledger.Foreign.HSLedger._.GovProposal
d_GovProposal_790 = ()
-- Ledger.Foreign.HSLedger._.GovRole
d_GovRole_792 = ()
-- Ledger.Foreign.HSLedger._.GovVote
d_GovVote_794 = ()
-- Ledger.Foreign.HSLedger._.NeedsHash
d_NeedsHash_800 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 -> ()
d_NeedsHash_800 = erased
-- Ledger.Foreign.HSLedger._.Anchor.hash
d_hash_860 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 -> Integer
d_hash_860 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_496 (coe v0)
-- Ledger.Foreign.HSLedger._.Anchor.url
d_url_862 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_862 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_494 (coe v0)
-- Ledger.Foreign.HSLedger._.GovProposal.action
d_action_902 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498
d_action_902 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_706 (coe v0)
-- Ledger.Foreign.HSLedger._.GovProposal.anchor
d_anchor_904 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488
d_anchor_904 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_712 (coe v0)
-- Ledger.Foreign.HSLedger._.GovProposal.deposit
d_deposit_906 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 -> Integer
d_deposit_906 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_710 (coe v0)
-- Ledger.Foreign.HSLedger._.GovProposal.prevAction
d_prevAction_908 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 -> AgdaAny
d_prevAction_908 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_708 (coe v0)
-- Ledger.Foreign.HSLedger._.GovProposal.returnAddr
d_returnAddr_910 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_910 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_704 (coe v0)
-- Ledger.Foreign.HSLedger._.GovVote.anchor
d_anchor_922 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488
d_anchor_922 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_690 (coe v0)
-- Ledger.Foreign.HSLedger._.GovVote.credential
d_credential_924 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_credential_924 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_credential_686 (coe v0)
-- Ledger.Foreign.HSLedger._.GovVote.gid
d_gid_926 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_926 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_682 (coe v0)
-- Ledger.Foreign.HSLedger._.GovVote.role
d_role_928 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_472
d_role_928 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_role_684 (coe v0)
-- Ledger.Foreign.HSLedger._.GovVote.vote
d_vote_930 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_662
d_vote_930 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_688 (coe v0)
-- Ledger.Foreign.HSLedger._.DCert
d_DCert_978 = ()
-- Ledger.Foreign.HSLedger._.PoolParams
d_PoolParams_1004 = ()
-- Ledger.Foreign.HSLedger._.PoolParams.rewardAddr
d_rewardAddr_1116 ::
  MAlonzo.Code.Ledger.Deleg.T_PoolParams_662 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_1116 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_rewardAddr_666 (coe v0)
-- Ledger.Foreign.HSLedger.HSTransactionStructure
d_HSTransactionStructure_1172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d_HSTransactionStructure_1172
  = coe
      MAlonzo.Code.Ledger.Transaction.C_TransactionStructure'46'constructor_12167
      MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
      MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26
         MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28
         MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_211
            (\ v0 -> v0)))
      d_HSGlobalConstants_258 d_HSCrypto_264 d_HSEpochStructure_260
      d_HSScriptStructure_524 d_HsGovParams_726 d_tokenAlgebra_256
      (\ v0 -> v0) d_networkId_254
-- Ledger.Foreign.HSLedger._.AbstractFunctions
d_AbstractFunctions_1178 = ()
-- Ledger.Foreign.HSLedger._.indexOf
d_indexOf_1180 = ()
-- Ledger.Foreign.HSLedger._.AbstractFunctions.indexOfImp
d_indexOfImp_1184 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1406
d_indexOfImp_1184 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1444 (coe v0)
-- Ledger.Foreign.HSLedger._.AbstractFunctions.serSize
d_serSize_1186 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  Integer -> Integer
d_serSize_1186 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_serSize_1442 (coe v0)
-- Ledger.Foreign.HSLedger._.AbstractFunctions.txscriptfee
d_txscriptfee_1188 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_1188 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1440 (coe v0)
-- Ledger.Foreign.HSLedger._.indexOf.indexOfDCert
d_indexOfDCert_1192 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1406 ->
  MAlonzo.Code.Ledger.Deleg.T_DCert_668 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_668] -> Maybe Integer
d_indexOfDCert_1192 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1420 (coe v0)
-- Ledger.Foreign.HSLedger._.indexOf.indexOfPolicyId
d_indexOfPolicyId_1194 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1406 ->
  Integer -> [Integer] -> Maybe Integer
d_indexOfPolicyId_1194 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1426 (coe v0)
-- Ledger.Foreign.HSLedger._.indexOf.indexOfProposal
d_indexOfProposal_1196 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1406 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692] ->
  Maybe Integer
d_indexOfProposal_1196 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1430 (coe v0)
-- Ledger.Foreign.HSLedger._.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_1198 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1406 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_indexOfRwdAddr_1198 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1422 (coe v0)
-- Ledger.Foreign.HSLedger._.indexOf.indexOfTxIn
d_indexOfTxIn_1200 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe Integer
d_indexOfTxIn_1200 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1424 (coe v0)
-- Ledger.Foreign.HSLedger._.indexOf.indexOfVote
d_indexOfVote_1202 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1406 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670] ->
  Maybe Integer
d_indexOfVote_1202 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1428 (coe v0)
-- Ledger.Foreign.HSLedger.HSAbstractFunctions
d_HSAbstractFunctions_1204 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1432
d_HSAbstractFunctions_1204
  = coe
      MAlonzo.Code.Ledger.Abstract.C_AbstractFunctions'46'constructor_2755
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> v0))
      (coe
         MAlonzo.Code.Ledger.Abstract.C_indexOf'46'constructor_2553
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe
            (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
-- Ledger.Foreign.HSLedger._._≤ᵗ_
d__'8804''7511'__1250 :: Integer -> Integer -> ()
d__'8804''7511'__1250 = erased
-- Ledger.Foreign.HSLedger._._≥ᵉ_
d__'8805''7497'__1252 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__1252 = erased
-- Ledger.Foreign.HSLedger._.THash
d_THash_1268 :: ()
d_THash_1268 = erased
-- Ledger.Foreign.HSLedger._.Addr
d_Addr_1272 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Addr_1272 = erased
-- Ledger.Foreign.HSLedger._.Anchor
d_Anchor_1274 = ()
-- Ledger.Foreign.HSLedger._.AssetName
d_AssetName_1276 :: ()
d_AssetName_1276 = erased
-- Ledger.Foreign.HSLedger._.AuxiliaryData
d_AuxiliaryData_1278 :: ()
d_AuxiliaryData_1278 = erased
-- Ledger.Foreign.HSLedger._.BaseAddr
d_BaseAddr_1280 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger._.BootstrapAddr
d_BootstrapAddr_1282 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger._.CostModel
d_CostModel_1314 :: ()
d_CostModel_1314 = erased
-- Ledger.Foreign.HSLedger._.Credential
d_Credential_1316 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_1316 = erased
-- Ledger.Foreign.HSLedger._.DCert
d_DCert_1318 = ()
-- Ledger.Foreign.HSLedger._.T
d_T_1326 :: ()
d_T_1326 = erased
-- Ledger.Foreign.HSLedger._.THash
d_THash_1328 :: ()
d_THash_1328 = erased
-- Ledger.Foreign.HSLedger._.Dataʰ
d_Data'688'_1330 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1330
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_202
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.Datum
d_Datum_1332 :: ()
d_Datum_1332 = erased
-- Ledger.Foreign.HSLedger._.Dec-≤ᵗ
d_Dec'45''8804''7511'_1338 ::
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8804''7511'_1338
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
-- Ledger.Foreign.HSLedger._.DecEQ-Prices
d_DecEQ'45'Prices_1340 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEQ'45'Prices_1340
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.DecEq-CostModel
d_DecEq'45'CostModel_1346 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'CostModel_1346
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.DecEq-ExUnits
d_DecEq'45'ExUnits_1352 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ExUnits_1352
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.DecEq-Ix
d_DecEq'45'Ix_1356 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Ix_1356
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_994
      (coe d_HSTransactionStructure_1172)
-- Ledger.Foreign.HSLedger._.DecEq-LangDepView
d_DecEq'45'LangDepView_1358 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'LangDepView_1358
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_222
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.DecEq-Netw
d_DecEq'45'Netw_1360 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Netw_1360
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Netw_254
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010 (coe v0))
-- Ledger.Foreign.HSLedger._.DecEq-P1Script
d_DecEq'45'P1Script_1362 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'P1Script_1362
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.DecEq-PParams
d_DecEq'45'PParams_1364 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PParams_1364
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_382
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1280 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0))
-- Ledger.Foreign.HSLedger._.DecEq-PlutusScript
d_DecEq'45'PlutusScript_1366 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PlutusScript_1366
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_218
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1372 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ScriptHash_1372
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0))
-- Ledger.Foreign.HSLedger._.DecEq-THash
d_DecEq'45'THash_1386 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1386
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_998 (coe v0))
-- Ledger.Foreign.HSLedger._.DecEq-THash
d_DecEq'45'THash_1388 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1388
  = let v0 = d_HSTransactionStructure_1172 in
    let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.Crypto.d_khs_216 (coe v1))
-- Ledger.Foreign.HSLedger._.DecEq-THash
d_DecEq'45'THash_1390 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1390
  = let v0 = d_HSTransactionStructure_1172 in
    let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Script.d_ps_294
                 (coe
                    MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
                    (coe v0))) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Foreign.HSLedger._.DecEq-THash
d_DecEq'45'THash_1392 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_1392
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1808 (coe v0)))
-- Ledger.Foreign.HSLedger._.DecEq-TxId
d_DecEq'45'TxId_1396 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'TxId_1396
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_996
      (coe d_HSTransactionStructure_1172)
-- Ledger.Foreign.HSLedger._.DecEq-UpdT
d_DecEq'45'UpdT_1398 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'UpdT_1398
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_470
      (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1808 (coe v0))
-- Ledger.Foreign.HSLedger._.DecEq-Value
d_DecEq'45'Value_1402 :: MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Value_1402
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
-- Ledger.Foreign.HSLedger._.DrepThresholds
d_DrepThresholds_1410 = ()
-- Ledger.Foreign.HSLedger._.Epoch
d_Epoch_1432 :: ()
d_Epoch_1432 = erased
-- Ledger.Foreign.HSLedger._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1434 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_1434
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.Carrier
d_Carrier_1436 :: ()
d_Carrier_1436 = erased
-- Ledger.Foreign.HSLedger._.GovAction
d_GovAction_1446 = ()
-- Ledger.Foreign.HSLedger._.GovActionID
d_GovActionID_1448 :: ()
d_GovActionID_1448 = erased
-- Ledger.Foreign.HSLedger._.GovParams
d_GovParams_1452 = ()
-- Ledger.Foreign.HSLedger._.GovProposal
d_GovProposal_1454 = ()
-- Ledger.Foreign.HSLedger._.GovRole
d_GovRole_1456 = ()
-- Ledger.Foreign.HSLedger._.GovVote
d_GovVote_1458 = ()
-- Ledger.Foreign.HSLedger._.Hashable-P1Script
d_Hashable'45'P1Script_1466 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1466
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1468 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1468
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1474 a0 = ()
-- Ledger.Foreign.HSLedger._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1476 a0 = ()
-- Ledger.Foreign.HSLedger._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1478 a0 = ()
-- Ledger.Foreign.HSLedger._.Ix
d_Ix_1480 :: ()
d_Ix_1480 = erased
-- Ledger.Foreign.HSLedger._.THash
d_THash_1482 :: ()
d_THash_1482 = erased
-- Ledger.Foreign.HSLedger._.LangDepView
d_LangDepView_1486 :: ()
d_LangDepView_1486 = erased
-- Ledger.Foreign.HSLedger._.Language
d_Language_1488 :: ()
d_Language_1488 = erased
-- Ledger.Foreign.HSLedger._.NeedsHash
d_NeedsHash_1492 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 -> ()
d_NeedsHash_1492 = erased
-- Ledger.Foreign.HSLedger._.Network
d_Network_1494 :: ()
d_Network_1494 = erased
-- Ledger.Foreign.HSLedger._.P1Script
d_P1Script_1508 :: ()
d_P1Script_1508 = erased
-- Ledger.Foreign.HSLedger._.P1ScriptStructure
d_P1ScriptStructure_1510 = ()
-- Ledger.Foreign.HSLedger._.PlutusScript
d_PlutusScript_1512 :: ()
d_PlutusScript_1512 = erased
-- Ledger.Foreign.HSLedger._.THash
d_THash_1518 :: ()
d_THash_1518 = erased
-- Ledger.Foreign.HSLedger._.PParamGroup
d_PParamGroup_1520 = ()
-- Ledger.Foreign.HSLedger._.PParamsDiff
d_PParamsDiff_1522 = ()
-- Ledger.Foreign.HSLedger._.UpdateT
d_UpdateT_1524 :: ()
d_UpdateT_1524 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure
d_PlutusStructure_1528 = ()
-- Ledger.Foreign.HSLedger._.PoolParams
d_PoolParams_1532 = ()
-- Ledger.Foreign.HSLedger._.PoolThresholds
d_PoolThresholds_1534 = ()
-- Ledger.Foreign.HSLedger._.Prices
d_Prices_1536 :: ()
d_Prices_1536 = erased
-- Ledger.Foreign.HSLedger._.ProtVer
d_ProtVer_1540 :: ()
d_ProtVer_1540 = erased
-- Ledger.Foreign.HSLedger._.RdmrPtr
d_RdmrPtr_1544 :: ()
d_RdmrPtr_1544 = erased
-- Ledger.Foreign.HSLedger._.Redeemer
d_Redeemer_1546 :: ()
d_Redeemer_1546 = erased
-- Ledger.Foreign.HSLedger._.RwdAddr
d_RwdAddr_1560 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger._.Script
d_Script_1568 :: ()
d_Script_1568 = erased
-- Ledger.Foreign.HSLedger._.ScriptHash
d_ScriptHash_1576 :: ()
d_ScriptHash_1576 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure
d_ScriptStructure_1578 = ()
-- Ledger.Foreign.HSLedger._.Sig
d_Sig_1582 :: ()
d_Sig_1582 = erased
-- Ledger.Foreign.HSLedger._.Slot
d_Slot_1584 :: ()
d_Slot_1584 = erased
-- Ledger.Foreign.HSLedger._.T-isHashable
d_T'45'isHashable_1602 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1602
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_202
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_294
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0))))
-- Ledger.Foreign.HSLedger._.TokenAlgebra
d_TokenAlgebra_1608 = ()
-- Ledger.Foreign.HSLedger._.Tx
d_Tx_1614 = ()
-- Ledger.Foreign.HSLedger._.TxBody
d_TxBody_1616 = ()
-- Ledger.Foreign.HSLedger._.TxId
d_TxId_1618 :: ()
d_TxId_1618 = erased
-- Ledger.Foreign.HSLedger._.TxIn
d_TxIn_1620 :: ()
d_TxIn_1620 = erased
-- Ledger.Foreign.HSLedger._.TxOut
d_TxOut_1622 :: ()
d_TxOut_1622 = erased
-- Ledger.Foreign.HSLedger._.TxWitnesses
d_TxWitnesses_1624 = ()
-- Ledger.Foreign.HSLedger._.Update
d_Update_1628 :: ()
d_Update_1628 = erased
-- Ledger.Foreign.HSLedger._.VKey
d_VKey_1632 :: ()
d_VKey_1632 = erased
-- Ledger.Foreign.HSLedger._.Carrier
d_Carrier_1642 :: ()
d_Carrier_1642 = erased
-- Ledger.Foreign.HSLedger._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1644 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1644
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
-- Ledger.Foreign.HSLedger._.Wdrl
d_Wdrl_1646 :: ()
d_Wdrl_1646 = erased
-- Ledger.Foreign.HSLedger._.adHashingScheme
d_adHashingScheme_1652 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1652
  = coe
      MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_998
      (coe d_HSTransactionStructure_1172)
-- Ledger.Foreign.HSLedger._.applyUpdate
d_applyUpdate_1660 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_1660
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_404
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_444
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1808 (coe v0)))
-- Ledger.Foreign.HSLedger._.coin
d_coin_1668 :: Integer -> Integer
d_coin_1668
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
-- Ledger.Foreign.HSLedger._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1670 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_coinIsMonoidHomomorphism_1670
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_226
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
-- Ledger.Foreign.HSLedger._.crypto
d_crypto_1674 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_148
d_crypto_1674
  = coe
      MAlonzo.Code.Ledger.Transaction.d_crypto_1030
      (coe d_HSTransactionStructure_1172)
-- Ledger.Foreign.HSLedger._.epochStructure
d_epochStructure_1686 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4
d_epochStructure_1686
  = coe
      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1280
      (coe d_HSTransactionStructure_1172)
-- Ledger.Foreign.HSLedger._.globalConstants
d_globalConstants_1712 ::
  MAlonzo.Code.Ledger.Epoch.T_GlobalConstants_236
d_globalConstants_1712
  = coe
      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010
      (coe d_HSTransactionStructure_1172)
-- Ledger.Foreign.HSLedger._.govParams
d_govParams_1714 :: MAlonzo.Code.Ledger.PParams.T_GovParams_414
d_govParams_1714
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govParams_1808
      (coe d_HSTransactionStructure_1172)
-- Ledger.Foreign.HSLedger._.govStructure
d_govStructure_1716 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4
d_govStructure_1716
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govStructure_1954
      (coe d_HSTransactionStructure_1172)
-- Ledger.Foreign.HSLedger._.hashRespectsUnion
d_hashRespectsUnion_1718 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1718
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_302
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0))
-- Ledger.Foreign.HSLedger._.inject
d_inject_1720 :: Integer -> Integer
d_inject_1720
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
-- Ledger.Foreign.HSLedger._.khs
d_khs_1752 :: MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1752
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Crypto.d_khs_216
      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0))
-- Ledger.Foreign.HSLedger._.language
d_language_1754 ::
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1754
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_language_272
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.monoid
d_monoid_1760 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1760
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0)))
-- Ledger.Foreign.HSLedger._.p1s
d_p1s_1768 :: MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1768
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_p1s_292
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0))
-- Ledger.Foreign.HSLedger._.paramsWellFormed
d_paramsWellFormed_1770 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 -> ()
d_paramsWellFormed_1770 = erased
-- Ledger.Foreign.HSLedger._.pkk
d_pkk_1774 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_1774
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Crypto.d_pkk_186
      (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1030 (coe v0))
-- Ledger.Foreign.HSLedger._.policies
d_policies_1776 :: Integer -> [Integer]
d_policies_1776
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
-- Ledger.Foreign.HSLedger._.ppHashingScheme
d_ppHashingScheme_1778 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1778
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458
      (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1808 (coe v0))
-- Ledger.Foreign.HSLedger._.ppUpd
d_ppUpd_1780 :: MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384
d_ppUpd_1780
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.PParams.d_ppUpd_444
      (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1808 (coe v0))
-- Ledger.Foreign.HSLedger._.ppdWellFormed
d_ppdWellFormed_1782 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> Bool
d_ppdWellFormed_1782
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_406
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_444
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1808 (coe v0)))
-- Ledger.Foreign.HSLedger._.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_1784 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_1784
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_412
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_444
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1808 (coe v0)))
-- Ledger.Foreign.HSLedger._.property
d_property_1788 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1788 = erased
-- Ledger.Foreign.HSLedger._.ps
d_ps_1790 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_124
d_ps_1790
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_ps_294
      (coe
         MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0))
-- Ledger.Foreign.HSLedger._.rawMonoid
d_rawMonoid_1792 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1792
  = let v0 = d_HSTransactionStructure_1172 in
    let v1
          = MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
              (coe
                 MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0)) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1))
-- Ledger.Foreign.HSLedger._.scriptStructure
d_scriptStructure_1808 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278
d_scriptStructure_1808
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546
      (coe d_HSTransactionStructure_1172)
-- Ledger.Foreign.HSLedger._.size
d_size_1812 :: Integer -> Integer
d_size_1812
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_size_216
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
-- Ledger.Foreign.HSLedger._.specialAsset
d_specialAsset_1814 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1814
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_222
      (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0))
-- Ledger.Foreign.HSLedger._.toData
d_toData_1822 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_1822
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_toData_276
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.tokenAlgebra
d_tokenAlgebra_1824 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6
d_tokenAlgebra_1824
  = coe
      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
      (coe d_HSTransactionStructure_1172)
-- Ledger.Foreign.HSLedger._.updateGroups
d_updateGroups_1832 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_1832
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_402
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_444
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_1808 (coe v0)))
-- Ledger.Foreign.HSLedger._.validP1Script
d_validP1Script_1834 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 -> ()
d_validP1Script_1834 = erased
-- Ledger.Foreign.HSLedger._.validP1Script?
d_validP1Script'63'_1836 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validP1Script'63'_1836
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_292
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.validPlutusScript
d_validPlutusScript_1838 ::
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 -> ()
d_validPlutusScript_1838 = erased
-- Ledger.Foreign.HSLedger._.validPlutusScript?
d_validPlutusScript'63'_1840 ::
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validPlutusScript'63'_1840
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Script.d_validPlutusScript'63'_270
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_294
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1546 (coe v0)))
-- Ledger.Foreign.HSLedger._.ε
d_ε_1842 :: Integer
d_ε_1842
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836 (coe v0)))
-- Ledger.Foreign.HSLedger._.ℕEpochStructure
d_ℕEpochStructure_1846 ::
  MAlonzo.Code.Ledger.Epoch.T_EpochStructure_4
d_ℕEpochStructure_1846
  = let v0 = d_HSTransactionStructure_1172 in
    coe
      MAlonzo.Code.Ledger.Epoch.d_ℕEpochStructure_266
      (coe
         MAlonzo.Code.Ledger.Transaction.d_globalConstants_1010 (coe v0))
-- Ledger.Foreign.HSLedger._.Anchor.hash
d_hash_1916 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_hash_1916 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_496 (coe v0)
-- Ledger.Foreign.HSLedger._.Anchor.url
d_url_1918 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1918 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_494 (coe v0)
-- Ledger.Foreign.HSLedger._.BaseAddr.net
d_net_1922 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1922 v0 = coe MAlonzo.Code.Ledger.Address.d_net_38 (coe v0)
-- Ledger.Foreign.HSLedger._.BaseAddr.pay
d_pay_1924 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1924 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_40 (coe v0)
-- Ledger.Foreign.HSLedger._.BaseAddr.stake
d_stake_1926 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_1926 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_42 (coe v0)
-- Ledger.Foreign.HSLedger._.BootstrapAddr.attrsSize
d_attrsSize_1930 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 -> Integer
d_attrsSize_1930 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_56 (coe v0)
-- Ledger.Foreign.HSLedger._.BootstrapAddr.net
d_net_1932 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1932 v0 = coe MAlonzo.Code.Ledger.Address.d_net_52 (coe v0)
-- Ledger.Foreign.HSLedger._.BootstrapAddr.pay
d_pay_1934 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_44 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_1934 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_54 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P1
d_P1_1976 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1976 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_172 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P2a
d_P2a_1978 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1978 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_174 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P2b
d_P2b_1980 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1980 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_176 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P3
d_P3_1982 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1982 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_178 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P4
d_P4_1984 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1984 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_180 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P5a
d_P5a_1986 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1986 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_182 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P5b
d_P5b_1988 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1988 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_184 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P5c
d_P5c_1990 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1990 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_186 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P5d
d_P5d_1992 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1992 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_188 (coe v0)
-- Ledger.Foreign.HSLedger._.DrepThresholds.P6
d_P6_1994 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_150 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1994 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_190 (coe v0)
-- Ledger.Foreign.HSLedger._.GovParams.DecEq-THash
d_DecEq'45'THash_2042 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_2042 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458 (coe v0))
-- Ledger.Foreign.HSLedger._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_2044 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'UpdT_2044 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_470 (coe v0)
-- Ledger.Foreign.HSLedger._.GovParams.THash
d_THash_2046 :: MAlonzo.Code.Ledger.PParams.T_GovParams_414 -> ()
d_THash_2046 = erased
-- Ledger.Foreign.HSLedger._.GovParams.UpdateT
d_UpdateT_2048 :: MAlonzo.Code.Ledger.PParams.T_GovParams_414 -> ()
d_UpdateT_2048 = erased
-- Ledger.Foreign.HSLedger._.GovParams.applyUpdate
d_applyUpdate_2052 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_2052 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_404
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.Foreign.HSLedger._.GovParams.ppHashingScheme
d_ppHashingScheme_2054 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_2054 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_458 (coe v0)
-- Ledger.Foreign.HSLedger._.GovParams.ppUpd
d_ppUpd_2056 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384
d_ppUpd_2056 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0)
-- Ledger.Foreign.HSLedger._.GovParams.ppdWellFormed
d_ppdWellFormed_2058 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 -> AgdaAny -> Bool
d_ppdWellFormed_2058 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_406
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.Foreign.HSLedger._.GovParams.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_2060 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_2060 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_412
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.Foreign.HSLedger._.GovParams.updateGroups
d_updateGroups_2062 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_414 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_2062 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_402
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_444 (coe v0))
-- Ledger.Foreign.HSLedger._.GovProposal.action
d_action_2066 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498
d_action_2066 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_706 (coe v0)
-- Ledger.Foreign.HSLedger._.GovProposal.anchor
d_anchor_2068 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488
d_anchor_2068 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_712 (coe v0)
-- Ledger.Foreign.HSLedger._.GovProposal.deposit
d_deposit_2070 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 -> Integer
d_deposit_2070 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_710 (coe v0)
-- Ledger.Foreign.HSLedger._.GovProposal.prevAction
d_prevAction_2072 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 -> AgdaAny
d_prevAction_2072 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_708 (coe v0)
-- Ledger.Foreign.HSLedger._.GovProposal.returnAddr
d_returnAddr_2074 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_2074 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_704 (coe v0)
-- Ledger.Foreign.HSLedger._.GovVote.anchor
d_anchor_2086 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488
d_anchor_2086 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_690 (coe v0)
-- Ledger.Foreign.HSLedger._.GovVote.credential
d_credential_2088 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_credential_2088 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_credential_686 (coe v0)
-- Ledger.Foreign.HSLedger._.GovVote.gid
d_gid_2090 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_2090 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_682 (coe v0)
-- Ledger.Foreign.HSLedger._.GovVote.role
d_role_2092 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_472
d_role_2092 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_role_684 (coe v0)
-- Ledger.Foreign.HSLedger._.GovVote.vote
d_vote_2094 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_662
d_vote_2094 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_688 (coe v0)
-- Ledger.Foreign.HSLedger._.IsMonoidHomomorphism.homo
d_homo_2098 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2098 = erased
-- Ledger.Foreign.HSLedger._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2100 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_2100 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe v0)
-- Ledger.Foreign.HSLedger._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2102 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2102 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe v0))
-- Ledger.Foreign.HSLedger._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2104 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2104 = erased
-- Ledger.Foreign.HSLedger._.IsMonoidIsomorphism.homo
d_homo_2110 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2110 = erased
-- Ledger.Foreign.HSLedger._.IsMonoidIsomorphism.injective
d_injective_2112 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2112 = erased
-- Ledger.Foreign.HSLedger._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2114 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_2114 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
            (coe v0)))
-- Ledger.Foreign.HSLedger._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2120 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_2120 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.Foreign.HSLedger._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2122 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_2122 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
      (coe v0)
-- Ledger.Foreign.HSLedger._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2124 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2124 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
               (coe v0))))
-- Ledger.Foreign.HSLedger._.IsMonoidIsomorphism.surjective
d_surjective_2130 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2130 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_330 (coe v0)
-- Ledger.Foreign.HSLedger._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2132 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2132 = erased
-- Ledger.Foreign.HSLedger._.IsMonoidMonomorphism.homo
d_homo_2138 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2138 = erased
-- Ledger.Foreign.HSLedger._.IsMonoidMonomorphism.injective
d_injective_2140 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2140 = erased
-- Ledger.Foreign.HSLedger._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_2142 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2146 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_2146 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2148 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2148 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2152 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2152 = erased
-- Ledger.Foreign.HSLedger._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2160 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'P1Script_2160 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114 (coe v0)
-- Ledger.Foreign.HSLedger._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2162 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2162 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112 (coe v0)
-- Ledger.Foreign.HSLedger._.P1ScriptStructure.P1Script
d_P1Script_2164 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 -> ()
d_P1Script_2164 = erased
-- Ledger.Foreign.HSLedger._.P1ScriptStructure.validP1Script
d_validP1Script_2166 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2166 = erased
-- Ledger.Foreign.HSLedger._.P1ScriptStructure.validP1Script?
d_validP1Script'63'_2168 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validP1Script'63'_2168 v0
  = coe MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110 (coe v0)
-- Ledger.Foreign.HSLedger._.PParamsDiff.UpdateT
d_UpdateT_2182 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 -> ()
d_UpdateT_2182 = erased
-- Ledger.Foreign.HSLedger._.PParamsDiff.applyUpdate
d_applyUpdate_2184 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_applyUpdate_2184 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_404 (coe v0)
-- Ledger.Foreign.HSLedger._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2186 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 -> AgdaAny -> Bool
d_ppdWellFormed_2186 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppdWellFormed_406 (coe v0)
-- Ledger.Foreign.HSLedger._.PParamsDiff.ppdWellFormed⇒WF
d_ppdWellFormed'8658'WF_2188 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ppdWellFormed'8658'WF_2188 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppdWellFormed'8658'WF_412 (coe v0)
-- Ledger.Foreign.HSLedger._.PParamsDiff.updateGroups
d_updateGroups_2190 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_384 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_140]
d_updateGroups_2190 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_402 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2204 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2204 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.CostModel
d_CostModel_2206 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_CostModel_2206 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.T
d_T_2208 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_T_2208 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.THash
d_THash_2210 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_THash_2210 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.Dataʰ
d_Data'688'_2212 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_2212 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2216 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEQ'45'Prices_2216 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2218 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'CostModel_2218 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2220 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ExUnits_2220 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2222 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'LangDepView_2222 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_222 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.DecEq-PlutusScript
d_DecEq'45'PlutusScript_2224 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PlutusScript_2224 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_218 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2228 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_2228 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Foreign.HSLedger._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2230 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_2230 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.Carrier
d_Carrier_2232 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Carrier_2232 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2234 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2234 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.LangDepView
d_LangDepView_2236 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_LangDepView_2236 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.Language
d_Language_2238 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Language_2238 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.PlutusScript
d_PlutusScript_2240 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_PlutusScript_2240 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.Prices
d_Prices_2242 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 -> ()
d_Prices_2242 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.T-isHashable
d_T'45'isHashable_2248 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2248 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_202 (coe v0))
-- Ledger.Foreign.HSLedger._.PlutusStructure.language
d_language_2250 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> AgdaAny
d_language_2250 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_272 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.toData
d_toData_2254 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  () -> AgdaAny -> AgdaAny
d_toData_2254 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_276 (coe v0)
-- Ledger.Foreign.HSLedger._.PlutusStructure.validPlutusScript
d_validPlutusScript_2256 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2256 = erased
-- Ledger.Foreign.HSLedger._.PlutusStructure.validPlutusScript?
d_validPlutusScript'63'_2258 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validPlutusScript'63'_2258 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validPlutusScript'63'_270 (coe v0)
-- Ledger.Foreign.HSLedger._.PoolParams.rewardAddr
d_rewardAddr_2264 ::
  MAlonzo.Code.Ledger.Deleg.T_PoolParams_662 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_2264 v0
  = coe MAlonzo.Code.Ledger.Deleg.d_rewardAddr_666 (coe v0)
-- Ledger.Foreign.HSLedger._.PoolThresholds.Q1
d_Q1_2268 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2268 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_202 (coe v0)
-- Ledger.Foreign.HSLedger._.PoolThresholds.Q2a
d_Q2a_2270 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2270 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_204 (coe v0)
-- Ledger.Foreign.HSLedger._.PoolThresholds.Q2b
d_Q2b_2272 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2272 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_206 (coe v0)
-- Ledger.Foreign.HSLedger._.PoolThresholds.Q4
d_Q4_2274 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_192 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2274 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_208 (coe v0)
-- Ledger.Foreign.HSLedger._.RwdAddr.net
d_net_2278 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_2278 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Foreign.HSLedger._.RwdAddr.stake
d_stake_2280 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_2280 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_66 (coe v0)
-- Ledger.Foreign.HSLedger._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2288 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2288 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.CostModel
d_CostModel_2290 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_CostModel_2290 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.T
d_T_2292 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_T_2292 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.THash
d_THash_2294 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_THash_2294 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.Dataʰ
d_Data'688'_2296 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_2296 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_202
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2302 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEQ'45'Prices_2302 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_240
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2304 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'CostModel_2304 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2306 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'ExUnits_2306 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_238
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2308 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'LangDepView_2308 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_222
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2310 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'P1Script_2310 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_114
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEq-PlutusScript
d_DecEq'45'PlutusScript_2312 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'PlutusScript_2312 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'PlutusScript_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2316 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'THash_2316 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_202
              (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)) in
    coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))
-- Ledger.Foreign.HSLedger._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2318 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_ExUnit'45'CommutativeMonoid_2318 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.Carrier
d_Carrier_2320 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Carrier_2320 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2322 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2322 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2324 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2324 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.LangDepView
d_LangDepView_2328 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_LangDepView_2328 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.Language
d_Language_2330 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Language_2330 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.P1Script
d_P1Script_2332 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_P1Script_2332 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.PlutusScript
d_PlutusScript_2334 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_PlutusScript_2334 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.Prices
d_Prices_2336 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 -> ()
d_Prices_2336 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.T-isHashable
d_T'45'isHashable_2344 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2344 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_202
         (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)))
-- Ledger.Foreign.HSLedger._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2346 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2346 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_302 (coe v0)
-- Ledger.Foreign.HSLedger._.ScriptStructure.language
d_language_2348 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> AgdaAny
d_language_2348 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_272
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.p1s
d_p1s_2350 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_2350 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0)
-- Ledger.Foreign.HSLedger._.ScriptStructure.ps
d_ps_2352 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_124
d_ps_2352 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0)
-- Ledger.Foreign.HSLedger._.ScriptStructure.toData
d_toData_2356 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  () -> AgdaAny -> AgdaAny
d_toData_2356 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_276
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.validP1Script
d_validP1Script_2358 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2358 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.validP1Script?
d_validP1Script'63'_2360 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validP1Script'63'_2360 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validP1Script'63'_110
      (coe MAlonzo.Code.Ledger.Script.d_p1s_292 (coe v0))
-- Ledger.Foreign.HSLedger._.ScriptStructure.validPlutusScript
d_validPlutusScript_2362 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2362 = erased
-- Ledger.Foreign.HSLedger._.ScriptStructure.validPlutusScript?
d_validPlutusScript'63'_2364 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_278 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_validPlutusScript'63'_2364 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_validPlutusScript'63'_270
      (coe MAlonzo.Code.Ledger.Script.d_ps_294 (coe v0))
-- Ledger.Foreign.HSLedger._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2388 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2388 = erased
-- Ledger.Foreign.HSLedger._.TokenAlgebra.AssetName
d_AssetName_2390 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_AssetName_2390 = erased
-- Ledger.Foreign.HSLedger._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2392 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8804''7511'_2392 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_234 (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2394 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'Value_2394 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_228 (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2396 a0 a1 = ()
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2398 a0 a1 = ()
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2400 a0 a1 = ()
-- Ledger.Foreign.HSLedger._.TokenAlgebra.Carrier
d_Carrier_2404 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> ()
d_Carrier_2404 = erased
-- Ledger.Foreign.HSLedger._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2406 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_2406 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
      (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.coin
d_coin_2410 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_coin_2410 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_210 (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2412 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_coinIsMonoidHomomorphism_2412 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.inject
d_inject_2414 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> AgdaAny
d_inject_2414 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_212 (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.monoid
d_monoid_2416 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_2416 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger._.TokenAlgebra.policies
d_policies_2418 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> [Integer]
d_policies_2418 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_214 (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.property
d_property_2420 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2420 = erased
-- Ledger.Foreign.HSLedger._.TokenAlgebra.rawMonoid
d_rawMonoid_2422 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_2422 v0
  = let v1
          = MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1))
-- Ledger.Foreign.HSLedger._.TokenAlgebra.size
d_size_2426 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 ->
  AgdaAny -> Integer
d_size_2426 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_216 (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.specialAsset
d_specialAsset_2428 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_specialAsset_2428 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_222 (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.ε
d_ε_2432 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_6 -> AgdaAny
d_ε_2432 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2436 = erased
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_2438 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe v0))
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2442 = erased
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2448 = erased
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2450 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_298
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_2452 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
            (coe v0)))
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_2458 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
         (coe v0))
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288
d_isMonoidMonomorphism_2460 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
      (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2462 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_328
               (coe v0))))
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_2468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2468 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_330 (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_320 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2470 = erased
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2476 = erased
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2478 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_298 (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_76
d_isMagmaHomomorphism_2480 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_266
d_isMonoidHomomorphism_2484 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2486 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_84
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_274
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2490 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2490 = erased
-- Ledger.Foreign.HSLedger._.Tx.body
d_body_2496 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334
d_body_2496 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v0)
-- Ledger.Foreign.HSLedger._.Tx.txAD
d_txAD_2498 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_2498 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2440 (coe v0)
-- Ledger.Foreign.HSLedger._.Tx.wits
d_wits_2500 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2408
d_wits_2500 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.collateral
d_collateral_2504 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2504 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2402 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.mint
d_mint_2506 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> Integer
d_mint_2506 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2378 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.netwrk
d_netwrk_2508 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netwrk_2508 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_netwrk_2396 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.reqSigHash
d_reqSigHash_2510 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> [Integer]
d_reqSigHash_2510 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2404 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.scriptIntHash
d_scriptIntHash_2512 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> Maybe Integer
d_scriptIntHash_2512 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2406 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.txADhash
d_txADhash_2514 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txADhash_2514 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2394 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.txcerts
d_txcerts_2516 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_668]
d_txcerts_2516 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2382 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.txdonation
d_txdonation_2518 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> Integer
d_txdonation_2518 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2390 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.txfee
d_txfee_2520 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> Integer
d_txfee_2520 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2376 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.txid
d_txid_2522 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> Integer
d_txid_2522 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2400 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.txins
d_txins_2524 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2524 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2372 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.txouts
d_txouts_2526 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2526 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2374 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.txprop
d_txprop_2528 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_692]
d_txprop_2528 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2388 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.txsize
d_txsize_2530 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 -> Integer
d_txsize_2530 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2398 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.txup
d_txup_2532 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2532 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2392 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.txvldt
d_txvldt_2534 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2380 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.txvote
d_txvote_2536 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
d_txvote_2536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2386 (coe v0)
-- Ledger.Foreign.HSLedger._.TxBody.txwdrls
d_txwdrls_2538 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2334 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2538 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2384 (coe v0)
-- Ledger.Foreign.HSLedger._.TxWitnesses.scripts
d_scripts_2542 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2408 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2542 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scripts_2420 (coe v0)
-- Ledger.Foreign.HSLedger._.TxWitnesses.txdats
d_txdats_2546 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2408 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2546 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdats_2422 (coe v0)
-- Ledger.Foreign.HSLedger._.TxWitnesses.txrdmrs
d_txrdmrs_2548 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2408 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2548 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2424 (coe v0)
-- Ledger.Foreign.HSLedger._.TxWitnesses.vkSigs
d_vkSigs_2550 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2408 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2550 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2418 (coe v0)
-- Ledger.Foreign.HSLedger._.DepositPurpose
d_DepositPurpose_2602 = ()
-- Ledger.Foreign.HSLedger._.Deposits
d_Deposits_2604 :: ()
d_Deposits_2604 = erased
-- Ledger.Foreign.HSLedger._.UTxOEnv
d_UTxOEnv_2618 = ()
-- Ledger.Foreign.HSLedger._.UTxOState
d_UTxOState_2620 = ()
-- Ledger.Foreign.HSLedger._.UTxOEnv.pparams
d_pparams_2704 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1756 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_2704 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_pparams_1768 (coe v0)
-- Ledger.Foreign.HSLedger._.UTxOEnv.ppolicy
d_ppolicy_2706 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1756 -> Maybe Integer
d_ppolicy_2706 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_ppolicy_1766 (coe v0)
-- Ledger.Foreign.HSLedger._.UTxOEnv.slot
d_slot_2708 :: MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1756 -> Integer
d_slot_2708 v0 = coe MAlonzo.Code.Ledger.Utxo.d_slot_1764 (coe v0)
-- Ledger.Foreign.HSLedger._.UTxOState.deposits
d_deposits_2712 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_2712 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_deposits_1784 (coe v0)
-- Ledger.Foreign.HSLedger._.UTxOState.donations
d_donations_2714 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770 -> Integer
d_donations_2714 v0
  = coe MAlonzo.Code.Ledger.Utxo.d_donations_1786 (coe v0)
-- Ledger.Foreign.HSLedger._.UTxOState.fees
d_fees_2716 :: MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770 -> Integer
d_fees_2716 v0 = coe MAlonzo.Code.Ledger.Utxo.d_fees_1782 (coe v0)
-- Ledger.Foreign.HSLedger._.UTxOState.utxo
d_utxo_2718 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2718 v0 = coe MAlonzo.Code.Ledger.Utxo.d_utxo_1780 (coe v0)
-- Ledger.Foreign.HSLedger._.UTXO-step
d_UTXO'45'step_2734 ::
  MAlonzo.Code.Ledger.Utxo.T_UTxOEnv_1756 ->
  MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2428 ->
  Maybe MAlonzo.Code.Ledger.Utxo.T_UTxOState_1770
d_UTXO'45'step_2734
  = coe
      MAlonzo.Code.Ledger.Utxo.Properties.d_UTXO'45'step_1964
      (coe d_HSTransactionStructure_1172)
      (coe d_HSAbstractFunctions_1204)
-- Ledger.Foreign.HSLedger._.Computational-UTXOW
d_Computational'45'UTXOW_2776 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'UTXOW_2776
  = coe
      MAlonzo.Code.Ledger.Utxow.Properties.d_Computational'45'UTXOW_1586
      (coe d_HSTransactionStructure_1172)
      (coe d_HSAbstractFunctions_1204)
-- Ledger.Foreign.HSLedger.Convertible-Addr
d_Convertible'45'Addr_2782 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Addr_2782
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
                -> case coe v1 of
                     MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549 v2 v3 v4
                       -> case coe v3 of
                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5 -> coe v5
                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5 -> coe v5
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
                -> case coe v1 of
                     MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_811 v2 v3 v4
                       -> case coe v3 of
                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5 -> coe v5
                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5 -> coe v5
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
              (coe
                 MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549
                 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                 (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v0))
                 (coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe (0 :: Integer))))))
-- Ledger.Foreign.HSLedger.Convertible-TxBody
d_Convertible'45'TxBody_2798 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'TxBody_2798
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxBody'46'constructor_547
              (coe
                 MAlonzo.Code.Interface.Functor.du_map_30
                 MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                 erased
                 (\ v1 ->
                    coe
                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                      (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                      (coe
                         MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                         (coe (\ v2 v3 -> v3)) (coe v1)))
                 (MAlonzo.Code.Ledger.Transaction.d_txins_2372 (coe v0)))
              (coe
                 MAlonzo.Code.Interface.Functor.du_map_30
                 MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                 erased
                 (\ v1 ->
                    coe
                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                      (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                      (coe
                         MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                         (coe
                            (\ v2 v3 ->
                               coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_104
                                    (coe
                                       (\ v4 ->
                                          case coe v4 of
                                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
                                              -> case coe v5 of
                                                   MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549 v6 v7 v8
                                                     -> case coe v7 of
                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                                                            -> coe v9
                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                                                            -> coe v9
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
                                              -> case coe v5 of
                                                   MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_811 v6 v7 v8
                                                     -> case coe v7 of
                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                                                            -> coe v9
                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                                                            -> coe v9
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                    (coe
                                       (\ v4 v5 ->
                                          coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            (coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe (\ v6 -> v6))
                                               (coe
                                                  (\ v6 ->
                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                          (coe
                                                             MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                             (coe
                                                                (\ v7 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                             (coe
                                                                (\ v7 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                               (coe v5))))
                                    (coe v3))))
                         (coe v1)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2374 (coe v0))))
              (coe MAlonzo.Code.Ledger.Transaction.d_txfee_2376 (coe v0))
              (coe
                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                 (coe
                    MAlonzo.Code.Data.Product.Base.du_map_104
                    (coe
                       MAlonzo.Code.Foreign.Convertible.d_to_18
                       (coe
                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                          (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe (\ v1 -> v1)) (coe (\ v1 -> v1)))))
                    (coe
                       (\ v1 ->
                          MAlonzo.Code.Foreign.Convertible.d_to_18
                            (coe
                               MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                               (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                  (coe (\ v2 -> v2)) (coe (\ v2 -> v2))))))
                    (coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2380 (coe v0))))
              (coe MAlonzo.Code.Ledger.Transaction.d_txsize_2398 (coe v0))
              (coe MAlonzo.Code.Ledger.Transaction.d_txid_2400 (coe v0))
              (coe
                 MAlonzo.Code.Interface.Functor.du_map_30
                 MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                 erased
                 (\ v1 ->
                    coe
                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                      (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                      (coe
                         MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                         (coe (\ v2 v3 -> v3)) (coe v1)))
                 (MAlonzo.Code.Ledger.Transaction.d_collateral_2402 (coe v0)))
              (coe
                 MAlonzo.Code.Interface.Functor.du_map_30
                 MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                 erased (\ v1 -> v1)
                 (MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2404 (coe v0)))
              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_15295
              (coe
                 MAlonzo.Code.Axiom.Set.du_fromList_410
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Interface.Functor.du_map_30
                    MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                    erased
                    (\ v1 ->
                       coe
                         MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                         (coe (\ v2 v3 -> v3))
                         (coe
                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txins_78 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                 (coe
                    MAlonzo.Code.Interface.Functor.du_map_30
                    MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                    erased
                    (\ v1 ->
                       coe
                         MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                         (coe
                            (\ v2 v3 ->
                               coe
                                 MAlonzo.Code.Data.Product.Base.du_map_104
                                 (coe
                                    (\ v4 ->
                                       coe
                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                         (coe
                                            MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v4))
                                            (coe
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                               (coe (0 :: Integer))))))
                                 (coe
                                    (\ v4 v5 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_104
                                         (coe (\ v6 -> v6))
                                         (coe
                                            (\ v6 ->
                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                    (coe
                                                       MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                       (coe
                                                          (\ v7 ->
                                                             coe
                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                       (coe
                                                          (\ v7 ->
                                                             coe
                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v5)))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v3)))
                         (coe
                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txouts_80 (coe v0))))
              (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txfee_82 (coe v0))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_ε_842
                 (coe
                    MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                       (coe d_HSTransactionStructure_1172))))
              (coe
                 MAlonzo.Code.Data.Product.Base.du_map_104
                 (coe
                    MAlonzo.Code.Foreign.Convertible.d_from_20
                    (coe
                       MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                       (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                       (coe
                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                          (coe (\ v1 -> v1)) (coe (\ v1 -> v1)))))
                 (coe
                    (\ v1 ->
                       MAlonzo.Code.Foreign.Convertible.d_from_20
                         (coe
                            MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                            (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                            (coe
                               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                               (coe (\ v2 -> v2)) (coe (\ v2 -> v2))))))
                 (coe
                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txvldt_84 (coe v0))))
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_ε_842
                 (coe
                    MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                       (coe d_HSTransactionStructure_1172))))
              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
              (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txsize_86 (coe v0))
              (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txid_88 (coe v0))
              (coe
                 MAlonzo.Code.Axiom.Set.du_fromList_410
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Interface.Functor.du_map_30
                    MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                    erased
                    (\ v1 ->
                       coe
                         MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                         (coe (\ v2 v3 -> v3))
                         (coe
                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_collateral_90
                       (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.du_fromList_410
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Interface.Functor.du_map_30
                    MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                    erased (\ v1 -> v1)
                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reqSigHash_92
                       (coe v0))))
              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
-- Ledger.Foreign.HSLedger.Convertible-Tag
d_Convertible'45'Tag_2864 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Tag_2864
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Transaction.C_Spend_6
                -> coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
              MAlonzo.Code.Ledger.Transaction.C_Mint_8
                -> coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
              MAlonzo.Code.Ledger.Transaction.C_Cert_10
                -> coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
              MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                -> coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
              MAlonzo.Code.Ledger.Transaction.C_Vote_14
                -> coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
              MAlonzo.Code.Ledger.Transaction.C_Propose_16
                -> coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                -> coe MAlonzo.Code.Ledger.Transaction.C_Spend_6
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                -> coe MAlonzo.Code.Ledger.Transaction.C_Mint_8
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                -> coe MAlonzo.Code.Ledger.Transaction.C_Cert_10
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                -> coe MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                -> coe MAlonzo.Code.Ledger.Transaction.C_Vote_14
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                -> coe MAlonzo.Code.Ledger.Transaction.C_Propose_16
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Convertible-TxWitnesses
d_Convertible'45'TxWitnesses_2876 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'TxWitnesses_2876
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxWitnesses'46'constructor_829
              (coe
                 MAlonzo.Code.Interface.Functor.du_map_30
                 MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                 erased
                 (\ v1 ->
                    coe
                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                      (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                      (coe
                         MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                         (coe (\ v2 v3 -> v3)) (coe v1)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2418 (coe v0))))
              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
              (coe
                 MAlonzo.Code.Interface.Functor.du_map_30
                 MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                 erased
                 (\ v1 ->
                    coe
                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                      (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                      (coe
                         MAlonzo.Code.Data.Product.Base.du_map_104
                         (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                         (coe (\ v2 v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                         (coe v1)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Ledger.Transaction.d_txdats_2422 (coe v0))))
              (coe
                 MAlonzo.Code.Interface.Functor.du_map_30
                 MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                 erased
                 (\ v1 ->
                    coe
                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                      (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                      (coe
                         MAlonzo.Code.Data.Product.Base.du_map_104
                         (coe
                            (\ v2 ->
                               coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_104
                                    (coe
                                       (\ v3 ->
                                          case coe v3 of
                                            MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                              -> coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                            MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                              -> coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                            MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                              -> coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                            MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                              -> coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                            MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                              -> coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                            MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                              -> coe
                                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                    (coe (\ v3 v4 -> v4)) (coe v2))))
                         (coe
                            (\ v2 v3 ->
                               coe
                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_map_104
                                    (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                    (coe
                                       (\ v4 v5 ->
                                          coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            (coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7)) (coe v5))))
                                    (coe v3))))
                         (coe v1)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2424 (coe v0))))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_15485
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                 (coe
                    MAlonzo.Code.Interface.Functor.du_map_30
                    MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                    erased
                    (\ v1 ->
                       coe
                         MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                         (coe (\ v2 v3 -> v3))
                         (coe
                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_vkSigs_106 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8709'_424
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28)
                 (coe
                    MAlonzo.Code.Interface.Functor.du_map_30
                    MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                    erased
                    (\ v1 ->
                       coe
                         MAlonzo.Code.Data.Product.Base.du_map_104
                         (coe (\ v2 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                         (coe (\ v2 v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                         (coe
                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txdats_110 (coe v0))))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                    (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                    (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
                 (coe
                    MAlonzo.Code.Interface.Functor.du_map_30
                    MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                    erased
                    (\ v1 ->
                       coe
                         MAlonzo.Code.Data.Product.Base.du_map_104
                         (coe
                            (\ v2 ->
                               coe
                                 MAlonzo.Code.Data.Product.Base.du_map_104
                                 (coe
                                    (\ v3 ->
                                       case coe v3 of
                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                           -> coe MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                           -> coe MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                           -> coe MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                           -> coe MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                           -> coe MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                         MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                           -> coe MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                 (coe (\ v3 v4 -> v4))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v2)))
                         (coe
                            (\ v2 v3 ->
                               coe
                                 MAlonzo.Code.Data.Product.Base.du_map_104
                                 (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                 (coe
                                    (\ v4 v5 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_104
                                         (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v5)))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v3)))
                         (coe
                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txrdmrs_112
                       (coe v0))))))
-- Ledger.Foreign.HSLedger.Convertible-Tx
d_Convertible'45'Tx_2906 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Tx_2906
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Tx'46'constructor_917
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxBody'46'constructor_547
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe (\ v3 v4 -> v4)) (coe v2)))
                               (MAlonzo.Code.Ledger.Transaction.d_txins_2372 (coe v1)))
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe
                                          (\ v3 v4 ->
                                             coe
                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                               erased () erased
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe
                                                     (\ v5 ->
                                                        case coe v5 of
                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
                                                            -> case coe v6 of
                                                                 MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549 v7 v8 v9
                                                                   -> case coe v8 of
                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                                                                          -> coe v10
                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                                                                          -> coe v10
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
                                                            -> case coe v6 of
                                                                 MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_811 v7 v8 v9
                                                                   -> case coe v8 of
                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                                                                          -> coe v10
                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                                                                          -> coe v10
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                  (coe
                                                     (\ v5 v6 ->
                                                        coe
                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                          () erased () erased
                                                          (coe
                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                          (coe
                                                             MAlonzo.Code.Data.Product.Base.du_map_104
                                                             (coe (\ v7 -> v7))
                                                             (coe
                                                                (\ v7 ->
                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                        (coe
                                                                           MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                           (coe
                                                                              (\ v8 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                           (coe
                                                                              (\ v8 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                             (coe v6))))
                                                  (coe v4))))
                                       (coe v2)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2374 (coe v1))))
                            (coe MAlonzo.Code.Ledger.Transaction.d_txfee_2376 (coe v1))
                            (coe
                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                               (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                               (coe
                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                        (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                           (coe (\ v2 -> v2)) (coe (\ v2 -> v2)))))
                                  (coe
                                     (\ v2 ->
                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                             (coe
                                                MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe (\ v3 -> v3)) (coe (\ v3 -> v3))))))
                                  (coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2380 (coe v1))))
                            (coe MAlonzo.Code.Ledger.Transaction.d_txsize_2398 (coe v1))
                            (coe MAlonzo.Code.Ledger.Transaction.d_txid_2400 (coe v1))
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe (\ v3 v4 -> v4)) (coe v2)))
                               (MAlonzo.Code.Ledger.Transaction.d_collateral_2402 (coe v1)))
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased (\ v2 -> v2)
                               (MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2404 (coe v1)))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_15295
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_410
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased
                                  (\ v2 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe (\ v3 v4 -> v4))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v2))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txins_78 (coe v1))))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased
                                  (\ v2 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe
                                          (\ v3 v4 ->
                                             coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe
                                                  (\ v5 ->
                                                     coe
                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                       (coe
                                                          MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                          (coe
                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                             (coe v5))
                                                          (coe
                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                             (coe (0 :: Integer))))))
                                               (coe
                                                  (\ v5 v6 ->
                                                     coe
                                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                                       (coe (\ v7 -> v7))
                                                       (coe
                                                          (\ v7 ->
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                  (coe
                                                                     MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v8 ->
                                                                           coe
                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                     (coe
                                                                        (\ v8 ->
                                                                           coe
                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                       (coe
                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                          () erased () erased
                                                          (coe
                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                          v6)))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  v4)))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v2))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txouts_80 (coe v1))))
                            (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txfee_82 (coe v1))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d_ε_842
                               (coe
                                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                                  (coe
                                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                     (coe d_HSTransactionStructure_1172))))
                            (coe
                               MAlonzo.Code.Data.Product.Base.du_map_104
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                     (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                        (coe (\ v2 -> v2)) (coe (\ v2 -> v2)))))
                               (coe
                                  (\ v2 ->
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                          (coe
                                             MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                             (coe (\ v3 -> v3)) (coe (\ v3 -> v3))))))
                               (coe
                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                  erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txvldt_84 (coe v1))))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d_ε_842
                               (coe
                                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                                  (coe
                                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                     (coe d_HSTransactionStructure_1172))))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                            (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txsize_86 (coe v1))
                            (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txid_88 (coe v1))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_410
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased
                                  (\ v2 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe (\ v3 v4 -> v4))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v2))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_collateral_90
                                     (coe v1))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_410
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased (\ v2 -> v2)
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reqSigHash_92
                                     (coe v1))))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))
                 (MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v0)))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxWitnesses'46'constructor_829
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe (\ v3 v4 -> v4)) (coe v2)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2418 (coe v1))))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                       (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe (\ v3 v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe v2)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe MAlonzo.Code.Ledger.Transaction.d_txdats_2422 (coe v1))))
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                       (coe
                                          (\ v3 ->
                                             coe
                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                               erased () erased
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe
                                                     (\ v4 ->
                                                        case coe v4 of
                                                          MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                                            -> coe
                                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                                          MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                                            -> coe
                                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                                          MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                                            -> coe
                                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                                          MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                                            -> coe
                                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                                          MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                                            -> coe
                                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                                          MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                                            -> coe
                                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                  (coe (\ v4 v5 -> v5)) (coe v3))))
                                       (coe
                                          (\ v3 v4 ->
                                             coe
                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                               erased () erased
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe
                                                     (\ v5 ->
                                                        coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                  (coe
                                                     (\ v5 v6 ->
                                                        coe
                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                          () erased () erased
                                                          (coe
                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                          (coe
                                                             MAlonzo.Code.Data.Product.Base.du_map_104
                                                             (coe (\ v7 -> v7))
                                                             (coe (\ v7 v8 -> v8)) (coe v6))))
                                                  (coe v4))))
                                       (coe v2)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2424 (coe v1))))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_15485
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased
                                  (\ v2 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe (\ v3 v4 -> v4))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v2))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_vkSigs_106 (coe v1))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'8709'_424
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28)
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased
                                  (\ v2 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                       (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe (\ v3 v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v2))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txdats_110 (coe v1))))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                                  (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased
                                  (\ v2 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                       (coe
                                          (\ v3 ->
                                             coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe
                                                  (\ v4 ->
                                                     case coe v4 of
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                               (coe (\ v4 v5 -> v5))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  v3)))
                                       (coe
                                          (\ v3 v4 ->
                                             coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe
                                                  (\ v5 ->
                                                     coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                               (coe
                                                  (\ v5 v6 ->
                                                     coe
                                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                                       (coe (\ v7 -> v7)) (coe (\ v7 v8 -> v8))
                                                       (coe
                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                          () erased () erased
                                                          (coe
                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                          v6)))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  v4)))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v2))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txrdmrs_112
                                     (coe v1)))))))
                 (MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v0)))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                    (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                    (coe
                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                       (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                       (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                 (MAlonzo.Code.Ledger.Transaction.d_txAD_2440 (coe v0)))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Transaction.C_Tx'46'constructor_15677
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxBody'46'constructor_547
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe (\ v3 v4 -> v4)) (coe v2)))
                               (MAlonzo.Code.Ledger.Transaction.d_txins_2372 (coe v1)))
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe
                                          (\ v3 v4 ->
                                             coe
                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                               erased () erased
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe
                                                     (\ v5 ->
                                                        case coe v5 of
                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
                                                            -> case coe v6 of
                                                                 MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549 v7 v8 v9
                                                                   -> case coe v8 of
                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                                                                          -> coe v10
                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                                                                          -> coe v10
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
                                                            -> case coe v6 of
                                                                 MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_811 v7 v8 v9
                                                                   -> case coe v8 of
                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                                                                          -> coe v10
                                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                                                                          -> coe v10
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                  (coe
                                                     (\ v5 v6 ->
                                                        coe
                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                          () erased () erased
                                                          (coe
                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                          (coe
                                                             MAlonzo.Code.Data.Product.Base.du_map_104
                                                             (coe (\ v7 -> v7))
                                                             (coe
                                                                (\ v7 ->
                                                                   MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                     (coe
                                                                        MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                        (coe
                                                                           MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                           (coe
                                                                              (\ v8 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                           (coe
                                                                              (\ v8 ->
                                                                                 coe
                                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                             (coe v6))))
                                                  (coe v4))))
                                       (coe v2)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe MAlonzo.Code.Ledger.Transaction.d_txouts_2374 (coe v1))))
                            (coe MAlonzo.Code.Ledger.Transaction.d_txfee_2376 (coe v1))
                            (coe
                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                               (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                               (coe
                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                        (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                           (coe (\ v2 -> v2)) (coe (\ v2 -> v2)))))
                                  (coe
                                     (\ v2 ->
                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                             (coe
                                                MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                             (coe
                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                (coe (\ v3 -> v3)) (coe (\ v3 -> v3))))))
                                  (coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2380 (coe v1))))
                            (coe MAlonzo.Code.Ledger.Transaction.d_txsize_2398 (coe v1))
                            (coe MAlonzo.Code.Ledger.Transaction.d_txid_2400 (coe v1))
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe (\ v3 v4 -> v4)) (coe v2)))
                               (MAlonzo.Code.Ledger.Transaction.d_collateral_2402 (coe v1)))
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased (\ v2 -> v2)
                               (MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2404 (coe v1)))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_15295
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_410
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased
                                  (\ v2 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe (\ v3 v4 -> v4))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v2))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txins_78 (coe v1))))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased
                                  (\ v2 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe
                                          (\ v3 v4 ->
                                             coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe
                                                  (\ v5 ->
                                                     coe
                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                       (coe
                                                          MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                          (coe
                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                             (coe v5))
                                                          (coe
                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                             (coe (0 :: Integer))))))
                                               (coe
                                                  (\ v5 v6 ->
                                                     coe
                                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                                       (coe (\ v7 -> v7))
                                                       (coe
                                                          (\ v7 ->
                                                             MAlonzo.Code.Foreign.Convertible.d_from_20
                                                               (coe
                                                                  MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                  (coe
                                                                     MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                  (coe
                                                                     MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                     (coe
                                                                        (\ v8 ->
                                                                           coe
                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                     (coe
                                                                        (\ v8 ->
                                                                           coe
                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                       (coe
                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                          () erased () erased
                                                          (coe
                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                          v6)))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  v4)))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v2))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txouts_80 (coe v1))))
                            (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txfee_82 (coe v1))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d_ε_842
                               (coe
                                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                                  (coe
                                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                     (coe d_HSTransactionStructure_1172))))
                            (coe
                               MAlonzo.Code.Data.Product.Base.du_map_104
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.d_from_20
                                  (coe
                                     MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                     (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                        (coe (\ v2 -> v2)) (coe (\ v2 -> v2)))))
                               (coe
                                  (\ v2 ->
                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                       (coe
                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                          (coe
                                             MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                          (coe
                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                             (coe (\ v3 -> v3)) (coe (\ v3 -> v3))))))
                               (coe
                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                  erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txvldt_84 (coe v1))))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d_ε_842
                               (coe
                                  MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                                  (coe
                                     MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                     (coe d_HSTransactionStructure_1172))))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                            (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txsize_86 (coe v1))
                            (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txid_88 (coe v1))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_410
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased
                                  (\ v2 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe (\ v3 v4 -> v4))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v2))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_collateral_90
                                     (coe v1))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_410
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased (\ v2 -> v2)
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reqSigHash_92
                                     (coe v1))))
                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))
                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_body_122 (coe v0)))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxWitnesses'46'constructor_829
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe (\ v3 v4 -> v4)) (coe v2)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2418 (coe v1))))
                            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                       (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe (\ v3 v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe v2)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe MAlonzo.Code.Ledger.Transaction.d_txdats_2422 (coe v1))))
                            (coe
                               MAlonzo.Code.Interface.Functor.du_map_30
                               MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                               erased
                               (\ v2 ->
                                  coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                       (coe
                                          (\ v3 ->
                                             coe
                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                               erased () erased
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe
                                                     (\ v4 ->
                                                        case coe v4 of
                                                          MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                                            -> coe
                                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                                          MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                                            -> coe
                                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                                          MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                                            -> coe
                                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                                          MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                                            -> coe
                                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                                          MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                                            -> coe
                                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                                          MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                                            -> coe
                                                                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                                          _ -> MAlonzo.RTE.mazUnreachableError))
                                                  (coe (\ v4 v5 -> v5)) (coe v3))))
                                       (coe
                                          (\ v3 v4 ->
                                             coe
                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                               erased () erased
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe
                                                     (\ v5 ->
                                                        coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                  (coe
                                                     (\ v5 v6 ->
                                                        coe
                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                          () erased () erased
                                                          (coe
                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                          (coe
                                                             MAlonzo.Code.Data.Product.Base.du_map_104
                                                             (coe (\ v7 -> v7))
                                                             (coe (\ v7 v8 -> v8)) (coe v6))))
                                                  (coe v4))))
                                       (coe v2)))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2424 (coe v1))))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_15485
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased
                                  (\ v2 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                       (coe (\ v3 v4 -> v4))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v2))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_vkSigs_106 (coe v1))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'8709'_424
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28)
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased
                                  (\ v2 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                       (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe (\ v3 v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v2))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txdats_110 (coe v1))))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1414
                                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                               (coe
                                  MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                                  (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
                               (coe
                                  MAlonzo.Code.Interface.Functor.du_map_30
                                  MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                  erased
                                  (\ v2 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                       (coe
                                          (\ v3 ->
                                             coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe
                                                  (\ v4 ->
                                                     case coe v4 of
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                                         -> coe
                                                              MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                                       _ -> MAlonzo.RTE.mazUnreachableError))
                                               (coe (\ v4 v5 -> v5))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  v3)))
                                       (coe
                                          (\ v3 v4 ->
                                             coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe
                                                  (\ v5 ->
                                                     coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                               (coe
                                                  (\ v5 v6 ->
                                                     coe
                                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                                       (coe (\ v7 -> v7)) (coe (\ v7 v8 -> v8))
                                                       (coe
                                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                          () erased () erased
                                                          (coe
                                                             MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                          v6)))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  v4)))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v2))
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txrdmrs_112
                                     (coe v1)))))))
                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_wits_124 (coe v0)))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20
                 (coe
                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                    (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                    (coe
                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                       (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                       (coe (\ v1 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txAD_126 (coe v0)))))
-- Ledger.Foreign.HSLedger.Convertible-⊥
d_Convertible'45''8869'_2930 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45''8869'_2930
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe (\ v0 -> MAlonzo.RTE.mazUnreachableError))
      (coe (\ v0 -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Foreign.HSLedger.Convertible-PParams
d_Convertible'45'PParams_2934 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'PParams_2934
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_PParams'46'constructor_1633
              (coe MAlonzo.Code.Ledger.PParams.d_a_280 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_b_282 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_264 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_266 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_268 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_270 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_286 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_Emax_292 (coe v0))
              (coe
                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                 (coe
                    MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v1 -> v1))
                    (coe (\ v1 v2 -> v2))
                    (coe MAlonzo.Code.Ledger.PParams.d_pv_274 (coe v0))))
              (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
              (coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_306 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_drepActivity_308 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_310 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312 (coe v0))
              (coe MAlonzo.Code.Ledger.PParams.d_minimumAVS_314 (coe v0))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                    (coe (\ v1 -> MAlonzo.RTE.mazUnreachableError))
                    (coe (\ v1 -> MAlonzo.RTE.mazUnreachableError)))
                 (MAlonzo.Code.Ledger.PParams.d_costmdls_296 (coe v0)))
              (coe MAlonzo.Code.Ledger.PParams.d_prices_290 (coe v0))
              (coe
                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                 (coe
                    MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v1 -> v1))
                    (coe (\ v1 v2 -> v2))
                    (coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_276 (coe v0))))
              (coe
                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                 (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                 (coe
                    MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v1 -> v1))
                    (coe (\ v1 v2 -> v2))
                    (coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_278 (coe v0))))
              (coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_288 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_272 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_2369
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockSize_182
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxSize_184 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxHeaderSize_186
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxValSize_188 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxCollateralInputs_224
                 (coe v0))
              (coe
                 MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v1 -> v1))
                 (coe (\ v1 v2 -> v2))
                 (coe
                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pv_196 (coe v0))))
              (coe
                 MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v1 -> v1))
                 (coe (\ v1 v2 -> v2))
                 (coe
                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxExUnits_218
                       (coe v0))))
              (coe
                 MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v1 -> v1))
                 (coe (\ v1 v2 -> v2))
                 (coe
                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                    (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockExUnits_220
                       (coe v0))))
              (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_a_178 (coe v0))
              (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_b_180 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_minUTxOValue_190
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_poolDeposit_192 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_coinsPerUTxOWord_222
                 (coe v0))
              (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_prices_216 (coe v0))
              (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_Emax_194 (coe v0))
              (coe (0 :: Integer))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                    (coe (\ v1 -> MAlonzo.RTE.mazUnreachableError))
                    (coe (\ v1 -> MAlonzo.RTE.mazUnreachableError)))
                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_costmdls_214 (coe v0)))
              (coe
                 MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_899
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
              (coe
                 MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_1393
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                 (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionLifetime_200
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionDeposit_202
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepDeposit_204 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepActivity_206
                 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMinSize_208 (coe v0))
              (coe
                 MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMaxTermLength_210
                 (coe v0))
              (coe (0 :: Integer))))
-- Ledger.Foreign.HSLedger.Convertible-UTxOEnv
d_Convertible'45'UTxOEnv_3046 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'UTxOEnv_3046
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_44501 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UTxOEnv'46'constructor_2863
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                           (coe
                              (\ v4 ->
                                 coe
                                   MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_PParams'46'constructor_1633
                                   (coe MAlonzo.Code.Ledger.PParams.d_a_280 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_b_282 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_264 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_266 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_268 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_270 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_286 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_Emax_292 (coe v4))
                                   (coe
                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                      erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                      (coe
                                         MAlonzo.Code.Data.Product.Base.du_map_104
                                         (coe (\ v5 -> v5)) (coe (\ v5 v6 -> v6))
                                         (coe MAlonzo.Code.Ledger.PParams.d_pv_274 (coe v4))))
                                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                   (coe
                                      MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_306 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_drepActivity_308 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_310 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312 (coe v4))
                                   (coe MAlonzo.Code.Ledger.PParams.d_minimumAVS_314 (coe v4))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_to_18
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                         (coe (\ v5 -> MAlonzo.RTE.mazUnreachableError))
                                         (coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)))
                                      (MAlonzo.Code.Ledger.PParams.d_costmdls_296 (coe v4)))
                                   (coe MAlonzo.Code.Ledger.PParams.d_prices_290 (coe v4))
                                   (coe
                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                      erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                      (coe
                                         MAlonzo.Code.Data.Product.Base.du_map_104
                                         (coe (\ v5 -> v5)) (coe (\ v5 v6 -> v6))
                                         (coe
                                            MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_276
                                            (coe v4))))
                                   (coe
                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                      erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                      (coe
                                         MAlonzo.Code.Data.Product.Base.du_map_104
                                         (coe (\ v5 -> v5)) (coe (\ v5 v6 -> v6))
                                         (coe
                                            MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_278
                                            (coe v4))))
                                   (coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_288 (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_272
                                      (coe v4))))
                           (coe
                              (\ v4 ->
                                 coe
                                   MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_2369
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockSize_182
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxSize_184
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxHeaderSize_186
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxValSize_188
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxCollateralInputs_224
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v5 -> v5))
                                      (coe (\ v5 v6 -> v6))
                                      (coe
                                         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                         () erased
                                         (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                         (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pv_196
                                            (coe v4))))
                                   (coe
                                      MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v5 -> v5))
                                      (coe (\ v5 v6 -> v6))
                                      (coe
                                         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                         () erased
                                         (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                         (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxExUnits_218
                                            (coe v4))))
                                   (coe
                                      MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v5 -> v5))
                                      (coe (\ v5 v6 -> v6))
                                      (coe
                                         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                         () erased
                                         (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                         (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockExUnits_220
                                            (coe v4))))
                                   (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_a_178 (coe v4))
                                   (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_b_180 (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_minUTxOValue_190
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_poolDeposit_192
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_coinsPerUTxOWord_222
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_prices_216 (coe v4))
                                   (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_Emax_194 (coe v4))
                                   (coe (0 :: Integer))
                                   (coe
                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                      (coe
                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                         (coe (\ v5 -> MAlonzo.RTE.mazUnreachableError))
                                         (coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)))
                                      (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_costmdls_214
                                         (coe v4)))
                                   (coe
                                      MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_899
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
                                   (coe
                                      MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_1393
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                      (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionLifetime_200
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionDeposit_202
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepDeposit_204
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepActivity_206
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMinSize_208
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMaxTermLength_210
                                      (coe v4))
                                   (coe (0 :: Integer)))))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_44501
              (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_slot_232 (coe v0))
              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_PParams'46'constructor_1633
                            (coe MAlonzo.Code.Ledger.PParams.d_a_280 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_b_282 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_264 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_266 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_268 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_270 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_286 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_Emax_292 (coe v1))
                            (coe
                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                               (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                               (coe
                                  MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                                  (coe (\ v2 v3 -> v3))
                                  (coe MAlonzo.Code.Ledger.PParams.d_pv_274 (coe v1))))
                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                            (coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_306 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_drepActivity_308 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_310 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312 (coe v1))
                            (coe MAlonzo.Code.Ledger.PParams.d_minimumAVS_314 (coe v1))
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_to_18
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                  (coe (\ v2 -> MAlonzo.RTE.mazUnreachableError))
                                  (coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)))
                               (MAlonzo.Code.Ledger.PParams.d_costmdls_296 (coe v1)))
                            (coe MAlonzo.Code.Ledger.PParams.d_prices_290 (coe v1))
                            (coe
                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                               (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                               (coe
                                  MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                                  (coe (\ v2 v3 -> v3))
                                  (coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_276 (coe v1))))
                            (coe
                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                               (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                               (coe
                                  MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                                  (coe (\ v2 v3 -> v3))
                                  (coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_278 (coe v1))))
                            (coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_288 (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_272 (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_2369
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockSize_182
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxSize_184 (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxHeaderSize_186
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxValSize_188 (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxCollateralInputs_224
                               (coe v1))
                            (coe
                               MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                               (coe (\ v2 v3 -> v3))
                               (coe
                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                  erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pv_196 (coe v1))))
                            (coe
                               MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                               (coe (\ v2 v3 -> v3))
                               (coe
                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                  erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxExUnits_218
                                     (coe v1))))
                            (coe
                               MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v2 -> v2))
                               (coe (\ v2 v3 -> v3))
                               (coe
                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                  erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockExUnits_220
                                     (coe v1))))
                            (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_a_178 (coe v1))
                            (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_b_180 (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_minUTxOValue_190
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_poolDeposit_192 (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_coinsPerUTxOWord_222
                               (coe v1))
                            (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_prices_216 (coe v1))
                            (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_Emax_194 (coe v1))
                            (coe (0 :: Integer))
                            (coe
                               MAlonzo.Code.Foreign.Convertible.d_from_20
                               (coe
                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                  (coe (\ v2 -> MAlonzo.RTE.mazUnreachableError))
                                  (coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)))
                               (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_costmdls_214 (coe v1)))
                            (coe
                               MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_899
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
                            (coe
                               MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_1393
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionLifetime_200
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionDeposit_202
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepDeposit_204 (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepActivity_206
                               (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMinSize_208 (coe v1))
                            (coe
                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMaxTermLength_210
                               (coe v1))
                            (coe (0 :: Integer)))))
                 (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pparams_234 (coe v0)))))
-- Ledger.Foreign.HSLedger.Convertible-UTxOState
d_Convertible'45'UTxOState_3062 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'UTxOState_3062
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1788 v1 v2 v3 v4
                -> coe
                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UTxOState'46'constructor_2905
                     (coe
                        MAlonzo.Code.Interface.Functor.du_map_30
                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                        erased
                        (\ v5 ->
                           coe
                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                             (coe
                                MAlonzo.Code.Data.Product.Base.du_map_104
                                (coe
                                   (\ v6 ->
                                      coe
                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                        erased
                                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                           (coe (\ v7 -> v7)) (coe (\ v7 v8 -> v8)) (coe v6))))
                                (coe
                                   (\ v6 v7 ->
                                      coe
                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                        erased
                                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                           (coe
                                              (\ v8 ->
                                                 case coe v8 of
                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                                                     -> case coe v9 of
                                                          MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549 v10 v11 v12
                                                            -> case coe v11 of
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                                   -> coe v13
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                                   -> coe v13
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                                                     -> case coe v9 of
                                                          MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_811 v10 v11 v12
                                                            -> case coe v11 of
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                                   -> coe v13
                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                                   -> coe v13
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                           (coe
                                              (\ v8 v9 ->
                                                 coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   (coe
                                                      MAlonzo.Code.Data.Product.Base.du_map_104
                                                      (coe (\ v10 -> v10))
                                                      (coe
                                                         (\ v10 ->
                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                              (coe
                                                                 MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                 (coe
                                                                    MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                 (coe
                                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                    (coe
                                                                       (\ v11 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                    (coe
                                                                       (\ v11 ->
                                                                          coe
                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                      (coe v9))))
                                           (coe v7))))
                                (coe v5)))
                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                     (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1788
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                    (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                    (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
                 (coe
                    MAlonzo.Code.Interface.Functor.du_map_30
                    MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                    erased
                    (\ v1 ->
                       coe
                         MAlonzo.Code.Data.Product.Base.du_map_104
                         (coe
                            (\ v2 ->
                               coe
                                 MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v3 -> v3))
                                 (coe (\ v3 v4 -> v4))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v2)))
                         (coe
                            (\ v2 v3 ->
                               coe
                                 MAlonzo.Code.Data.Product.Base.du_map_104
                                 (coe
                                    (\ v4 ->
                                       coe
                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                         (coe
                                            MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                            (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v4))
                                            (coe
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                               (coe (0 :: Integer))))))
                                 (coe
                                    (\ v4 v5 ->
                                       coe
                                         MAlonzo.Code.Data.Product.Base.du_map_104
                                         (coe (\ v6 -> v6))
                                         (coe
                                            (\ v6 ->
                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                    (coe
                                                       MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                    (coe
                                                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                       (coe
                                                          (\ v7 ->
                                                             coe
                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                       (coe
                                                          (\ v7 ->
                                                             coe
                                                               MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                         (coe
                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                            erased () erased
                                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                            v5)))
                                 (coe
                                    MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                    erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                    v3)))
                         (coe
                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased () erased
                            (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v1))
                    (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_utxo_242 (coe v0))))
              (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fees_244 (coe v0))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
              (coe
                 MAlonzo.Code.Algebra.Bundles.d_ε_842
                 (coe
                    MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                       (coe d_HSTransactionStructure_1172))))))
-- Ledger.Foreign.HSLedger.utxo-step
utxoStep ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_UTxOEnv_226 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_UTxOState_236 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_Tx_114 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_UTxOState_236
utxoStep = coe d_utxo'45'step_3078
d_utxo'45'step_3078 ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_UTxOEnv_226 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_UTxOState_236 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_Tx_114 ->
  Maybe MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_UTxOState_236
d_utxo'45'step_3078 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_map_68
      (MAlonzo.Code.Foreign.Convertible.d_to_18
         (coe
            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
            (coe
               (\ v3 ->
                  case coe v3 of
                    MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1788 v4 v5 v6 v7
                      -> coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UTxOState'46'constructor_2905
                           (coe
                              MAlonzo.Code.Interface.Functor.du_map_30
                              MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                              erased
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   (coe
                                      MAlonzo.Code.Data.Product.Base.du_map_104
                                      (coe
                                         (\ v9 ->
                                            coe
                                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                              erased () erased
                                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                              (coe
                                                 MAlonzo.Code.Data.Product.Base.du_map_104
                                                 (coe (\ v10 -> v10)) (coe (\ v10 v11 -> v11))
                                                 (coe v9))))
                                      (coe
                                         (\ v9 v10 ->
                                            coe
                                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                              erased () erased
                                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                              (coe
                                                 MAlonzo.Code.Data.Product.Base.du_map_104
                                                 (coe
                                                    (\ v11 ->
                                                       case coe v11 of
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                           -> case coe v12 of
                                                                MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549 v13 v14 v15
                                                                  -> case coe v14 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                         -> coe v16
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                         -> coe v16
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                           -> case coe v12 of
                                                                MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_811 v13 v14 v15
                                                                  -> case coe v14 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                         -> coe v16
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                         -> coe v16
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                 (coe
                                                    (\ v11 v12 ->
                                                       coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                         () erased () erased
                                                         (coe
                                                            MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Base.du_map_104
                                                            (coe (\ v13 -> v13))
                                                            (coe
                                                               (\ v13 ->
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                    (coe
                                                                       MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                       (coe
                                                                          MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                       (coe
                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                          (coe
                                                                             (\ v14 ->
                                                                                coe
                                                                                  MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                          (coe
                                                                             (\ v14 ->
                                                                                coe
                                                                                  MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                            (coe v12))))
                                                 (coe v10))))
                                      (coe v8)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                           (coe v5)
                    _ -> MAlonzo.RTE.mazUnreachableError))
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1788
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1414
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe
                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                          (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                          (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
                       (coe
                          MAlonzo.Code.Interface.Functor.du_map_30
                          MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                          erased
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Data.Product.Base.du_map_104
                               (coe
                                  (\ v5 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v6 -> v6))
                                       (coe (\ v6 v7 -> v7))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v5)))
                               (coe
                                  (\ v5 v6 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                       (coe
                                          (\ v7 ->
                                             coe
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                               (coe
                                                  MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549
                                                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                  (coe
                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                     (coe v7))
                                                  (coe
                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                     (coe (0 :: Integer))))))
                                       (coe
                                          (\ v7 v8 ->
                                             coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe (\ v9 -> v9))
                                               (coe
                                                  (\ v9 ->
                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                          (coe
                                                             MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                             (coe
                                                                (\ v10 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                             (coe
                                                                (\ v10 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  v8)))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v6)))
                               (coe
                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                  erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v4))
                          (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_utxo_242 (coe v3))))
                    (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fees_244 (coe v3))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1414
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d_ε_842
                       (coe
                          MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                             (coe d_HSTransactionStructure_1172))))))))
      (coe
         MAlonzo.Code.Ledger.Utxo.Properties.d_UTXO'45'step_1964
         d_HSTransactionStructure_1172 d_HSAbstractFunctions_1204
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_44501 v4 v5 v6
                         -> coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UTxOEnv'46'constructor_2863
                              (coe v4)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                    (coe
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_PParams'46'constructor_1633
                                            (coe MAlonzo.Code.Ledger.PParams.d_a_280 (coe v7))
                                            (coe MAlonzo.Code.Ledger.PParams.d_b_282 (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_maxBlockSize_264
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_maxTxSize_266 (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_268
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_poolDeposit_286
                                               (coe v7))
                                            (coe MAlonzo.Code.Ledger.PParams.d_Emax_292 (coe v7))
                                            (coe
                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                               erased () erased
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe (\ v8 -> v8)) (coe (\ v8 v9 -> v9))
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_pv_274
                                                     (coe v7))))
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_drepDeposit_306
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_drepActivity_308
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_ccMinSize_310 (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_minimumAVS_314
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                  (coe (\ v8 -> MAlonzo.RTE.mazUnreachableError))
                                                  (coe (\ v8 -> MAlonzo.RTE.mazUnreachableError)))
                                               (MAlonzo.Code.Ledger.PParams.d_costmdls_296
                                                  (coe v7)))
                                            (coe MAlonzo.Code.Ledger.PParams.d_prices_290 (coe v7))
                                            (coe
                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                               erased () erased
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe (\ v8 -> v8)) (coe (\ v8 v9 -> v9))
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_276
                                                     (coe v7))))
                                            (coe
                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                               erased () erased
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe (\ v8 -> v8)) (coe (\ v8 v9 -> v9))
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_278
                                                     (coe v7))))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_288
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_272
                                               (coe v7))))
                                    (coe
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_2369
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockSize_182
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxSize_184
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxHeaderSize_186
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxValSize_188
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxCollateralInputs_224
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe (\ v8 -> v8)) (coe (\ v8 v9 -> v9))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pv_196
                                                     (coe v7))))
                                            (coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe (\ v8 -> v8)) (coe (\ v8 v9 -> v9))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxExUnits_218
                                                     (coe v7))))
                                            (coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe (\ v8 -> v8)) (coe (\ v8 v9 -> v9))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockExUnits_220
                                                     (coe v7))))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_a_178
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_b_180
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_minUTxOValue_190
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_poolDeposit_192
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_coinsPerUTxOWord_222
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_prices_216
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_Emax_194
                                               (coe v7))
                                            (coe (0 :: Integer))
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                  (coe (\ v8 -> MAlonzo.RTE.mazUnreachableError))
                                                  (coe (\ v8 -> MAlonzo.RTE.mazUnreachableError)))
                                               (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_costmdls_214
                                                  (coe v7)))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_899
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_1393
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionLifetime_200
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionDeposit_202
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepDeposit_204
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepActivity_206
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMinSize_208
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMaxTermLength_210
                                               (coe v7))
                                            (coe (0 :: Integer)))))
                                 v6)
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_44501
                       (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_slot_232 (coe v3))
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_from_20
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_PParams'46'constructor_1633
                                     (coe MAlonzo.Code.Ledger.PParams.d_a_280 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_b_282 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_264 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_266 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_268 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_270 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_286 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_Emax_292 (coe v4))
                                     (coe
                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                        erased
                                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                           (coe (\ v5 -> v5)) (coe (\ v5 v6 -> v6))
                                           (coe MAlonzo.Code.Ledger.PParams.d_pv_274 (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_306 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_drepActivity_308 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_310 (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_minimumAVS_314 (coe v4))
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                           (coe (\ v5 -> MAlonzo.RTE.mazUnreachableError))
                                           (coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)))
                                        (MAlonzo.Code.Ledger.PParams.d_costmdls_296 (coe v4)))
                                     (coe MAlonzo.Code.Ledger.PParams.d_prices_290 (coe v4))
                                     (coe
                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                        erased
                                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                           (coe (\ v5 -> v5)) (coe (\ v5 v6 -> v6))
                                           (coe
                                              MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_276
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                        erased
                                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                           (coe (\ v5 -> v5)) (coe (\ v5 v6 -> v6))
                                           (coe
                                              MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_278
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_288 (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_272
                                        (coe v4))))
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_2369
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockSize_182
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxSize_184
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxHeaderSize_186
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxValSize_188
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxCollateralInputs_224
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v5 -> v5))
                                        (coe (\ v5 v6 -> v6))
                                        (coe
                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                           () erased
                                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pv_196
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v5 -> v5))
                                        (coe (\ v5 v6 -> v6))
                                        (coe
                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                           () erased
                                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxExUnits_218
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v5 -> v5))
                                        (coe (\ v5 v6 -> v6))
                                        (coe
                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                           () erased
                                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockExUnits_220
                                              (coe v4))))
                                     (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_a_178 (coe v4))
                                     (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_b_180 (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_minUTxOValue_190
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_poolDeposit_192
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_coinsPerUTxOWord_222
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_prices_216
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_Emax_194 (coe v4))
                                     (coe (0 :: Integer))
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                           (coe (\ v5 -> MAlonzo.RTE.mazUnreachableError))
                                           (coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)))
                                        (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_costmdls_214
                                           (coe v4)))
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_899
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_1393
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionLifetime_200
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionDeposit_202
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepDeposit_204
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepActivity_206
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMinSize_208
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMaxTermLength_210
                                        (coe v4))
                                     (coe (0 :: Integer)))))
                          (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pparams_234
                             (coe v3))))))
            v0)
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1788 v4 v5 v6 v7
                         -> coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UTxOState'46'constructor_2905
                              (coe
                                 MAlonzo.Code.Interface.Functor.du_map_30
                                 MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                 erased
                                 (\ v8 ->
                                    coe
                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                      erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                      (coe
                                         MAlonzo.Code.Data.Product.Base.du_map_104
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                 erased () erased
                                                 (coe
                                                    MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                 (coe
                                                    MAlonzo.Code.Data.Product.Base.du_map_104
                                                    (coe (\ v10 -> v10)) (coe (\ v10 v11 -> v11))
                                                    (coe v9))))
                                         (coe
                                            (\ v9 v10 ->
                                               coe
                                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                 erased () erased
                                                 (coe
                                                    MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                 (coe
                                                    MAlonzo.Code.Data.Product.Base.du_map_104
                                                    (coe
                                                       (\ v11 ->
                                                          case coe v11 of
                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                              -> case coe v12 of
                                                                   MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549 v13 v14 v15
                                                                     -> case coe v14 of
                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                            -> coe v16
                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                            -> coe v16
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                              -> case coe v12 of
                                                                   MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_811 v13 v14 v15
                                                                     -> case coe v14 of
                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                            -> coe v16
                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                            -> coe v16
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                    (coe
                                                       (\ v11 v12 ->
                                                          coe
                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                            () erased () erased
                                                            (coe
                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                            (coe
                                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                                               (coe (\ v13 -> v13))
                                                               (coe
                                                                  (\ v13 ->
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                       (coe
                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                          (coe
                                                                             MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                             (coe
                                                                                (\ v14 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                             (coe
                                                                                (\ v14 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                               (coe v12))))
                                                    (coe v10))))
                                         (coe v8)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                              (coe v5)
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1788
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1414
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (coe
                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                             (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                             (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
                          (coe
                             MAlonzo.Code.Interface.Functor.du_map_30
                             MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                             erased
                             (\ v4 ->
                                coe
                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                  (coe
                                     (\ v5 ->
                                        coe
                                          MAlonzo.Code.Data.Product.Base.du_map_104
                                          (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             v5)))
                                  (coe
                                     (\ v5 v6 ->
                                        coe
                                          MAlonzo.Code.Data.Product.Base.du_map_104
                                          (coe
                                             (\ v7 ->
                                                coe
                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                  (coe
                                                     MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549
                                                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                     (coe
                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                        (coe v7))
                                                     (coe
                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                        (coe (0 :: Integer))))))
                                          (coe
                                             (\ v7 v8 ->
                                                coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe (\ v9 -> v9))
                                                  (coe
                                                     (\ v9 ->
                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                             (coe
                                                                MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                (coe
                                                                   (\ v10 ->
                                                                      coe
                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                (coe
                                                                   (\ v10 ->
                                                                      coe
                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                     () erased () erased
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                     v8)))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             v6)))
                                  (coe
                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                     erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                     v4))
                             (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_utxo_242 (coe v3))))
                       (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fees_244 (coe v3))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1414
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_ε_842
                          (coe
                             MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                (coe d_HSTransactionStructure_1172)))))))
            v1)
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Tx'46'constructor_917
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_to_18
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxBody'46'constructor_547
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7)) (coe v5)))
                                        (MAlonzo.Code.Ledger.Transaction.d_txins_2372 (coe v4)))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        (coe
                                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                                           (coe
                                                              (\ v8 ->
                                                                 case coe v8 of
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                                                                     -> case coe v9 of
                                                                          MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549 v10 v11 v12
                                                                            -> case coe v11 of
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                                                   -> coe v13
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                                                   -> coe v13
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                                                                     -> case coe v9 of
                                                                          MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_811 v10 v11 v12
                                                                            -> case coe v11 of
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                                                   -> coe v13
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                                                   -> coe v13
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe
                                                              (\ v8 v9 ->
                                                                 coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   (coe
                                                                      MAlonzo.Code.Data.Product.Base.du_map_104
                                                                      (coe (\ v10 -> v10))
                                                                      (coe
                                                                         (\ v10 ->
                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                    (coe
                                                                                       (\ v11 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                    (coe
                                                                                       (\ v11 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                                      (coe v9))))
                                                           (coe v7))))
                                                (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txouts_2374
                                              (coe v4))))
                                     (coe MAlonzo.Code.Ledger.Transaction.d_txfee_2376 (coe v4))
                                     (coe
                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                        erased
                                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                 (coe
                                                    MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                    (coe (\ v5 -> v5)) (coe (\ v5 -> v5)))))
                                           (coe
                                              (\ v5 ->
                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                      (coe
                                                         MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                         (coe (\ v6 -> v6)) (coe (\ v6 -> v6))))))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txvldt_2380
                                              (coe v4))))
                                     (coe MAlonzo.Code.Ledger.Transaction.d_txsize_2398 (coe v4))
                                     (coe MAlonzo.Code.Ledger.Transaction.d_txid_2400 (coe v4))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7)) (coe v5)))
                                        (MAlonzo.Code.Ledger.Transaction.d_collateral_2402
                                           (coe v4)))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased (\ v5 -> v5)
                                        (MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2404
                                           (coe v4)))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_15295
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_410
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txins_78
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                                        (coe
                                                           (\ v8 ->
                                                              coe
                                                                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                   (coe
                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                      (coe v8))
                                                                   (coe
                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                      (coe (0 :: Integer))))))
                                                        (coe
                                                           (\ v8 v9 ->
                                                              coe
                                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                                (coe (\ v10 -> v10))
                                                                (coe
                                                                   (\ v10 ->
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                           (coe
                                                                              MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                              (coe
                                                                                 (\ v11 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                              (coe
                                                                                 (\ v11 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   v9)))
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                           v7)))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txouts_80
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txfee_82 (coe v4))
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d_ε_842
                                        (coe
                                           MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                              (coe d_HSTransactionStructure_1172))))
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                              (coe
                                                 MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                 (coe (\ v5 -> v5)) (coe (\ v5 -> v5)))))
                                        (coe
                                           (\ v5 ->
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                   (coe
                                                      MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                      (coe (\ v6 -> v6)) (coe (\ v6 -> v6))))))
                                        (coe
                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                           () erased
                                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txvldt_84
                                              (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d_ε_842
                                        (coe
                                           MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                              (coe d_HSTransactionStructure_1172))))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txsize_86
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txid_88 (coe v4))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_410
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_collateral_90
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_410
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased (\ v5 -> v5)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reqSigHash_92
                                              (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))
                          (MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v3)))
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_to_18
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxWitnesses'46'constructor_829
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7)) (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_vkSigs_2418
                                              (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txdats_2422
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        (coe
                                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                                           (coe
                                                              (\ v7 ->
                                                                 case coe v7 of
                                                                   MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                                                   MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                                                   MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                                                   MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                                                   MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                                                   MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe (\ v7 v8 -> v8)) (coe v6))))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        (coe
                                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                                           (coe
                                                              (\ v8 ->
                                                                 coe
                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                           (coe
                                                              (\ v8 v9 ->
                                                                 coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   (coe
                                                                      MAlonzo.Code.Data.Product.Base.du_map_104
                                                                      (coe (\ v10 -> v10))
                                                                      (coe (\ v10 v11 -> v11))
                                                                      (coe v9))))
                                                           (coe v7))))
                                                (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2424
                                              (coe v4))))))
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_15485
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_vkSigs_106
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8709'_424
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28)
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txdats_110
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                                           (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe
                                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                                        (coe
                                                           (\ v7 ->
                                                              case coe v7 of
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                                        (coe (\ v7 v8 -> v8))
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                           v6)))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                                        (coe
                                                           (\ v8 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                        (coe
                                                           (\ v8 v9 ->
                                                              coe
                                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                                (coe (\ v10 -> v10))
                                                                (coe (\ v10 v11 -> v11))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   v9)))
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                           v7)))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txrdmrs_112
                                              (coe v4)))))))
                          (MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v3)))
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_to_18
                          (coe
                             MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                             (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                             (coe
                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                          (MAlonzo.Code.Ledger.Transaction.d_txAD_2440 (coe v3)))))
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Ledger.Transaction.C_Tx'46'constructor_15677
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_from_20
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxBody'46'constructor_547
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7)) (coe v5)))
                                        (MAlonzo.Code.Ledger.Transaction.d_txins_2372 (coe v4)))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        (coe
                                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                                           (coe
                                                              (\ v8 ->
                                                                 case coe v8 of
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                                                                     -> case coe v9 of
                                                                          MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549 v10 v11 v12
                                                                            -> case coe v11 of
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                                                   -> coe v13
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                                                   -> coe v13
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                                                                     -> case coe v9 of
                                                                          MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_811 v10 v11 v12
                                                                            -> case coe v11 of
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                                                   -> coe v13
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                                                   -> coe v13
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe
                                                              (\ v8 v9 ->
                                                                 coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   (coe
                                                                      MAlonzo.Code.Data.Product.Base.du_map_104
                                                                      (coe (\ v10 -> v10))
                                                                      (coe
                                                                         (\ v10 ->
                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                    (coe
                                                                                       (\ v11 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                    (coe
                                                                                       (\ v11 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                                      (coe v9))))
                                                           (coe v7))))
                                                (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txouts_2374
                                              (coe v4))))
                                     (coe MAlonzo.Code.Ledger.Transaction.d_txfee_2376 (coe v4))
                                     (coe
                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                        erased
                                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                 (coe
                                                    MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                    (coe (\ v5 -> v5)) (coe (\ v5 -> v5)))))
                                           (coe
                                              (\ v5 ->
                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                      (coe
                                                         MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                         (coe (\ v6 -> v6)) (coe (\ v6 -> v6))))))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txvldt_2380
                                              (coe v4))))
                                     (coe MAlonzo.Code.Ledger.Transaction.d_txsize_2398 (coe v4))
                                     (coe MAlonzo.Code.Ledger.Transaction.d_txid_2400 (coe v4))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7)) (coe v5)))
                                        (MAlonzo.Code.Ledger.Transaction.d_collateral_2402
                                           (coe v4)))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased (\ v5 -> v5)
                                        (MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2404
                                           (coe v4)))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_15295
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_410
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txins_78
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                                        (coe
                                                           (\ v8 ->
                                                              coe
                                                                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                   (coe
                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                      (coe v8))
                                                                   (coe
                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                      (coe (0 :: Integer))))))
                                                        (coe
                                                           (\ v8 v9 ->
                                                              coe
                                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                                (coe (\ v10 -> v10))
                                                                (coe
                                                                   (\ v10 ->
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                           (coe
                                                                              MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                              (coe
                                                                                 (\ v11 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                              (coe
                                                                                 (\ v11 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   v9)))
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                           v7)))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txouts_80
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txfee_82 (coe v4))
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d_ε_842
                                        (coe
                                           MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                              (coe d_HSTransactionStructure_1172))))
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                              (coe
                                                 MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                 (coe (\ v5 -> v5)) (coe (\ v5 -> v5)))))
                                        (coe
                                           (\ v5 ->
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                   (coe
                                                      MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                      (coe (\ v6 -> v6)) (coe (\ v6 -> v6))))))
                                        (coe
                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                           () erased
                                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txvldt_84
                                              (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d_ε_842
                                        (coe
                                           MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                              (coe d_HSTransactionStructure_1172))))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txsize_86
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txid_88 (coe v4))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_410
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_collateral_90
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_410
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased (\ v5 -> v5)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reqSigHash_92
                                              (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))
                          (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_body_122 (coe v3)))
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_from_20
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxWitnesses'46'constructor_829
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7)) (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_vkSigs_2418
                                              (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txdats_2422
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        (coe
                                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                                           (coe
                                                              (\ v7 ->
                                                                 case coe v7 of
                                                                   MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                                                   MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                                                   MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                                                   MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                                                   MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                                                   MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe (\ v7 v8 -> v8)) (coe v6))))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        (coe
                                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                                           (coe
                                                              (\ v8 ->
                                                                 coe
                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                           (coe
                                                              (\ v8 v9 ->
                                                                 coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   (coe
                                                                      MAlonzo.Code.Data.Product.Base.du_map_104
                                                                      (coe (\ v10 -> v10))
                                                                      (coe (\ v10 v11 -> v11))
                                                                      (coe v9))))
                                                           (coe v7))))
                                                (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2424
                                              (coe v4))))))
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_15485
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_vkSigs_106
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8709'_424
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28)
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txdats_110
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                                           (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe
                                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                                        (coe
                                                           (\ v7 ->
                                                              case coe v7 of
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                                        (coe (\ v7 v8 -> v8))
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                           v6)))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                                        (coe
                                                           (\ v8 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                        (coe
                                                           (\ v8 v9 ->
                                                              coe
                                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                                (coe (\ v10 -> v10))
                                                                (coe (\ v10 v11 -> v11))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   v9)))
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                           v7)))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txrdmrs_112
                                              (coe v4)))))))
                          (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_wits_124 (coe v3)))
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_from_20
                          (coe
                             MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                             (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                             (coe
                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                          (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txAD_126 (coe v3))))))
            v2))
-- Ledger.Foreign.HSLedger.utxow-step
utxowStep ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_UTxOEnv_226 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_UTxOState_236 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_Tx_114 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_UTxOState_236
utxowStep = coe d_utxow'45'step_3086
d_utxow'45'step_3086 ::
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_UTxOEnv_226 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_UTxOState_236 ->
  MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_Tx_114 ->
  Maybe MAlonzo.Code.Ledger.Foreign.LedgerTypes.T_UTxOState_236
d_utxow'45'step_3086 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_map_68
      (MAlonzo.Code.Foreign.Convertible.d_to_18
         (coe
            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
            (coe
               (\ v3 ->
                  case coe v3 of
                    MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1788 v4 v5 v6 v7
                      -> coe
                           MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UTxOState'46'constructor_2905
                           (coe
                              MAlonzo.Code.Interface.Functor.du_map_30
                              MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                              erased
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                   erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                   (coe
                                      MAlonzo.Code.Data.Product.Base.du_map_104
                                      (coe
                                         (\ v9 ->
                                            coe
                                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                              erased () erased
                                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                              (coe
                                                 MAlonzo.Code.Data.Product.Base.du_map_104
                                                 (coe (\ v10 -> v10)) (coe (\ v10 v11 -> v11))
                                                 (coe v9))))
                                      (coe
                                         (\ v9 v10 ->
                                            coe
                                              MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                              erased () erased
                                              (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                              (coe
                                                 MAlonzo.Code.Data.Product.Base.du_map_104
                                                 (coe
                                                    (\ v11 ->
                                                       case coe v11 of
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                           -> case coe v12 of
                                                                MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549 v13 v14 v15
                                                                  -> case coe v14 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                         -> coe v16
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                         -> coe v16
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                           -> case coe v12 of
                                                                MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_811 v13 v14 v15
                                                                  -> case coe v14 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                         -> coe v16
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                         -> coe v16
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                 (coe
                                                    (\ v11 v12 ->
                                                       coe
                                                         MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                         () erased () erased
                                                         (coe
                                                            MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                         (coe
                                                            MAlonzo.Code.Data.Product.Base.du_map_104
                                                            (coe (\ v13 -> v13))
                                                            (coe
                                                               (\ v13 ->
                                                                  MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                    (coe
                                                                       MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                       (coe
                                                                          MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                       (coe
                                                                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                          (coe
                                                                             (\ v14 ->
                                                                                coe
                                                                                  MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                          (coe
                                                                             (\ v14 ->
                                                                                coe
                                                                                  MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                            (coe v12))))
                                                 (coe v10))))
                                      (coe v8)))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                           (coe v5)
                    _ -> MAlonzo.RTE.mazUnreachableError))
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1788
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1414
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe
                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                          (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                          (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
                       (coe
                          MAlonzo.Code.Interface.Functor.du_map_30
                          MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                          erased
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Data.Product.Base.du_map_104
                               (coe
                                  (\ v5 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v6 -> v6))
                                       (coe (\ v6 v7 -> v7))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v5)))
                               (coe
                                  (\ v5 v6 ->
                                     coe
                                       MAlonzo.Code.Data.Product.Base.du_map_104
                                       (coe
                                          (\ v7 ->
                                             coe
                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                               (coe
                                                  MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549
                                                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                  (coe
                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                     (coe v7))
                                                  (coe
                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                     (coe (0 :: Integer))))))
                                       (coe
                                          (\ v7 v8 ->
                                             coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe (\ v9 -> v9))
                                               (coe
                                                  (\ v9 ->
                                                     MAlonzo.Code.Foreign.Convertible.d_from_20
                                                       (coe
                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                          (coe
                                                             MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                             (coe
                                                                (\ v10 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                             (coe
                                                                (\ v10 ->
                                                                   coe
                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  v8)))
                                       (coe
                                          MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                          () erased
                                          (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                          v6)))
                               (coe
                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                  erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40) v4))
                          (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_utxo_242 (coe v3))))
                    (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fees_244 (coe v3))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1414
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d_ε_842
                       (coe
                          MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                             (coe d_HSTransactionStructure_1172))))))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_compute_90
         (coe
            MAlonzo.Code.Ledger.Utxow.Properties.d_Computational'45'UTXOW_1586
            (coe d_HSTransactionStructure_1172)
            (coe d_HSAbstractFunctions_1204))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_44501 v4 v5 v6
                         -> coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UTxOEnv'46'constructor_2863
                              (coe v4)
                              (coe
                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                 (coe
                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                    (coe
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_PParams'46'constructor_1633
                                            (coe MAlonzo.Code.Ledger.PParams.d_a_280 (coe v7))
                                            (coe MAlonzo.Code.Ledger.PParams.d_b_282 (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_maxBlockSize_264
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_maxTxSize_266 (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_268
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_maxValSize_270
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_poolDeposit_286
                                               (coe v7))
                                            (coe MAlonzo.Code.Ledger.PParams.d_Emax_292 (coe v7))
                                            (coe
                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                               erased () erased
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe (\ v8 -> v8)) (coe (\ v8 v9 -> v9))
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_pv_274
                                                     (coe v7))))
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_drepDeposit_306
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_drepActivity_308
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_ccMinSize_310 (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_minimumAVS_314
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.d_to_18
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                  (coe (\ v8 -> MAlonzo.RTE.mazUnreachableError))
                                                  (coe (\ v8 -> MAlonzo.RTE.mazUnreachableError)))
                                               (MAlonzo.Code.Ledger.PParams.d_costmdls_296
                                                  (coe v7)))
                                            (coe MAlonzo.Code.Ledger.PParams.d_prices_290 (coe v7))
                                            (coe
                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                               erased () erased
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe (\ v8 -> v8)) (coe (\ v8 v9 -> v9))
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_276
                                                     (coe v7))))
                                            (coe
                                               MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                               erased () erased
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe (\ v8 -> v8)) (coe (\ v8 v9 -> v9))
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_278
                                                     (coe v7))))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_288
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_272
                                               (coe v7))))
                                    (coe
                                       (\ v7 ->
                                          coe
                                            MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_2369
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockSize_182
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxSize_184
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxHeaderSize_186
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxValSize_188
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxCollateralInputs_224
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe (\ v8 -> v8)) (coe (\ v8 v9 -> v9))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pv_196
                                                     (coe v7))))
                                            (coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe (\ v8 -> v8)) (coe (\ v8 v9 -> v9))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxExUnits_218
                                                     (coe v7))))
                                            (coe
                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                               (coe (\ v8 -> v8)) (coe (\ v8 v9 -> v9))
                                               (coe
                                                  MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                  erased () erased
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                  (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockExUnits_220
                                                     (coe v7))))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_a_178
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_b_180
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_minUTxOValue_190
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_poolDeposit_192
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_coinsPerUTxOWord_222
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_prices_216
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_Emax_194
                                               (coe v7))
                                            (coe (0 :: Integer))
                                            (coe
                                               MAlonzo.Code.Foreign.Convertible.d_from_20
                                               (coe
                                                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                  (coe (\ v8 -> MAlonzo.RTE.mazUnreachableError))
                                                  (coe (\ v8 -> MAlonzo.RTE.mazUnreachableError)))
                                               (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_costmdls_214
                                                  (coe v7)))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_899
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_1393
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                               (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionLifetime_200
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionDeposit_202
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepDeposit_204
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepActivity_206
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMinSize_208
                                               (coe v7))
                                            (coe
                                               MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMaxTermLength_210
                                               (coe v7))
                                            (coe (0 :: Integer)))))
                                 v6)
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Ledger.Utxo.C_UTxOEnv'46'constructor_44501
                       (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_slot_232 (coe v3))
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_from_20
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_PParams'46'constructor_1633
                                     (coe MAlonzo.Code.Ledger.PParams.d_a_280 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_b_282 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_264 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_266 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_268 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_270 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_284 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_286 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_Emax_292 (coe v4))
                                     (coe
                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                        erased
                                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                           (coe (\ v5 -> v5)) (coe (\ v5 v6 -> v6))
                                           (coe MAlonzo.Code.Ledger.PParams.d_pv_274 (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_306 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_drepActivity_308 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_310 (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_312 (coe v4))
                                     (coe MAlonzo.Code.Ledger.PParams.d_minimumAVS_314 (coe v4))
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_to_18
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                           (coe (\ v5 -> MAlonzo.RTE.mazUnreachableError))
                                           (coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)))
                                        (MAlonzo.Code.Ledger.PParams.d_costmdls_296 (coe v4)))
                                     (coe MAlonzo.Code.Ledger.PParams.d_prices_290 (coe v4))
                                     (coe
                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                        erased
                                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                           (coe (\ v5 -> v5)) (coe (\ v5 v6 -> v6))
                                           (coe
                                              MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_276
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                        erased
                                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                           (coe (\ v5 -> v5)) (coe (\ v5 v6 -> v6))
                                           (coe
                                              MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_278
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOWord_288 (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_272
                                        (coe v4))))
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.PParams.C_PParams'46'constructor_2369
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockSize_182
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxSize_184
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxHeaderSize_186
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxValSize_188
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxCollateralInputs_224
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v5 -> v5))
                                        (coe (\ v5 v6 -> v6))
                                        (coe
                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                           () erased
                                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pv_196
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v5 -> v5))
                                        (coe (\ v5 v6 -> v6))
                                        (coe
                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                           () erased
                                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxTxExUnits_218
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map_104 (coe (\ v5 -> v5))
                                        (coe (\ v5 v6 -> v6))
                                        (coe
                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                           () erased
                                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_maxBlockExUnits_220
                                              (coe v4))))
                                     (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_a_178 (coe v4))
                                     (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_b_180 (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_minUTxOValue_190
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_poolDeposit_192
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_coinsPerUTxOWord_222
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_prices_216
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_Emax_194 (coe v4))
                                     (coe (0 :: Integer))
                                     (coe
                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                           (coe (\ v5 -> MAlonzo.RTE.mazUnreachableError))
                                           (coe (\ v5 -> MAlonzo.RTE.mazUnreachableError)))
                                        (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_costmdls_214
                                           (coe v4)))
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.C_DrepThresholds'46'constructor_899
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
                                     (coe
                                        MAlonzo.Code.Ledger.PParams.C_PoolThresholds'46'constructor_1393
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174)
                                        (coe MAlonzo.Code.Data.Rational.Base.d_'189'_174))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionLifetime_200
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_govActionDeposit_202
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepDeposit_204
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_drepActivity_206
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMinSize_208
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_ccMaxTermLength_210
                                        (coe v4))
                                     (coe (0 :: Integer)))))
                          (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_pparams_234
                             (coe v3))))))
            v0)
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
               (coe
                  (\ v3 ->
                     case coe v3 of
                       MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1788 v4 v5 v6 v7
                         -> coe
                              MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_UTxOState'46'constructor_2905
                              (coe
                                 MAlonzo.Code.Interface.Functor.du_map_30
                                 MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                                 erased
                                 (\ v8 ->
                                    coe
                                      MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                      erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                      (coe
                                         MAlonzo.Code.Data.Product.Base.du_map_104
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                 erased () erased
                                                 (coe
                                                    MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                 (coe
                                                    MAlonzo.Code.Data.Product.Base.du_map_104
                                                    (coe (\ v10 -> v10)) (coe (\ v10 v11 -> v11))
                                                    (coe v9))))
                                         (coe
                                            (\ v9 v10 ->
                                               coe
                                                 MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                                 erased () erased
                                                 (coe
                                                    MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                 (coe
                                                    MAlonzo.Code.Data.Product.Base.du_map_104
                                                    (coe
                                                       (\ v11 ->
                                                          case coe v11 of
                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                              -> case coe v12 of
                                                                   MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549 v13 v14 v15
                                                                     -> case coe v14 of
                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                            -> coe v16
                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                            -> coe v16
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                              -> case coe v12 of
                                                                   MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_811 v13 v14 v15
                                                                     -> case coe v14 of
                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                            -> coe v16
                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                            -> coe v16
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                    (coe
                                                       (\ v11 v12 ->
                                                          coe
                                                            MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                            () erased () erased
                                                            (coe
                                                               MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                            (coe
                                                               MAlonzo.Code.Data.Product.Base.du_map_104
                                                               (coe (\ v13 -> v13))
                                                               (coe
                                                                  (\ v13 ->
                                                                     MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                       (coe
                                                                          MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                          (coe
                                                                             MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                          (coe
                                                                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                             (coe
                                                                                (\ v14 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                             (coe
                                                                                (\ v14 ->
                                                                                   coe
                                                                                     MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                               (coe v12))))
                                                    (coe v10))))
                                         (coe v8)))
                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                              (coe v5)
                       _ -> MAlonzo.RTE.mazUnreachableError))
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Ledger.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_1788
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1414
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (coe
                             MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                             (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                             (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
                          (coe
                             MAlonzo.Code.Interface.Functor.du_map_30
                             MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 () erased ()
                             erased
                             (\ v4 ->
                                coe
                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                  (coe
                                     (\ v5 ->
                                        coe
                                          MAlonzo.Code.Data.Product.Base.du_map_104
                                          (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             v5)))
                                  (coe
                                     (\ v5 v6 ->
                                        coe
                                          MAlonzo.Code.Data.Product.Base.du_map_104
                                          (coe
                                             (\ v7 ->
                                                coe
                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                  (coe
                                                     MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549
                                                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                     (coe
                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                        (coe v7))
                                                     (coe
                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                        (coe (0 :: Integer))))))
                                          (coe
                                             (\ v7 v8 ->
                                                coe
                                                  MAlonzo.Code.Data.Product.Base.du_map_104
                                                  (coe (\ v9 -> v9))
                                                  (coe
                                                     (\ v9 ->
                                                        MAlonzo.Code.Foreign.Convertible.d_from_20
                                                          (coe
                                                             MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                             (coe
                                                                MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                             (coe
                                                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                (coe
                                                                   (\ v10 ->
                                                                      coe
                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                (coe
                                                                   (\ v10 ->
                                                                      coe
                                                                        MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                  (coe
                                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                     () erased () erased
                                                     (coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                     v8)))
                                          (coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             v6)))
                                  (coe
                                     MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                     erased (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                     v4))
                             (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_utxo_242 (coe v3))))
                       (coe MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_fees_244 (coe v3))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1414
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d_ε_842
                          (coe
                             MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                (coe d_HSTransactionStructure_1172)))))))
            v1)
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Tx'46'constructor_917
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_to_18
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxBody'46'constructor_547
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7)) (coe v5)))
                                        (MAlonzo.Code.Ledger.Transaction.d_txins_2372 (coe v4)))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        (coe
                                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                                           (coe
                                                              (\ v8 ->
                                                                 case coe v8 of
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                                                                     -> case coe v9 of
                                                                          MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549 v10 v11 v12
                                                                            -> case coe v11 of
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                                                   -> coe v13
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                                                   -> coe v13
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                                                                     -> case coe v9 of
                                                                          MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_811 v10 v11 v12
                                                                            -> case coe v11 of
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                                                   -> coe v13
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                                                   -> coe v13
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe
                                                              (\ v8 v9 ->
                                                                 coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   (coe
                                                                      MAlonzo.Code.Data.Product.Base.du_map_104
                                                                      (coe (\ v10 -> v10))
                                                                      (coe
                                                                         (\ v10 ->
                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                    (coe
                                                                                       (\ v11 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                    (coe
                                                                                       (\ v11 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                                      (coe v9))))
                                                           (coe v7))))
                                                (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txouts_2374
                                              (coe v4))))
                                     (coe MAlonzo.Code.Ledger.Transaction.d_txfee_2376 (coe v4))
                                     (coe
                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                        erased
                                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                 (coe
                                                    MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                    (coe (\ v5 -> v5)) (coe (\ v5 -> v5)))))
                                           (coe
                                              (\ v5 ->
                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                      (coe
                                                         MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                         (coe (\ v6 -> v6)) (coe (\ v6 -> v6))))))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txvldt_2380
                                              (coe v4))))
                                     (coe MAlonzo.Code.Ledger.Transaction.d_txsize_2398 (coe v4))
                                     (coe MAlonzo.Code.Ledger.Transaction.d_txid_2400 (coe v4))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7)) (coe v5)))
                                        (MAlonzo.Code.Ledger.Transaction.d_collateral_2402
                                           (coe v4)))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased (\ v5 -> v5)
                                        (MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2404
                                           (coe v4)))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_15295
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_410
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txins_78
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                                        (coe
                                                           (\ v8 ->
                                                              coe
                                                                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                   (coe
                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                      (coe v8))
                                                                   (coe
                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                      (coe (0 :: Integer))))))
                                                        (coe
                                                           (\ v8 v9 ->
                                                              coe
                                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                                (coe (\ v10 -> v10))
                                                                (coe
                                                                   (\ v10 ->
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                           (coe
                                                                              MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                              (coe
                                                                                 (\ v11 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                              (coe
                                                                                 (\ v11 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   v9)))
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                           v7)))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txouts_80
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txfee_82 (coe v4))
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d_ε_842
                                        (coe
                                           MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                              (coe d_HSTransactionStructure_1172))))
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                              (coe
                                                 MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                 (coe (\ v5 -> v5)) (coe (\ v5 -> v5)))))
                                        (coe
                                           (\ v5 ->
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                   (coe
                                                      MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                      (coe (\ v6 -> v6)) (coe (\ v6 -> v6))))))
                                        (coe
                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                           () erased
                                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txvldt_84
                                              (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d_ε_842
                                        (coe
                                           MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                              (coe d_HSTransactionStructure_1172))))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txsize_86
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txid_88 (coe v4))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_410
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_collateral_90
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_410
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased (\ v5 -> v5)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reqSigHash_92
                                              (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))
                          (MAlonzo.Code.Ledger.Transaction.d_body_2436 (coe v3)))
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_to_18
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxWitnesses'46'constructor_829
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7)) (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_vkSigs_2418
                                              (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txdats_2422
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        (coe
                                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                                           (coe
                                                              (\ v7 ->
                                                                 case coe v7 of
                                                                   MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                                                   MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                                                   MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                                                   MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                                                   MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                                                   MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe (\ v7 v8 -> v8)) (coe v6))))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        (coe
                                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                                           (coe
                                                              (\ v8 ->
                                                                 coe
                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                           (coe
                                                              (\ v8 v9 ->
                                                                 coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   (coe
                                                                      MAlonzo.Code.Data.Product.Base.du_map_104
                                                                      (coe (\ v10 -> v10))
                                                                      (coe (\ v10 v11 -> v11))
                                                                      (coe v9))))
                                                           (coe v7))))
                                                (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2424
                                              (coe v4))))))
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_15485
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_vkSigs_106
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8709'_424
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28)
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txdats_110
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                                           (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe
                                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                                        (coe
                                                           (\ v7 ->
                                                              case coe v7 of
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                                        (coe (\ v7 v8 -> v8))
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                           v6)))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                                        (coe
                                                           (\ v8 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                        (coe
                                                           (\ v8 v9 ->
                                                              coe
                                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                                (coe (\ v10 -> v10))
                                                                (coe (\ v10 v11 -> v11))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   v9)))
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                           v7)))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txrdmrs_112
                                              (coe v4)))))))
                          (MAlonzo.Code.Ledger.Transaction.d_wits_2438 (coe v3)))
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_to_18
                          (coe
                             MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                             (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                             (coe
                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                          (MAlonzo.Code.Ledger.Transaction.d_txAD_2440 (coe v3)))))
               (coe
                  (\ v3 ->
                     coe
                       MAlonzo.Code.Ledger.Transaction.C_Tx'46'constructor_15677
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_from_20
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxBody'46'constructor_547
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7)) (coe v5)))
                                        (MAlonzo.Code.Ledger.Transaction.d_txins_2372 (coe v4)))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        (coe
                                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                                           (coe
                                                              (\ v8 ->
                                                                 case coe v8 of
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                                                                     -> case coe v9 of
                                                                          MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549 v10 v11 v12
                                                                            -> case coe v11 of
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                                                   -> coe v13
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                                                   -> coe v13
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                                                                     -> case coe v9 of
                                                                          MAlonzo.Code.Ledger.Address.C_BootstrapAddr'46'constructor_811 v10 v11 v12
                                                                            -> case coe v11 of
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
                                                                                   -> coe v13
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                                                                   -> coe v13
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe
                                                              (\ v8 v9 ->
                                                                 coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   (coe
                                                                      MAlonzo.Code.Data.Product.Base.du_map_104
                                                                      (coe (\ v10 -> v10))
                                                                      (coe
                                                                         (\ v10 ->
                                                                            MAlonzo.Code.Foreign.Convertible.d_to_18
                                                                              (coe
                                                                                 MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                                 (coe
                                                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                                    (coe
                                                                                       (\ v11 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                                    (coe
                                                                                       (\ v11 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                                      (coe v9))))
                                                           (coe v7))))
                                                (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txouts_2374
                                              (coe v4))))
                                     (coe MAlonzo.Code.Ledger.Transaction.d_txfee_2376 (coe v4))
                                     (coe
                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased ()
                                        erased
                                        (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                        (coe
                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.d_to_18
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                 (coe
                                                    MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                 (coe
                                                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                    (coe (\ v5 -> v5)) (coe (\ v5 -> v5)))))
                                           (coe
                                              (\ v5 ->
                                                 MAlonzo.Code.Foreign.Convertible.d_to_18
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                      (coe
                                                         MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                      (coe
                                                         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                         (coe (\ v6 -> v6)) (coe (\ v6 -> v6))))))
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txvldt_2380
                                              (coe v4))))
                                     (coe MAlonzo.Code.Ledger.Transaction.d_txsize_2398 (coe v4))
                                     (coe MAlonzo.Code.Ledger.Transaction.d_txid_2400 (coe v4))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7)) (coe v5)))
                                        (MAlonzo.Code.Ledger.Transaction.d_collateral_2402
                                           (coe v4)))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased (\ v5 -> v5)
                                        (MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2404
                                           (coe v4)))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Transaction.C_TxBody'46'constructor_15295
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_410
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txins_78
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                                        (coe
                                                           (\ v8 ->
                                                              coe
                                                                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Address.C_BaseAddr'46'constructor_549
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                   (coe
                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                      (coe v8))
                                                                   (coe
                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                      (coe (0 :: Integer))))))
                                                        (coe
                                                           (\ v8 v9 ->
                                                              coe
                                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                                (coe (\ v10 -> v10))
                                                                (coe
                                                                   (\ v10 ->
                                                                      MAlonzo.Code.Foreign.Convertible.d_from_20
                                                                        (coe
                                                                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                                           (coe
                                                                              MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                                           (coe
                                                                              MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                                              (coe
                                                                                 (\ v11 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                                              (coe
                                                                                 (\ v11 ->
                                                                                    coe
                                                                                      MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   v9)))
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                           v7)))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txouts_80
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txfee_82 (coe v4))
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d_ε_842
                                        (coe
                                           MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                              (coe d_HSTransactionStructure_1172))))
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                        (coe
                                           MAlonzo.Code.Foreign.Convertible.d_from_20
                                           (coe
                                              MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                              (coe
                                                 MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                              (coe
                                                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                 (coe (\ v5 -> v5)) (coe (\ v5 -> v5)))))
                                        (coe
                                           (\ v5 ->
                                              MAlonzo.Code.Foreign.Convertible.d_from_20
                                                (coe
                                                   MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                                                   (coe
                                                      MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                                                   (coe
                                                      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                                      (coe (\ v6 -> v6)) (coe (\ v6 -> v6))))))
                                        (coe
                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 () erased
                                           () erased
                                           (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txvldt_84
                                              (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d_ε_842
                                        (coe
                                           MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_1836
                                              (coe d_HSTransactionStructure_1172))))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txsize_86
                                        (coe v4))
                                     (coe
                                        MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txid_88 (coe v4))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_410
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_collateral_90
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_410
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased (\ v5 -> v5)
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_reqSigHash_92
                                              (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))))
                          (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_body_122 (coe v3)))
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_from_20
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_TxWitnesses'46'constructor_829
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7)) (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_vkSigs_2418
                                              (coe v4))))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txdats_2422
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Interface.Functor.du_map_30
                                        MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                        erased () erased
                                        (\ v5 ->
                                           coe
                                             MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44 ()
                                             erased () erased
                                             (coe MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                             (coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        (coe
                                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                                           (coe
                                                              (\ v7 ->
                                                                 case coe v7 of
                                                                   MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                                                   MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                                                   MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                                                   MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                                                   MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                                                   MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                                                     -> coe
                                                                          MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                                                   _ -> MAlonzo.RTE.mazUnreachableError))
                                                           (coe (\ v7 v8 -> v8)) (coe v6))))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                        () erased () erased
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                        (coe
                                                           MAlonzo.Code.Data.Product.Base.du_map_104
                                                           (coe
                                                              (\ v8 ->
                                                                 coe
                                                                   MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                           (coe
                                                              (\ v8 v9 ->
                                                                 coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   (coe
                                                                      MAlonzo.Code.Data.Product.Base.du_map_104
                                                                      (coe (\ v10 -> v10))
                                                                      (coe (\ v10 v11 -> v11))
                                                                      (coe v9))))
                                                           (coe v7))))
                                                (coe v5)))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2424
                                              (coe v4))))))
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Ledger.Transaction.C_TxWitnesses'46'constructor_15485
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe (\ v6 -> v6)) (coe (\ v6 v7 -> v7))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_vkSigs_106
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8709'_424
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45''8868'_28)
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txdats_110
                                              (coe v4))))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_496
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                           (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Tag_18)
                                           (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
                                        (coe
                                           MAlonzo.Code.Interface.Functor.du_map_30
                                           MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 ()
                                           erased () erased
                                           (\ v5 ->
                                              coe
                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                (coe
                                                   (\ v6 ->
                                                      coe
                                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                                        (coe
                                                           (\ v7 ->
                                                              case coe v7 of
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Spend_42
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Spend_6
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Mint_44
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Mint_8
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Cert_46
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Cert_10
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Rewrd_48
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Rewrd_12
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Vote_50
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Vote_14
                                                                MAlonzo.Code.Ledger.Foreign.LedgerTypes.C_Propose_52
                                                                  -> coe
                                                                       MAlonzo.Code.Ledger.Transaction.C_Propose_16
                                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                                        (coe (\ v7 v8 -> v8))
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                           v6)))
                                                (coe
                                                   (\ v6 v7 ->
                                                      coe
                                                        MAlonzo.Code.Data.Product.Base.du_map_104
                                                        (coe
                                                           (\ v8 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                                        (coe
                                                           (\ v8 v9 ->
                                                              coe
                                                                MAlonzo.Code.Data.Product.Base.du_map_104
                                                                (coe (\ v10 -> v10))
                                                                (coe (\ v10 v11 -> v11))
                                                                (coe
                                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                                   () erased () erased
                                                                   (coe
                                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                                   v9)))
                                                        (coe
                                                           MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                           () erased () erased
                                                           (coe
                                                              MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                           v7)))
                                                (coe
                                                   MAlonzo.Code.Foreign.Haskell.Coerce.d_coerce_44
                                                   () erased () erased
                                                   (coe
                                                      MAlonzo.Code.Foreign.Haskell.Coerce.C_TrustMe_40)
                                                   v5))
                                           (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txrdmrs_112
                                              (coe v4)))))))
                          (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_wits_124 (coe v3)))
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_from_20
                          (coe
                             MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_56
                             (coe MAlonzo.Code.Interface.Functor.d_Functor'45'Maybe_162)
                             (coe
                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                                (coe (\ v4 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
                          (MAlonzo.Code.Ledger.Foreign.LedgerTypes.d_txAD_126 (coe v3))))))
            v2))
-- Vote
d_Vote_3293 = ()
