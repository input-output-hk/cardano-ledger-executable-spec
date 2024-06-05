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

module MAlonzo.Code.Ledger.Gov.Properties where

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
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Gov
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _.PParams
d_PParams_150 a0 = ()
-- _.preoEpoch
d_preoEpoch_292 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_292 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2114 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_514
            (coe v1)))
-- _.pvCanFollow
d_pvCanFollow_296 a0 a1 a2 = ()
-- Ledger.Gov.Properties._.getHash
d_getHash_588 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_594 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_588 ~v0 = du_getHash_588
du_getHash_588 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_594 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_588 = coe MAlonzo.Code.Ledger.Enact.du_getHash_758
-- Ledger.Gov.Properties._.getHashES
d_getHashES_590 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_730 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_590 ~v0 = du_getHashES_590
du_getHashES_590 ::
  MAlonzo.Code.Ledger.Enact.T_EnactState_730 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_590 = coe MAlonzo.Code.Ledger.Enact.du_getHashES_770
-- Ledger.Gov.Properties._._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__634 a0 a1 a2 a3 a4 = ()
-- Ledger.Gov.Properties._._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__636 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Gov.T_GovEnv_902 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__636 = erased
-- Ledger.Gov.Properties._.GovState
d_GovState_648 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovState_648 = erased
-- Ledger.Gov.Properties._.allEnactable
d_allEnactable_658 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_730 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_658 = erased
-- Ledger.Gov.Properties._.enactable
d_enactable_668 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_730 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_668 = erased
-- Ledger.Gov.Properties._.getAidPairsList
d_getAidPairsList_672 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_672 ~v0 = du_getAidPairsList_672
du_getAidPairsList_672 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_672
  = coe MAlonzo.Code.Ledger.Gov.du_getAidPairsList_1024
-- Ledger.Gov.Properties._.hasParent'
d_hasParent''_678 a0 a1 a2 a3 a4 = ()
-- Ledger.Gov.Properties._.validHFAction
d_validHFAction_690 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_652 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_730 -> ()
d_validHFAction_690 = erased
-- Ledger.Gov.Properties._.GovAction
d_GovAction_744 a0 = ()
-- Ledger.Gov.Properties._.GovActionID
d_GovActionID_746 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_746 = erased
-- Ledger.Gov.Properties._.GovProposal
d_GovProposal_750 a0 = ()
-- Ledger.Gov.Properties._.GovRole
d_GovRole_752 a0 = ()
-- Ledger.Gov.Properties._.GovVote
d_GovVote_754 a0 = ()
-- Ledger.Gov.Properties._.canVote
d_canVote_920 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_594 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_564 -> ()
d_canVote_920 = erased
-- Ledger.Gov.Properties.lookupActionId
d_lookupActionId_1016 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_564 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupActionId_1016 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
              (coe
                 MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                       (coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          (coe
                             MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1076 (coe v0)))
                       (coe (\ v5 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                    (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                    (coe
                       MAlonzo.Code.Data.Maybe.Relation.Unary.Any.du_dec_136
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                          (coe
                             (\ v5 ->
                                MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20))))
                    (coe
                       MAlonzo.Code.Ledger.Ratify.d_threshold_1586 v0 v1
                       (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                       (MAlonzo.Code.Ledger.GovernanceActions.d_action_696
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                       v2)))))
-- Ledger.Gov.Properties.isNewCommittee
d_isNewCommittee_1034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isNewCommittee_1034 ~v0 v1 = du_isNewCommittee_1034 v1
du_isNewCommittee_1034 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isNewCommittee_1034 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_596
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_598 v1 v2 v3
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) erased))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_600 v1 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_602 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_604 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_606 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_608
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.needsPolicy₁
d_needsPolicy'8321'_1056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_594 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_needsPolicy'8321'_1056 ~v0 v1 = du_needsPolicy'8321'_1056 v1
du_needsPolicy'8321'_1056 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_594 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_needsPolicy'8321'_1056 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_596
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_598 v1 v2 v3
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_600 v1 v2
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_602 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_604 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe
                      MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v1) erased)))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_606 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_608
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.needsPolicy₂
d_needsPolicy'8322'_1078 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_594 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_needsPolicy'8322'_1078 ~v0 v1 = du_needsPolicy'8322'_1078 v1
du_needsPolicy'8322'_1078 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_594 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_needsPolicy'8322'_1078 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_596
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_598 v1 v2 v3
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_600 v1 v2
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_602 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_604 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_606 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe
                      MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v1) erased)))
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_608
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.hasPrev
d_hasPrev_1102 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_678 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasPrev_1102 ~v0 v1 v2 = du_hasPrev_1102 v1 v2
du_hasPrev_1102 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_678 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_hasPrev_1102 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4171 v2 v3 v4 v5 v6
        -> case coe v5 of
             MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_596
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_598 v7 v8 v9
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_600 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_602 v7
               -> let v8
                        = coe
                            MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1062 (coe v7)
                            (coe v1) in
                  coe
                    (case coe v8 of
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
                         -> if coe v9
                              then case coe v10 of
                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v11
                                       -> coe
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                            (coe v9)
                                            (coe
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     erased (coe v11))))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              else coe
                                     seq (coe v10)
                                     (coe
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                        (coe v9)
                                        (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_604 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_606 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Ledger.GovernanceActions.C_Info_608
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.validHFAction?
d_validHFAction'63'_1136 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_652 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_730 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_validHFAction'63'_1136 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovProposal'46'constructor_3925 v4 v5 v6 v7 v8 v9
        -> case coe v4 of
             MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_596
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_598 v10 v11 v12
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_600 v10 v11
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_602 v10
               -> case coe v3 of
                    MAlonzo.Code.Ledger.Enact.C_EnactState'46'constructor_1313 v11 v12 v13 v14 v15
                      -> case coe v13 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                             -> let v18
                                      = coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                          (coe
                                             MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (coe
                                                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1076
                                                   (coe v0)))
                                             (coe
                                                (\ v18 ->
                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                             (coe v17) (coe v5))
                                          (coe
                                             MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1062
                                             (coe v16) (coe v10)) in
                                coe
                                  (let v19
                                         = coe
                                             MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                                             (coe
                                                (\ v19 ->
                                                   coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                                     (coe
                                                        MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                                                        (coe
                                                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                           (coe
                                                              MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1076
                                                              (coe v0)))
                                                        (coe
                                                           (\ v20 ->
                                                              MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v19))
                                                        (coe v5))
                                                     (coe
                                                        du_hasPrev_1102
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                           (coe v19))
                                                        (coe v10))))
                                             (coe v2) in
                                   coe
                                     (case coe v18 of
                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                          -> if coe v20
                                               then case coe v21 of
                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v22
                                                        -> coe
                                                             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                             (coe
                                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                (coe v20)
                                                                (coe
                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                   (coe
                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                      (coe v22))))
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               else coe
                                                      seq (coe v21)
                                                      (case coe v19 of
                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v22 v23
                                                           -> if coe v22
                                                                then case coe v23 of
                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v24
                                                                         -> let v25
                                                                                  = coe
                                                                                      MAlonzo.Code.Data.List.Membership.Setoid.du_find_84
                                                                                      (coe
                                                                                         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
                                                                                      (coe v2)
                                                                                      (coe v24) in
                                                                            coe
                                                                              (case coe v25 of
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v26 v27
                                                                                   -> case coe
                                                                                             v26 of
                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v28 v29
                                                                                          -> case coe
                                                                                                    v27 of
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v30 v31
                                                                                                 -> case coe
                                                                                                           v31 of
                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v32 v33
                                                                                                        -> case coe
                                                                                                                  v33 of
                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v34 v35
                                                                                                               -> coe
                                                                                                                    MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                       (coe
                                                                                                                          v22)
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                (coe
                                                                                                                                   v29)
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                   (coe
                                                                                                                                      v34)
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Function.Bundles.d_to_1724
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                            (coe
                                                                                                                                               v2)
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                               (coe
                                                                                                                                                  v5)
                                                                                                                                               (coe
                                                                                                                                                  v29)))
                                                                                                                                         v30)
                                                                                                                                      (coe
                                                                                                                                         v35)))))))
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                else coe
                                                                       seq (coe v23)
                                                                       (coe
                                                                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                                                                          (coe
                                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                             (coe v22)
                                                                             (coe
                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                        _ -> MAlonzo.RTE.mazUnreachableError))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_604 v10
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_606 v10
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             MAlonzo.Code.Ledger.GovernanceActions.C_Info_608
               -> coe MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties.Computational-GOV'
d_Computational'45'GOV''_1224 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV''_1224 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (d_computeProof_1536 (coe v0))
-- Ledger.Gov.Properties._.Go.GoVote.computeProof
d_computeProof_1264 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_634 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1264 v0 v1 v2 v3
  = let v4
          = coe
              d_lookupActionId_1016 v0
              (MAlonzo.Code.Ledger.Gov.d_pparams_918
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_646 (coe v3)))
              (MAlonzo.Code.Ledger.GovernanceActions.d_gid_644 (coe v3)) v2 in
    coe
      (case coe v4 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
           -> if coe v5
                then case coe v6 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                         -> let v8
                                  = coe
                                      MAlonzo.Code.Function.Bundles.d_from_1974
                                      (coe
                                         MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core.du_Any'8596'_134
                                         (coe v2))
                                      v7 in
                            coe
                              (case coe v8 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                   -> case coe v10 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                          -> case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                 -> case coe v3 of
                                                      MAlonzo.Code.Ledger.GovernanceActions.C_GovVote'46'constructor_3639 v15 v16 v17 v18
                                                        -> coe
                                                             MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Data.List.Base.du_map_22
                                                                   (coe
                                                                      (\ v19 ->
                                                                         coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v19))
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4171
                                                                              (let v20
                                                                                     = coe
                                                                                         MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                         (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1076
                                                                                            (coe
                                                                                               v0))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  v19)))
                                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  v9))) in
                                                                               coe
                                                                                 (let v21
                                                                                        = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  v19)) in
                                                                                  coe
                                                                                    (let v22
                                                                                           = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                  (coe
                                                                                                     v9)) in
                                                                                     coe
                                                                                       (case coe
                                                                                               v20 of
                                                                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v23 v24
                                                                                            -> if coe
                                                                                                    v23
                                                                                                 then let v25
                                                                                                            = seq
                                                                                                                (coe
                                                                                                                   v24)
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                                                   erased
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                                                                                                                      erased
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                         (coe
                                                                                                                            eqInt
                                                                                                                            (coe
                                                                                                                               v21)
                                                                                                                            (coe
                                                                                                                               v22))
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_46
                                                                                                                            (coe
                                                                                                                               eqInt
                                                                                                                               (coe
                                                                                                                                  v21)
                                                                                                                               (coe
                                                                                                                                  v22)))))) in
                                                                                                      coe
                                                                                                        (case coe
                                                                                                                v25 of
                                                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v26 v27
                                                                                                             -> if coe
                                                                                                                     v26
                                                                                                                  then coe
                                                                                                                         seq
                                                                                                                         (coe
                                                                                                                            v27)
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                  erased
                                                                                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                 erased
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                       (coe
                                                                                                                                                          v16)
                                                                                                                                                       (coe
                                                                                                                                                          v17))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                    erased
                                                                                                                                                    erased
                                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.GovernanceActions.d_votes_690
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                             (coe
                                                                                                                                                                v19))))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                                       (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                       erased
                                                                                                                                                       erased
                                                                                                                                                       erased
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                                          (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                          erased
                                                                                                                                                          erased
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                             erased
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_700)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                            (coe
                                                                                                                                                                               v0))))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                         (coe
                                                                                                                                                                            v0)))))
                                                                                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                   erased
                                                                                                                                                                   erased
                                                                                                                                                                   (\ v28 ->
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                        (coe
                                                                                                                                                                           v28))
                                                                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                         erased
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                               (coe
                                                                                                                                                                                  v16)
                                                                                                                                                                               (coe
                                                                                                                                                                                  v17))
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                                                                                                                       (\ v28 ->
                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                            (coe
                                                                                                                                                               v28)))))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                                            erased)
                                                                                                                  else (let v28
                                                                                                                              = seq
                                                                                                                                  (coe
                                                                                                                                     v27)
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                                                                                     erased) in
                                                                                                                        coe
                                                                                                                          (case coe
                                                                                                                                  v28 of
                                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v29
                                                                                                                               -> coe
                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                          erased
                                                                                                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                erased
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                         erased
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                               (coe
                                                                                                                                                                  v16)
                                                                                                                                                               (coe
                                                                                                                                                                  v17))
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                            erased
                                                                                                                                                            erased
                                                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Ledger.GovernanceActions.d_votes_690
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                     (coe
                                                                                                                                                                        v19))))
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                                               (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                               erased
                                                                                                                                                               erased
                                                                                                                                                               erased
                                                                                                                                                               (coe
                                                                                                                                                                  MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                                  erased
                                                                                                                                                                  erased
                                                                                                                                                                  (coe
                                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                                                                                     MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                                     erased
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_700)
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                                    (coe
                                                                                                                                                                                       v0))))
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v0)))))
                                                                                                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                           erased
                                                                                                                                                                           erased
                                                                                                                                                                           (\ v30 ->
                                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                (coe
                                                                                                                                                                                   v30))
                                                                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                              (coe
                                                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                                 erased
                                                                                                                                                                                 (coe
                                                                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v16)
                                                                                                                                                                                       (coe
                                                                                                                                                                                          v17))
                                                                                                                                                                                    (coe
                                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                                                                                                                               (\ v30 ->
                                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                    (coe
                                                                                                                                                                       v30)))))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                                                    erased
                                                                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v29
                                                                                                                               -> coe
                                                                                                                                    MAlonzo.Code.Ledger.GovernanceActions.d_votes_690
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                       (coe
                                                                                                                                          v19))
                                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                 else (let v25
                                                                                                             = seq
                                                                                                                 (coe
                                                                                                                    v24)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                                                    (coe
                                                                                                                       v23)
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
                                                                                                       coe
                                                                                                         (case coe
                                                                                                                 v25 of
                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v26 v27
                                                                                                              -> if coe
                                                                                                                      v26
                                                                                                                   then coe
                                                                                                                          seq
                                                                                                                          (coe
                                                                                                                             v27)
                                                                                                                          (coe
                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                   erased
                                                                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                      (coe
                                                                                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                         erased
                                                                                                                                         (coe
                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                  erased
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                        (coe
                                                                                                                                                           v16)
                                                                                                                                                        (coe
                                                                                                                                                           v17))
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                  (coe
                                                                                                                                                     MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                                     (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                     erased
                                                                                                                                                     erased
                                                                                                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Ledger.GovernanceActions.d_votes_690
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                              (coe
                                                                                                                                                                 v19))))
                                                                                                                                                     (coe
                                                                                                                                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                                        (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                        erased
                                                                                                                                                        erased
                                                                                                                                                        erased
                                                                                                                                                        (coe
                                                                                                                                                           MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                                           (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                           erased
                                                                                                                                                           erased
                                                                                                                                                           (coe
                                                                                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                              erased
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_700)
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                             (coe
                                                                                                                                                                                v0))))
                                                                                                                                                                    (coe
                                                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                          (coe
                                                                                                                                                                             v0)))))
                                                                                                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                 (coe
                                                                                                                                                                    MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                                    (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                    erased
                                                                                                                                                                    erased
                                                                                                                                                                    (\ v28 ->
                                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                         (coe
                                                                                                                                                                            v28))
                                                                                                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                       (coe
                                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                          erased
                                                                                                                                                                          (coe
                                                                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                (coe
                                                                                                                                                                                   v16)
                                                                                                                                                                                (coe
                                                                                                                                                                                   v17))
                                                                                                                                                                             (coe
                                                                                                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                                                                                                                        (\ v28 ->
                                                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                             (coe
                                                                                                                                                                v28)))))
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                                             erased)
                                                                                                                   else (let v28
                                                                                                                               = seq
                                                                                                                                   (coe
                                                                                                                                      v27)
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                                                                                      erased) in
                                                                                                                         coe
                                                                                                                           (case coe
                                                                                                                                   v28 of
                                                                                                                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v29
                                                                                                                                -> coe
                                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.d_unions_184
                                                                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                           erased
                                                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                 erased
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                          erased
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   v16)
                                                                                                                                                                (coe
                                                                                                                                                                   v17))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Axiom.Set.d_specification_174
                                                                                                                                                             (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                             erased
                                                                                                                                                             erased
                                                                                                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.GovernanceActions.d_votes_690
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                      (coe
                                                                                                                                                                         v19))))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                                                                                                                                (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                                erased
                                                                                                                                                                erased
                                                                                                                                                                erased
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                                                                                                                                   (MAlonzo.Code.Axiom.Set.d_sp_150
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                                                                                                                                   erased
                                                                                                                                                                   erased
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                                      erased
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_700)
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                                     (coe
                                                                                                                                                                                        v0))))
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v0)))))
                                                                                                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                                                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                            erased
                                                                                                                                                                            erased
                                                                                                                                                                            (\ v30 ->
                                                                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v30))
                                                                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                                                  (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                                  erased
                                                                                                                                                                                  (coe
                                                                                                                                                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v16)
                                                                                                                                                                                        (coe
                                                                                                                                                                                           v17))
                                                                                                                                                                                     (coe
                                                                                                                                                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                                                                                                                                (\ v30 ->
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                     (coe
                                                                                                                                                                        v30)))))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                                                                                     erased
                                                                                                                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v29
                                                                                                                                -> coe
                                                                                                                                     MAlonzo.Code.Ledger.GovernanceActions.d_votes_690
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                        (coe
                                                                                                                                           v19))
                                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                                                                          _ -> MAlonzo.RTE.mazUnreachableError))))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_692
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v19)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_694
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v19)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_action_696
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v19)))
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_698
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                    (coe v19))))))
                                                                   (coe v2))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Gov.C_GOV'45'Vote_1440
                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe v9))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe
                                                                         MAlonzo.Code.Function.Bundles.d_to_1724
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1430
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                            (coe v2) (coe v9))
                                                                         v11)
                                                                      (coe v14))))
                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v6)
                       (coe
                          MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                          (coe
                             ("\172\nAny\n(\955 .patternInTele0 \8594\n   .Ledger.GovernanceActions.GovVote.gid sig \8801 .proj\8321 .patternInTele0\n   \215\n   canVote (.Ledger.Gov.GovEnv.pparams (.proj\8321 \915))\n   (.Ledger.GovernanceActions.GovActionState.action\n    (.proj\8322 .patternInTele0))\n   (.proj\8321 (.Ledger.GovernanceActions.GovVote.voter sig)))\ns"
                              ::
                              Data.Text.Text)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Gov.Properties._.Go.GoVote.completeness
d_completeness_1280 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_634 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Gov.T__'8866'_'8640''10631'_'44'GOV'''10632'__926 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1280 = erased
-- Ledger.Gov.Properties._.Go.GoProp.H
d_H_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_652 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_H_1402 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du__'44''8242'__84
      (coe
         MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
         (coe
            MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
            (coe
               MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_616
               (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2114 (coe v0))
               (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_666 (coe v3)))
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
               (coe
                  MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                  (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                  (coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_672 (coe v3))
                  (coe
                     MAlonzo.Code.Ledger.PParams.d_govActionDeposit_328
                     (coe
                        MAlonzo.Code.Ledger.Gov.d_pparams_918
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))))
               (coe
                  MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                  (coe
                     d_validHFAction'63'_1136 (coe v0) (coe v3) (coe v2)
                     (coe
                        MAlonzo.Code.Ledger.Gov.d_enactState_922
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
                  (coe
                     MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                     (coe
                        MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                        (coe
                           MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                           (coe
                              du_needsPolicy'8321'_1056
                              (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_666 (coe v3)))
                           (coe
                              du_needsPolicy'8322'_1078
                              (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_666 (coe v3))))
                        (coe
                           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                           (coe
                              MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                 (coe
                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                    (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1110 (coe v0)))))
                           (coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_670 (coe v3))
                           (coe
                              MAlonzo.Code.Ledger.Gov.d_ppolicy_920
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))))
                     (coe
                        MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                        (coe
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
                           (coe MAlonzo.Code.Ledger.Gov.C_HasParent''_1222)
                           (coe
                              MAlonzo.Code.Ledger.Gov.d_hasParent'63'_1176 (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Gov.d_enactState_922
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
                              (coe v2)
                              (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_666 (coe v3))
                              (coe
                                 MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_668
                                 (coe v3))))))))))
      (coe
         du_isNewCommittee_1034
         (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_666 (coe v3)))
-- Ledger.Gov.Properties._.Go.GoProp.computeProof
d_computeProof_1408 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_652 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1408 v0 v1 v2 v3
  = let v4 = d_H_1402 (coe v0) (coe v1) (coe v2) (coe v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then case coe v8 of
                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v9
                                -> case coe v9 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                       -> case coe v11 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                              -> case coe v13 of
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                                     -> case coe v15 of
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                            -> case coe v17 of
                                                                 MAlonzo.Code.Ledger.Gov.C_HasParent''_1222 v22
                                                                   -> case coe v3 of
                                                                        MAlonzo.Code.Ledger.GovernanceActions.C_GovProposal'46'constructor_3925 v23 v24 v25 v26 v27 v28
                                                                          -> case coe v6 of
                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v29 v30
                                                                                 -> if coe v29
                                                                                      then case coe
                                                                                                  v30 of
                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v31
                                                                                               -> case coe
                                                                                                         v31 of
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v32 v33
                                                                                                      -> case coe
                                                                                                                v33 of
                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v34 v35
                                                                                                             -> case coe
                                                                                                                       v35 of
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v36 v37
                                                                                                                    -> let v38
                                                                                                                             = coe
                                                                                                                                 MAlonzo.Code.Class.Decidable.Core.du_'191'_'191'_42
                                                                                                                                 (coe
                                                                                                                                    MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                                                                                                    (coe
                                                                                                                                       (\ v38 ->
                                                                                                                                          coe
                                                                                                                                            MAlonzo.Code.Axiom.Set.d_all'63'_1568
                                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                            erased
                                                                                                                                            (MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
                                                                                                                                               (coe
                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354
                                                                                                                                                  (coe
                                                                                                                                                     v0)))
                                                                                                                                            erased
                                                                                                                                            (coe
                                                                                                                                               MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                                                               (coe
                                                                                                                                                  (\ v39 ->
                                                                                                                                                     coe
                                                                                                                                                       MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_232
                                                                                                                                                          (MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354
                                                                                                                                                                (coe
                                                                                                                                                                   v0)))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                                                                                                             (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354
                                                                                                                                                                   (coe
                                                                                                                                                                      v0)))
                                                                                                                                                             (\ v40
                                                                                                                                                                v41 ->
                                                                                                                                                                v40)
                                                                                                                                                             (MAlonzo.Code.Ledger.Gov.d_epoch_916
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                   (coe
                                                                                                                                                                      v1)))
                                                                                                                                                             v39)
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                                                                                                             (\ v40
                                                                                                                                                                v41 ->
                                                                                                                                                                v41)
                                                                                                                                                             (MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354
                                                                                                                                                                   (coe
                                                                                                                                                                      v0)))
                                                                                                                                                             (MAlonzo.Code.Ledger.Gov.d_epoch_916
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                   (coe
                                                                                                                                                                      v1)))
                                                                                                                                                             v39))
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''215'_24
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                                                                                                                             (coe
                                                                                                                                                                (\ v40 ->
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
                                                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v0))))
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                              (coe
                                                                                                                                                                                 v0))))
                                                                                                                                                                     erased
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                                                                                        (coe
                                                                                                                                                                           (\ v41 ->
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
                                                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v0))))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v0)))))
                                                                                                                                                                                (coe
                                                                                                                                                                                   v41)
                                                                                                                                                                                (coe
                                                                                                                                                                                   MAlonzo.Code.Axiom.Set.du_'8709'_424
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
                                                                                                                                                                     v40))
                                                                                                                                                             (let v40
                                                                                                                                                                    = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                                                                                              coe
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Axiom.Set.du__'8745'__686
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                      (coe
                                                                                                                                                                         v40))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                                      erased
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                                                                               (coe
                                                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                                  (coe
                                                                                                                                                                                     v0))))
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                               (coe
                                                                                                                                                                                  v0)))))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Interface.IsSet.du_dom_524
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
                                                                                                                                                                      (coe
                                                                                                                                                                         v32))
                                                                                                                                                                   (coe
                                                                                                                                                                      v34))))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Class.Decidable.Core.du_'8263''185'__110
                                                                                                                                                             (coe
                                                                                                                                                                (\ v40 ->
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
                                                                                                                                                                                 MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                                 (coe
                                                                                                                                                                                    v0))))
                                                                                                                                                                        (coe
                                                                                                                                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                                                           (coe
                                                                                                                                                                              MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                              (coe
                                                                                                                                                                                 v0))))
                                                                                                                                                                     erased
                                                                                                                                                                     (coe
                                                                                                                                                                        MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108
                                                                                                                                                                        (coe
                                                                                                                                                                           (\ v41 ->
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
                                                                                                                                                                                               MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  v0))))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                                            (coe
                                                                                                                                                                                               v0)))))
                                                                                                                                                                                (coe
                                                                                                                                                                                   v41)
                                                                                                                                                                                (let v42
                                                                                                                                                                                       = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                                                                                                                 coe
                                                                                                                                                                                   (coe
                                                                                                                                                                                      MAlonzo.Code.Axiom.Set.du__'8745'__686
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v42))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                                                                                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                                                         erased
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                                                     (coe
                                                                                                                                                                                                        v0))))
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                                                                                                                               (coe
                                                                                                                                                                                                  MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                                                                                                                                  (coe
                                                                                                                                                                                                     v0)))))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         MAlonzo.Code.Interface.IsSet.du_dom_524
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                                            (coe
                                                                                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                                         (coe
                                                                                                                                                                                            MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
                                                                                                                                                                                         (coe
                                                                                                                                                                                            v32))
                                                                                                                                                                                      (coe
                                                                                                                                                                                         v34))))))
                                                                                                                                                                     v40))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Axiom.Set.du_'8709'_424
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))))
                                                                                                                                            v38))
                                                                                                                                    (coe
                                                                                                                                       MAlonzo.Code.Interface.IsSet.du_range_526
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                       (coe
                                                                                                                                          MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
                                                                                                                                       (coe
                                                                                                                                          v32))) in
                                                                                                                       coe
                                                                                                                         (case coe
                                                                                                                                 v38 of
                                                                                                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v39 v40
                                                                                                                              -> if coe
                                                                                                                                      v39
                                                                                                                                   then case coe
                                                                                                                                               v40 of
                                                                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v41
                                                                                                                                            -> coe
                                                                                                                                                 MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                                                                                                                       (coe
                                                                                                                                                          v2)
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Gov.d_txid_914
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                      (coe
                                                                                                                                                                         v1)))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                                                                   (coe
                                                                                                                                                                      v1)))
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4171
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                                                                         (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                                                                            (coe
                                                                                                                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                                         erased
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                                                                   (coe
                                                                                                                                                                      (\ v42
                                                                                                                                                                         v43
                                                                                                                                                                         v44
                                                                                                                                                                         v45
                                                                                                                                                                         v46 ->
                                                                                                                                                                         coe
                                                                                                                                                                           MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
                                                                                                                                                                (coe
                                                                                                                                                                   v27)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354
                                                                                                                                                                      (coe
                                                                                                                                                                         v0))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.PParams.d_govActionLifetime_326
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Ledger.Gov.d_pparams_918
                                                                                                                                                                         (coe
                                                                                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                            (coe
                                                                                                                                                                               v1))))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Ledger.Gov.d_epoch_916
                                                                                                                                                                      (coe
                                                                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                                                         (coe
                                                                                                                                                                            v1))))
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_598
                                                                                                                                                                   (coe
                                                                                                                                                                      v32)
                                                                                                                                                                   (coe
                                                                                                                                                                      v34)
                                                                                                                                                                   (coe
                                                                                                                                                                      v36))
                                                                                                                                                                (coe
                                                                                                                                                                   v24)))
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Gov.C_GOV'45'Propose_1530
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                                                                                                                          (coe
                                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                             (coe
                                                                                                                                                                v12)
                                                                                                                                                             (coe
                                                                                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                (coe
                                                                                                                                                                   v16)
                                                                                                                                                                (coe
                                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                   (coe
                                                                                                                                                                      (\ v42
                                                                                                                                                                         v43
                                                                                                                                                                         v44
                                                                                                                                                                         v45
                                                                                                                                                                         v46 ->
                                                                                                                                                                         coe
                                                                                                                                                                           v41
                                                                                                                                                                           v46))
                                                                                                                                                                   (coe
                                                                                                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                                      (coe
                                                                                                                                                                         v14)
                                                                                                                                                                      (coe
                                                                                                                                                                         v22))))))))
                                                                                                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                                   else coe
                                                                                                                                          seq
                                                                                                                                          (coe
                                                                                                                                             v40)
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                                                                                                                             (coe
                                                                                                                                                ("\172\nInterface.IsSet.All-syntax (.Axiom.Set.Theory\7496.th List-Model\7496)\n(\955 e \8594\n   (_463 txs \915 s policy deposit returnAddr\8321 anchor\8321 dep new rem q\n    prevAction\8321 wf vHFA pol en e\n    HasPreorder.< .Ledger.Gov.GovEnv.epoch (.proj\8321 \915))\n   e\n   \215\n   (.Axiom.Set.Theory\7496.th List-Model\7496 Axiom.Set.Theory.\8801\7497\n    (List-Model\7496 Axiom.Set.Theory\7496._.Intersection.\8745\n     .Axiom.Set.Theory\7496.\8712-sp List-Model\7496)\n    (Interface.IsSet.dom (.Axiom.Set.Theory\7496.th List-Model\7496) new) rem)\n   (.HasEmptySet.\8709\n    (_472 txs \915 s policy deposit returnAddr\8321 anchor\8321 dep new rem q\n     prevAction\8321 wf vHFA pol en e)))\n(Interface.IsSet.range (.Axiom.Set.Theory\7496.th List-Model\7496) new)"
                                                                                                                                                 ::
                                                                                                                                                 Data.Text.Text)))
                                                                                                                            _ -> MAlonzo.RTE.mazUnreachableError)
                                                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                    _ -> MAlonzo.RTE.mazUnreachableError
                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                      else coe
                                                                                             seq
                                                                                             (coe
                                                                                                v30)
                                                                                             (coe
                                                                                                MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                                                                                      (coe
                                                                                                         v2)
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Gov.d_txid_914
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        v1)))
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                                                  (coe
                                                                                                                     v1)))
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4171
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Axiom.Set.d_listing_204
                                                                                                                        (MAlonzo.Code.Axiom.Set.d_th_1430
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                        erased
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                                  (coe
                                                                                                                     (\ v31
                                                                                                                        v32
                                                                                                                        v33
                                                                                                                        v34
                                                                                                                        v35 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
                                                                                                               (coe
                                                                                                                  v27)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Transaction.d_epochStructure_1354
                                                                                                                     (coe
                                                                                                                        v0))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.PParams.d_govActionLifetime_326
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Ledger.Gov.d_pparams_918
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                           (coe
                                                                                                                              v1))))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Ledger.Gov.d_epoch_916
                                                                                                                     (coe
                                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                        (coe
                                                                                                                           v1))))
                                                                                                               (coe
                                                                                                                  v23)
                                                                                                               (coe
                                                                                                                  v24)))
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Gov.C_GOV'45'Propose_1530
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                         (coe
                                                                                                            v10)
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                            (coe
                                                                                                               v12)
                                                                                                            (coe
                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                               (coe
                                                                                                                  v16)
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     (\ v31
                                                                                                                        v32
                                                                                                                        v33
                                                                                                                        v34
                                                                                                                        v35 ->
                                                                                                                        coe
                                                                                                                          MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
                                                                                                                  (coe
                                                                                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                     (coe
                                                                                                                        v14)
                                                                                                                     (coe
                                                                                                                        v22)))))))))
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       else coe
                              seq (coe v8)
                              (coe
                                 MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                                 (let v9
                                        = coe
                                            MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                            (coe
                                               MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_616
                                               (coe
                                                  MAlonzo.Code.Ledger.Transaction.d_govStructure_2114
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Ledger.GovernanceActions.d_action_666
                                                  (coe v3)))
                                            erased in
                                  coe
                                    (case coe v9 of
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                                         -> coe
                                              ("\172\nLedger.GovernanceActions.actionWellFormed\n(TransactionStructure.govStructure txs)\n(.Ledger.GovernanceActions.GovProposal.action prop)"
                                               ::
                                               Data.Text.Text)
                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                                         -> let v11
                                                  = coe
                                                      MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                      (coe
                                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
                                                         (coe
                                                            MAlonzo.Code.Ledger.GovernanceActions.d_deposit_672
                                                            (coe v3))
                                                         (coe
                                                            MAlonzo.Code.Ledger.PParams.d_govActionDeposit_328
                                                            (coe
                                                               MAlonzo.Code.Ledger.Gov.d_pparams_918
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v1)))))
                                                      erased in
                                            coe
                                              (case coe v11 of
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v12
                                                   -> coe
                                                        ("\172\n.Ledger.GovernanceActions.GovProposal.deposit prop \8801\n.Ledger.PParams.PParams.govActionDeposit\n(.Ledger.Gov.GovEnv.pparams (.proj\8321 \915))"
                                                         ::
                                                         Data.Text.Text)
                                                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v12
                                                   -> let v13
                                                            = coe
                                                                MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                (coe
                                                                   d_validHFAction'63'_1136 (coe v0)
                                                                   (coe v3) (coe v2)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Gov.d_enactState_922
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v1))))
                                                                erased in
                                                      coe
                                                        (case coe v13 of
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                                                             -> coe
                                                                  ("\172\nLedger.Gov.validHFAction txs prop s\n(.Ledger.Gov.GovEnv.enactState (.proj\8321 \915))"
                                                                   ::
                                                                   Data.Text.Text)
                                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                                                             -> let v15
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Prelude.du_dec'45'de'45'morgan_28
                                                                          (coe
                                                                             MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8594'_22
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Instances.du_Dec'45''8846'_26
                                                                                (coe
                                                                                   du_needsPolicy'8321'_1056
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovernanceActions.d_action_666
                                                                                      (coe v3)))
                                                                                (coe
                                                                                   du_needsPolicy'8322'_1078
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovernanceActions.d_action_666
                                                                                      (coe v3))))
                                                                             (coe
                                                                                MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                                                                (coe
                                                                                   MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                                   (coe
                                                                                      MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                                                         (coe
                                                                                            MAlonzo.Code.Ledger.Transaction.d_crypto_1110
                                                                                            (coe
                                                                                               v0)))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.GovernanceActions.d_policy_670
                                                                                   (coe v3))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Gov.d_ppolicy_920
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe v1)))))
                                                                          erased in
                                                                coe
                                                                  (case coe v15 of
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v16
                                                                       -> coe
                                                                            ("\172\n((z\n  : \8707-syntax\n    (\955 u \8594\n       .Ledger.GovernanceActions.GovProposal.action prop \8801\n       ChangePParams u)\n    \8846\n    \8707-syntax\n    (\955 w \8594\n       .Ledger.GovernanceActions.GovProposal.action prop \8801\n       TreasuryWdrl w)) \8594\n .Ledger.GovernanceActions.GovProposal.policy prop \8801\n .Ledger.Gov.GovEnv.ppolicy (.proj\8321 \915))"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v16
                                                                       -> coe
                                                                            ("\172\nhasParent' (.Ledger.Gov.GovEnv.enactState (.proj\8321 \915)) s\n(.Ledger.GovernanceActions.GovProposal.action prop)\n(.Ledger.GovernanceActions.GovProposal.prevAction prop)"
                                                                             ::
                                                                             Data.Text.Text)
                                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                 _ -> MAlonzo.RTE.mazUnreachableError)
                                       _ -> MAlonzo.RTE.mazUnreachableError)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Gov.Properties._.Go.GoProp.completeness
d_completeness_1456 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_652 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Gov.T__'8866'_'8640''10631'_'44'GOV'''10632'__926 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1456 = erased
-- Ledger.Gov.Properties._.Go.computeProof
d_computeProof_1536 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_1536 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v4
        -> coe d_computeProof_1264 (coe v0) (coe v1) (coe v2) (coe v4)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v4
        -> coe d_computeProof_1408 (coe v0) (coe v1) (coe v2) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Properties._.Go.completeness
d_completeness_1546 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Gov.T__'8866'_'8640''10631'_'44'GOV'''10632'__926 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1546 = erased
-- Ledger.Gov.Properties.Computational-GOV
d_Computational'45'GOV_1552 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOV_1552 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1088
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_726)
      (coe d_Computational'45'GOV''_1224 (coe v0))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77263
         (coe (\ v1 -> MAlonzo.RTE.mazUnreachableError)))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.C_InjectError'46'constructor_77263
         (coe (\ v1 -> v1)))
-- Ledger.Gov.Properties.allEnactable-singleton
d_allEnactable'45'singleton_1560 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_678 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_730 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_allEnactable'45'singleton_1560 ~v0 v1 v2 v3 ~v4
  = du_allEnactable'45'singleton_1560 v1 v2 v3
du_allEnactable'45'singleton_1560 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_678 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_730 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_allEnactable'45'singleton_1560 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60
      (coe du_helper_1586 (coe v0) (coe v1) (coe v2))
      (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
-- Ledger.Gov.Properties._.helper
d_helper_1586 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_678 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_730 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_helper_1586 ~v0 v1 v2 v3 ~v4 = du_helper_1586 v1 v2 v3
du_helper_1586 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_678 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_730 -> AgdaAny
du_helper_1586 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Ledger.Enact.du_getHashES_770 (coe v2)
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.d_action_696 (coe v1)) in
    coe
      (let v4
             = coe
                 MAlonzo.Code.Ledger.Enact.du_getHash_758
                 (coe MAlonzo.Code.Ledger.GovernanceActions.d_action_696 (coe v1))
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_698 (coe v1)) in
       coe
         (case coe v3 of
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
              -> case coe v4 of
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                     -> coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v5)))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v7 v8 -> v8))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
                                   (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
                                   (coe
                                      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22))
                                (coe
                                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased))))
                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> erased
                   _ -> MAlonzo.RTE.mazUnreachableError
            MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
              -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
            _ -> MAlonzo.RTE.mazUnreachableError))
