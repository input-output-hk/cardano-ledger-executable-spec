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

module MAlonzo.Code.Ledger.Deleg.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Deleg.Properties._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__626 a0 a1 a2 a3 a4
  = ()
-- Ledger.Deleg.Properties._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__628 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_664 ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_724 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_632] ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_724 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__628 = erased
-- Ledger.Deleg.Properties._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__630 a0 a1 a2 a3 a4 = ()
-- Ledger.Deleg.Properties._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__632 a0 a1 a2 a3 a4 = ()
-- Ledger.Deleg.Properties._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__634 a0 a1 a2 a3 a4 = ()
-- Ledger.Deleg.Properties._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__636 a0 a1 a2 a3 a4 = ()
-- Ledger.Deleg.Properties._.DelegEnv
d_DelegEnv_658 a0 = ()
-- Ledger.Deleg.Properties._.completeness
d_completeness_808 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_808 = erased
-- Ledger.Deleg.Properties._.computeProof
d_computeProof_814 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_814 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Deleg.Properties.Computational-DELEG
d_Computational'45'DELEG_826 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_826 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7496''7497'_750 v2 v3
             -> coe
                  (\ v4 ->
                     case coe v4 of
                       MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_698 v5 v6 v7
                         -> coe
                              (\ v8 ->
                                 let v9
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (coe
                                              ("Unexpected certificate in DELEG"
                                               ::
                                               Data.Text.Text)) in
                                 coe
                                   (case coe v8 of
                                      MAlonzo.Code.Ledger.Deleg.C_delegate_634 v10 v11 v12 v13
                                        -> let v14
                                                 = coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                             (coe v0)))))
                                                                 (coe v10)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_dom_492
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                                    (coe v7)))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                              (coe
                                                                 MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                                                              (coe v13)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.PParams.d_poolDeposit_298
                                                                 (coe v2))))
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                             (coe v0)))))
                                                                 (coe v10)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_dom_492
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                                    (coe v7)))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                 (coe
                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                                                                 (coe v13) (coe (0 :: Integer))))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                    (coe
                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                             (coe v0))))))
                                                              (coe v12)
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du_map_380
                                                                 (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_dom_492
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                                    (coe v3)))))) in
                                           coe
                                             (case coe v14 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                  -> let v17
                                                           = coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                               (coe
                                                                  ("Failed in DELEG at delegate"
                                                                   ::
                                                                   Data.Text.Text)) in
                                                     coe
                                                       (case coe v15 of
                                                          MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                            -> case coe v16 of
                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v18
                                                                   -> coe
                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_698
                                                                              (let v19
                                                                                     = coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                  (coe
                                                                                                     v0))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                               (coe
                                                                                                  v0))) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_862
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                       erased v19)
                                                                                    (coe v10)
                                                                                    (coe v11)
                                                                                    (coe v5)))
                                                                              (let v19
                                                                                     = coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                  (coe
                                                                                                     v0))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                               (coe
                                                                                                  v0))) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_862
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                       erased v19)
                                                                                    (coe v10)
                                                                                    (coe v12)
                                                                                    (coe v6)))
                                                                              (let v19
                                                                                     = coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                  (coe
                                                                                                     v0))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                               (coe
                                                                                                  v0))) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                       erased v19)
                                                                                    (coe v7)
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_304
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe v10)
                                                                                          (coe
                                                                                             (0 ::
                                                                                                Integer)))))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Deleg.C_DELEG'45'delegate_886
                                                                              v18))
                                                                 _ -> coe v17
                                                          _ -> coe v17)
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Deleg.C_dereg_636 v10
                                        -> let v11
                                                 = coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                 (coe
                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v10) (coe (0 :: Integer)))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                           (coe v7))) in
                                           coe
                                             (case coe v11 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                                  -> let v14
                                                           = coe
                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                               (coe
                                                                  ("Failed in DELEG at (c , 0) \8712 rwds"
                                                                   ::
                                                                   Data.Text.Text)) in
                                                     coe
                                                       (case coe v12 of
                                                          MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                            -> case coe v13 of
                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v15
                                                                   -> coe
                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                        (coe
                                                                           MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_698
                                                                              (let v16
                                                                                     = coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                  (coe
                                                                                                     v0))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                               (coe
                                                                                                  v0))) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                       erased v16)
                                                                                    (coe v5)
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_298
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                       v10)))
                                                                              (let v16
                                                                                     = coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                  (coe
                                                                                                     v0))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                               (coe
                                                                                                  v0))) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                       erased v16)
                                                                                    (coe v6)
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_298
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                       v10)))
                                                                              (let v16
                                                                                     = coe
                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                               (coe
                                                                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                  (coe
                                                                                                     v0))))
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                               (coe
                                                                                                  v0))) in
                                                                               coe
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                       erased v16)
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                                          (coe v7))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v7)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_298
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                       v10))))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Deleg.C_DELEG'45'dereg_888
                                                                              v15))
                                                                 _ -> coe v14
                                                          _ -> coe v14)
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      _ -> coe v9))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Properties.Computational-POOL
d_Computational'45'POOL_886 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_886 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 ->
         case coe v2 of
           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7510'_710 v3 v4
             -> coe
                  (\ v5 ->
                     let v6
                           = coe
                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                               (coe ("Failed in POOL" :: Data.Text.Text)) in
                     coe
                       (case coe v5 of
                          MAlonzo.Code.Ledger.Deleg.C_regpool_638 v7 v8
                            -> let v9
                                     = coe
                                         MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                         erased
                                         (coe
                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                     (coe v0))))
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                               (coe
                                                  MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                  (coe v0))))
                                         v7
                                         (coe
                                            MAlonzo.Code.Interface.IsSet.du_dom_492
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1430
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                            (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                            (coe v3)) in
                               coe
                                 (case coe v9 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                      -> if coe v10
                                           then coe
                                                  seq (coe v11)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                     (coe
                                                        ("Pool already registered"
                                                         ::
                                                         Data.Text.Text)))
                                           else coe
                                                  seq (coe v11)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                     (coe
                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7510'_710
                                                           (let v12
                                                                  = coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                            (coe v0))) in
                                                            coe
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased v12)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                    (coe
                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_304
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1430
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe v7) (coe v8)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                       (coe v3))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe v3)))))
                                                           (coe v4))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Deleg.C_POOL'45'regpool_892)))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Deleg.C_retirepool_640 v7 v8
                            -> coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                    (coe
                                       MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7510'_710
                                       (coe v3)
                                       (let v9
                                              = coe
                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                     (coe
                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                        (coe v0))) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                (coe
                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                erased v9)
                                             (coe
                                                MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                (coe
                                                   MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_304
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                      (coe
                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v7) (coe v8)))
                                             (coe v4))))
                                    (coe MAlonzo.Code.Ledger.Deleg.C_POOL'45'retirepool_894))
                          _ -> coe v6))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Properties.Computational-GOVCERT
d_Computational'45'GOVCERT_910 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_910 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'44'_'10215''7580'_682 v2 v3 v4 v5
             -> coe
                  (\ v6 ->
                     case coe v6 of
                       MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7515'_722 v7 v8
                         -> coe
                              (\ v9 ->
                                 let v10
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (coe
                                              ("Unexpected certificate in GOVCERT"
                                               ::
                                               Data.Text.Text)) in
                                 coe
                                   (case coe v9 of
                                      MAlonzo.Code.Ledger.Deleg.C_regdrep_642 v11 v12 v13
                                        -> let v14
                                                 = coe
                                                     MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                     (coe
                                                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                              (coe
                                                                 MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                                                              (coe v12)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.PParams.d_drepDeposit_324
                                                                 (coe v3)))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                             (coe v0)))))
                                                                 (coe v11)
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_dom_492
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                                    (coe v7)))
                                                              (coe
                                                                 MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18)))
                                                        (coe
                                                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                              (coe
                                                                 MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                                                              (coe v12) (coe (0 :: Integer)))
                                                           (coe
                                                              MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                             (coe v0))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                          (coe v0)))))
                                                              (coe v11)
                                                              (coe
                                                                 MAlonzo.Code.Interface.IsSet.du_dom_492
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 (coe
                                                                    MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                                 (coe v7))))) in
                                           coe
                                             (case coe v14 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                  -> if coe v15
                                                       then case coe v16 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v17
                                                                -> coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7515'_722
                                                                           (let v18
                                                                                  = coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                            (coe
                                                                                               v0))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v18)
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_304
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                       (coe v11)
                                                                                       (coe
                                                                                          MAlonzo.Code.Interface.HasAdd.d__'43'__12
                                                                                          (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_428
                                                                                                (coe
                                                                                                   v0)))
                                                                                          v2
                                                                                          (let v19
                                                                                                 = coe
                                                                                                     MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_15687
                                                                                                     (coe
                                                                                                        v3)
                                                                                                     (coe
                                                                                                        v12)
                                                                                                     (coe
                                                                                                        v11)
                                                                                                     (coe
                                                                                                        v7)
                                                                                                     (coe
                                                                                                        v2)
                                                                                                     (coe
                                                                                                        v4)
                                                                                                     (coe
                                                                                                        v5)
                                                                                                     (coe
                                                                                                        v8)
                                                                                                     (coe
                                                                                                        v13) in
                                                                                           coe
                                                                                             (MAlonzo.Code.Ledger.PParams.d_drepActivity_326
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'pp_15667
                                                                                                   v19))))))
                                                                                 (coe v7)))
                                                                           (coe v8))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Deleg.C_GOVCERT'45'regdrep_956
                                                                           v17))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v16)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("GOVCERT failed at (d \8801 drepDeposit \215 c \8713 dom dReps) \8846 (d \8801 0 \215 c \8712 dom dReps)"
                                                                     ::
                                                                     Data.Text.Text)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Deleg.C_deregdrep_644 v11
                                        -> let v12
                                                 = coe
                                                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                              (coe v0))))
                                                     v11
                                                     (coe
                                                        MAlonzo.Code.Interface.IsSet.du_dom_492
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1430
                                                           (coe
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                        (coe
                                                           MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                        (coe v7)) in
                                           coe
                                             (case coe v12 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                  -> if coe v13
                                                       then case coe v14 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v15
                                                                -> coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7515'_722
                                                                           (let v16
                                                                                  = coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                            (coe
                                                                                               v0))) in
                                                                            coe
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                    erased v16)
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                    (coe
                                                                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                                       (coe v7))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v7)))
                                                                                 (coe
                                                                                    MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                                    (coe
                                                                                       MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_298
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                    v11)))
                                                                           (coe v8))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Deleg.C_GOVCERT'45'deregdrep_958
                                                                           v15))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("GOVCERT failed at (c \8712? dom dReps)"
                                                                     ::
                                                                     Data.Text.Text)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Deleg.C_ccreghot_646 v11 v12
                                        -> let v13
                                                 = coe
                                                     MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                    (coe v0))))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe v11)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                        (coe v8)) in
                                           coe
                                             (case coe v13 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                                  -> if coe v14
                                                       then coe
                                                              seq (coe v15)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("GOVCERT failed at (c , nothing) \8712? (ccKeys \738)"
                                                                     ::
                                                                     Data.Text.Text)))
                                                       else coe
                                                              seq (coe v15)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                 (coe
                                                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7515'_722
                                                                       (coe v7)
                                                                       (let v16
                                                                              = coe
                                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                           (coe
                                                                                              v0))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                        (coe
                                                                                           v0))) in
                                                                        coe
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                erased v16)
                                                                             (coe
                                                                                MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_304
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                   (coe v11)
                                                                                   (coe v12)))
                                                                             (coe v8))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Deleg.C_GOVCERT'45'ccreghot_960)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      _ -> coe v10))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Properties.Computational-CERT
d_Computational'45'CERT_1090 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_1090 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'44'_'10215''7580'_682 v2 v3 v4 v5
             -> coe
                  (\ v6 ->
                     case coe v6 of
                       MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738 v7 v8 v9
                         -> coe
                              (\ v10 ->
                                 let v11
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                           (d_Computational'45'POOL_886 (coe v0)) v3 v8 v10 in
                                 coe
                                   (let v12
                                          = coe
                                              MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                              (d_Computational'45'GOVCERT_910 (coe v0)) v1 v9 v10 in
                                    coe
                                      (let v13 = MAlonzo.Code.Ledger.Deleg.d_pools_706 (coe v8) in
                                       coe
                                         (let v14
                                                = MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                    (coe v7) in
                                          coe
                                            (let v15
                                                   = MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_694
                                                       (coe v7) in
                                             coe
                                               (let v16
                                                      = MAlonzo.Code.Ledger.Deleg.d_rewards_696
                                                          (coe v7) in
                                                coe
                                                  (case coe v10 of
                                                     MAlonzo.Code.Ledger.Deleg.C_delegate_634 v17 v18 v19 v20
                                                       -> let v21
                                                                = coe
                                                                    MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                    (coe
                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                       (coe
                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                   erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                            (coe
                                                                                               v0)))))
                                                                                (coe v17)
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.IsSet.du_dom_492
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   (coe
                                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                                                   (coe v16)))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                             (coe
                                                                                MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                                                                             (coe v20)
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.PParams.d_poolDeposit_298
                                                                                (coe v3))))
                                                                       (coe
                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                   erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                            (coe
                                                                                               v0)))))
                                                                                (coe v17)
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.IsSet.du_dom_492
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   (coe
                                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                                                   (coe v16)))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                                (coe
                                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                                                                                (coe v20)
                                                                                (coe
                                                                                   (0 :: Integer))))
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                erased
                                                                                (coe
                                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                            (coe
                                                                                               v0))))))
                                                                             (coe v19)
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.du_map_380
                                                                                (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
                                                                                (coe
                                                                                   MAlonzo.Code.Interface.IsSet.du_dom_492
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   (coe
                                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                                                   (coe v13)))))) in
                                                          coe
                                                            (case coe v21 of
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v22 v23
                                                                 -> case coe v22 of
                                                                      MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                        -> case coe v23 of
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v24
                                                                               -> let v25
                                                                                        = coe
                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_698
                                                                                               (let v25
                                                                                                      = coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                                (coe
                                                                                                                   v0))) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_862
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v25)
                                                                                                     (coe
                                                                                                        v17)
                                                                                                     (coe
                                                                                                        v18)
                                                                                                     (coe
                                                                                                        v14)))
                                                                                               (let v25
                                                                                                      = coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                                (coe
                                                                                                                   v0))) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_862
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v25)
                                                                                                     (coe
                                                                                                        v17)
                                                                                                     (coe
                                                                                                        v19)
                                                                                                     (coe
                                                                                                        v15)))
                                                                                               (let v25
                                                                                                      = coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                                (coe
                                                                                                                   v0))) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v25)
                                                                                                     (coe
                                                                                                        v16)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_304
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                           (coe
                                                                                                              v17)
                                                                                                           (coe
                                                                                                              (0 ::
                                                                                                                 Integer)))))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Deleg.C_DELEG'45'delegate_886
                                                                                               v24) in
                                                                                  coe
                                                                                    (case coe v25 of
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                         -> coe
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738
                                                                                                    (coe
                                                                                                       v26)
                                                                                                    (coe
                                                                                                       v8)
                                                                                                    (coe
                                                                                                       v9))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Deleg.C_CERT'45'deleg_964
                                                                                                    v27))
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             _ -> case coe v11 of
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v24
                                                                                      -> case coe
                                                                                                v24 of
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                             -> coe
                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738
                                                                                                        (coe
                                                                                                           v7)
                                                                                                        (coe
                                                                                                           v25)
                                                                                                        (coe
                                                                                                           v9))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Deleg.C_CERT'45'pool_966
                                                                                                        v26))
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v24
                                                                                      -> case coe
                                                                                                v12 of
                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v25
                                                                                             -> case coe
                                                                                                       v25 of
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738
                                                                                                               (coe
                                                                                                                  v7)
                                                                                                               (coe
                                                                                                                  v8)
                                                                                                               (coe
                                                                                                                  v26))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Deleg.C_CERT'45'vdel_968
                                                                                                               v27))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v25
                                                                                             -> coe
                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                  (coe
                                                                                                     ("Failed at CERT"
                                                                                                      ::
                                                                                                      Data.Text.Text))
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                      _ -> case coe v11 of
                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v24
                                                                               -> case coe v24 of
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                      -> coe
                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738
                                                                                                 (coe
                                                                                                    v7)
                                                                                                 (coe
                                                                                                    v25)
                                                                                                 (coe
                                                                                                    v9))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Deleg.C_CERT'45'pool_966
                                                                                                 v26))
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v24
                                                                               -> case coe v12 of
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v25
                                                                                      -> case coe
                                                                                                v25 of
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                             -> coe
                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738
                                                                                                        (coe
                                                                                                           v7)
                                                                                                        (coe
                                                                                                           v8)
                                                                                                        (coe
                                                                                                           v26))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Deleg.C_CERT'45'vdel_968
                                                                                                        v27))
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v25
                                                                                      -> coe
                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                           (coe
                                                                                              ("Failed at CERT"
                                                                                               ::
                                                                                               Data.Text.Text))
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                     MAlonzo.Code.Ledger.Deleg.C_dereg_636 v17
                                                       -> let v18
                                                                = coe
                                                                    MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                    (coe
                                                                       MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                          erased
                                                                          (coe
                                                                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                             (coe
                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                      (coe v0))))
                                                                             (coe
                                                                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                                (coe
                                                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                          (coe v17)
                                                                          (coe (0 :: Integer)))
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                          (coe v16))) in
                                                          coe
                                                            (case coe v18 of
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                                 -> case coe v19 of
                                                                      MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                                        -> case coe v20 of
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v21
                                                                               -> let v22
                                                                                        = coe
                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_698
                                                                                               (let v22
                                                                                                      = coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                                (coe
                                                                                                                   v0))) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v22)
                                                                                                     (coe
                                                                                                        v14)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_298
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                        v17)))
                                                                                               (let v22
                                                                                                      = coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                                (coe
                                                                                                                   v0))) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v22)
                                                                                                     (coe
                                                                                                        v15)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_298
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                        v17)))
                                                                                               (let v22
                                                                                                      = coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                                                                (coe
                                                                                                                   v0))) in
                                                                                                coe
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1198
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                        erased
                                                                                                        v22)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                                                           (coe
                                                                                                              v16))
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                           (coe
                                                                                                              v16)))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_298
                                                                                                           (coe
                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                              (coe
                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                        v17))))
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Deleg.C_DELEG'45'dereg_888
                                                                                               v21) in
                                                                                  coe
                                                                                    (case coe v22 of
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                         -> coe
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738
                                                                                                    (coe
                                                                                                       v23)
                                                                                                    (coe
                                                                                                       v8)
                                                                                                    (coe
                                                                                                       v9))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Deleg.C_CERT'45'deleg_964
                                                                                                    v24))
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             _ -> case coe v11 of
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v21
                                                                                      -> case coe
                                                                                                v21 of
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                                             -> coe
                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738
                                                                                                        (coe
                                                                                                           v7)
                                                                                                        (coe
                                                                                                           v22)
                                                                                                        (coe
                                                                                                           v9))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Deleg.C_CERT'45'pool_966
                                                                                                        v23))
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v21
                                                                                      -> case coe
                                                                                                v12 of
                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v22
                                                                                             -> case coe
                                                                                                       v22 of
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                                    -> coe
                                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738
                                                                                                               (coe
                                                                                                                  v7)
                                                                                                               (coe
                                                                                                                  v8)
                                                                                                               (coe
                                                                                                                  v23))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.Deleg.C_CERT'45'vdel_968
                                                                                                               v24))
                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v22
                                                                                             -> coe
                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                  (coe
                                                                                                     ("Failed at CERT"
                                                                                                      ::
                                                                                                      Data.Text.Text))
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                      _ -> case coe v11 of
                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v21
                                                                               -> case coe v21 of
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                                      -> coe
                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                           (coe
                                                                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738
                                                                                                 (coe
                                                                                                    v7)
                                                                                                 (coe
                                                                                                    v22)
                                                                                                 (coe
                                                                                                    v9))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Deleg.C_CERT'45'pool_966
                                                                                                 v23))
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v21
                                                                               -> case coe v12 of
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v22
                                                                                      -> case coe
                                                                                                v22 of
                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                             -> coe
                                                                                                  MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738
                                                                                                        (coe
                                                                                                           v7)
                                                                                                        (coe
                                                                                                           v8)
                                                                                                        (coe
                                                                                                           v23))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Deleg.C_CERT'45'vdel_968
                                                                                                        v24))
                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v22
                                                                                      -> coe
                                                                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                           (coe
                                                                                              ("Failed at CERT"
                                                                                               ::
                                                                                               Data.Text.Text))
                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                     _ -> case coe v11 of
                                                            MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v17
                                                              -> case coe v17 of
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                     -> coe
                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                          (coe
                                                                             MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738
                                                                                (coe v7) (coe v18)
                                                                                (coe v9))
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Deleg.C_CERT'45'pool_966
                                                                                v19))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v17
                                                              -> case coe v12 of
                                                                   MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v18
                                                                     -> case coe v18 of
                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                            -> coe
                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738
                                                                                       (coe v7)
                                                                                       (coe v8)
                                                                                       (coe v19))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Deleg.C_CERT'45'vdel_968
                                                                                       v20))
                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                   MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v18
                                                                     -> coe
                                                                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                          (coe
                                                                             ("Failed at CERT"
                                                                              ::
                                                                              Data.Text.Text))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            _ -> MAlonzo.RTE.mazUnreachableError)))))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Properties.Computational-CERTBASE
d_Computational'45'CERTBASE_1474 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_1474 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'44'_'10215''7580'_682 v2 v3 v4 v5
             -> coe
                  (\ v6 v7 ->
                     let v8
                           = coe
                               MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                               (coe
                                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                  (coe
                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                     (coe
                                        (\ v8 ->
                                           coe
                                             MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                             erased
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                   (coe
                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                      (coe v0))))
                                             erased
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                (coe
                                                   (\ v9 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                    (coe v0)))))
                                                        (coe v9)
                                                        (coe
                                                           MAlonzo.Code.Interface.IsSet.du_dom_492
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                           (coe
                                                              MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                 (coe v6)))))))
                                             v8))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_map_380
                                        (MAlonzo.Code.Axiom.Set.d_th_1430
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (\ v8 -> MAlonzo.Code.Ledger.Address.d_stake_66 (coe v8))
                                        (coe
                                           MAlonzo.Code.Interface.IsSet.du_dom_492
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                              (coe
                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                           (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                           (coe v5))))
                                  (coe
                                     MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                     (coe
                                        (\ v8 ->
                                           coe
                                             MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                             erased
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                      (coe
                                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                         (coe
                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                                             erased
                                             (coe
                                                MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                (coe
                                                   (\ v9 ->
                                                      coe
                                                        MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                 (coe
                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))))
                                                        (coe v9)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Ledger.Deleg.d_rewards_696
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                 (coe v6)))))))
                                             v8))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_map_380
                                        (MAlonzo.Code.Axiom.Set.d_th_1430
                                           (coe
                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                        (coe
                                           MAlonzo.Code.Class.Bifunctor.du_map'8321'_110
                                           (coe
                                              MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45''215'_152)
                                           (coe
                                              (\ v8 ->
                                                 MAlonzo.Code.Ledger.Address.d_stake_66 (coe v8))))
                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))))) in
                     coe
                       (case coe v8 of
                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                            -> if coe v9
                                 then case coe v10 of
                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                          -> coe
                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                  (coe
                                                     MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_738
                                                     (coe
                                                        MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_698
                                                        (let v12
                                                               = coe
                                                                   MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_21767
                                                                   (coe v3)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.d_gState_736
                                                                      (coe v6))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_698
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                  (coe v6))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                  (coe v6)))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_694
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                            (coe v6)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Deleg.d_rewards_696
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                            (coe v6))))
                                                                   (coe v4) (coe v2) (coe v5)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.d_pState_734
                                                                      (coe v6)) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'st'7496'_21755
                                                                 v12)))
                                                        (let v12
                                                               = coe
                                                                   MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_21767
                                                                   (coe v3)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.d_gState_736
                                                                      (coe v6))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_698
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                  (coe v6))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                  (coe v6)))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_694
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                            (coe v6)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Deleg.d_rewards_696
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                            (coe v6))))
                                                                   (coe v4) (coe v2) (coe v5)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.d_pState_734
                                                                      (coe v6)) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_694
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'st'7496'_21755
                                                                 v12)))
                                                        (let v12
                                                               = coe
                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                         (coe v0))) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__832
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                 erased v12)
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du_constMap_1060
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                 (let v13
                                                                        = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                  coe
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_map_380
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                          (coe v13))
                                                                       (\ v14 ->
                                                                          MAlonzo.Code.Ledger.Address.d_stake_66
                                                                            (coe v14))
                                                                       (coe
                                                                          MAlonzo.Code.Interface.IsSet.du_dom_492
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                                             (coe
                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                          (coe
                                                                             MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                                          (coe v5))))
                                                                 (coe (0 :: Integer)))
                                                              (let v13
                                                                     = coe
                                                                         MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_21767
                                                                         (coe v3)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_gState_736
                                                                            (coe v6))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_698
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                        (coe v6))))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                        (coe v6)))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_694
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                  (coe v6)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_rewards_696
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                  (coe v6))))
                                                                         (coe v4) (coe v2) (coe v5)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_pState_734
                                                                            (coe v6)) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Deleg.d_rewards_696
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'st'7496'_21755
                                                                       v13))))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Deleg.d_pState_734
                                                        (coe v6))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7515'_722
                                                        (let v12
                                                               = coe
                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_386
                                                                         (coe v0))) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1210
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                 erased v12)
                                                              (let v13
                                                                     = coe
                                                                         MAlonzo.Code.Interface.HasAdd.d__'43'__12
                                                                         (MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_428
                                                                               (coe v0)))
                                                                         v2
                                                                         (let v13
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_21767
                                                                                    (coe v3)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Deleg.d_gState_736
                                                                                       (coe v6))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_698
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                                   (coe
                                                                                                      v6))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                                   (coe
                                                                                                      v6)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_694
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                             (coe
                                                                                                v6)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Deleg.d_rewards_696
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                             (coe
                                                                                                v6))))
                                                                                    (coe v4)
                                                                                    (coe v2)
                                                                                    (coe v5)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Deleg.d_pState_734
                                                                                       (coe v6)) in
                                                                          coe
                                                                            (MAlonzo.Code.Ledger.PParams.d_drepActivity_326
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'pp_21751
                                                                                  v13))) in
                                                               coe (coe (\ v14 -> v13)))
                                                              (let v13
                                                                     = coe
                                                                         MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_21767
                                                                         (coe v3)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_gState_736
                                                                            (coe v6))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_698
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                        (coe v6))))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                        (coe v6)))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_694
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                  (coe v6)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_rewards_696
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                  (coe v6))))
                                                                         (coe v4) (coe v2) (coe v5)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_pState_734
                                                                            (coe v6)) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Deleg.d_dreps_718
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'st'7501'_21753
                                                                       v13)))
                                                              (let v13
                                                                     = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_mapPartial_558
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                       (coe v13))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Deleg.du_getDRepVote_822)
                                                                    (let v14
                                                                           = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                     coe
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.du_fromList_410
                                                                          (coe
                                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                                             (coe v14))
                                                                          (coe v4)))))))
                                                        (let v12
                                                               = coe
                                                                   MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_21767
                                                                   (coe v3)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.d_gState_736
                                                                      (coe v6))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_698
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                  (coe v6))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_voteDelegs_692
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                                  (coe v6)))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_694
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                            (coe v6)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Deleg.d_rewards_696
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_dState_732
                                                                            (coe v6))))
                                                                   (coe v4) (coe v2) (coe v5)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.d_pState_734
                                                                      (coe v6)) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Ledger.Deleg.d_ccHotKeys_720
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'st'7501'_21753
                                                                 v12)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Deleg.C_CERT'45'base_1050
                                                     v11))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 else coe
                                        seq (coe v10)
                                        (coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (coe
                                              ("CERTBASE Failed at (map\738 RwdAddr.stake (dom wdrls) \8838 dom voteDelegs \215 wdrls \738 \8838 rewards \738)"
                                               ::
                                               Data.Text.Text)))
                          _ -> MAlonzo.RTE.mazUnreachableError))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Properties.Computational-CERTS
d_Computational'45'CERTS_1604 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_1604 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_734
      (coe d_Computational'45'CERTBASE_1474 (coe v0))
      (coe d_Computational'45'CERT_1090 (coe v0))