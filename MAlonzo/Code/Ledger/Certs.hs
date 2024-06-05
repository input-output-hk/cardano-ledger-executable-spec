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
d_Credential_22 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_22 = erased
-- _.Epoch
d_Epoch_100 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_100 = erased
-- _.PParams
d_PParams_140 a0 = ()
-- _.RwdAddr
d_RwdAddr_154 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_204 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_204 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
      (coe
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_430
         (coe v0))
-- Ledger.Certs._.Anchor
d_Anchor_478 a0 = ()
-- Ledger.Certs._.GovVote
d_GovVote_502 a0 = ()
-- Ledger.Certs._.VDeleg
d_VDeleg_522 a0 = ()
-- Ledger.Certs._.getDRepVote
d_getDRepVote_538 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_538 ~v0 = du_getDRepVote_538
du_getDRepVote_538 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getDRepVote_538
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_622
-- Ledger.Certs.PoolParams
d_PoolParams_630 a0 = ()
newtype T_PoolParams_630
  = C_PoolParams'46'constructor_893 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Certs.PoolParams.rewardAddr
d_rewardAddr_634 ::
  T_PoolParams_630 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_634 v0
  = case coe v0 of
      C_PoolParams'46'constructor_893 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DCert
d_DCert_636 a0 = ()
data T_DCert_636
  = C_delegate_638 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492)
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30) Integer |
    C_dereg_640 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_regpool_642 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                  T_PoolParams_630 |
    C_retirepool_644 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 AgdaAny |
    C_regdrep_646 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_500 |
    C_deregdrep_648 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_ccreghot_650 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Ledger.Certs.cwitness
d_cwitness_652 ::
  T_DCert_636 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cwitness_652 v0
  = case coe v0 of
      C_delegate_638 v1 v2 v3 v4 -> coe v1
      C_dereg_640 v1 -> coe v1
      C_regpool_642 v1 v2 -> coe v1
      C_retirepool_644 v1 v2 -> coe v1
      C_regdrep_646 v1 v2 v3 -> coe v1
      C_deregdrep_648 v1 -> coe v1
      C_ccreghot_650 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv
d_CertEnv_668 a0 = ()
data T_CertEnv_668
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_686 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_218
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.CertEnv.epoch
d_epoch_678 :: T_CertEnv_668 -> AgdaAny
d_epoch_678 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_686 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.pp
d_pp_680 ::
  T_CertEnv_668 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pp_680 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_686 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.votes
d_votes_682 ::
  T_CertEnv_668 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
d_votes_682 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_686 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertEnv.wdrls
d_wdrls_684 ::
  T_CertEnv_668 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_684 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_686 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState
d_DState_688 a0 = ()
data T_DState_688
  = C_'10214'_'44'_'44'_'10215''7496'_702 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DState.voteDelegs
d_voteDelegs_696 ::
  T_DState_688 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_696 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_702 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.stakeDelegs
d_stakeDelegs_698 ::
  T_DState_688 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_698 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_702 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DState.rewards
d_rewards_700 ::
  T_DState_688 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_700 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_702 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState
d_PState_704 a0 = ()
data T_PState_704
  = C_'10214'_'44'_'10215''7510'_714 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.PState.pools
d_pools_710 ::
  T_PState_704 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_710 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_714 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.PState.retiring
d_retiring_712 ::
  T_PState_704 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_712 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_714 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState
d_GState_716 a0 = ()
data T_GState_716
  = C_'10214'_'44'_'10215''7515'_726 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.GState.dreps
d_dreps_722 ::
  T_GState_716 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_722 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_726 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GState.ccHotKeys
d_ccHotKeys_724 ::
  T_GState_716 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_724 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_726 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState
d_CertState_728 a0 = ()
data T_CertState_728
  = C_'10214'_'44'_'44'_'10215''7580''738'_742 T_DState_688
                                               T_PState_704 T_GState_716
-- Ledger.Certs.CertState.dState
d_dState_736 :: T_CertState_728 -> T_DState_688
d_dState_736 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_742 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.pState
d_pState_738 :: T_CertState_728 -> T_PState_704
d_pState_738 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_742 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.CertState.gState
d_gState_740 :: T_CertState_728 -> T_GState_716
d_gState_740 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_742 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv
d_DelegEnv_744 a0 = ()
data T_DelegEnv_744
  = C_'10214'_'44'_'10215''7496''7497'_754 MAlonzo.Code.Ledger.PParams.T_PParams_218
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs.DelegEnv.pparams
d_pparams_750 ::
  T_DelegEnv_744 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_750 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_754 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.DelegEnv.pools
d_pools_752 ::
  T_DelegEnv_744 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_752 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_754 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GovCertEnv
d_GovCertEnv_756 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_756 = erased
-- Ledger.Certs.PoolEnv
d_PoolEnv_758 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_758 = erased
-- Ledger.Certs._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__826 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__826
  = C_DELEG'45'delegate_902 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_904 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
-- Ledger.Certs._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__828 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__828
  = C_POOL'45'regpool_906 | C_POOL'45'retirepool_908
-- Ledger.Certs._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__830 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__830
  = C_GOVCERT'45'regdrep_970 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_972 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_974
-- Ledger.Certs._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__832 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__832
  = C_CERT'45'deleg_976 T__'8866'_'8640''10631'_'44'DELEG'10632'__826 |
    C_CERT'45'pool_978 T__'8866'_'8640''10631'_'44'POOL'10632'__828 |
    C_CERT'45'vdel_980 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__830
-- Ledger.Certs._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__834 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__834
  = C_CERT'45'base_1062 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Certs._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__840 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_668 ->
  T_CertState_728 -> [T_DCert_636] -> T_CertState_728 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__840 = erased
-- Ledger.Certs._.keyDeposit
d_keyDeposit_872 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_7151 -> Integer
d_keyDeposit_872 ~v0 v1 = du_keyDeposit_872 v1
du_keyDeposit_872 :: T_GeneralizeTel_7151 -> Integer
du_keyDeposit_872 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_298
      (coe d_'46'generalizedField'45'pp_7133 v0)
-- Ledger.Certs._.drepActivity
d_drepActivity_930 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_14677 -> AgdaAny
d_drepActivity_930 ~v0 v1 = du_drepActivity_930 v1
du_drepActivity_930 :: T_GeneralizeTel_14677 -> AgdaAny
du_drepActivity_930 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_330
      (coe d_'46'generalizedField'45'pp_14659 v0)
-- Ledger.Certs._.drepDeposit
d_drepDeposit_932 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_14677 -> Integer
d_drepDeposit_932 ~v0 v1 = du_drepDeposit_932 v1
du_drepDeposit_932 :: T_GeneralizeTel_14677 -> Integer
du_drepDeposit_932 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepDeposit_328
      (coe d_'46'generalizedField'45'pp_14659 v0)
-- Ledger.Certs._.drepActivity
d_drepActivity_1002 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20157 -> AgdaAny
d_drepActivity_1002 ~v0 v1 = du_drepActivity_1002 v1
du_drepActivity_1002 :: T_GeneralizeTel_20157 -> AgdaAny
du_drepActivity_1002 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_330
      (coe d_'46'generalizedField'45'pp_20143 v0)
-- Ledger.Certs._.ccHotKeys
d_ccHotKeys_1044 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1044 ~v0 v1 = du_ccHotKeys_1044 v1
du_ccHotKeys_1044 ::
  T_GeneralizeTel_20157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1044 v0
  = coe
      d_ccHotKeys_724 (coe d_'46'generalizedField'45'st'7501'_20145 v0)
-- Ledger.Certs._.dreps
d_dreps_1046 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1046 ~v0 v1 = du_dreps_1046 v1
du_dreps_1046 ::
  T_GeneralizeTel_20157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1046 v0
  = coe d_dreps_722 (coe d_'46'generalizedField'45'st'7501'_20145 v0)
-- Ledger.Certs._.rewards
d_rewards_1050 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1050 ~v0 v1 = du_rewards_1050 v1
du_rewards_1050 ::
  T_GeneralizeTel_20157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_1050 v0
  = coe
      d_rewards_700 (coe d_'46'generalizedField'45'st'7496'_20147 v0)
-- Ledger.Certs._.stakeDelegs
d_stakeDelegs_1052 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1052 ~v0 v1 = du_stakeDelegs_1052 v1
du_stakeDelegs_1052 ::
  T_GeneralizeTel_20157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_1052 v0
  = coe
      d_stakeDelegs_698 (coe d_'46'generalizedField'45'st'7496'_20147 v0)
-- Ledger.Certs._.voteDelegs
d_voteDelegs_1054 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_20157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1054 ~v0 v1 = du_voteDelegs_1054 v1
du_voteDelegs_1054 ::
  T_GeneralizeTel_20157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_1054 v0
  = coe
      d_voteDelegs_696 (coe d_'46'generalizedField'45'st'7496'_20147 v0)
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_7133 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_7133 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_7135 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_7135 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-rwds
d_'46'generalizedField'45'rwds_7137 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_7137
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_7139 :: T_GeneralizeTel_7151 -> Integer
d_'46'generalizedField'45'd_7139 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mc
d_'46'generalizedField'45'mc_7141 ::
  T_GeneralizeTel_7151 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'mc_7141 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-pools
d_'46'generalizedField'45'pools_7143 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_7143
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_7145 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_7145
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_7147 ::
  T_GeneralizeTel_7151 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_7147
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-mv
d_'46'generalizedField'45'mv_7149 ::
  T_GeneralizeTel_7151 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492
d_'46'generalizedField'45'mv_7149 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_7151 a0 = ()
data T_GeneralizeTel_7151
  = C_mkGeneralizeTel_7153 MAlonzo.Code.Ledger.PParams.T_PParams_218
                           MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                           (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492)
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_14659 ::
  T_GeneralizeTel_14677 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_14659
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-d
d_'46'generalizedField'45'd_14661 ::
  T_GeneralizeTel_14677 -> Integer
d_'46'generalizedField'45'd_14661 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-c
d_'46'generalizedField'45'c_14663 ::
  T_GeneralizeTel_14677 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_14663 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-dReps
d_'46'generalizedField'45'dReps_14665 ::
  T_GeneralizeTel_14677 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_14665
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_14667 ::
  T_GeneralizeTel_14677 -> AgdaAny
d_'46'generalizedField'45'e_14667 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_14669 ::
  T_GeneralizeTel_14677 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
d_'46'generalizedField'45'vs_14669
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_14671 ::
  T_GeneralizeTel_14677 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_14671
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_14673 ::
  T_GeneralizeTel_14677 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_14673
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-an
d_'46'generalizedField'45'an_14675 ::
  T_GeneralizeTel_14677 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_500
d_'46'generalizedField'45'an_14675
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_14677 a0 = ()
data T_GeneralizeTel_14677
  = C_mkGeneralizeTel_14679 MAlonzo.Code.Ledger.PParams.T_PParams_218
                            Integer MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_500
-- Ledger.Certs..generalizedField-pp
d_'46'generalizedField'45'pp_20143 ::
  T_GeneralizeTel_20157 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_20143
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵍ
d_'46'generalizedField'45'st'7501'_20145 ::
  T_GeneralizeTel_20157 -> T_GState_716
d_'46'generalizedField'45'st'7501'_20145
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵈ
d_'46'generalizedField'45'st'7496'_20147 ::
  T_GeneralizeTel_20157 -> T_DState_688
d_'46'generalizedField'45'st'7496'_20147
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-vs
d_'46'generalizedField'45'vs_20149 ::
  T_GeneralizeTel_20157 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
d_'46'generalizedField'45'vs_20149
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-e
d_'46'generalizedField'45'e_20151 ::
  T_GeneralizeTel_20157 -> AgdaAny
d_'46'generalizedField'45'e_20151 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_20153 ::
  T_GeneralizeTel_20157 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_20153
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_20155 ::
  T_GeneralizeTel_20157 -> T_PState_704
d_'46'generalizedField'45'st'7510'_20155
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Certs.GeneralizeTel
d_GeneralizeTel_20157 a0 = ()
data T_GeneralizeTel_20157
  = C_mkGeneralizeTel_20159 MAlonzo.Code.Ledger.PParams.T_PParams_218
                            T_GState_716 T_DState_688
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_PState_704
