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
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.DecEq.Ext
import qualified MAlonzo.Code.Interface.DecRel
import qualified MAlonzo.Code.Interface.Decidable.Instance
import qualified MAlonzo.Code.Interface.Functor
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovStructure
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- _._+ᵉ_
d__'43''7497'__8 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__8 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d__'43''7497'__220
      (coe
         MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412 (coe v0))
-- _.Credential
d_Credential_26 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_26 = erased
-- _.Epoch
d_Epoch_98 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_Epoch_98 = erased
-- _.PParams
d_PParams_134 a0 = ()
-- _.RwdAddr
d_RwdAddr_148 a0 a1 a2 a3 = ()
-- Ledger.Gov._.GovAction
d_GovAction_500 a0 = ()
-- Ledger.Gov._.GovActionID
d_GovActionID_502 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_GovActionID_502 = erased
-- Ledger.Gov._.GovProposal
d_GovProposal_504 a0 = ()
-- Ledger.Gov._.GovRole
d_GovRole_506 a0 = ()
-- Ledger.Gov._.GovVote
d_GovVote_508 a0 = ()
-- Ledger.Gov._.NeedsHash
d_NeedsHash_514 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 -> ()
d_NeedsHash_514 = erased
-- Ledger.Gov._.Vote
d_Vote_530 a0 = ()
-- Ledger.Gov._.actionWellFormed
d_actionWellFormed_536 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 -> Bool
d_actionWellFormed_536 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed_514
      (coe v0)
-- Ledger.Gov._.canVote
d_canVote_538 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_472 -> ()
d_canVote_538 = erased
-- Ledger.Gov.GovActionState
d_GovActionState_664 a0 = ()
data T_GovActionState_664
  = C_GovActionState'46'constructor_1113 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                         MAlonzo.Code.Ledger.Address.T_RwdAddr_58 AgdaAny
                                         MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498
                                         AgdaAny
-- Ledger.Gov.GovActionState.votes
d_votes_676 ::
  T_GovActionState_664 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_676 v0
  = case coe v0 of
      C_GovActionState'46'constructor_1113 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovActionState.returnAddr
d_returnAddr_678 ::
  T_GovActionState_664 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_678 v0
  = case coe v0 of
      C_GovActionState'46'constructor_1113 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovActionState.expiresIn
d_expiresIn_680 :: T_GovActionState_664 -> AgdaAny
d_expiresIn_680 v0
  = case coe v0 of
      C_GovActionState'46'constructor_1113 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovActionState.action
d_action_682 ::
  T_GovActionState_664 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498
d_action_682 v0
  = case coe v0 of
      C_GovActionState'46'constructor_1113 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovActionState.prevAction
d_prevAction_684 :: T_GovActionState_664 -> AgdaAny
d_prevAction_684 v0
  = case coe v0 of
      C_GovActionState'46'constructor_1113 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovState
d_GovState_686 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_GovState_686 = erased
-- Ledger.Gov.GovEnv
d_GovEnv_688 a0 = ()
data T_GovEnv_688
  = C_'10214'_'44'_'44'_'10215''7511'_702 AgdaAny AgdaAny
                                          MAlonzo.Code.Ledger.PParams.T_PParams_210
-- Ledger.Gov.GovEnv.txid
d_txid_696 :: T_GovEnv_688 -> AgdaAny
d_txid_696 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7511'_702 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.epoch
d_epoch_698 :: T_GovEnv_688 -> AgdaAny
d_epoch_698 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7511'_702 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.pparams
d_pparams_700 ::
  T_GovEnv_688 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_700 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7511'_702 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__704 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOV'''10632'__704
  = C_GOV'45'Vote_798 T_GovActionState_664
                      MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                      MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18 |
    C_GOV'45'Propose_874 (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                          [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
                          MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
                          MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
                          AgdaAny ->
                          MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Gov._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__706 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GovEnv_688 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__706 = erased
-- Ledger.Gov.modifyMatch
d_modifyMatch_738 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  () ->
  (AgdaAny -> Bool) -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_modifyMatch_738 ~v0 v1 ~v2 v3 v4 = du_modifyMatch_738 v1 v3 v4
du_modifyMatch_738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_14 ->
  (AgdaAny -> Bool) -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
du_modifyMatch_738 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.Functor.du_map_30
      MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 v0 erased v0
      erased
      (\ v3 ->
         coe
           MAlonzo.Code.Data.Bool.Base.du_if_then_else__42 (coe v1 v3)
           (coe v2 v3) (coe v3))
-- Ledger.Gov.addVote
d_addVote_746 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_472 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_662 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addVote_746 v0 v1 v2 v3 v4 v5
  = coe
      du_modifyMatch_738 ()
      (\ v6 ->
         coe
           MAlonzo.Code.Interface.DecRel.du__'8764''7495'__22 (coe ())
           (coe
              MAlonzo.Code.Interface.DecRel.C_DecRel'46'constructor_307
              (coe
                 MAlonzo.Code.Data.Product.Properties.du_'8801''45'dec_78
                 (coe
                    MAlonzo.Code.Interface.DecEq.d__'8799'__20
                    (coe
                       MAlonzo.Code.Ledger.GovStructure.d_DecEq'45'TxId_364 (coe v0)))
                 (coe (\ v7 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464))))
           (coe v2) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
      (\ v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
           (coe
              C_GovActionState'46'constructor_1113
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du_insert_698
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1414
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                    (coe
                       MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                       (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_786)
                       (coe
                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                (coe MAlonzo.Code.Ledger.GovStructure.d_crypto_368 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                             (coe MAlonzo.Code.Ledger.GovStructure.d_crypto_368 (coe v0))))))
                 (coe
                    d_votes_676
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
                 (coe v5))
              (coe
                 d_returnAddr_678
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
              (coe
                 d_expiresIn_680
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
              (coe
                 d_action_682
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
              (coe
                 d_prevAction_684
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))))
      v1
-- Ledger.Gov.addAction
d_addAction_770 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addAction_770 ~v0 v1 v2 v3 v4 v5 v6
  = du_addAction_770 v1 v2 v3 v4 v5 v6
du_addAction_770 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_addAction_770 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Base.du__'8759''691'__494 (coe v0)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
         (coe
            C_GovActionState'46'constructor_1113
            (coe
               MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
            (coe v3) (coe v1) (coe v4) (coe v5)))
-- Ledger.Gov._.epoch
d_epoch_790 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_5295 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 ->
  T_GovActionState_664 -> AgdaAny
d_epoch_790 ~v0 v1 ~v2 ~v3 = du_epoch_790 v1
du_epoch_790 :: T_GeneralizeTel_5295 -> AgdaAny
du_epoch_790 v0
  = coe d_epoch_698 (coe d_'46'generalizedField'45'Γ_5281 v0)
-- Ledger.Gov._.pparams
d_pparams_792 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_5295 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 ->
  T_GovActionState_664 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_792 ~v0 v1 ~v2 ~v3 = du_pparams_792 v1
du_pparams_792 ::
  T_GeneralizeTel_5295 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
du_pparams_792 v0
  = coe d_pparams_700 (coe d_'46'generalizedField'45'Γ_5281 v0)
-- Ledger.Gov._.txid
d_txid_794 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_5295 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 ->
  T_GovActionState_664 -> AgdaAny
d_txid_794 ~v0 v1 ~v2 ~v3 = du_txid_794 v1
du_txid_794 :: T_GeneralizeTel_5295 -> AgdaAny
du_txid_794 v0
  = coe d_txid_696 (coe d_'46'generalizedField'45'Γ_5281 v0)
-- Ledger.Gov._.epoch
d_epoch_804 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_7343 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 -> AgdaAny
d_epoch_804 ~v0 v1 ~v2 = du_epoch_804 v1
du_epoch_804 :: T_GeneralizeTel_7343 -> AgdaAny
du_epoch_804 v0
  = coe d_epoch_698 (coe d_'46'generalizedField'45'Γ_7329 v0)
-- Ledger.Gov._.pparams
d_pparams_806 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_7343 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_806 ~v0 v1 ~v2 = du_pparams_806 v1
du_pparams_806 ::
  T_GeneralizeTel_7343 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
du_pparams_806 v0
  = coe d_pparams_700 (coe d_'46'generalizedField'45'Γ_7329 v0)
-- Ledger.Gov._.txid
d_txid_808 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_7343 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 -> AgdaAny
d_txid_808 ~v0 v1 ~v2 = du_txid_808 v1
du_txid_808 :: T_GeneralizeTel_7343 -> AgdaAny
du_txid_808 v0
  = coe d_txid_696 (coe d_'46'generalizedField'45'Γ_7329 v0)
-- Ledger.Gov._.govActionDeposit
d_govActionDeposit_832 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_7343 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 -> Integer
d_govActionDeposit_832 ~v0 v1 ~v2 = du_govActionDeposit_832 v1
du_govActionDeposit_832 :: T_GeneralizeTel_7343 -> Integer
du_govActionDeposit_832 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304
      (coe d_pparams_700 (coe d_'46'generalizedField'45'Γ_7329 v0))
-- Ledger.Gov._.govActionLifetime
d_govActionLifetime_834 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_7343 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 -> Integer
d_govActionLifetime_834 ~v0 v1 ~v2 = du_govActionLifetime_834 v1
du_govActionLifetime_834 :: T_GeneralizeTel_7343 -> Integer
du_govActionLifetime_834 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302
      (coe d_pparams_700 (coe d_'46'generalizedField'45'Γ_7329 v0))
-- Ledger.Gov._.completeness
d_completeness_878 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_878 = erased
-- Ledger.Gov._.computeProof
d_computeProof_882 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeProof_882 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_88
      (coe v0)
-- Ledger.Gov.lookupActionId
d_lookupActionId_904 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_472 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupActionId_904 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.Any.du_any'63'_138
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
              (coe
                 MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                 (coe
                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                    (coe MAlonzo.Code.Ledger.GovStructure.d_DecEq'45'TxId_364 (coe v0))
                    (coe MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30))
                 (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
              (coe
                 MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45'IsJust_166
                 (coe
                    MAlonzo.Code.Ledger.GovernanceActions.d_threshold_530 v0 v1
                    (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                    (d_action_682
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                    v2))))
-- Ledger.Gov.isNewCommittee
d_isNewCommittee_922 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_isNewCommittee_922 ~v0 v1 = du_isNewCommittee_922 v1
du_isNewCommittee_922 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_isNewCommittee_922 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_500
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_502 v1 v2 v3
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) erased))))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_504 v1 v2
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_506 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_508 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_510 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_512
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.Computational-GOV'
d_Computational'45'GOV''_940 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'GOV''_940 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_176
      (\ v1 ->
         case coe v1 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
             -> case coe v2 of
                  C_'10214'_'44'_'44'_'10215''7511'_702 v4 v5 v6
                    -> coe
                         (\ v7 v8 ->
                            case coe v8 of
                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9
                                -> case coe v9 of
                                     MAlonzo.Code.Ledger.GovernanceActions.C_GovVote'46'constructor_8875 v10 v11 v12 v13 v14
                                       -> let v15 = coe d_lookupActionId_904 v0 v6 v11 v10 v7 in
                                          case coe v15 of
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v16 v17
                                              -> if coe v16
                                                   then case coe v17 of
                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v18
                                                            -> let v19
                                                                     = coe
                                                                         MAlonzo.Code.Function.Bundles.d_from_940
                                                                         (coe
                                                                            MAlonzo.Code.Function.Related.Propositional.du_'10518''8658'_82
                                                                            (coe
                                                                               MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                                                            (coe
                                                                               MAlonzo.Code.Function.Related.du_fromRelated_138
                                                                               (coe
                                                                                  MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
                                                                               (coe
                                                                                  MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core.du_Any'8596'_134
                                                                                  (coe v7))))
                                                                         v18 in
                                                               case coe v19 of
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v20 v21
                                                                   -> case coe v21 of
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                          -> case coe v23 of
                                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v24 v25
                                                                                 -> coe
                                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                         (coe
                                                                                            d_addVote_746
                                                                                            (coe v0)
                                                                                            (coe v7)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                               (coe
                                                                                                  v20))
                                                                                            (coe
                                                                                               v11)
                                                                                            (coe
                                                                                               v12)
                                                                                            (coe
                                                                                               v13))
                                                                                         (coe
                                                                                            C_GOV'45'Vote_798
                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                               (coe
                                                                                                  v20))
                                                                                            (coe
                                                                                               MAlonzo.Code.Function.Bundles.d_to_938
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                  (coe
                                                                                                     v7)
                                                                                                  (coe
                                                                                                     v20))
                                                                                               v22)
                                                                                            v25))
                                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   else coe
                                                          seq (coe v17)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9
                                -> case coe v9 of
                                     MAlonzo.Code.Ledger.GovernanceActions.C_GovProposal'46'constructor_9083 v10 v11 v12 v13 v14
                                       -> let v15
                                                = coe
                                                    MAlonzo.Code.Data.Product.Base.du__'44''8242'__60
                                                    (coe
                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                       (coe
                                                          MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                                                          (coe
                                                             MAlonzo.Code.Interface.DecEq.Ext.d_DecEq'45'Bool_6)
                                                          (coe
                                                             MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed_514
                                                             (coe v0) (coe v11))
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Bool.C_true_10))
                                                       (coe
                                                          MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                                                          (coe
                                                             MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                                          (coe v13)
                                                          (coe
                                                             MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304
                                                             (coe v6))))
                                                    (coe du_isNewCommittee_922 (coe v11)) in
                                          case coe v15 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                              -> case coe v16 of
                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v18 v19
                                                     -> let v20
                                                              = coe
                                                                  MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
                                                        case coe v18 of
                                                          MAlonzo.Code.Agda.Builtin.Bool.C_true_10
                                                            -> case coe v19 of
                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v21
                                                                   -> coe
                                                                        seq (coe v21)
                                                                        (case coe v17 of
                                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v22 v23
                                                                             -> if coe v22
                                                                                  then case coe
                                                                                              v23 of
                                                                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v24
                                                                                           -> case coe
                                                                                                     v24 of
                                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v25 v26
                                                                                                  -> case coe
                                                                                                            v26 of
                                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v27 v28
                                                                                                         -> case coe
                                                                                                                   v28 of
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v29 v30
                                                                                                                -> let v31
                                                                                                                         = coe
                                                                                                                             MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                             erased
                                                                                                                             (MAlonzo.Code.Ledger.Epoch.d_DecEq'45'Epoch_30
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                                                                                                   (coe
                                                                                                                                      v0)))
                                                                                                                             erased
                                                                                                                             (\ v31 ->
                                                                                                                                coe
                                                                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Interface.HasOrder.d_dec'45''60'_266
                                                                                                                                     (MAlonzo.Code.Ledger.Epoch.d_DecPo'45'Slot_34
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                                                                                                           (coe
                                                                                                                                              v0)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                                                                                        (MAlonzo.Code.Ledger.Epoch.d_firstSlot_40
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                                                                                                              (coe
                                                                                                                                                 v0)))
                                                                                                                                        (\ v32
                                                                                                                                           v33 ->
                                                                                                                                           v32)
                                                                                                                                        v5
                                                                                                                                        v31)
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                                                                                        (\ v32
                                                                                                                                           v33 ->
                                                                                                                                           v33)
                                                                                                                                        (MAlonzo.Code.Ledger.Epoch.d_firstSlot_40
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                                                                                                              (coe
                                                                                                                                                 v0)))
                                                                                                                                        v5
                                                                                                                                        v31))
                                                                                                                                  (coe
                                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                                                                                    (coe
                                                                                                                                                       v0))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                                                                                 (coe
                                                                                                                                                    v0))))
                                                                                                                                        erased
                                                                                                                                        (\ v32 ->
                                                                                                                                           coe
                                                                                                                                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                             erased
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                                                                                         (coe
                                                                                                                                                            v0))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                                                                                      (coe
                                                                                                                                                         v0))))
                                                                                                                                             v32
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Axiom.Set.du_'8709'_424
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))
                                                                                                                                        (let v32
                                                                                                                                               = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                                                                         coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.du__'8745'__686
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                              (coe
                                                                                                                                                 v32))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                              erased
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                                       (coe
                                                                                                                                                          MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                                                                                          (coe
                                                                                                                                                             v0))))
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                                    (coe
                                                                                                                                                       MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                                                                                       (coe
                                                                                                                                                          v0)))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Interface.IsSet.du_dom_478
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                                              (coe
                                                                                                                                                 v25))
                                                                                                                                           (coe
                                                                                                                                              v27)))
                                                                                                                                     (coe
                                                                                                                                        MAlonzo.Code.Axiom.Set.d_all'63'_1550
                                                                                                                                        MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                        erased
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                                 (coe
                                                                                                                                                    MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                                                                                    (coe
                                                                                                                                                       v0))))
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                                                                                 (coe
                                                                                                                                                    v0))))
                                                                                                                                        erased
                                                                                                                                        (\ v32 ->
                                                                                                                                           coe
                                                                                                                                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                                                                                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                             erased
                                                                                                                                             (coe
                                                                                                                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                                                                                         (coe
                                                                                                                                                            v0))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                                                                                      (coe
                                                                                                                                                         v0))))
                                                                                                                                             v32
                                                                                                                                             (let v33
                                                                                                                                                    = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                                                                                              coe
                                                                                                                                                MAlonzo.Code.Axiom.Set.du__'8745'__686
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                   (coe
                                                                                                                                                      v33))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                                                                                                   MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                                                                                                   erased
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                                                                                            (coe
                                                                                                                                                               MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                                                                                               (coe
                                                                                                                                                                  v0))))
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                                                                                         (coe
                                                                                                                                                            MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                                                                                            (coe
                                                                                                                                                               v0)))))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Interface.IsSet.du_dom_478
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                                      (coe
                                                                                                                                                         MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                                                   (coe
                                                                                                                                                      v25))
                                                                                                                                                (coe
                                                                                                                                                   v27)))
                                                                                                                                        (coe
                                                                                                                                           MAlonzo.Code.Axiom.Set.du_'8709'_424
                                                                                                                                           (coe
                                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                              (coe
                                                                                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))))))
                                                                                                                             (coe
                                                                                                                                MAlonzo.Code.Interface.IsSet.du_range_480
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Axiom.Set.d_th_1414
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                                                                                (coe
                                                                                                                                   MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                                                                                                (coe
                                                                                                                                   v25)) in
                                                                                                                   case coe
                                                                                                                          v31 of
                                                                                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v32 v33
                                                                                                                       -> if coe
                                                                                                                               v32
                                                                                                                            then case coe
                                                                                                                                        v33 of
                                                                                                                                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v34
                                                                                                                                     -> coe
                                                                                                                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                                                          (coe
                                                                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                             (coe
                                                                                                                                                du_addAction_770
                                                                                                                                                (coe
                                                                                                                                                   v7)
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.Epoch.d__'43''7497'__220
                                                                                                                                                   (coe
                                                                                                                                                      MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                                                                                                                      (coe
                                                                                                                                                         v0))
                                                                                                                                                   (let v35
                                                                                                                                                          = coe
                                                                                                                                                              C_mkGeneralizeTel_7345
                                                                                                                                                              (coe
                                                                                                                                                                 v2)
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_502
                                                                                                                                                                 (coe
                                                                                                                                                                    v25)
                                                                                                                                                                 (coe
                                                                                                                                                                    v27)
                                                                                                                                                                 (coe
                                                                                                                                                                    v29))
                                                                                                                                                              (coe
                                                                                                                                                                 v13)
                                                                                                                                                              (coe
                                                                                                                                                                 v10)
                                                                                                                                                              (coe
                                                                                                                                                                 v12)
                                                                                                                                                              (coe
                                                                                                                                                                 v7)
                                                                                                                                                              (coe
                                                                                                                                                                 v3) in
                                                                                                                                                    coe
                                                                                                                                                      MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302
                                                                                                                                                      (coe
                                                                                                                                                         d_pparams_700
                                                                                                                                                         (coe
                                                                                                                                                            d_'46'generalizedField'45'Γ_7329
                                                                                                                                                            v35)))
                                                                                                                                                   (let v35
                                                                                                                                                          = coe
                                                                                                                                                              C_mkGeneralizeTel_7345
                                                                                                                                                              (coe
                                                                                                                                                                 v2)
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_502
                                                                                                                                                                 (coe
                                                                                                                                                                    v25)
                                                                                                                                                                 (coe
                                                                                                                                                                    v27)
                                                                                                                                                                 (coe
                                                                                                                                                                    v29))
                                                                                                                                                              (coe
                                                                                                                                                                 v13)
                                                                                                                                                              (coe
                                                                                                                                                                 v10)
                                                                                                                                                              (coe
                                                                                                                                                                 v12)
                                                                                                                                                              (coe
                                                                                                                                                                 v7)
                                                                                                                                                              (coe
                                                                                                                                                                 v3) in
                                                                                                                                                    coe
                                                                                                                                                      d_epoch_698
                                                                                                                                                      (coe
                                                                                                                                                         d_'46'generalizedField'45'Γ_7329
                                                                                                                                                         v35)))
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                                                   (let v35
                                                                                                                                                          = coe
                                                                                                                                                              C_mkGeneralizeTel_7345
                                                                                                                                                              (coe
                                                                                                                                                                 v2)
                                                                                                                                                              (coe
                                                                                                                                                                 MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_502
                                                                                                                                                                 (coe
                                                                                                                                                                    v25)
                                                                                                                                                                 (coe
                                                                                                                                                                    v27)
                                                                                                                                                                 (coe
                                                                                                                                                                    v29))
                                                                                                                                                              (coe
                                                                                                                                                                 v13)
                                                                                                                                                              (coe
                                                                                                                                                                 v10)
                                                                                                                                                              (coe
                                                                                                                                                                 v12)
                                                                                                                                                              (coe
                                                                                                                                                                 v7)
                                                                                                                                                              (coe
                                                                                                                                                                 v3) in
                                                                                                                                                    coe
                                                                                                                                                      d_txid_696
                                                                                                                                                      (coe
                                                                                                                                                         d_'46'generalizedField'45'Γ_7329
                                                                                                                                                         v35))
                                                                                                                                                   (coe
                                                                                                                                                      v3))
                                                                                                                                                (coe
                                                                                                                                                   v10)
                                                                                                                                                (coe
                                                                                                                                                   MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_502
                                                                                                                                                   (coe
                                                                                                                                                      v25)
                                                                                                                                                   (coe
                                                                                                                                                      v27)
                                                                                                                                                   (coe
                                                                                                                                                      v29))
                                                                                                                                                (coe
                                                                                                                                                   v12))
                                                                                                                                             (coe
                                                                                                                                                C_GOV'45'Propose_874
                                                                                                                                                (\ v35
                                                                                                                                                   v36
                                                                                                                                                   v37
                                                                                                                                                   v38
                                                                                                                                                   v39 ->
                                                                                                                                                   coe
                                                                                                                                                     v34
                                                                                                                                                     v39)))
                                                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                                            else coe
                                                                                                                                   seq
                                                                                                                                   (coe
                                                                                                                                      v33)
                                                                                                                                   (coe
                                                                                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                                         _ -> coe
                                                                                                v20
                                                                                  else (case coe
                                                                                               v23 of
                                                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30
                                                                                            -> coe
                                                                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                    (coe
                                                                                                       du_addAction_770
                                                                                                       (coe
                                                                                                          v7)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Epoch.d__'43''7497'__220
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                                                                             (coe
                                                                                                                v0))
                                                                                                          (let v25
                                                                                                                 = coe
                                                                                                                     C_mkGeneralizeTel_7345
                                                                                                                     (coe
                                                                                                                        v2)
                                                                                                                     (coe
                                                                                                                        v11)
                                                                                                                     (coe
                                                                                                                        v13)
                                                                                                                     (coe
                                                                                                                        v10)
                                                                                                                     (coe
                                                                                                                        v12)
                                                                                                                     (coe
                                                                                                                        v7)
                                                                                                                     (coe
                                                                                                                        v3) in
                                                                                                           coe
                                                                                                             MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302
                                                                                                             (coe
                                                                                                                d_pparams_700
                                                                                                                (coe
                                                                                                                   d_'46'generalizedField'45'Γ_7329
                                                                                                                   v25)))
                                                                                                          (let v25
                                                                                                                 = coe
                                                                                                                     C_mkGeneralizeTel_7345
                                                                                                                     (coe
                                                                                                                        v2)
                                                                                                                     (coe
                                                                                                                        v11)
                                                                                                                     (coe
                                                                                                                        v13)
                                                                                                                     (coe
                                                                                                                        v10)
                                                                                                                     (coe
                                                                                                                        v12)
                                                                                                                     (coe
                                                                                                                        v7)
                                                                                                                     (coe
                                                                                                                        v3) in
                                                                                                           coe
                                                                                                             d_epoch_698
                                                                                                             (coe
                                                                                                                d_'46'generalizedField'45'Γ_7329
                                                                                                                v25)))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                          (let v25
                                                                                                                 = coe
                                                                                                                     C_mkGeneralizeTel_7345
                                                                                                                     (coe
                                                                                                                        v2)
                                                                                                                     (coe
                                                                                                                        v11)
                                                                                                                     (coe
                                                                                                                        v13)
                                                                                                                     (coe
                                                                                                                        v10)
                                                                                                                     (coe
                                                                                                                        v12)
                                                                                                                     (coe
                                                                                                                        v7)
                                                                                                                     (coe
                                                                                                                        v3) in
                                                                                                           coe
                                                                                                             d_txid_696
                                                                                                             (coe
                                                                                                                d_'46'generalizedField'45'Γ_7329
                                                                                                                v25))
                                                                                                          (coe
                                                                                                             v3))
                                                                                                       (coe
                                                                                                          v10)
                                                                                                       (coe
                                                                                                          v11)
                                                                                                       (coe
                                                                                                          v12))
                                                                                                    (coe
                                                                                                       C_GOV'45'Propose_874
                                                                                                       (\ v25
                                                                                                          v26
                                                                                                          v27
                                                                                                          v28
                                                                                                          v29 ->
                                                                                                          coe
                                                                                                            MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)))
                                                                                          _ -> coe
                                                                                                 v20)
                                                                           _ -> MAlonzo.RTE.mazUnreachableError)
                                                                 _ -> coe
                                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                          _ -> coe
                                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                            _ -> MAlonzo.RTE.mazUnreachableError
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError)
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Gov.Computational-GOV
d_Computational'45'GOV_1184 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'GOV_1184 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'SS'8658'BS'7522''7495'_572
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'Id_424)
      (coe d_Computational'45'GOV''_940 (coe v0))
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_5281 ::
  T_GeneralizeTel_5295 -> T_GovEnv_688
d_'46'generalizedField'45'Γ_5281 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-aid
d_'46'generalizedField'45'aid_5283 ::
  T_GeneralizeTel_5295 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'aid_5283
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_5285 ::
  T_GeneralizeTel_5295 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_5285 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-role
d_'46'generalizedField'45'role_5287 ::
  T_GeneralizeTel_5295 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_472
d_'46'generalizedField'45'role_5287
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-cred
d_'46'generalizedField'45'cred_5289 ::
  T_GeneralizeTel_5295 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'cred_5289
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-v
d_'46'generalizedField'45'v_5291 ::
  T_GeneralizeTel_5295 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_662
d_'46'generalizedField'45'v_5291 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_5293 :: T_GeneralizeTel_5295 -> Integer
d_'46'generalizedField'45'k_5293 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_5295 a0 = ()
data T_GeneralizeTel_5295
  = C_mkGeneralizeTel_5297 T_GovEnv_688
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                           MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_472
                           MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                           MAlonzo.Code.Ledger.GovernanceActions.T_Vote_662 Integer
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_7329 ::
  T_GeneralizeTel_7343 -> T_GovEnv_688
d_'46'generalizedField'45'Γ_7329 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-a
d_'46'generalizedField'45'a_7331 ::
  T_GeneralizeTel_7343 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498
d_'46'generalizedField'45'a_7331 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-d
d_'46'generalizedField'45'd_7333 :: T_GeneralizeTel_7343 -> Integer
d_'46'generalizedField'45'd_7333 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-addr
d_'46'generalizedField'45'addr_7335 ::
  T_GeneralizeTel_7343 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_'46'generalizedField'45'addr_7335
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-prev
d_'46'generalizedField'45'prev_7337 ::
  T_GeneralizeTel_7343 -> AgdaAny
d_'46'generalizedField'45'prev_7337
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_7339 ::
  T_GeneralizeTel_7343 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_7339 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_7341 :: T_GeneralizeTel_7343 -> Integer
d_'46'generalizedField'45'k_7341 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_7343 a0 = ()
data T_GeneralizeTel_7343
  = C_mkGeneralizeTel_7345 T_GovEnv_688
                           MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_498 Integer
                           MAlonzo.Code.Ledger.Address.T_RwdAddr_58 AgdaAny
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
