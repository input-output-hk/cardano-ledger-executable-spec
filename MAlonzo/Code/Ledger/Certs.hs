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

module MAlonzo.Code.Ledger.Certs where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure

-- _.Credential
d_Credential_24 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_24 = erased
-- _.Epoch
d_Epoch_104 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_104 = erased
-- _.PParams
d_PParams_144 a0 = ()
-- _.RwdAddr
d_RwdAddr_158 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_210 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_210 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_512
         (coe v0))
-- Ledger.Certs._.Anchor
d_Anchor_560 a0 = ()
-- Ledger.Certs._.GovVote
d_GovVote_584 a0 = ()
-- Ledger.Certs._.VDeleg
d_VDeleg_604 a0 = ()
-- Ledger.Certs._.getDRepVote
d_getDRepVote_620 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_620 ~v0 = du_getDRepVote_620
du_getDRepVote_620 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getDRepVote_620
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_704
-- Ledger.Certs.PoolParams
d_PoolParams_712 a0 = ()
newtype T_PoolParams_712
  = C_PoolParams'46'constructor_991 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Certs.PoolParams.rewardAddr
d_rewardAddr_716 ::
  T_PoolParams_712 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_716 v0
  = case coe v0 of
      C_PoolParams'46'constructor_991 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DCert
d_DCert_718 a0 = ()
data T_DCert_718
  = C_delegate_720 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574)
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30) Integer |
    C_dereg_722 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_regpool_724 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                  T_PoolParams_712 |
    C_retirepool_726 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 AgdaAny |
    C_regdrep_728 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582 |
    C_deregdrep_730 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_ccreghot_732 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Ledger.Certs.cwitness
d_cwitness_734 ::
  T_DCert_718 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cwitness_734 v0
  = case coe v0 of
      C_delegate_720 v1 v2 v3 v4 -> coe v1
      C_dereg_722 v1 -> coe v1
      C_regpool_724 v1 v2 -> coe v1
      C_retirepool_726 v1 v2 -> coe v1
      C_regdrep_728 v1 v2 v3 -> coe v1
      C_deregdrep_730 v1 -> coe v1
      C_ccreghot_732 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv
d_CertEnv_750 a0 = ()
data T_CertEnv_750
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_768 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_220
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.CertEnv.epoch
d_epoch_760 :: T_CertEnv_750 -> AgdaAny
d_epoch_760 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_768 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.pp
d_pp_762 ::
  T_CertEnv_750 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pp_762 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_768 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.votes
d_votes_764 ::
  T_CertEnv_750 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632]
d_votes_764 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_768 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.wdrls
d_wdrls_766 ::
  T_CertEnv_750 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_766 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_768 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState
d_DState_770 a0 = ()
data T_DState_770
  = C_'10214'_'44'_'44'_'10215''7496'_784 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DState.voteDelegs
d_voteDelegs_778 ::
  T_DState_770 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_778 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_784 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.stakeDelegs
d_stakeDelegs_780 ::
  T_DState_770 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_780 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_784 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.rewards
d_rewards_782 ::
  T_DState_770 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_782 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_784 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState
d_PState_786 a0 = ()
data T_PState_786
  = C_'10214'_'44'_'10215''7510'_796 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.PState.pools
d_pools_792 ::
  T_PState_786 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_792 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_796 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState.retiring
d_retiring_794 ::
  T_PState_786 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_794 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_796 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState
d_GState_798 a0 = ()
data T_GState_798
  = C_'10214'_'44'_'10215''7515'_808 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.GState.dreps
d_dreps_804 ::
  T_GState_798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_804 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_808 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState.ccHotKeys
d_ccHotKeys_806 ::
  T_GState_798 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_806 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_808 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState
d_CertState_810 a0 = ()
data T_CertState_810
  = C_'10214'_'44'_'44'_'10215''7580''738'_824 T_DState_770
                                               T_PState_786 T_GState_798
-- Ledger.Certs.CertState.dState
d_dState_818 :: T_CertState_810 -> T_DState_770
d_dState_818 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_824 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.pState
d_pState_820 :: T_CertState_810 -> T_PState_786
d_pState_820 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_824 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.gState
d_gState_822 :: T_CertState_810 -> T_GState_798
d_gState_822 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_824 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv
d_DelegEnv_826 a0 = ()
data T_DelegEnv_826
  = C_'10214'_'44'_'10215''7496''7497'_836 MAlonzo.Code.Ledger.PParams.T_PParams_220
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DelegEnv.pparams
d_pparams_832 ::
  T_DelegEnv_826 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_832 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_836 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.pools
d_pools_834 ::
  T_DelegEnv_826 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_834 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_836 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GovCertEnv
d_GovCertEnv_838 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_838 = erased
-- Ledger.Certs.PoolEnv
d_PoolEnv_840 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_840 = erased
-- Ledger.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__908 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__908
  = C_DELEG'45'delegate_984 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_986 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
-- Ledger.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__910 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__910
  = C_POOL'45'regpool_988 | C_POOL'45'retirepool_990
-- Ledger.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__912 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__912
  = C_GOVCERT'45'regdrep_1052 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1054 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1056
-- Ledger.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__914 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__914
  = C_CERT'45'deleg_1058 T__'8866'_'8640''10631'_'44'DELEG'10632'__908 |
    C_CERT'45'pool_1060 T__'8866'_'8640''10631'_'44'POOL'10632'__910 |
    C_CERT'45'vdel_1062 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__912
-- Ledger.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__916 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__916
  = C_CERT'45'base_1144 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__922 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_750 ->
  T_CertState_810 -> [T_DCert_718] -> T_CertState_810 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__922 = erased
-- Ledger.Certs._.keyDeposit
d_keyDeposit_954 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_7249 -> Integer
d_keyDeposit_954 ~v0 v1 = du_keyDeposit_954 v1
du_keyDeposit_954 :: T_GeneralizeTel_7249 -> Integer
du_keyDeposit_954 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_300
      (coe d_'46'generalizedField'45'pp_7231 v0)
-- Ledger.Certs._.drepActivity
d_drepActivity_1012 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_14775 -> AgdaAny
d_drepActivity_1012 ~v0 v1 = du_drepActivity_1012 v1
du_drepActivity_1012 :: T_GeneralizeTel_14775 -> AgdaAny
du_drepActivity_1012 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_332
      (coe d_'46'generalizedField'45'pp_14757 v0)
-- Ledger.Certs._.drepDeposit
d_drepDeposit_1014 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_14775 -> Integer
d_drepDeposit_1014 ~v0 v1 = du_drepDeposit_1014 v1
du_drepDeposit_1014 :: T_GeneralizeTel_14775 -> Integer
du_drepDeposit_1014 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepDeposit_330
      (coe d_'46'generalizedField'45'pp_14757 v0)
-- Ledger.Certs._.drepActivity
d_drepActivity_1084 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20255 -> AgdaAny
d_drepActivity_1084 ~v0 v1 = du_drepActivity_1084 v1
du_drepActivity_1084 :: T_GeneralizeTel_20255 -> AgdaAny
du_drepActivity_1084 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_332
      (coe d_'46'generalizedField'45'pp_20241 v0)
-- Ledger.Certs._.ccHotKeys
d_ccHotKeys_1126 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1126 ~v0 v1 = du_ccHotKeys_1126 v1
du_ccHotKeys_1126 ::
  T_GeneralizeTel_20255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1126 v0
  = coe
      d_ccHotKeys_806 (coe d_'46'generalizedField'45'st'7501'_20243 v0)
-- Ledger.Certs._.dreps
d_dreps_1128 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1128 ~v0 v1 = du_dreps_1128 v1
du_dreps_1128 ::
  T_GeneralizeTel_20255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1128 v0
  = coe d_dreps_804 (coe d_'46'generalizedField'45'st'7501'_20243 v0)
-- Ledger.Certs._.rewards
d_rewards_1132 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1132 ~v0 v1 = du_rewards_1132 v1
du_rewards_1132 ::
  T_GeneralizeTel_20255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_1132 v0
  = coe
      d_rewards_782 (coe d_'46'generalizedField'45'st'7496'_20245 v0)
-- Ledger.Certs._.stakeDelegs
d_stakeDelegs_1134 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1134 ~v0 v1 = du_stakeDelegs_1134 v1
du_stakeDelegs_1134 ::
  T_GeneralizeTel_20255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_1134 v0
  = coe
      d_stakeDelegs_780 (coe d_'46'generalizedField'45'st'7496'_20245 v0)
-- Ledger.Certs._.voteDelegs
d_voteDelegs_1136 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1136 ~v0 v1 = du_voteDelegs_1136 v1
du_voteDelegs_1136 ::
  T_GeneralizeTel_20255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_1136 v0
  = coe
      d_voteDelegs_778 (coe d_'46'generalizedField'45'st'7496'_20245 v0)
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_7231 ::
  T_GeneralizeTel_7249 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_'46'generalizedField'45'pp_7231 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_7233 ::
  T_GeneralizeTel_7249 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_7233 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_7235 ::
  T_GeneralizeTel_7249 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_7235
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_7237 :: T_GeneralizeTel_7249 -> Integer
d_'46'generalizedField'45'd_7237 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mc
d_'46'generalizedField'45'mc_7239 ::
  T_GeneralizeTel_7249 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'mc_7239 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_7241 ::
  T_GeneralizeTel_7249 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_7241
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_7243 ::
  T_GeneralizeTel_7249 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_7243
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_7245 ::
  T_GeneralizeTel_7249 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_7245
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_7247 ::
  T_GeneralizeTel_7249 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574
d_'46'generalizedField'45'mv_7247 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_7249 a0 = ()
data T_GeneralizeTel_7249
  = C_mkGeneralizeTel_7251 MAlonzo.Code.Ledger.PParams.T_PParams_220
                           MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                           (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_574)
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_14757 ::
  T_GeneralizeTel_14775 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_'46'generalizedField'45'pp_14757
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_14759 ::
  T_GeneralizeTel_14775 -> Integer
d_'46'generalizedField'45'd_14759 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_14761 ::
  T_GeneralizeTel_14775 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_14761 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_14763 ::
  T_GeneralizeTel_14775 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_14763
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_14765 ::
  T_GeneralizeTel_14775 -> AgdaAny
d_'46'generalizedField'45'e_14765 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_14767 ::
  T_GeneralizeTel_14775 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632]
d_'46'generalizedField'45'vs_14767
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_14769 ::
  T_GeneralizeTel_14775 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_14769
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_14771 ::
  T_GeneralizeTel_14775 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_14771
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-an
d_'46'generalizedField'45'an_14773 ::
  T_GeneralizeTel_14775 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582
d_'46'generalizedField'45'an_14773
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_14775 a0 = ()
data T_GeneralizeTel_14775
  = C_mkGeneralizeTel_14777 MAlonzo.Code.Ledger.PParams.T_PParams_220
                            Integer MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_582
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_20241 ::
  T_GeneralizeTel_20255 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_'46'generalizedField'45'pp_20241
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵍ
d_'46'generalizedField'45'st'7501'_20243 ::
  T_GeneralizeTel_20255 -> T_GState_798
d_'46'generalizedField'45'st'7501'_20243
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵈ
d_'46'generalizedField'45'st'7496'_20245 ::
  T_GeneralizeTel_20255 -> T_DState_770
d_'46'generalizedField'45'st'7496'_20245
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_20247 ::
  T_GeneralizeTel_20255 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632]
d_'46'generalizedField'45'vs_20247
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_20249 ::
  T_GeneralizeTel_20255 -> AgdaAny
d_'46'generalizedField'45'e_20249 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_20251 ::
  T_GeneralizeTel_20255 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_20251
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_20253 ::
  T_GeneralizeTel_20255 -> T_PState_786
d_'46'generalizedField'45'st'7510'_20253
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_20255 a0 = ()
data T_GeneralizeTel_20255
  = C_mkGeneralizeTel_20257 MAlonzo.Code.Ledger.PParams.T_PParams_220
                            T_GState_798 T_DState_770
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_632] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_PState_786
