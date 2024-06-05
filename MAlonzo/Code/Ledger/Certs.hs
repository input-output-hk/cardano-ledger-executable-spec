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
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_514
         (coe v0))
-- Ledger.Certs._.Anchor
d_Anchor_562 a0 = ()
-- Ledger.Certs._.GovVote
d_GovVote_586 a0 = ()
-- Ledger.Certs._.VDeleg
d_VDeleg_606 a0 = ()
-- Ledger.Certs._.getDRepVote
d_getDRepVote_622 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_634 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_622 ~v0 = du_getDRepVote_622
du_getDRepVote_622 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_634 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getDRepVote_622
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_706
-- Ledger.Certs.PoolParams
d_PoolParams_714 a0 = ()
newtype T_PoolParams_714
  = C_PoolParams'46'constructor_995 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Certs.PoolParams.rewardAddr
d_rewardAddr_718 ::
  T_PoolParams_714 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_718 v0
  = case coe v0 of
      C_PoolParams'46'constructor_995 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DCert
d_DCert_720 a0 = ()
data T_DCert_720
  = C_delegate_722 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_576)
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30) Integer |
    C_dereg_724 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_regpool_726 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                  T_PoolParams_714 |
    C_retirepool_728 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 AgdaAny |
    C_regdrep_730 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_584 |
    C_deregdrep_732 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_ccreghot_734 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Ledger.Certs.cwitness
d_cwitness_736 ::
  T_DCert_720 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cwitness_736 v0
  = case coe v0 of
      C_delegate_722 v1 v2 v3 v4 -> coe v1
      C_dereg_724 v1 -> coe v1
      C_regpool_726 v1 v2 -> coe v1
      C_retirepool_728 v1 v2 -> coe v1
      C_regdrep_730 v1 v2 v3 -> coe v1
      C_deregdrep_732 v1 -> coe v1
      C_ccreghot_734 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv
d_CertEnv_752 a0 = ()
data T_CertEnv_752
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_770 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_220
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_634]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.CertEnv.epoch
d_epoch_762 :: T_CertEnv_752 -> AgdaAny
d_epoch_762 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_770 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.pp
d_pp_764 ::
  T_CertEnv_752 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pp_764 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_770 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.votes
d_votes_766 ::
  T_CertEnv_752 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_634]
d_votes_766 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_770 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.wdrls
d_wdrls_768 ::
  T_CertEnv_752 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_768 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_770 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState
d_DState_772 a0 = ()
data T_DState_772
  = C_'10214'_'44'_'44'_'10215''7496'_786 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DState.voteDelegs
d_voteDelegs_780 ::
  T_DState_772 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_780 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_786 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.stakeDelegs
d_stakeDelegs_782 ::
  T_DState_772 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_782 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_786 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.rewards
d_rewards_784 ::
  T_DState_772 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_784 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_786 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState
d_PState_788 a0 = ()
data T_PState_788
  = C_'10214'_'44'_'10215''7510'_798 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.PState.pools
d_pools_794 ::
  T_PState_788 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_794 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_798 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState.retiring
d_retiring_796 ::
  T_PState_788 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_796 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_798 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState
d_GState_800 a0 = ()
data T_GState_800
  = C_'10214'_'44'_'10215''7515'_810 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.GState.dreps
d_dreps_806 ::
  T_GState_800 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_806 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_810 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState.ccHotKeys
d_ccHotKeys_808 ::
  T_GState_800 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_808 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_810 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState
d_CertState_812 a0 = ()
data T_CertState_812
  = C_'10214'_'44'_'44'_'10215''7580''738'_826 T_DState_772
                                               T_PState_788 T_GState_800
-- Ledger.Certs.CertState.dState
d_dState_820 :: T_CertState_812 -> T_DState_772
d_dState_820 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_826 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.pState
d_pState_822 :: T_CertState_812 -> T_PState_788
d_pState_822 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_826 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.gState
d_gState_824 :: T_CertState_812 -> T_GState_800
d_gState_824 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_826 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv
d_DelegEnv_828 a0 = ()
data T_DelegEnv_828
  = C_'10214'_'44'_'10215''7496''7497'_838 MAlonzo.Code.Ledger.PParams.T_PParams_220
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DelegEnv.pparams
d_pparams_834 ::
  T_DelegEnv_828 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_pparams_834 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_838 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.pools
d_pools_836 ::
  T_DelegEnv_828 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_836 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_838 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GovCertEnv
d_GovCertEnv_840 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_840 = erased
-- Ledger.Certs.PoolEnv
d_PoolEnv_842 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_842 = erased
-- Ledger.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__910 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__910
  = C_DELEG'45'delegate_986 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_988 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
-- Ledger.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__912 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__912
  = C_POOL'45'regpool_990 | C_POOL'45'retirepool_992
-- Ledger.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__914 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__914
  = C_GOVCERT'45'regdrep_1054 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1056 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1058
-- Ledger.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__916 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__916
  = C_CERT'45'deleg_1060 T__'8866'_'8640''10631'_'44'DELEG'10632'__910 |
    C_CERT'45'pool_1062 T__'8866'_'8640''10631'_'44'POOL'10632'__912 |
    C_CERT'45'vdel_1064 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__914
-- Ledger.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__918 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__918
  = C_CERT'45'base_1146 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__924 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_752 ->
  T_CertState_812 -> [T_DCert_720] -> T_CertState_812 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__924 = erased
-- Ledger.Certs._.keyDeposit
d_keyDeposit_956 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_7253 -> Integer
d_keyDeposit_956 ~v0 v1 = du_keyDeposit_956 v1
du_keyDeposit_956 :: T_GeneralizeTel_7253 -> Integer
du_keyDeposit_956 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_300
      (coe d_'46'generalizedField'45'pp_7235 v0)
-- Ledger.Certs._.drepActivity
d_drepActivity_1014 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_14779 -> AgdaAny
d_drepActivity_1014 ~v0 v1 = du_drepActivity_1014 v1
du_drepActivity_1014 :: T_GeneralizeTel_14779 -> AgdaAny
du_drepActivity_1014 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_332
      (coe d_'46'generalizedField'45'pp_14761 v0)
-- Ledger.Certs._.drepDeposit
d_drepDeposit_1016 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_14779 -> Integer
d_drepDeposit_1016 ~v0 v1 = du_drepDeposit_1016 v1
du_drepDeposit_1016 :: T_GeneralizeTel_14779 -> Integer
du_drepDeposit_1016 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepDeposit_330
      (coe d_'46'generalizedField'45'pp_14761 v0)
-- Ledger.Certs._.drepActivity
d_drepActivity_1086 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20259 -> AgdaAny
d_drepActivity_1086 ~v0 v1 = du_drepActivity_1086 v1
du_drepActivity_1086 :: T_GeneralizeTel_20259 -> AgdaAny
du_drepActivity_1086 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_332
      (coe d_'46'generalizedField'45'pp_20245 v0)
-- Ledger.Certs._.ccHotKeys
d_ccHotKeys_1128 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1128 ~v0 v1 = du_ccHotKeys_1128 v1
du_ccHotKeys_1128 ::
  T_GeneralizeTel_20259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1128 v0
  = coe
      d_ccHotKeys_808 (coe d_'46'generalizedField'45'st'7501'_20247 v0)
-- Ledger.Certs._.dreps
d_dreps_1130 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1130 ~v0 v1 = du_dreps_1130 v1
du_dreps_1130 ::
  T_GeneralizeTel_20259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1130 v0
  = coe d_dreps_806 (coe d_'46'generalizedField'45'st'7501'_20247 v0)
-- Ledger.Certs._.rewards
d_rewards_1134 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1134 ~v0 v1 = du_rewards_1134 v1
du_rewards_1134 ::
  T_GeneralizeTel_20259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_1134 v0
  = coe
      d_rewards_784 (coe d_'46'generalizedField'45'st'7496'_20249 v0)
-- Ledger.Certs._.stakeDelegs
d_stakeDelegs_1136 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1136 ~v0 v1 = du_stakeDelegs_1136 v1
du_stakeDelegs_1136 ::
  T_GeneralizeTel_20259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_1136 v0
  = coe
      d_stakeDelegs_782 (coe d_'46'generalizedField'45'st'7496'_20249 v0)
-- Ledger.Certs._.voteDelegs
d_voteDelegs_1138 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1138 ~v0 v1 = du_voteDelegs_1138 v1
du_voteDelegs_1138 ::
  T_GeneralizeTel_20259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_1138 v0
  = coe
      d_voteDelegs_780 (coe d_'46'generalizedField'45'st'7496'_20249 v0)
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_7235 ::
  T_GeneralizeTel_7253 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_'46'generalizedField'45'pp_7235 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_7237 ::
  T_GeneralizeTel_7253 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_7237 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_7239 ::
  T_GeneralizeTel_7253 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_7239
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_7241 :: T_GeneralizeTel_7253 -> Integer
d_'46'generalizedField'45'd_7241 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mc
d_'46'generalizedField'45'mc_7243 ::
  T_GeneralizeTel_7253 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'mc_7243 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_7245 ::
  T_GeneralizeTel_7253 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_7245
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_7247 ::
  T_GeneralizeTel_7253 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_7247
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_7249 ::
  T_GeneralizeTel_7253 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_7249
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_7251 ::
  T_GeneralizeTel_7253 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_576
d_'46'generalizedField'45'mv_7251 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_7253 a0 = ()
data T_GeneralizeTel_7253
  = C_mkGeneralizeTel_7255 MAlonzo.Code.Ledger.PParams.T_PParams_220
                           MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                           (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_576)
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_14761 ::
  T_GeneralizeTel_14779 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_'46'generalizedField'45'pp_14761
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_14763 ::
  T_GeneralizeTel_14779 -> Integer
d_'46'generalizedField'45'd_14763 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_14765 ::
  T_GeneralizeTel_14779 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_14765 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_14767 ::
  T_GeneralizeTel_14779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_14767
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_14769 ::
  T_GeneralizeTel_14779 -> AgdaAny
d_'46'generalizedField'45'e_14769 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_14771 ::
  T_GeneralizeTel_14779 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_634]
d_'46'generalizedField'45'vs_14771
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_14773 ::
  T_GeneralizeTel_14779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_14773
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_14775 ::
  T_GeneralizeTel_14779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_14775
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-an
d_'46'generalizedField'45'an_14777 ::
  T_GeneralizeTel_14779 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_584
d_'46'generalizedField'45'an_14777
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_14779 a0 = ()
data T_GeneralizeTel_14779
  = C_mkGeneralizeTel_14781 MAlonzo.Code.Ledger.PParams.T_PParams_220
                            Integer MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_634]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_584
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_20245 ::
  T_GeneralizeTel_20259 -> MAlonzo.Code.Ledger.PParams.T_PParams_220
d_'46'generalizedField'45'pp_20245
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵍ
d_'46'generalizedField'45'st'7501'_20247 ::
  T_GeneralizeTel_20259 -> T_GState_800
d_'46'generalizedField'45'st'7501'_20247
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵈ
d_'46'generalizedField'45'st'7496'_20249 ::
  T_GeneralizeTel_20259 -> T_DState_772
d_'46'generalizedField'45'st'7496'_20249
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_20251 ::
  T_GeneralizeTel_20259 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_634]
d_'46'generalizedField'45'vs_20251
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_20253 ::
  T_GeneralizeTel_20259 -> AgdaAny
d_'46'generalizedField'45'e_20253 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_20255 ::
  T_GeneralizeTel_20259 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_20255
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_20257 ::
  T_GeneralizeTel_20259 -> T_PState_788
d_'46'generalizedField'45'st'7510'_20257
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_20259 a0 = ()
data T_GeneralizeTel_20259
  = C_mkGeneralizeTel_20261 MAlonzo.Code.Ledger.PParams.T_PParams_220
                            T_GState_800 T_DState_772
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_634] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_PState_788
