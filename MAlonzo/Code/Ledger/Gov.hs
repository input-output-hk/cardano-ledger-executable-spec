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

module MAlonzo.Code.Ledger.Gov where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext
import qualified MAlonzo.Code.Data.List.Ext.Properties
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.ToBool
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Ledger.Gov._._+ᵉ_
d__'43''7497'__12 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__12 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_1942 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_428
            (coe v1)))
-- Ledger.Gov._.Epoch
d_Epoch_104 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_104 = erased
-- Ledger.Gov._.PParams
d_PParams_144 a0 = ()
-- Ledger.Gov._.RwdAddr
d_RwdAddr_158 a0 a1 a2 a3 = ()
-- Ledger.Gov._.ScriptHash
d_ScriptHash_172 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_172 = erased
-- Ledger.Gov._.TxId
d_TxId_196 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxId_196 = erased
-- Ledger.Gov._.preoEpoch
d_preoEpoch_268 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_268 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_1942 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_428
            (coe v1)))
-- Ledger.Gov._.pvCanFollow
d_pvCanFollow_272 a0 a1 a2 = ()
-- Ledger.Gov._.GovAction
d_GovAction_492 a0 = ()
-- Ledger.Gov._.GovActionID
d_GovActionID_494 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_494 = erased
-- Ledger.Gov._.GovActionState
d_GovActionState_496 a0 = ()
-- Ledger.Gov._.GovProposal
d_GovProposal_498 a0 = ()
-- Ledger.Gov._.GovVote
d_GovVote_502 a0 = ()
-- Ledger.Gov._.NeedsHash
d_NeedsHash_508 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_508 -> ()
d_NeedsHash_508 = erased
-- Ledger.Gov._.Vote
d_Vote_524 a0 = ()
-- Ledger.Gov._.Voter
d_Voter_526 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_526 = erased
-- Ledger.Gov._.actionWellFormed
d_actionWellFormed_532 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_508 -> ()
d_actionWellFormed_532 = erased
-- Ledger.Gov._.EnactState
d_EnactState_644 a0 = ()
-- Ledger.Gov._.canVote
d_canVote_732 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_508 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_478 -> ()
d_canVote_732 = erased
-- Ledger.Gov.GovState
d_GovState_814 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovState_814 = erased
-- Ledger.Gov.GovEnv
d_GovEnv_816 a0 = ()
data T_GovEnv_816
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_838 AgdaAny AgdaAny
                                                    MAlonzo.Code.Ledger.PParams.T_PParams_218
                                                    (Maybe AgdaAny)
                                                    MAlonzo.Code.Ledger.Enact.T_EnactState_642
-- Ledger.Gov.GovEnv.txid
d_txid_828 :: T_GovEnv_816 -> AgdaAny
d_txid_828 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_838 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.epoch
d_epoch_830 :: T_GovEnv_816 -> AgdaAny
d_epoch_830 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_838 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.pparams
d_pparams_832 ::
  T_GovEnv_816 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_832 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_838 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.ppolicy
d_ppolicy_834 :: T_GovEnv_816 -> Maybe AgdaAny
d_ppolicy_834 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_838 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.enactState
d_enactState_836 ::
  T_GovEnv_816 -> MAlonzo.Code.Ledger.Enact.T_EnactState_642
d_enactState_836 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_838 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__840 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOV'''10632'__840
  = C_GOV'45'Vote_1346 MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_592
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOV'45'Propose_1434 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Gov._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__842 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GovEnv_816 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__842 = erased
-- Ledger.Gov.addVote
d_addVote_874 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_540 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addVote_874 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
      () erased
      (coe du_modifyVotes_888 (coe v0) (coe v2) (coe v3) (coe v4)) v1
-- Ledger.Gov._.modifyVotes
d_modifyVotes_888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_540 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_modifyVotes_888 v0 ~v1 v2 v3 v4 v5
  = du_modifyVotes_888 v0 v2 v3 v4 v5
du_modifyVotes_888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_540 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_modifyVotes_888 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4561
         (coe
            MAlonzo.Code.Interface.ToBool.du_if_then_else__46
            (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_990 (coe v0))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v1))
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.Axiom.Set.Map.du_insert_854
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1430
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_614)
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1024 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1024 (coe v0))))))
                    (coe
                       MAlonzo.Code.Ledger.GovernanceActions.d_votes_604
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                    (coe v2) (coe v3)))
            (coe
               (\ v5 ->
                  MAlonzo.Code.Ledger.GovernanceActions.d_votes_604
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_606
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_608
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_action_610
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_612
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- Ledger.Gov.addAction
d_addAction_898 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_508 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addAction_898 ~v0 v1 v2 v3 v4 v5 v6
  = du_addAction_898 v1 v2 v3 v4 v5 v6
du_addAction_898 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_508 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_addAction_898 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Base.du__'8759''691'__540 (coe v0)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4561
            (coe
               MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_512
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1430
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
            (coe v3) (coe v1) (coe v4) (coe v5)))
-- Ledger.Gov.validHFAction
d_validHFAction_912 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_566 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 -> ()
d_validHFAction_912 = erased
-- Ledger.Gov.getAidPairsList
d_getAidPairsList_930 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_930 ~v0 v1 = du_getAidPairsList_930 v1
du_getAidPairsList_930 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_930 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_mapMaybe_32
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
              MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
              () erased
              (\ v2 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)) (coe v2))
              (coe
                 MAlonzo.Code.Ledger.Enact.du_getHash_670
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_610
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_612
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))))
      (coe v0)
-- Ledger.Gov.getAidPairsSet
d_getAidPairsSet_942 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsSet_942 ~v0 v1 = du_getAidPairsSet_942 v1
du_getAidPairsSet_942 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsSet_942 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558
      (MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (\ v1 ->
         coe
           MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
           MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6 () erased
           () erased
           (\ v2 ->
              coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)) (coe v2))
           (coe
              MAlonzo.Code.Ledger.Enact.du_getHash_670
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.d_action_610
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_612
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_410
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe v0))
-- Ledger.Gov._connects_to_
d__connects_to__954 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__connects_to__954 = erased
-- Ledger.Gov.enactable
d_enactable_970 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_970 = erased
-- Ledger.Gov.allEnactable
d_allEnactable_988 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_988 = erased
-- Ledger.Gov.hasParentE
d_hasParentE_994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_508 -> ()
d_hasParentE_994 = erased
-- Ledger.Gov.hasParent
d_hasParent_1008 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_508 ->
  AgdaAny -> ()
d_hasParent_1008 = erased
-- Ledger.Gov.hasParentE?
d_hasParentE'63'_1048 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_508 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParentE'63'_1048 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Enact.du_getHashES_682 (coe v1) (coe v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
           -> coe
                MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_990 (coe v0)))
                (coe (\ v6 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                (coe v5) (coe v2)
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Gov.hasParent?
d_hasParent'63'_1082 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_508 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParent'63'_1082 v0 v1 v2 v3 v4
  = let v5
          = coe MAlonzo.Code.Ledger.Enact.du_getHash_670 (coe v3) (coe v4) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__78
                (coe d_hasParentE'63'_1048 (coe v0) (coe v1) (coe v6) (coe v3))
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                   (coe
                      (\ v7 ->
                         coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_990 (coe v0))
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)) v6))
                   (coe v2))
         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Gov.hasParent'
d_hasParent''_1118 a0 a1 a2 a3 a4 = ()
newtype T_hasParent''_1118 = C_HasParent''_1128 AgdaAny
-- Ledger.Gov.hasParent?'
d_hasParent'63'''_1138 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_508 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_1138 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
         (coe C_HasParent''_1128)
         (coe
            d_hasParent'63'_1082 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
-- Ledger.Gov.[_connects_to_?]
d_'91'_connects_to_'63''93'_1150 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'91'_connects_to_'63''93'_1150 v0 v1 v2 v3
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
             (coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_990 (coe v0)))
             (coe (\ v4 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
             (coe v2) (coe v3)
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__78
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                       (coe
                          MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                             (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_990 (coe v0)))
                          (coe (\ v8 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
                          (coe v6) (coe v2))
                       (coe
                          d_'91'_connects_to_'63''93'_1150 (coe v0) (coe v5) (coe v7)
                          (coe v3)))
                    (coe
                       d_'91'_connects_to_'63''93'_1150 (coe v0) (coe v5) (coe v2)
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.any?-connecting-subperm
d_any'63''45'connecting'45'subperm_1174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63''45'connecting'45'subperm_1174 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
              (coe
                 MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid.du_unique'63'_64
                 (coe
                    MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
                    (coe
                       MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                             (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_990 (coe v0))
                             (coe
                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550)))
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                             (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_990 (coe v0))
                             (coe
                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))))))
                 v4)
              (coe
                 d_'91'_connects_to_'63''93'_1150 (coe v0) (coe v4) (coe v1)
                 (coe v2))))
      (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v3))
-- Ledger.Gov.∃?-connecting-subperm
d_'8707''63''45'connecting'45'subperm_1192 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subperm_1192 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
         (coe
            MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
            (coe
               MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core.du_Any'8596'_134
               (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v3)))))
      (d_any'63''45'connecting'45'subperm_1174
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Gov.∃?-connecting-subset
d_'8707''63''45'connecting'45'subset_1204 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subset_1204 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
         (coe
            MAlonzo.Code.Data.List.Ext.Properties.du_'8707'uniqueSubset'8660''8707'uniqueSubperm_1104
            (coe ()) (coe v3)))
      (d_'8707''63''45'connecting'45'subperm_1192
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Gov.enactable?
d_enactable'63'_1214 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_enactable'63'_1214 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Ledger.Enact.du_getHashES_682 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.d_action_610 (coe v5)) in
           coe
             (case coe v6 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                  -> coe
                       MAlonzo.Code.Function.Bundles.d_from_1726
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8707''63''45'sublist'45''8660'_840
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1430
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (coe v2))
                       (d_'8707''63''45'connecting'45'subset_1204
                          (coe v0) (coe v4) (coe v7) (coe v2))
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.allEnactable?
d_allEnactable'63'_1250 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_allEnactable'63'_1250 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.du_all'63'_512
      (coe
         d_enactable'63'_1214 (coe v0) (coe v1)
         (coe du_getAidPairsList_930 (coe v2)))
      (coe v2)
-- Ledger.Gov.allEnactable'
d_allEnactable''_1258 a0 a1 a2 = ()
newtype T_allEnactable''_1258
  = C_AllEnactable''_1264 MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
-- Ledger.Gov.allEnactable?'
d_allEnactable'63'''_1270 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_allEnactable'63'''_1270 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_144
         (coe C_AllEnactable''_1264)
         (coe d_allEnactable'63'_1250 (coe v0) (coe v1) (coe v2)))
-- Ledger.Gov.maxAllEnactable
d_maxAllEnactable_1276 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_maxAllEnactable_1276 v0 v1
  = coe
      MAlonzo.Code.Data.List.Ext.Properties.du_maxsublists'8871'P_958
      (coe d_allEnactable'63'_1250 (coe v0) (coe v1))
-- Ledger.Gov.∈-maxAllEnactable→allEnactable
d_'8712''45'maxAllEnactable'8594'allEnactable_1286 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_'8712''45'maxAllEnactable'8594'allEnactable_1286 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_530
         (d_allEnactable'63'_1250 (coe v0) (coe v1)) v3
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_530
               (\ v5 ->
                  coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                    MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                    (coe MAlonzo.Code.Data.List.Base.du_length_304 v5)
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du_maxlen_218
                       (coe
                          MAlonzo.Code.Data.List.Ext.Properties.du_sublists'8871'P_952
                          (coe d_allEnactable'63'_1250 (coe v0) (coe v1)) (coe v2))))
               v3
               (coe
                  MAlonzo.Code.Data.List.Base.du_filter_892
                  (d_allEnactable'63'_1250 (coe v0) (coe v1))
                  (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)))
               v4)))
-- Ledger.Gov.∈-maxAllEnactable→maxLength
d_'8712''45'maxAllEnactable'8594'maxLength_1306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'8712''45'maxAllEnactable'8594'maxLength_1306 v0 v1 v2 ~v3 ~v4 v5
                                                v6 ~v7
  = du_'8712''45'maxAllEnactable'8594'maxLength_1306 v0 v1 v2 v5 v6
du_'8712''45'maxAllEnactable'8594'maxLength_1306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'8712''45'maxAllEnactable'8594'maxLength_1306 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Ext.Properties.du_'8712''45'maxlen'45''8804'_244
      (coe
         MAlonzo.Code.Data.List.Base.du_filter_892
         (d_allEnactable'63'_1250 (coe v0) (coe v1))
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_524
         (d_allEnactable'63'_1250 (coe v0) (coe v1))
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)) v3 v4)
-- Ledger.Gov._.enactState
d_enactState_1334 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_34393 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_592 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642
d_enactState_1334 ~v0 v1 ~v2 ~v3 = du_enactState_1334 v1
du_enactState_1334 ::
  T_GeneralizeTel_34393 -> MAlonzo.Code.Ledger.Enact.T_EnactState_642
du_enactState_1334 v0
  = coe d_enactState_836 (coe d_'46'generalizedField'45'Γ_34381 v0)
-- Ledger.Gov._.epoch
d_epoch_1336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_34393 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_592 ->
  AgdaAny
d_epoch_1336 ~v0 v1 ~v2 ~v3 = du_epoch_1336 v1
du_epoch_1336 :: T_GeneralizeTel_34393 -> AgdaAny
du_epoch_1336 v0
  = coe d_epoch_830 (coe d_'46'generalizedField'45'Γ_34381 v0)
-- Ledger.Gov._.pparams
d_pparams_1338 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_34393 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_592 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1338 ~v0 v1 ~v2 ~v3 = du_pparams_1338 v1
du_pparams_1338 ::
  T_GeneralizeTel_34393 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_1338 v0
  = coe d_pparams_832 (coe d_'46'generalizedField'45'Γ_34381 v0)
-- Ledger.Gov._.ppolicy
d_ppolicy_1340 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_34393 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_592 ->
  Maybe AgdaAny
d_ppolicy_1340 ~v0 v1 ~v2 ~v3 = du_ppolicy_1340 v1
du_ppolicy_1340 :: T_GeneralizeTel_34393 -> Maybe AgdaAny
du_ppolicy_1340 v0
  = coe d_ppolicy_834 (coe d_'46'generalizedField'45'Γ_34381 v0)
-- Ledger.Gov._.txid
d_txid_1342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_34393 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_592 ->
  AgdaAny
d_txid_1342 ~v0 v1 ~v2 ~v3 = du_txid_1342 v1
du_txid_1342 :: T_GeneralizeTel_34393 -> AgdaAny
du_txid_1342 v0
  = coe d_txid_828 (coe d_'46'generalizedField'45'Γ_34381 v0)
-- Ledger.Gov._.enactState
d_enactState_1352 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_36777 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_642
d_enactState_1352 ~v0 v1 ~v2 = du_enactState_1352 v1
du_enactState_1352 ::
  T_GeneralizeTel_36777 -> MAlonzo.Code.Ledger.Enact.T_EnactState_642
du_enactState_1352 v0
  = coe d_enactState_836 (coe d_'46'generalizedField'45'Γ_36761 v0)
-- Ledger.Gov._.epoch
d_epoch_1354 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_36777 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498 -> AgdaAny
d_epoch_1354 ~v0 v1 ~v2 = du_epoch_1354 v1
du_epoch_1354 :: T_GeneralizeTel_36777 -> AgdaAny
du_epoch_1354 v0
  = coe d_epoch_830 (coe d_'46'generalizedField'45'Γ_36761 v0)
-- Ledger.Gov._.pparams
d_pparams_1356 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_36777 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_1356 ~v0 v1 ~v2 = du_pparams_1356 v1
du_pparams_1356 ::
  T_GeneralizeTel_36777 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
du_pparams_1356 v0
  = coe d_pparams_832 (coe d_'46'generalizedField'45'Γ_36761 v0)
-- Ledger.Gov._.ppolicy
d_ppolicy_1358 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_36777 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498 -> Maybe AgdaAny
d_ppolicy_1358 ~v0 v1 ~v2 = du_ppolicy_1358 v1
du_ppolicy_1358 :: T_GeneralizeTel_36777 -> Maybe AgdaAny
du_ppolicy_1358 v0
  = coe d_ppolicy_834 (coe d_'46'generalizedField'45'Γ_36761 v0)
-- Ledger.Gov._.txid
d_txid_1360 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_36777 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498 -> AgdaAny
d_txid_1360 ~v0 v1 ~v2 = du_txid_1360 v1
du_txid_1360 :: T_GeneralizeTel_36777 -> AgdaAny
du_txid_1360 v0
  = coe d_txid_828 (coe d_'46'generalizedField'45'Γ_36761 v0)
-- Ledger.Gov._.govActionDeposit
d_govActionDeposit_1386 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_36777 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498 -> Integer
d_govActionDeposit_1386 ~v0 v1 ~v2 = du_govActionDeposit_1386 v1
du_govActionDeposit_1386 :: T_GeneralizeTel_36777 -> Integer
du_govActionDeposit_1386 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_322
      (coe d_pparams_832 (coe d_'46'generalizedField'45'Γ_36761 v0))
-- Ledger.Gov._.govActionLifetime
d_govActionLifetime_1388 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_36777 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498 -> Integer
d_govActionLifetime_1388 ~v0 v1 ~v2 = du_govActionLifetime_1388 v1
du_govActionLifetime_1388 :: T_GeneralizeTel_36777 -> Integer
du_govActionLifetime_1388 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionLifetime_320
      (coe d_pparams_832 (coe d_'46'generalizedField'45'Γ_36761 v0))
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_34381 ::
  T_GeneralizeTel_34393 -> T_GovEnv_816
d_'46'generalizedField'45'Γ_34381 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-aid
d_'46'generalizedField'45'aid_34383 ::
  T_GeneralizeTel_34393 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'aid_34383
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-voter
d_'46'generalizedField'45'voter_34385 ::
  T_GeneralizeTel_34393 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voter_34385
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-v
d_'46'generalizedField'45'v_34387 ::
  T_GeneralizeTel_34393 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_540
d_'46'generalizedField'45'v_34387 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_34389 ::
  T_GeneralizeTel_34393 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_34389 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_34391 ::
  T_GeneralizeTel_34393 -> Integer
d_'46'generalizedField'45'k_34391 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_34393 a0 = ()
data T_GeneralizeTel_34393
  = C_mkGeneralizeTel_34395 T_GovEnv_816
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Vote_540
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_36761 ::
  T_GeneralizeTel_36777 -> T_GovEnv_816
d_'46'generalizedField'45'Γ_36761 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-addr
d_'46'generalizedField'45'addr_36763 ::
  T_GeneralizeTel_36777 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_'46'generalizedField'45'addr_36763
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-a
d_'46'generalizedField'45'a_36765 ::
  T_GeneralizeTel_36777 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_508
d_'46'generalizedField'45'a_36765 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-p
d_'46'generalizedField'45'p_36767 ::
  T_GeneralizeTel_36777 -> Maybe AgdaAny
d_'46'generalizedField'45'p_36767 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-d
d_'46'generalizedField'45'd_36769 ::
  T_GeneralizeTel_36777 -> Integer
d_'46'generalizedField'45'd_36769 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-prev
d_'46'generalizedField'45'prev_36771 ::
  T_GeneralizeTel_36777 -> AgdaAny
d_'46'generalizedField'45'prev_36771
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_36773 ::
  T_GeneralizeTel_36777 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_36773 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_36775 ::
  T_GeneralizeTel_36777 -> Integer
d_'46'generalizedField'45'k_36775 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_36777 a0 = ()
data T_GeneralizeTel_36777
  = C_mkGeneralizeTel_36779 T_GovEnv_816
                            MAlonzo.Code.Ledger.Address.T_RwdAddr_58
                            MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_508
                            (Maybe AgdaAny) Integer AgdaAny
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
