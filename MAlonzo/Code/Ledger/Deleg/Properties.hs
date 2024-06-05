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
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Semigroup.Instances
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
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Deleg.Properties._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__628 a0 a1 a2 a3 a4
  = ()
-- Ledger.Deleg.Properties._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__630 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.Deleg.T_CertEnv_666 ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 ->
  [MAlonzo.Code.Ledger.Deleg.T_DCert_634] ->
  MAlonzo.Code.Ledger.Deleg.T_CertState_726 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__630 = erased
-- Ledger.Deleg.Properties._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__632 a0 a1 a2 a3 a4 = ()
-- Ledger.Deleg.Properties._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__634 a0 a1 a2 a3 a4 = ()
-- Ledger.Deleg.Properties._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__636 a0 a1 a2 a3 a4 = ()
-- Ledger.Deleg.Properties._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__638 a0 a1 a2 a3 a4 = ()
-- Ledger.Deleg.Properties._.DelegEnv
d_DelegEnv_660 a0 = ()
-- Ledger.Deleg.Properties._.completeness
d_completeness_810 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_810 = erased
-- Ledger.Deleg.Properties._.computeProof
d_computeProof_816 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_816 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Deleg.Properties.Computational-DELEG
d_Computational'45'DELEG_828 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_828 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7496''7497'_752 v2 v3
             -> coe
                  (\ v4 ->
                     case coe v4 of
                       MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_700 v5 v6 v7
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
                                      MAlonzo.Code.Ledger.Deleg.C_delegate_636 v10 v11 v12 v13
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
                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                 MAlonzo.Code.Ledger.PParams.d_keyDeposit_298
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
                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                             (coe v0))))))
                                                              (coe v12)
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.du__'8746'__662
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1430
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
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
                                                                       (coe v3)))
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))) in
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
                                                                           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_700
                                                                           (let v18
                                                                                  = coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                    erased v18)
                                                                                 (coe v10) (coe v11)
                                                                                 (coe v5)))
                                                                           (let v18
                                                                                  = coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                    erased v18)
                                                                                 (coe v10) (coe v12)
                                                                                 (coe v6)))
                                                                           (let v18
                                                                                  = coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                           MAlonzo.Code.Ledger.Deleg.C_DELEG'45'delegate_890
                                                                           v17))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v16)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (let v17
                                                                        = coe
                                                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
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
                                                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                    (coe
                                                                                                       v0))))
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                 (coe
                                                                                                    v0)))))
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
                                                                                     MAlonzo.Code.Ledger.PParams.d_keyDeposit_298
                                                                                     (coe v2))))
                                                                            erased in
                                                                  coe
                                                                    (case coe v17 of
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v18
                                                                         -> coe
                                                                              ("\172\n((z\n  : (_16 gs pp pools voteDelegs stakeDelegs rwds c mv mc d\n     Interface.IsSet.IsSet.\8713 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 .Ledger.PParams.PParams.keyDeposit pp)"
                                                                               ::
                                                                               Data.Text.Text)
                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v18
                                                                         -> let v19
                                                                                  = coe
                                                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
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
                                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                           (coe
                                                                                                              v0))))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                        (coe
                                                                                                           v0)))))
                                                                                            (coe
                                                                                               v10)
                                                                                            (coe
                                                                                               MAlonzo.Code.Interface.IsSet.du_dom_492
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                                                               (coe
                                                                                                  v7)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                                            (coe
                                                                                               MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                                                                                            (coe
                                                                                               v13)
                                                                                            (coe
                                                                                               (0 ::
                                                                                                  Integer))))
                                                                                      erased in
                                                                            coe
                                                                              (case coe v19 of
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v20
                                                                                   -> coe
                                                                                        ("\172\n((z\n  : (_29 gs pp pools voteDelegs stakeDelegs rwds c mv mc d\n     Interface.IsSet.IsSet.\8712 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 0)"
                                                                                         ::
                                                                                         Data.Text.Text)
                                                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v20
                                                                                   -> coe
                                                                                        ("\172\n(_39 gs pp pools voteDelegs stakeDelegs rwds c mv mc d\n Interface.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) pools))\n (Interface.HasSingleton.HasSingleton.\10100\n  _51 gs pp pools voteDelegs stakeDelegs rwds c mv mc d \10101\n  nothing))"
                                                                                         ::
                                                                                         Data.Text.Text)
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Deleg.C_dereg_638 v10
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
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                  -> if coe v12
                                                       then case coe v13 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                                -> coe
                                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                     (coe
                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_700
                                                                           (let v15
                                                                                  = coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                    erased v15)
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
                                                                           (let v15
                                                                                  = coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                    erased v15)
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
                                                                           (let v15
                                                                                  = coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                    erased v15)
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
                                                                           MAlonzo.Code.Ledger.Deleg.C_DELEG'45'dereg_892
                                                                           v14))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v13)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("\172\n(_476 gs pp pools voteDelegs stakeDelegs rwds c\n Interface.IsSet.IsSet.\8712 (c , 0))\nrwds"
                                                                     ::
                                                                     Data.Text.Text)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      _ -> coe v9))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Properties.Computational-POOL
d_Computational'45'POOL_892 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_892 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 ->
         case coe v2 of
           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7510'_712 v3 v4
             -> coe
                  (\ v5 ->
                     let v6
                           = coe
                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                               (coe ("Unexpected certificate in POOL" :: Data.Text.Text)) in
                     coe
                       (case coe v5 of
                          MAlonzo.Code.Ledger.Deleg.C_regpool_640 v7 v8
                            -> let v9
                                     = coe
                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_62
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
                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                  (coe
                                                     MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                     (coe v0))))
                                            v7
                                            (coe
                                               MAlonzo.Code.Interface.IsSet.du_dom_492
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                                  (coe
                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                               (coe
                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                               (coe v3))) in
                               coe
                                 (case coe v9 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                      -> if coe v10
                                           then coe
                                                  seq (coe v11)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                     (coe
                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                        (coe
                                                           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7510'_712
                                                           (let v12
                                                                  = coe
                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                               (coe v0))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                           MAlonzo.Code.Ledger.Deleg.C_POOL'45'regpool_896)))
                                           else coe
                                                  seq (coe v11)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                     (coe
                                                        ("\172\n(\172\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712 c)\n (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) pools))"
                                                         ::
                                                         Data.Text.Text)))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          MAlonzo.Code.Ledger.Deleg.C_retirepool_642 v7 v8
                            -> coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                 (coe
                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                    (coe
                                       MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7510'_712
                                       (coe v3)
                                       (let v9
                                              = coe
                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                        (coe
                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                     (coe
                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                    (coe MAlonzo.Code.Ledger.Deleg.C_POOL'45'retirepool_898))
                          _ -> coe v6))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Properties.Computational-GOVCERT
d_Computational'45'GOVCERT_918 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_918 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'44'_'10215''7580'_684 v2 v3 v4 v5
             -> coe
                  (\ v6 ->
                     case coe v6 of
                       MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7515'_724 v7 v8
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
                                      MAlonzo.Code.Ledger.Deleg.C_regdrep_644 v11 v12 v13
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
                                                                 MAlonzo.Code.Ledger.PParams.d_drepDeposit_328
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
                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                (coe v0))))
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                             (coe v0))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7515'_724
                                                                           (let v18
                                                                                  = coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_430
                                                                                                (coe
                                                                                                   v0)))
                                                                                          v2
                                                                                          (let v19
                                                                                                 = coe
                                                                                                     MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_16005
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
                                                                                             (MAlonzo.Code.Ledger.PParams.d_drepActivity_330
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'pp_15985
                                                                                                   v19))))))
                                                                                 (coe v7)))
                                                                           (coe v8))
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Deleg.C_GOVCERT'45'regdrep_962
                                                                           v17))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v16)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("\172\n(d \8801 .Ledger.PParams.PParams.drepDeposit pp \215\n (_815 gs epoch\8321 pp votes wdrls dReps ccHotKeys c d x\n  Interface.IsSet.IsSet.\8713 c)\n (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps)\n \8846\n d \8801 0 \215\n (_826 gs epoch\8321 pp votes wdrls dReps ccHotKeys c d x\n  Interface.IsSet.IsSet.\8712 c)\n (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps))"
                                                                     ::
                                                                     Data.Text.Text)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Deleg.C_deregdrep_646 v11
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
                                                                 MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                           (coe
                                                              MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7515'_724
                                                                           (let v16
                                                                                  = coe
                                                                                      MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                           MAlonzo.Code.Ledger.Deleg.C_GOVCERT'45'deregdrep_964
                                                                           v15))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712 c)\n(Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) dReps)"
                                                                     ::
                                                                     Data.Text.Text)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      MAlonzo.Code.Ledger.Deleg.C_ccreghot_648 v11 v12
                                        -> let v13
                                                 = coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_62
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
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                       (coe v0))))))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v11)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                           (coe v8))) in
                                           coe
                                             (case coe v13 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                                  -> if coe v14
                                                       then coe
                                                              seq (coe v15)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                 (coe
                                                                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7515'_724
                                                                       (coe v7)
                                                                       (let v16
                                                                              = coe
                                                                                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                           (coe
                                                                                              v0))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                       MAlonzo.Code.Ledger.Deleg.C_GOVCERT'45'ccreghot_966)))
                                                       else coe
                                                              seq (coe v15)
                                                              (coe
                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                 (coe
                                                                    ("\172\n(\172\n (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8712\n  (c , nothing))\n ((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Map.\738) ccKeys))"
                                                                     ::
                                                                     Data.Text.Text)))
                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                      _ -> coe v10))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Properties.Computational-CERT
d_Computational'45'CERT_1108 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_1108 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'44'_'10215''7580'_684 v2 v3 v4 v5
             -> coe
                  (\ v6 ->
                     case coe v6 of
                       MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_740 v7 v8 v9
                         -> coe
                              (\ v10 ->
                                 let v11
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                           (d_Computational'45'POOL_892 (coe v0)) v3 v8 v10 in
                                 coe
                                   (let v12
                                          = coe
                                              MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
                                              (d_Computational'45'GOVCERT_918 (coe v0)) v1 v9 v10 in
                                    coe
                                      (let v13 = MAlonzo.Code.Ledger.Deleg.d_pools_708 (coe v8) in
                                       coe
                                         (let v14
                                                = MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                    (coe v7) in
                                          coe
                                            (let v15
                                                   = MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_696
                                                       (coe v7) in
                                             coe
                                               (let v16
                                                      = MAlonzo.Code.Ledger.Deleg.d_rewards_698
                                                          (coe v7) in
                                                coe
                                                  (case coe v10 of
                                                     MAlonzo.Code.Ledger.Deleg.C_delegate_636 v17 v18 v19 v20
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
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                MAlonzo.Code.Ledger.PParams.d_keyDeposit_298
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
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                               (coe
                                                                                                  v0))))
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                            (coe
                                                                                               v0))))))
                                                                             (coe v19)
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.du__'8746'__662
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
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
                                                                                      (coe v13)))
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                   erased
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))))) in
                                                          coe
                                                            (case coe v21 of
                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v22 v23
                                                                 -> if coe v22
                                                                      then case coe v23 of
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v24
                                                                               -> let v25
                                                                                        = coe
                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_700
                                                                                               (let v25
                                                                                                      = coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                               MAlonzo.Code.Ledger.Deleg.C_DELEG'45'delegate_890
                                                                                               v24) in
                                                                                  coe
                                                                                    (case coe v25 of
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                         -> coe
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_740
                                                                                                    (coe
                                                                                                       v26)
                                                                                                    (coe
                                                                                                       v8)
                                                                                                    (coe
                                                                                                       v9))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Deleg.C_CERT'45'deleg_970
                                                                                                    v27))
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      else (let v24
                                                                                  = seq
                                                                                      (coe v23)
                                                                                      (coe
                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                         (let v24
                                                                                                = coe
                                                                                                    MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
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
                                                                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                                            (coe
                                                                                                                               v0))))
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                                         (coe
                                                                                                                            v0)))))
                                                                                                             (coe
                                                                                                                v17)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Interface.IsSet.du_dom_492
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                                                                                (coe
                                                                                                                   v16)))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8869'_18))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                                                                                                          (coe
                                                                                                             v20)
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.PParams.d_keyDeposit_298
                                                                                                             (coe
                                                                                                                v3))))
                                                                                                    erased in
                                                                                          coe
                                                                                            (case coe
                                                                                                    v24 of
                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v25
                                                                                                 -> coe
                                                                                                      ("\172\n((z\n  : (_16 gs pp pools voteDelegs stakeDelegs rwds c mv mc d\n     Interface.IsSet.IsSet.\8713 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 .Ledger.PParams.PParams.keyDeposit pp)"
                                                                                                       ::
                                                                                                       Data.Text.Text)
                                                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v25
                                                                                                 -> let v26
                                                                                                          = coe
                                                                                                              MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
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
                                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                                                   (coe
                                                                                                                                      v0))))
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                                                (coe
                                                                                                                                   v0)))))
                                                                                                                    (coe
                                                                                                                       v17)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Interface.IsSet.du_dom_492
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                                                                                       (coe
                                                                                                                          v16)))
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)
                                                                                                                    (coe
                                                                                                                       v20)
                                                                                                                    (coe
                                                                                                                       (0 ::
                                                                                                                          Integer))))
                                                                                                              erased in
                                                                                                    coe
                                                                                                      (case coe
                                                                                                              v26 of
                                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v27
                                                                                                           -> coe
                                                                                                                ("\172\n((z\n  : (_29 gs pp pools voteDelegs stakeDelegs rwds c mv mc d\n     Interface.IsSet.IsSet.\8712 c)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) rwds)) \8594\n d \8801 0)"
                                                                                                                 ::
                                                                                                                 Data.Text.Text)
                                                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v27
                                                                                                           -> coe
                                                                                                                ("\172\n(_39 gs pp pools voteDelegs stakeDelegs rwds c mv mc d\n Interface.IsSet.IsSet.\8712 mc)\n((.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8746\n  Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496) just\n  (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) pools))\n (Interface.HasSingleton.HasSingleton.\10100\n  _51 gs pp pools voteDelegs stakeDelegs rwds c mv mc d \10101\n  nothing))"
                                                                                                                 ::
                                                                                                                 Data.Text.Text)
                                                                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError))) in
                                                                            coe
                                                                              (case coe v24 of
                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v25
                                                                                   -> case coe
                                                                                             v25 of
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                          -> coe
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                               (coe
                                                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_740
                                                                                                     (coe
                                                                                                        v26)
                                                                                                     (coe
                                                                                                        v8)
                                                                                                     (coe
                                                                                                        v9))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Deleg.C_CERT'45'deleg_970
                                                                                                     v27))
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v25
                                                                                   -> case coe
                                                                                             v11 of
                                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v26
                                                                                          -> case coe
                                                                                                    v26 of
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_740
                                                                                                            (coe
                                                                                                               v7)
                                                                                                            (coe
                                                                                                               v27)
                                                                                                            (coe
                                                                                                               v9))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Deleg.C_CERT'45'pool_972
                                                                                                            v28))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v26
                                                                                          -> case coe
                                                                                                    v12 of
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v27
                                                                                                 -> case coe
                                                                                                           v27 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                                        -> coe
                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_740
                                                                                                                   (coe
                                                                                                                      v7)
                                                                                                                   (coe
                                                                                                                      v8)
                                                                                                                   (coe
                                                                                                                      v28))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Deleg.C_CERT'45'vdel_974
                                                                                                                   v29))
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v27
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                         MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                         ("DELEG: "
                                                                                                          ::
                                                                                                          Data.Text.Text)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                            MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                            v25
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                               MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                               ("\nPOOL: "
                                                                                                                ::
                                                                                                                Data.Text.Text)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                  MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                  v26
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                     MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                     ("\nVDEL: "
                                                                                                                      ::
                                                                                                                      Data.Text.Text)
                                                                                                                     v27)))))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError))
                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                     MAlonzo.Code.Ledger.Deleg.C_dereg_638 v17
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
                                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                 -> if coe v19
                                                                      then case coe v20 of
                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v21
                                                                               -> let v22
                                                                                        = coe
                                                                                            MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                            (coe
                                                                                               MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_700
                                                                                               (let v22
                                                                                                      = coe
                                                                                                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                                                   MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                                                   (coe
                                                                                                                      v0))))
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                                               MAlonzo.Code.Ledger.Deleg.C_DELEG'45'dereg_892
                                                                                               v21) in
                                                                                  coe
                                                                                    (case coe v22 of
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                         -> coe
                                                                                              MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                              (coe
                                                                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_740
                                                                                                    (coe
                                                                                                       v23)
                                                                                                    (coe
                                                                                                       v8)
                                                                                                    (coe
                                                                                                       v9))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Deleg.C_CERT'45'deleg_970
                                                                                                    v24))
                                                                                       _ -> MAlonzo.RTE.mazUnreachableError)
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      else (let v21
                                                                                  = seq
                                                                                      (coe v20)
                                                                                      (coe
                                                                                         MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                         (coe
                                                                                            ("\172\n(_476 gs pp pools voteDelegs stakeDelegs rwds c\n Interface.IsSet.IsSet.\8712 (c , 0))\nrwds"
                                                                                             ::
                                                                                             Data.Text.Text))) in
                                                                            coe
                                                                              (case coe v21 of
                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v22
                                                                                   -> case coe
                                                                                             v22 of
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v23 v24
                                                                                          -> coe
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                               (coe
                                                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_740
                                                                                                     (coe
                                                                                                        v23)
                                                                                                     (coe
                                                                                                        v8)
                                                                                                     (coe
                                                                                                        v9))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Ledger.Deleg.C_CERT'45'deleg_970
                                                                                                     v24))
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v22
                                                                                   -> case coe
                                                                                             v11 of
                                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v23
                                                                                          -> case coe
                                                                                                    v23 of
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_740
                                                                                                            (coe
                                                                                                               v7)
                                                                                                            (coe
                                                                                                               v24)
                                                                                                            (coe
                                                                                                               v9))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Deleg.C_CERT'45'pool_972
                                                                                                            v25))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v23
                                                                                          -> case coe
                                                                                                    v12 of
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v24
                                                                                                 -> case coe
                                                                                                           v24 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                                        -> coe
                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_740
                                                                                                                   (coe
                                                                                                                      v7)
                                                                                                                   (coe
                                                                                                                      v8)
                                                                                                                   (coe
                                                                                                                      v25))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Ledger.Deleg.C_CERT'45'vdel_974
                                                                                                                   v26))
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v24
                                                                                                 -> coe
                                                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                         MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                         ("DELEG: "
                                                                                                          ::
                                                                                                          Data.Text.Text)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                            MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                            v22
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                               MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                               ("\nPOOL: "
                                                                                                                ::
                                                                                                                Data.Text.Text)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                  MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                  v23
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                                                     MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                                                     ("\nVDEL: "
                                                                                                                      ::
                                                                                                                      Data.Text.Text)
                                                                                                                     v24)))))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError))
                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                     _ -> let v17
                                                                = "Unexpected certificate in DELEG"
                                                                  ::
                                                                  Data.Text.Text in
                                                          coe
                                                            (case coe v11 of
                                                               MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v18
                                                                 -> case coe v18 of
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                        -> coe
                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                             (coe
                                                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_740
                                                                                   (coe v7)
                                                                                   (coe v19)
                                                                                   (coe v9))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Deleg.C_CERT'45'pool_972
                                                                                   v20))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v18
                                                                 -> case coe v12 of
                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v19
                                                                        -> case coe v19 of
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                               -> coe
                                                                                    MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_740
                                                                                          (coe v7)
                                                                                          (coe v8)
                                                                                          (coe v20))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Deleg.C_CERT'45'vdel_974
                                                                                          v21))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v19
                                                                        -> coe
                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                             (coe
                                                                                MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                ("DELEG: "
                                                                                 ::
                                                                                 Data.Text.Text)
                                                                                (coe
                                                                                   MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                   MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                   v17
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                      MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                      ("\nPOOL: "
                                                                                       ::
                                                                                       Data.Text.Text)
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                         MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                         v18
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.Semigroup.Core.du__'60''62'__18
                                                                                            MAlonzo.Code.Class.Semigroup.Instances.d_Semigroup'45'String_20
                                                                                            ("\nVDEL: "
                                                                                             ::
                                                                                             Data.Text.Text)
                                                                                            v19)))))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               _ -> MAlonzo.RTE.mazUnreachableError))))))))
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Properties.Computational-CERTBASE
d_Computational'45'CERTBASE_1498 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_1498 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'44'_'10215''7580'_684 v2 v3 v4 v5
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
                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                   (coe
                                                      MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                              MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Deleg.d_dState_734
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
                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                      (coe
                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                                                 (coe
                                                                    MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))))
                                                        (coe v9)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Ledger.Deleg.d_rewards_698
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Deleg.d_dState_734
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
                                                     MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7580''738'_740
                                                     (coe
                                                        MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_700
                                                        (let v12
                                                               = coe
                                                                   MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_22093
                                                                   (coe v3)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.d_gState_738
                                                                      (coe v6))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_700
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                  (coe v6))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                  (coe v6)))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_696
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                            (coe v6)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Deleg.d_rewards_698
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                            (coe v6))))
                                                                   (coe v4) (coe v2) (coe v5)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.d_pState_736
                                                                      (coe v6)) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'st'7496'_22081
                                                                 v12)))
                                                        (let v12
                                                               = coe
                                                                   MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_22093
                                                                   (coe v3)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.d_gState_738
                                                                      (coe v6))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_700
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                  (coe v6))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                  (coe v6)))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_696
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                            (coe v6)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Deleg.d_rewards_698
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                            (coe v6))))
                                                                   (coe v4) (coe v2) (coe v5)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.d_pState_736
                                                                      (coe v6)) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_696
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'st'7496'_22081
                                                                 v12)))
                                                        (let v12
                                                               = coe
                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                         MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_22093
                                                                         (coe v3)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_gState_738
                                                                            (coe v6))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_700
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                        (coe v6))))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                        (coe v6)))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_696
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                  (coe v6)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_rewards_698
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                  (coe v6))))
                                                                         (coe v4) (coe v2) (coe v5)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_pState_736
                                                                            (coe v6)) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Deleg.d_rewards_698
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'st'7496'_22081
                                                                       v13))))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Deleg.d_pState_736
                                                        (coe v6))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'10215''7515'_724
                                                        (let v12
                                                               = coe
                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
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
                                                                               MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_430
                                                                               (coe v0)))
                                                                         v2
                                                                         (let v13
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_22093
                                                                                    (coe v3)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Deleg.d_gState_738
                                                                                       (coe v6))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_700
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                                   (coe
                                                                                                      v6))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                                   (coe
                                                                                                      v6)))))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_696
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                             (coe
                                                                                                v6)))
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Deleg.d_rewards_698
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                             (coe
                                                                                                v6))))
                                                                                    (coe v4)
                                                                                    (coe v2)
                                                                                    (coe v5)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Deleg.d_pState_736
                                                                                       (coe v6)) in
                                                                          coe
                                                                            (MAlonzo.Code.Ledger.PParams.d_drepActivity_330
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'pp_22077
                                                                                  v13))) in
                                                               coe (coe (\ v14 -> v13)))
                                                              (let v13
                                                                     = coe
                                                                         MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_22093
                                                                         (coe v3)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_gState_738
                                                                            (coe v6))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_700
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                        (coe v6))))
                                                                               (coe
                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                        (coe v6)))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_696
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                  (coe v6)))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_rewards_698
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                  (coe v6))))
                                                                         (coe v4) (coe v2) (coe v5)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_pState_736
                                                                            (coe v6)) in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Deleg.d_dreps_720
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'st'7501'_22079
                                                                       v13)))
                                                              (let v13
                                                                     = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                               coe
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.du_mapPartial_558
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                       (coe v13))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Deleg.du_getDRepVote_824)
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
                                                                   MAlonzo.Code.Ledger.Deleg.C_mkGeneralizeTel_22093
                                                                   (coe v3)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.d_gState_738
                                                                      (coe v6))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.C_'10214'_'44'_'44'_'10215''7496'_700
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                  (coe v6))))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                  (coe v6)))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Deleg.d_stakeDelegs_696
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                            (coe v6)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Deleg.d_rewards_698
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                            (coe v6))))
                                                                   (coe v4) (coe v2) (coe v5)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Deleg.d_pState_736
                                                                      (coe v6)) in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Ledger.Deleg.d_ccHotKeys_722
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Deleg.d_'46'generalizedField'45'st'7501'_22079
                                                                 v12)))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Deleg.C_CERT'45'base_1058
                                                     v11))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 else coe
                                        seq (coe v10)
                                        (coe
                                           MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                           (let v11
                                                  = coe
                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_36
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                         (coe
                                                            (\ v11 ->
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
                                                                             MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                             (coe v0))))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                          (coe v0))))
                                                                 erased
                                                                 (coe
                                                                    MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                    (coe
                                                                       (\ v12 ->
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
                                                                                           MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                           (coe
                                                                                              v0))))
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Types.GovStructure.d_crypto_388
                                                                                        (coe v0)))))
                                                                            (coe v12)
                                                                            (coe
                                                                               MAlonzo.Code.Interface.IsSet.du_dom_492
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                               (coe
                                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                                                     (coe v6)))))))
                                                                 v11))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.du_map_380
                                                            (MAlonzo.Code.Axiom.Set.d_th_1430
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                            (\ v11 ->
                                                               MAlonzo.Code.Ledger.Address.d_stake_66
                                                                 (coe v11))
                                                            (coe
                                                               MAlonzo.Code.Interface.IsSet.du_dom_492
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1430
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                               (coe
                                                                  MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_500)
                                                               (coe v5))))
                                                      erased in
                                            coe
                                              (case coe v11 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                   -> coe
                                                        ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8838\n Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n (\955 r \8594 .Ledger.Address.RwdAddr.stake r)\n (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) wdrls))\n(Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496)\n (.Ledger.Deleg.DState.voteDelegs\n  (.Ledger.Deleg.CertState.dState st)))"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                   -> coe
                                                        ("\172\n(.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8838\n Axiom.Set.Theory.map (.Axiom.Set.Theory\7496.th List-Model\7496)\n (Bifunctor.map\8321 (_1464 gs e pp vs wdrls st sig)\n  (\955 r \8594 .Ledger.Address.RwdAddr.stake r))\n (.proj\8321 wdrls))\n(.proj\8321\n (.Ledger.Deleg.DState.rewards (.Ledger.Deleg.CertState.dState st)))"
                                                         ::
                                                         Data.Text.Text)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)))
                          _ -> MAlonzo.RTE.mazUnreachableError))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Properties.Computational-CERTS
d_Computational'45'CERTS_1630 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_1630 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_762
      (coe d_Computational'45'CERTBASE_1498 (coe v0))
      (coe d_Computational'45'CERT_1108 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77373
         (coe (\ v1 -> v1)))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77373
         (coe (\ v1 -> v1)))
