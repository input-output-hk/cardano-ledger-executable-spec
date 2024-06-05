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

module MAlonzo.Code.Ledger.Enact where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure

-- _._+ᵉ_
d__'43''7497'__8 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__8 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_512
         (coe v0))
-- _.Credential
d_Credential_24 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_24 = erased
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_72 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_72 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_72 v1 v2 v3
du_DecEq'45'RwdAddr_72 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_72 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_158 (coe v0)
      (coe v1) (coe v2)
-- _.Epoch
d_Epoch_104 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_104 = erased
-- _.PParams
d_PParams_144 a0 = ()
-- _.ProtVer
d_ProtVer_154 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_ProtVer_154 = erased
-- _.RwdAddr
d_RwdAddr_158 a0 a1 a2 a3 = ()
-- _.ScriptHash
d_ScriptHash_172 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_ScriptHash_172 = erased
-- _.UpdateT
d_UpdateT_198 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_UpdateT_198 = erased
-- _.applyUpdate
d_applyUpdate_216 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_220 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_applyUpdate_216 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1120
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1166
         (coe
            MAlonzo.Code.Ledger.Types.GovStructure.d_govParams_910 (coe v0)))
-- _.preoEpoch
d_preoEpoch_286 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_286 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_512
         (coe v0))
-- Ledger.Enact._.GovAction
d_GovAction_574 a0 = ()
-- Ledger.Enact._.GovActionID
d_GovActionID_576 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovActionID_576 = erased
-- Ledger.Enact._.HashProtected
d_HashProtected_586 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> () -> ()
d_HashProtected_586 = erased
-- Ledger.Enact._.NeedsHash
d_NeedsHash_590 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 -> ()
d_NeedsHash_590 = erased
-- Ledger.Enact.EnactEnv
d_EnactEnv_712 a0 = ()
data T_EnactEnv_712
  = C_'10214'_'44'_'44'_'10215''7497'_726 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          Integer AgdaAny
-- Ledger.Enact.EnactEnv.gid
d_gid_720 ::
  T_EnactEnv_712 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_720 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7497'_726 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactEnv.treasury
d_treasury_722 :: T_EnactEnv_712 -> Integer
d_treasury_722 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7497'_726 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactEnv.epoch
d_epoch_724 :: T_EnactEnv_712 -> AgdaAny
d_epoch_724 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7497'_726 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState
d_EnactState_728 a0 = ()
data T_EnactState_728
  = C_EnactState'46'constructor_1309 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Enact.EnactState.cc
d_cc_740 ::
  T_EnactState_728 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cc_740 v0
  = case coe v0 of
      C_EnactState'46'constructor_1309 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.constitution
d_constitution_742 ::
  T_EnactState_728 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_742 v0
  = case coe v0 of
      C_EnactState'46'constructor_1309 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.pv
d_pv_744 ::
  T_EnactState_728 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_744 v0
  = case coe v0 of
      C_EnactState'46'constructor_1309 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.pparams
d_pparams_746 ::
  T_EnactState_728 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_746 v0
  = case coe v0 of
      C_EnactState'46'constructor_1309 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.EnactState.withdrawals
d_withdrawals_748 ::
  T_EnactState_728 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_withdrawals_748 v0
  = case coe v0 of
      C_EnactState'46'constructor_1309 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.ccCreds
d_ccCreds_750 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_ccCreds_750 ~v0 v1 = du_ccCreds_750 v1
du_ccCreds_750 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_ccCreds_750 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v3
               -> coe
                    MAlonzo.Code.Interface.IsSet.du_dom_524
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1430
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                    (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_532)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
             MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
               -> coe
                    MAlonzo.Code.Axiom.Set.du_'8709'_424
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1430
                       (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.getHash
d_getHash_756 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHash_756 ~v0 v1 v2 = du_getHash_756 v1 v2
du_getHash_756 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHash_756 v0 v1
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_594
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_596 v2 v3 v4
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_598 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_600 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_602 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_604 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_606
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact.getHashES
d_getHashES_768 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_EnactState_728 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_getHashES_768 ~v0 v1 v2 = du_getHashES_768 v1 v2
du_getHashES_768 ::
  T_EnactState_728 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_592 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_getHashES_768 v0 v1
  = case coe v1 of
      MAlonzo.Code.Ledger.GovernanceActions.C_NoConfidence_594
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_740 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewCommittee_596 v2 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_cc_740 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_NewConstitution_598 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_constitution_742 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_TriggerHF_600 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_pv_744 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_ChangePParams_602 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                (coe d_pparams_746 (coe v0)))
      MAlonzo.Code.Ledger.GovernanceActions.C_TreasuryWdrl_604 v2
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      MAlonzo.Code.Ledger.GovernanceActions.C_Info_606
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Enact._⊢_⇀⦇_,ENACT⦈_
d__'8866'_'8640''10631'_'44'ENACT'10632'__810 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'ENACT'10632'__810
  = C_Enact'45'NoConf_812 |
    C_Enact'45'NewComm_820 (AgdaAny ->
                            MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                            MAlonzo.Code.Data.Sum.Base.T__'8846'__30) |
    C_Enact'45'NewConst_822 | C_Enact'45'HF_824 |
    C_Enact'45'PParams_826 |
    C_Enact'45'Wdrl_832 MAlonzo.Code.Data.Nat.Base.T__'8804'__22 |
    C_Enact'45'Info_834
