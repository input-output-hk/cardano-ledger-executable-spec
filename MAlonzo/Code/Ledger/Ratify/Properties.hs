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

module MAlonzo.Code.Ledger.Ratify.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.GovernanceActions.Properties
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Ratify.Properties._.Computational-ENACT
d_Computational'45'ENACT_1472 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'ENACT_1472 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.Properties.d_Computational'45'ENACT_716
      (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))
-- Ledger.Ratify.Properties._.EnactEnv
d_EnactEnv_1492 a0 = ()
-- Ledger.Ratify.Properties._._⊢_⇀⦇_,RATIFY'⦈_
d__'8866'_'8640''10631'_'44'RATIFY'''10632'__1546 a0 a1 a2 a3 a4
  = ()
-- Ledger.Ratify.Properties._._⊢_⇀⦇_,RATIFY⦈_
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1548 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 -> ()
d__'8866'_'8640''10631'_'44'RATIFY'10632'__1548 = erased
-- Ledger.Ratify.Properties._.RatifyState
d_RatifyState_1566 a0 = ()
-- Ledger.Ratify.Properties.Implementation.es'
d_es''_1746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_es''_1746 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_compute_274
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.Properties.d_Computational'45'ENACT_716
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Enact.C_'10214'_'44'_'44'_'10215''7497'_644
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
         (coe MAlonzo.Code.Ledger.Ratify.d_treasury_1656 (coe v1))
         (coe MAlonzo.Code.Ledger.Ratify.d_currentEpoch_1650 (coe v1)))
      (coe MAlonzo.Code.Ledger.Ratify.d_es_1666 (coe v2))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_action_612
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
-- Ledger.Ratify.Properties.Implementation.acc?
d_acc'63'_1748 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_acc'63'_1748 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Ratify.d_accepted'63'_2174 (coe v0) (coe v1)
      (coe MAlonzo.Code.Ledger.Ratify.d_es_1666 (coe v2))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
-- Ledger.Ratify.Properties.Implementation.exp?
d_exp'63'_1750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_exp'63'_1750 v0 v1 ~v2 v3 = du_exp'63'_1750 v0 v1 v3
du_exp'63'_1750 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_exp'63'_1750 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Ratify.d_expired'63'_2188 (coe v0)
      (coe MAlonzo.Code.Ledger.Ratify.d_currentEpoch_1650 (coe v1))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))
-- Ledger.Ratify.Properties.Implementation.del?
d_del'63'_1752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_del'63'_1752 v0 ~v1 v2 v3 = du_del'63'_1752 v0 v2 v3
du_del'63'_1752 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_del'63'_1752 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Ratify.d_delayed'63'_2136 (coe v0)
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_action_612
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_614
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2)))
      (coe MAlonzo.Code.Ledger.Ratify.d_es_1666 (coe v1))
      (coe MAlonzo.Code.Ledger.Ratify.d_delay_1670 (coe v1))
-- Ledger.Ratify.Properties.Implementation.RATIFY'-total
d_RATIFY'''45'total_1756 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFY'''45'total_1756 v0 v1 v2 v3
  = let v4
          = MAlonzo.Code.Ledger.Ratify.d_accepted'63'_2174
              (coe v0) (coe v1)
              (coe MAlonzo.Code.Ledger.Ratify.d_es_1666 (coe v2))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)) in
    coe
      (let v5
             = MAlonzo.Code.Ledger.Ratify.d_expired'63'_2188
                 (coe v0)
                 (coe MAlonzo.Code.Ledger.Ratify.d_currentEpoch_1650 (coe v1))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)) in
       coe
         (let v6
                = MAlonzo.Code.Ledger.Ratify.d_delayed'63'_2136
                    (coe v0)
                    (coe
                       MAlonzo.Code.Ledger.GovernanceActions.d_action_612
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                    (coe
                       MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_614
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                    (coe MAlonzo.Code.Ledger.Ratify.d_es_1666 (coe v2))
                    (coe MAlonzo.Code.Ledger.Ratify.d_delay_1670 (coe v2)) in
          coe
            (case coe v4 of
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                 -> if coe v7
                      then case coe v8 of
                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                               -> case coe v6 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                      -> if coe v10
                                           then case coe v11 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                                    -> coe
                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                         (coe v2)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Ratify.C_RATIFY'45'Continue_2280
                                                            (coe
                                                               MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe v9)
                                                                  (coe
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                     (coe v12)))))
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else coe
                                                  seq (coe v11)
                                                  (coe
                                                     MAlonzo.Code.Interface.ComputationalRelation.du_caseCR_'8739'_'8739'__72
                                                     (coe
                                                        d_es''_1746 (coe v0) (coe v1) (coe v2)
                                                        (coe v3))
                                                     (coe
                                                        (\ v12 v13 ->
                                                           coe
                                                             MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1672
                                                                (coe v12)
                                                                (let v14
                                                                       = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du__'8746'__662
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                                                         (coe v14))
                                                                      (coe
                                                                         MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_300
                                                                         (coe
                                                                            MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_304
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1430
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                         v3)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                                                         (coe v2))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Ratify.du_delayingAction_2062
                                                                   (let v14
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Ratify.C_mkGeneralizeTel_102705
                                                                              (coe v1) (coe v3)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Ratify.d_es_1666
                                                                                 (coe v2))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Ratify.d_delay_1670
                                                                                 (coe v2))
                                                                              (coe v12)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                                                                 (coe v2)) in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.GovernanceActions.d_action_612
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_'46'generalizedField'45'a_102693
                                                                               v14))))))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ratify.C_RATIFY'45'Accept_2234
                                                                v9
                                                                (coe
                                                                   MAlonzo.Code.Function.Bundles.d_to_1724
                                                                   (coe
                                                                      MAlonzo.Code.Interface.ComputationalRelation.du_'8801''45'success'8660'STS_300
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.GovernanceActions.Properties.d_Computational'45'ENACT_716
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Transaction.d_govStructure_1946
                                                                            (coe v0)))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Enact.C_'10214'_'44'_'44'_'10215''7497'_644
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v3))
                                                                         (let v14
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Ratify.C_mkGeneralizeTel_102705
                                                                                    (coe v1)
                                                                                    (coe v3)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_1666
                                                                                       (coe v2))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Ratify.d_delay_1670
                                                                                       (coe v2))
                                                                                    (coe v12)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                                                                       (coe v2)) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_treasury_1656
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Ratify.d_'46'generalizedField'45'Γ_102691
                                                                                  v14)))
                                                                         (let v14
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Ratify.C_mkGeneralizeTel_102705
                                                                                    (coe v1)
                                                                                    (coe v3)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Ratify.d_es_1666
                                                                                       (coe v2))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Ratify.d_delay_1670
                                                                                       (coe v2))
                                                                                    (coe v12)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                                                                       (coe v2)) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Ratify.d_currentEpoch_1650
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Ratify.d_'46'generalizedField'45'Γ_102691
                                                                                  v14))))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Ratify.d_es_1666
                                                                         (coe v2))
                                                                      (let v14
                                                                             = coe
                                                                                 MAlonzo.Code.Ledger.Ratify.C_mkGeneralizeTel_102705
                                                                                 (coe v1) (coe v3)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Ratify.d_es_1666
                                                                                    (coe v2))
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Ratify.d_delay_1670
                                                                                    (coe v2))
                                                                                 (coe v12)
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                                                                    (coe v2)) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.GovernanceActions.d_action_612
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Ratify.d_'46'generalizedField'45'a_102693
                                                                                  v14))))
                                                                      (coe v12))
                                                                   v13))))
                                                     (coe
                                                        (\ v12 ->
                                                           coe
                                                             MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                             (coe v2)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ratify.C_RATIFY'45'Continue_2280
                                                                (coe
                                                                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v9)
                                                                      (coe
                                                                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                         erased)))))))
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             _ -> MAlonzo.RTE.mazUnreachableError
                      else coe
                             seq (coe v8)
                             (case coe v5 of
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                                  -> if coe v9
                                       then case coe v10 of
                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                                -> coe
                                                     MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                     (coe
                                                        MAlonzo.Code.Ledger.Ratify.C_'10214'_'44'_'44'_'10215''691'_1672
                                                        (coe
                                                           MAlonzo.Code.Ledger.Ratify.d_es_1666
                                                           (coe v2))
                                                        (let v12
                                                               = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                         coe
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.du__'8746'__662
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                                 (coe v12))
                                                              (coe
                                                                 MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_300
                                                                 (coe
                                                                    MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Set_304
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1430
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                 v3)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Ratify.d_removed_1668
                                                                 (coe v2))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Ratify.d_delay_1670
                                                           (coe v2)))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Ratify.C_RATIFY'45'Reject_2250
                                                        v11)
                                              _ -> MAlonzo.RTE.mazUnreachableError
                                       else coe
                                              seq (coe v10)
                                              (coe
                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                 (coe v2)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ratify.C_RATIFY'45'Continue_2280
                                                    (coe
                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          erased erased))))
                                _ -> MAlonzo.RTE.mazUnreachableError)
               _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Ratify.Properties.Implementation.computeProof
d_computeProof_1782 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1782 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_success_42
      (coe d_RATIFY'''45'total_1756 (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Ratify.Properties.Implementation.RATIFY'-completeness
d_RATIFY'''45'completeness_1786 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  MAlonzo.Code.Ledger.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2206 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFY'''45'completeness_1786 = erased
-- Ledger.Ratify.Properties.Implementation.completeness
d_completeness_1888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  MAlonzo.Code.Ledger.Ratify.T__'8866'_'8640''10631'_'44'RATIFY'''10632'__2206 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1888 = erased
-- Ledger.Ratify.Properties.Computational-RATIFY'
d_Computational'45'RATIFY''_1890 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY''_1890 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1782 (coe v0))
-- Ledger.Ratify.Properties.Computational-RATIFY
d_Computational'45'RATIFY_1892 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'RATIFY_1892 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7495'_762
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_726)
      (coe d_Computational'45'RATIFY''_1890 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77263
         (coe (\ v1 -> MAlonzo.RTE.mazUnreachableError)))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77263
         (coe (\ v1 -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Ratify.Properties.RATIFY-total
d_RATIFY'45'total_1902 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RATIFY'45'total_1902 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Interface.STS.du_ReflexiveTransitiveClosure'45'total_126
      (coe
         (\ v4 v5 v6 ->
            d_RATIFY'''45'total_1756 (coe v0) (coe v4) (coe v5) (coe v6)))
      (coe v1) (coe v2) (coe v3)
-- Ledger.Ratify.Properties.RATIFY-complete
d_RATIFY'45'complete_1912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyEnv_1636 ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Ratify.T_RatifyState_1658 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_RATIFY'45'complete_1912 = erased
