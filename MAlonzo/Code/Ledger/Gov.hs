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
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_512
            (coe v1)))
-- Ledger.Gov._.Epoch
d_Epoch_108 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Epoch_108 = erased
-- Ledger.Gov._.PParams
d_PParams_148 a0 = ()
-- Ledger.Gov._.RwdAddr
d_RwdAddr_162 a0 a1 a2 a3 = ()
-- Ledger.Gov._.ScriptHash
d_ScriptHash_176 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_ScriptHash_176 = erased
-- Ledger.Gov._.TxId
d_TxId_200 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_TxId_200 = erased
-- Ledger.Gov._.preoEpoch
d_preoEpoch_288 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_288 v0
  = let v1
          = MAlonzo.Code.Ledger.Transaction.d_govStructure_2110 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_512
            (coe v1)))
-- Ledger.Gov._.pvCanFollow
d_pvCanFollow_292 a0 a1 a2 = ()
-- Ledger.Gov._.GovAction
d_GovAction_576 a0 = ()
-- Ledger.Gov._.GovActionID
d_GovActionID_578 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovActionID_578 = erased
-- Ledger.Gov._.GovActionState
d_GovActionState_580 a0 = ()
-- Ledger.Gov._.GovProposal
d_GovProposal_582 a0 = ()
-- Ledger.Gov._.GovVote
d_GovVote_586 a0 = ()
-- Ledger.Gov._.NeedsHash
d_NeedsHash_592 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 -> ()
d_NeedsHash_592 = erased
-- Ledger.Gov._.Vote
d_Vote_608 a0 = ()
-- Ledger.Gov._.Voter
d_Voter_610 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Voter_610 = erased
-- Ledger.Gov._.actionWellFormed
d_actionWellFormed_616 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 -> ()
d_actionWellFormed_616 = erased
-- Ledger.Gov._.EnactState
d_EnactState_730 a0 = ()
-- Ledger.Gov._.canVote
d_canVote_818 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_562 -> ()
d_canVote_818 = erased
-- Ledger.Gov.GovState
d_GovState_898 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_GovState_898 = erased
-- Ledger.Gov.GovEnv
d_GovEnv_900 a0 = ()
data T_GovEnv_900
  = C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_922 AgdaAny AgdaAny
                                                    MAlonzo.Code.Ledger.PParams.T_PParams_220
                                                    (Maybe AgdaAny)
                                                    MAlonzo.Code.Ledger.Enact.T_EnactState_728
-- Ledger.Gov.GovEnv.txid
d_txid_912 :: T_GovEnv_900 -> AgdaAny
d_txid_912 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_922 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.epoch
d_epoch_914 :: T_GovEnv_900 -> AgdaAny
d_epoch_914 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_922 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.pparams
d_pparams_916 ::
  T_GovEnv_900 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_916 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_922 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.ppolicy
d_ppolicy_918 :: T_GovEnv_900 -> Maybe AgdaAny
d_ppolicy_918 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_922 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.enactState
d_enactState_920 ::
  T_GovEnv_900 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_enactState_920 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'44'_'10215''7501'_922 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__924 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOV'''10632'__924
  = C_GOV'45'Vote_1438 MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_GOV'45'Propose_1528 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Gov._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GovEnv_900 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__926 = erased
-- Ledger.Gov.addVote
d_addVote_952 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_624 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addVote_952 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20 () erased
      () erased
      (coe du_modifyVotes_966 (coe v0) (coe v2) (coe v3) (coe v4)) v1
-- Ledger.Gov._.modifyVotes
d_modifyVotes_966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_modifyVotes_966 v0 ~v1 v2 v3 v4 v5
  = du_modifyVotes_966 v0 v2 v3 v4 v5
du_modifyVotes_966 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_624 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_modifyVotes_966 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4167
         (coe
            MAlonzo.Code.Interface.ToBool.du_if_then_else__46
            (coe MAlonzo.Code.Interface.ToBool.du_ToBool'45''8263'_112) erased
            (coe
               MAlonzo.Code.Class.Decidable.Instances.du_DecEq'8658'Dec_16
               (coe
                  MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                  (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v1))
            (coe
               (\ v5 ->
                  coe
                    MAlonzo.Code.Axiom.Set.Map.du_insert_904
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1430
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (coe
                          MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                          (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_698)
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                (coe
                                   MAlonzo.Code.Ledger.Crypto.d_khs_192
                                   (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1108 (coe v0))))))
                    (coe
                       MAlonzo.Code.Ledger.GovernanceActions.d_votes_688
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                    (coe v2) (coe v3)))
            (coe
               (\ v5 ->
                  MAlonzo.Code.Ledger.GovernanceActions.d_votes_688
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_690
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_692
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_action_694
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_696
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- Ledger.Gov.ActionId×ActionState
d_ActionId'215'ActionState_976 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ActionId'215'ActionState_976 ~v0 v1 v2 v3 v4 v5
  = du_ActionId'215'ActionState_976 v1 v2 v3 v4 v5
du_ActionId'215'ActionState_976 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ActionId'215'ActionState_976 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4167
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
         (coe v2) (coe v0) (coe v3) (coe v4))
-- Ledger.Gov.addAction
d_addAction_990 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addAction_990 ~v0 v1 v2 v3 v4 v5 v6
  = du_addAction_990 v1 v2 v3 v4 v5 v6
du_addAction_990 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_addAction_990 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Base.du__'8759''691'__540 (coe v0)
      (coe
         du_ActionId'215'ActionState_976 (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- Ledger.Gov.validHFAction
d_validHFAction_1004 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_650 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 -> ()
d_validHFAction_1004 = erased
-- Ledger.Gov.getAidPairsList
d_getAidPairsList_1022 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsList_1022 ~v0 v1 = du_getAidPairsList_1022 v1
du_getAidPairsList_1022 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsList_1022 v0
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
                 MAlonzo.Code.Ledger.Enact.du_getHash_756
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_action_694
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_696
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))))))
      (coe v0)
-- Ledger.Gov.getAidPairsSet
d_getAidPairsSet_1034 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_getAidPairsSet_1034 ~v0 v1 = du_getAidPairsSet_1034 v1
du_getAidPairsSet_1034 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_getAidPairsSet_1034 v0
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
              MAlonzo.Code.Ledger.Enact.du_getHash_756
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.d_action_694
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))
              (coe
                 MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_696
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))))
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_410
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe v0))
-- Ledger.Gov._connects_to_
d__connects_to__1046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__connects_to__1046 = erased
-- Ledger.Gov.enactable
d_enactable_1062 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_enactable_1062 = erased
-- Ledger.Gov.allEnactable
d_allEnactable_1080 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_allEnactable_1080 = erased
-- Ledger.Gov.hasParentE
d_hasParentE_1086 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 -> ()
d_hasParentE_1086 = erased
-- Ledger.Gov.hasParent
d_hasParent_1100 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  AgdaAny -> ()
d_hasParent_1100 = erased
-- Ledger.Gov.hasParentE?
d_hasParentE'63'_1140 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParentE'63'_1140 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Ledger.Enact.du_getHashES_768 (coe v1) (coe v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
           -> coe
                MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                (coe
                   MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                   (coe
                      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0)))
                (coe (\ v6 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
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
d_hasParent'63'_1174 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_hasParent'63'_1174 v0 v1 v2 v3 v4
  = let v5
          = coe MAlonzo.Code.Ledger.Enact.du_getHash_756 (coe v3) (coe v4) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__84
                (coe d_hasParentE'63'_1140 (coe v0) (coe v1) (coe v6) (coe v3))
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
                   (coe
                      (\ v7 ->
                         coe
                           MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                           (coe
                              MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
                              (MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0))
                              (coe
                                 MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                 (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
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
d_hasParent''_1210 a0 a1 a2 a3 a4 = ()
newtype T_hasParent''_1210 = C_HasParent''_1220 AgdaAny
-- Ledger.Gov.hasParent?'
d_hasParent'63'''_1230 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_hasParent'63'''_1230 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
         (coe C_HasParent''_1220)
         (coe
            d_hasParent'63'_1174 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
-- Ledger.Gov.[_connects_to_?]
d_'91'_connects_to_'63''93'_1242 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'91'_connects_to_'63''93'_1242 v0 v1 v2 v3
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
             (coe
                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                (coe
                   MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0)))
             (coe (\ v4 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
             (coe v2) (coe v3)
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__84
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                       (coe
                          MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                             (coe
                                MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0)))
                          (coe (\ v8 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
                          (coe v6) (coe v2))
                       (coe
                          d_'91'_connects_to_'63''93'_1242 (coe v0) (coe v5) (coe v7)
                          (coe v3)))
                    (coe
                       d_'91'_connects_to_'63''93'_1242 (coe v0) (coe v5) (coe v2)
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.any?-connecting-subperm
d_any'63''45'connecting'45'subperm_1266 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63''45'connecting'45'subperm_1266 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
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
                             (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0))
                             (coe
                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
                          (coe
                             MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
                             (coe MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1074 (coe v0))
                             (coe
                                MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                                (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))))
                 v4)
              (coe
                 d_'91'_connects_to_'63''93'_1242 (coe v0) (coe v4) (coe v1)
                 (coe v2))))
      (coe MAlonzo.Code.Data.List.Ext.du_subpermutations_40 (coe v3))
-- Ledger.Gov.∃?-connecting-subperm
d_'8707''63''45'connecting'45'subperm_1284 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subperm_1284 v0 v1 v2 v3
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
      (d_any'63''45'connecting'45'subperm_1266
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Gov.∃?-connecting-subset
d_'8707''63''45'connecting'45'subset_1296 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8707''63''45'connecting'45'subset_1296 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
         (coe
            MAlonzo.Code.Data.List.Ext.Properties.du_'8707'uniqueSubset'8660''8707'uniqueSubperm_1104
            (coe ()) (coe v3)))
      (d_'8707''63''45'connecting'45'subperm_1284
         (coe v0) (coe v1) (coe v2) (coe v3))
-- Ledger.Gov.enactable?
d_enactable'63'_1306 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_enactable'63'_1306 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Ledger.Enact.du_getHashES_768 (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.GovernanceActions.d_action_694 (coe v5)) in
           coe
             (case coe v6 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v7
                  -> coe
                       MAlonzo.Code.Function.Bundles.d_from_1726
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8707''63''45'sublist'45''8660'_1054
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1430
                             (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                          (coe v2))
                       (d_'8707''63''45'connecting'45'subset_1296
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
d_allEnactable'63'_1342 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_allEnactable'63'_1342 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.du_all'63'_512
      (coe
         d_enactable'63'_1306 (coe v0) (coe v1)
         (coe du_getAidPairsList_1022 (coe v2)))
      (coe v2)
-- Ledger.Gov.allEnactable'
d_allEnactable''_1350 a0 a1 a2 = ()
newtype T_allEnactable''_1350
  = C_AllEnactable''_1356 MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
-- Ledger.Gov.allEnactable?'
d_allEnactable'63'''_1362 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_allEnactable'63'''_1362 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_150
         (coe C_AllEnactable''_1356)
         (coe d_allEnactable'63'_1342 (coe v0) (coe v1) (coe v2)))
-- Ledger.Gov.maxAllEnactable
d_maxAllEnactable_1368 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [[MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]]
d_maxAllEnactable_1368 v0 v1
  = coe
      MAlonzo.Code.Data.List.Ext.Properties.du_maxsublists'8871'P_958
      (coe d_allEnactable'63'_1342 (coe v0) (coe v1))
-- Ledger.Gov.∈-maxAllEnactable→allEnactable
d_'8712''45'maxAllEnactable'8594'allEnactable_1378 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_'8712''45'maxAllEnactable'8594'allEnactable_1378 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_530
         (d_allEnactable'63'_1342 (coe v0) (coe v1)) v3
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
                          (coe d_allEnactable'63'_1342 (coe v0) (coe v1)) (coe v2))))
               v3
               (coe
                  MAlonzo.Code.Data.List.Base.du_filter_740
                  (coe d_allEnactable'63'_1342 (coe v0) (coe v1))
                  (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)))
               v4)))
-- Ledger.Gov.∈-maxAllEnactable→maxLength
d_'8712''45'maxAllEnactable'8594'maxLength_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_'8712''45'maxAllEnactable'8594'maxLength_1398 v0 v1 v2 ~v3 ~v4 v5
                                                v6 ~v7
  = du_'8712''45'maxAllEnactable'8594'maxLength_1398 v0 v1 v2 v5 v6
du_'8712''45'maxAllEnactable'8594'maxLength_1398 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_'8712''45'maxAllEnactable'8594'maxLength_1398 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Ext.Properties.du_'8712''45'maxlen'45''8804'_244
      (coe
         MAlonzo.Code.Data.List.Base.du_filter_740
         (coe d_allEnactable'63'_1342 (coe v0) (coe v1))
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)))
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_524
         (d_allEnactable'63'_1342 (coe v0) (coe v1))
         (coe MAlonzo.Code.Data.List.Ext.du_sublists_20 (coe v2)) v3 v4)
-- Ledger.Gov._.enactState
d_enactState_1426 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_34653 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_enactState_1426 ~v0 v1 ~v2 ~v3 = du_enactState_1426 v1
du_enactState_1426 ::
  T_GeneralizeTel_34653 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
du_enactState_1426 v0
  = coe d_enactState_920 (coe d_'46'generalizedField'45'Γ_34641 v0)
-- Ledger.Gov._.epoch
d_epoch_1428 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_34653 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  AgdaAny
d_epoch_1428 ~v0 v1 ~v2 ~v3 = du_epoch_1428 v1
du_epoch_1428 :: T_GeneralizeTel_34653 -> AgdaAny
du_epoch_1428 v0
  = coe d_epoch_914 (coe d_'46'generalizedField'45'Γ_34641 v0)
-- Ledger.Gov._.pparams
d_pparams_1430 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_34653 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_1430 ~v0 v1 ~v2 ~v3 = du_pparams_1430 v1
du_pparams_1430 ::
  T_GeneralizeTel_34653 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
du_pparams_1430 v0
  = coe d_pparams_916 (coe d_'46'generalizedField'45'Γ_34641 v0)
-- Ledger.Gov._.ppolicy
d_ppolicy_1432 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_34653 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  Maybe AgdaAny
d_ppolicy_1432 ~v0 v1 ~v2 ~v3 = du_ppolicy_1432 v1
du_ppolicy_1432 :: T_GeneralizeTel_34653 -> Maybe AgdaAny
du_ppolicy_1432 v0
  = coe d_ppolicy_918 (coe d_'46'generalizedField'45'Γ_34641 v0)
-- Ledger.Gov._.txid
d_txid_1434 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_34653 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_676 ->
  AgdaAny
d_txid_1434 ~v0 v1 ~v2 ~v3 = du_txid_1434 v1
du_txid_1434 :: T_GeneralizeTel_34653 -> AgdaAny
du_txid_1434 v0
  = coe d_txid_912 (coe d_'46'generalizedField'45'Γ_34641 v0)
-- Ledger.Gov._.enactState
d_enactState_1444 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_37037 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 ->
  MAlonzo.Code.Ledger.Enact.T_EnactState_728
d_enactState_1444 ~v0 v1 ~v2 = du_enactState_1444 v1
du_enactState_1444 ::
  T_GeneralizeTel_37037 -> MAlonzo.Code.Ledger.Enact.T_EnactState_728
du_enactState_1444 v0
  = coe d_enactState_920 (coe d_'46'generalizedField'45'Γ_37021 v0)
-- Ledger.Gov._.epoch
d_epoch_1446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_37037 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 -> AgdaAny
d_epoch_1446 ~v0 v1 ~v2 = du_epoch_1446 v1
du_epoch_1446 :: T_GeneralizeTel_37037 -> AgdaAny
du_epoch_1446 v0
  = coe d_epoch_914 (coe d_'46'generalizedField'45'Γ_37021 v0)
-- Ledger.Gov._.pparams
d_pparams_1448 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_37037 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_1448 ~v0 v1 ~v2 = du_pparams_1448 v1
du_pparams_1448 ::
  T_GeneralizeTel_37037 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
du_pparams_1448 v0
  = coe d_pparams_916 (coe d_'46'generalizedField'45'Γ_37021 v0)
-- Ledger.Gov._.ppolicy
d_ppolicy_1450 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_37037 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 -> Maybe AgdaAny
d_ppolicy_1450 ~v0 v1 ~v2 = du_ppolicy_1450 v1
du_ppolicy_1450 :: T_GeneralizeTel_37037 -> Maybe AgdaAny
du_ppolicy_1450 v0
  = coe d_ppolicy_918 (coe d_'46'generalizedField'45'Γ_37021 v0)
-- Ledger.Gov._.txid
d_txid_1452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_37037 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 -> AgdaAny
d_txid_1452 ~v0 v1 ~v2 = du_txid_1452 v1
du_txid_1452 :: T_GeneralizeTel_37037 -> AgdaAny
du_txid_1452 v0
  = coe d_txid_912 (coe d_'46'generalizedField'45'Γ_37021 v0)
-- Ledger.Gov._.govActionDeposit
d_govActionDeposit_1478 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_37037 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 -> Integer
d_govActionDeposit_1478 ~v0 v1 ~v2 = du_govActionDeposit_1478 v1
du_govActionDeposit_1478 :: T_GeneralizeTel_37037 -> Integer
du_govActionDeposit_1478 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_328
      (coe d_pparams_916 (coe d_'46'generalizedField'45'Γ_37021 v0))
-- Ledger.Gov._.govActionLifetime
d_govActionLifetime_1480 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  T_GeneralizeTel_37037 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 -> Integer
d_govActionLifetime_1480 ~v0 v1 ~v2 = du_govActionLifetime_1480 v1
du_govActionLifetime_1480 :: T_GeneralizeTel_37037 -> Integer
du_govActionLifetime_1480 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionLifetime_326
      (coe d_pparams_916 (coe d_'46'generalizedField'45'Γ_37021 v0))
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_34641 ::
  T_GeneralizeTel_34653 -> T_GovEnv_900
d_'46'generalizedField'45'Γ_34641 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-aid
d_'46'generalizedField'45'aid_34643 ::
  T_GeneralizeTel_34653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'aid_34643
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-voter
d_'46'generalizedField'45'voter_34645 ::
  T_GeneralizeTel_34653 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'voter_34645
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-v
d_'46'generalizedField'45'v_34647 ::
  T_GeneralizeTel_34653 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_624
d_'46'generalizedField'45'v_34647 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_34649 ::
  T_GeneralizeTel_34653 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_34649 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_34651 ::
  T_GeneralizeTel_34653 -> Integer
d_'46'generalizedField'45'k_34651 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_34653 a0 = ()
data T_GeneralizeTel_34653
  = C_mkGeneralizeTel_34655 T_GovEnv_900
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Vote_624
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_37021 ::
  T_GeneralizeTel_37037 -> T_GovEnv_900
d_'46'generalizedField'45'Γ_37021 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-addr
d_'46'generalizedField'45'addr_37023 ::
  T_GeneralizeTel_37037 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_'46'generalizedField'45'addr_37023
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-a
d_'46'generalizedField'45'a_37025 ::
  T_GeneralizeTel_37037 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592
d_'46'generalizedField'45'a_37025 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-p
d_'46'generalizedField'45'p_37027 ::
  T_GeneralizeTel_37037 -> Maybe AgdaAny
d_'46'generalizedField'45'p_37027 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-d
d_'46'generalizedField'45'd_37029 ::
  T_GeneralizeTel_37037 -> Integer
d_'46'generalizedField'45'd_37029 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-prev
d_'46'generalizedField'45'prev_37031 ::
  T_GeneralizeTel_37037 -> AgdaAny
d_'46'generalizedField'45'prev_37031
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_37033 ::
  T_GeneralizeTel_37037 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_37033 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_37035 ::
  T_GeneralizeTel_37037 -> Integer
d_'46'generalizedField'45'k_37035 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_37037 a0 = ()
data T_GeneralizeTel_37037
  = C_mkGeneralizeTel_37039 T_GovEnv_900
                            MAlonzo.Code.Ledger.Address.T_RwdAddr_58
                            MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592
                            (Maybe AgdaAny) Integer AgdaAny
                            [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
