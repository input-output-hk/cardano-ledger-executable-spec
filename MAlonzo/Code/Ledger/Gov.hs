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
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.DecRel
import qualified MAlonzo.Code.Interface.Functor
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovStructure
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory

-- _._+ᵉ_
d__'43''7497'__8 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__8 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d__'43''7497'__220
      (coe
         MAlonzo.Code.Ledger.GovStructure.d_epochStructure_416 (coe v0))
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
-- _.preoEpoch
d_preoEpoch_266 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_266 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_preoEpoch_46
      (coe
         MAlonzo.Code.Ledger.GovStructure.d_epochStructure_416 (coe v0))
-- Ledger.Gov._.GovAction
d_GovAction_504 a0 = ()
-- Ledger.Gov._.GovActionID
d_GovActionID_506 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_GovActionID_506 = erased
-- Ledger.Gov._.GovProposal
d_GovProposal_508 a0 = ()
-- Ledger.Gov._.GovRole
d_GovRole_510 a0 = ()
-- Ledger.Gov._.GovVote
d_GovVote_512 a0 = ()
-- Ledger.Gov._.NeedsHash
d_NeedsHash_518 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504 -> ()
d_NeedsHash_518 = erased
-- Ledger.Gov._.Vote
d_Vote_534 a0 = ()
-- Ledger.Gov._.actionWellFormed
d_actionWellFormed_540 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504 -> Bool
d_actionWellFormed_540 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed_520
      (coe v0)
-- Ledger.Gov._.canVote
d_canVote_542 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_478 -> ()
d_canVote_542 = erased
-- Ledger.Gov.GovActionState
d_GovActionState_668 a0 = ()
data T_GovActionState_668
  = C_GovActionState'46'constructor_1131 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                         MAlonzo.Code.Ledger.Address.T_RwdAddr_58 AgdaAny
                                         MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504
                                         AgdaAny
-- Ledger.Gov.GovActionState.votes
d_votes_680 ::
  T_GovActionState_668 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_680 v0
  = case coe v0 of
      C_GovActionState'46'constructor_1131 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovActionState.returnAddr
d_returnAddr_682 ::
  T_GovActionState_668 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_returnAddr_682 v0
  = case coe v0 of
      C_GovActionState'46'constructor_1131 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovActionState.expiresIn
d_expiresIn_684 :: T_GovActionState_668 -> AgdaAny
d_expiresIn_684 v0
  = case coe v0 of
      C_GovActionState'46'constructor_1131 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovActionState.action
d_action_686 ::
  T_GovActionState_668 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504
d_action_686 v0
  = case coe v0 of
      C_GovActionState'46'constructor_1131 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovActionState.prevAction
d_prevAction_688 :: T_GovActionState_668 -> AgdaAny
d_prevAction_688 v0
  = case coe v0 of
      C_GovActionState'46'constructor_1131 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovState
d_GovState_690 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_GovState_690 = erased
-- Ledger.Gov.GovEnv
d_GovEnv_692 a0 = ()
data T_GovEnv_692
  = C_'10214'_'44'_'44'_'10215''7511'_706 AgdaAny AgdaAny
                                          MAlonzo.Code.Ledger.PParams.T_PParams_210
-- Ledger.Gov.GovEnv.txid
d_txid_700 :: T_GovEnv_692 -> AgdaAny
d_txid_700 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7511'_706 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.epoch
d_epoch_702 :: T_GovEnv_692 -> AgdaAny
d_epoch_702 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7511'_706 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GovEnv.pparams
d_pparams_704 ::
  T_GovEnv_692 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_704 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7511'_706 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov._⊢_⇀⦇_,GOV'⦈_
d__'8866'_'8640''10631'_'44'GOV'''10632'__708 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOV'''10632'__708
  = C_GOV'45'Vote_802 T_GovActionState_668
                      MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
                      MAlonzo.Code.Data.Maybe.Relation.Unary.Any.T_Any_18 |
    C_GOV'45'Propose_878 (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                          [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
                          MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
                          MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
                          AgdaAny ->
                          MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Gov._⊢_⇀⦇_,GOV⦈_
d__'8866'_'8640''10631'_'44'GOV'10632'__710 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GovEnv_692 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOV'10632'__710 = erased
-- Ledger.Gov.modifyMatch
d_modifyMatch_742 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> Bool) -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_modifyMatch_742 ~v0 v1 ~v2 v3 v4 = du_modifyMatch_742 v1 v3 v4
du_modifyMatch_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> Bool) -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
du_modifyMatch_742 v0 v1 v2
  = coe
      MAlonzo.Code.Interface.Functor.du_map_30
      MAlonzo.Code.Interface.Functor.d_Functor'45'List_100 v0 erased v0
      erased
      (\ v3 ->
         coe
           MAlonzo.Code.Data.Bool.Base.du_if_then_else__42 (coe v1 v3)
           (coe v2 v3) (coe v3))
-- Ledger.Gov.addVote
d_addVote_750 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_478 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_668 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addVote_750 v0 v1 v2 v3 v4 v5
  = coe
      du_modifyMatch_742 ()
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
                       MAlonzo.Code.Ledger.GovStructure.d_DecEq'45'TxId_368 (coe v0)))
                 (coe (\ v7 -> MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))))
           (coe v2) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
      (\ v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
           (coe
              C_GovActionState'46'constructor_1131
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
                       (coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_792)
                       (coe
                          MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                             (coe
                                MAlonzo.Code.Ledger.Crypto.d_khs_216
                                (coe MAlonzo.Code.Ledger.GovStructure.d_crypto_372 (coe v0))))
                          (coe
                             MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                             (coe MAlonzo.Code.Ledger.GovStructure.d_crypto_372 (coe v0))))))
                 (coe
                    d_votes_680
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
                 (coe v5))
              (coe
                 d_returnAddr_682
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
              (coe
                 d_expiresIn_684
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
              (coe
                 d_action_686
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
              (coe
                 d_prevAction_688
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))))
      v1
-- Ledger.Gov.addAction
d_addAction_774 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_addAction_774 ~v0 v1 v2 v3 v4 v5 v6
  = du_addAction_774 v1 v2 v3 v4 v5 v6
du_addAction_774 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_58 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504 ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_addAction_774 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Base.du__'8759''691'__540 (coe v0)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
         (coe
            C_GovActionState'46'constructor_1131
            (coe
               MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_492
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1414
                  (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
            (coe v3) (coe v1) (coe v4) (coe v5)))
-- Ledger.Gov._.epoch
d_epoch_794 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_5331 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494 ->
  T_GovActionState_668 -> AgdaAny
d_epoch_794 ~v0 v1 ~v2 ~v3 = du_epoch_794 v1
du_epoch_794 :: T_GeneralizeTel_5331 -> AgdaAny
du_epoch_794 v0
  = coe d_epoch_702 (coe d_'46'generalizedField'45'Γ_5317 v0)
-- Ledger.Gov._.pparams
d_pparams_796 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_5331 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494 ->
  T_GovActionState_668 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_796 ~v0 v1 ~v2 ~v3 = du_pparams_796 v1
du_pparams_796 ::
  T_GeneralizeTel_5331 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
du_pparams_796 v0
  = coe d_pparams_704 (coe d_'46'generalizedField'45'Γ_5317 v0)
-- Ledger.Gov._.txid
d_txid_798 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_5331 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494 ->
  T_GovActionState_668 -> AgdaAny
d_txid_798 ~v0 v1 ~v2 ~v3 = du_txid_798 v1
du_txid_798 :: T_GeneralizeTel_5331 -> AgdaAny
du_txid_798 v0
  = coe d_txid_700 (coe d_'46'generalizedField'45'Γ_5317 v0)
-- Ledger.Gov._.epoch
d_epoch_808 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_7387 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494 -> AgdaAny
d_epoch_808 ~v0 v1 ~v2 = du_epoch_808 v1
du_epoch_808 :: T_GeneralizeTel_7387 -> AgdaAny
du_epoch_808 v0
  = coe d_epoch_702 (coe d_'46'generalizedField'45'Γ_7373 v0)
-- Ledger.Gov._.pparams
d_pparams_810 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_7387 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_810 ~v0 v1 ~v2 = du_pparams_810 v1
du_pparams_810 ::
  T_GeneralizeTel_7387 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
du_pparams_810 v0
  = coe d_pparams_704 (coe d_'46'generalizedField'45'Γ_7373 v0)
-- Ledger.Gov._.txid
d_txid_812 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_7387 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494 -> AgdaAny
d_txid_812 ~v0 v1 ~v2 = du_txid_812 v1
du_txid_812 :: T_GeneralizeTel_7387 -> AgdaAny
du_txid_812 v0
  = coe d_txid_700 (coe d_'46'generalizedField'45'Γ_7373 v0)
-- Ledger.Gov._.govActionDeposit
d_govActionDeposit_836 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_7387 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494 -> Integer
d_govActionDeposit_836 ~v0 v1 ~v2 = du_govActionDeposit_836 v1
du_govActionDeposit_836 :: T_GeneralizeTel_7387 -> Integer
du_govActionDeposit_836 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionDeposit_304
      (coe d_pparams_704 (coe d_'46'generalizedField'45'Γ_7373 v0))
-- Ledger.Gov._.govActionLifetime
d_govActionLifetime_838 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_7387 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494 -> Integer
d_govActionLifetime_838 ~v0 v1 ~v2 = du_govActionLifetime_838 v1
du_govActionLifetime_838 :: T_GeneralizeTel_7387 -> Integer
du_govActionLifetime_838 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_govActionLifetime_302
      (coe d_pparams_704 (coe d_'46'generalizedField'45'Γ_7373 v0))
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_5317 ::
  T_GeneralizeTel_5331 -> T_GovEnv_692
d_'46'generalizedField'45'Γ_5317 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-aid
d_'46'generalizedField'45'aid_5319 ::
  T_GeneralizeTel_5331 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'aid_5319
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-role
d_'46'generalizedField'45'role_5321 ::
  T_GeneralizeTel_5331 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_478
d_'46'generalizedField'45'role_5321
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-cred
d_'46'generalizedField'45'cred_5323 ::
  T_GeneralizeTel_5331 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'cred_5323
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-v
d_'46'generalizedField'45'v_5325 ::
  T_GeneralizeTel_5331 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_668
d_'46'generalizedField'45'v_5325 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_5327 ::
  T_GeneralizeTel_5331 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_5327 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_5329 :: T_GeneralizeTel_5331 -> Integer
d_'46'generalizedField'45'k_5329 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_5331 a0 = ()
data T_GeneralizeTel_5331
  = C_mkGeneralizeTel_5333 T_GovEnv_692
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Ledger.GovernanceActions.T_GovRole_478
                           MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                           MAlonzo.Code.Ledger.GovernanceActions.T_Vote_668
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
-- Ledger.Gov..generalizedField-Γ
d_'46'generalizedField'45'Γ_7373 ::
  T_GeneralizeTel_7387 -> T_GovEnv_692
d_'46'generalizedField'45'Γ_7373 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-addr
d_'46'generalizedField'45'addr_7375 ::
  T_GeneralizeTel_7387 -> MAlonzo.Code.Ledger.Address.T_RwdAddr_58
d_'46'generalizedField'45'addr_7375
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-a
d_'46'generalizedField'45'a_7377 ::
  T_GeneralizeTel_7387 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504
d_'46'generalizedField'45'a_7377 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-d
d_'46'generalizedField'45'd_7379 :: T_GeneralizeTel_7387 -> Integer
d_'46'generalizedField'45'd_7379 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-prev
d_'46'generalizedField'45'prev_7381 ::
  T_GeneralizeTel_7387 -> AgdaAny
d_'46'generalizedField'45'prev_7381
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-s
d_'46'generalizedField'45's_7383 ::
  T_GeneralizeTel_7387 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45's_7383 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov..generalizedField-k
d_'46'generalizedField'45'k_7385 :: T_GeneralizeTel_7387 -> Integer
d_'46'generalizedField'45'k_7385 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Gov.GeneralizeTel
d_GeneralizeTel_7387 a0 = ()
data T_GeneralizeTel_7387
  = C_mkGeneralizeTel_7389 T_GovEnv_692
                           MAlonzo.Code.Ledger.Address.T_RwdAddr_58
                           MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_504 Integer
                           AgdaAny [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] Integer
