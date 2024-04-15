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

module MAlonzo.Code.Ledger.Deleg where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
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
d_Epoch_102 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_Epoch_102 = erased
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
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_432
         (coe v0))
-- Ledger.Deleg._.Anchor
d_Anchor_482 a0 = ()
-- Ledger.Deleg._.GovVote
d_GovVote_506 a0 = ()
-- Ledger.Deleg._.VDeleg
d_VDeleg_526 a0 = ()
-- Ledger.Deleg.PoolParams
d_PoolParams_630 a0 = ()
newtype T_PoolParams_630
  = C_PoolParams'46'constructor_899 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Deleg.PoolParams.rewardAddr
d_rewardAddr_634 ::
  T_PoolParams_630 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_634 v0
  = case coe v0 of
      C_PoolParams'46'constructor_899 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DCert
d_DCert_636 a0 = ()
data T_DCert_636
  = C_delegate_638 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_496)
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30) Integer |
    C_dereg_640 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_regpool_642 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                  T_PoolParams_630 |
    C_retirepool_644 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 AgdaAny |
    C_regdrep_646 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_504 |
    C_deregdrep_648 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_ccreghot_650 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Ledger.Deleg.cwitness
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
-- Ledger.Deleg.CertEnv
d_CertEnv_668 a0 = ()
data T_CertEnv_668
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_686 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_218
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.CertEnv.epoch
d_epoch_678 :: T_CertEnv_668 -> AgdaAny
d_epoch_678 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_686 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.pp
d_pp_680 ::
  T_CertEnv_668 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pp_680 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_686 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.votes
d_votes_682 ::
  T_CertEnv_668 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548]
d_votes_682 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_686 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.wdrls
d_wdrls_684 ::
  T_CertEnv_668 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_684 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_686 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState
d_DState_688 a0 = ()
data T_DState_688
  = C_'10214'_'44'_'44'_'10215''7496'_702 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.DState.voteDelegs
d_voteDelegs_696 ::
  T_DState_688 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_696 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_702 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState.stakeDelegs
d_stakeDelegs_698 ::
  T_DState_688 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_698 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_702 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState.rewards
d_rewards_700 ::
  T_DState_688 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_700 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_702 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.PState
d_PState_704 a0 = ()
data T_PState_704
  = C_'10214'_'44'_'10215''7510'_714 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.PState.pools
d_pools_710 ::
  T_PState_704 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_710 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_714 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.PState.retiring
d_retiring_712 ::
  T_PState_704 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_712 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_714 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GState
d_GState_716 a0 = ()
data T_GState_716
  = C_'10214'_'44'_'10215''7515'_726 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.GState.dreps
d_dreps_722 ::
  T_GState_716 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_722 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_726 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GState.ccHotKeys
d_ccHotKeys_724 ::
  T_GState_716 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_724 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_726 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState
d_CertState_728 a0 = ()
data T_CertState_728
  = C_'10214'_'44'_'44'_'10215''7580''738'_742 T_DState_688
                                               T_PState_704 T_GState_716
-- Ledger.Deleg.CertState.dState
d_dState_736 :: T_CertState_728 -> T_DState_688
d_dState_736 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_742 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState.pState
d_pState_738 :: T_CertState_728 -> T_PState_704
d_pState_738 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_742 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState.gState
d_gState_740 :: T_CertState_728 -> T_GState_716
d_gState_740 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_742 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DelegEnv
d_DelegEnv_744 a0 = ()
data T_DelegEnv_744
  = C_'10214'_'44'_'10215''7496''7497'_754 MAlonzo.Code.Ledger.PParams.T_PParams_218
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.DelegEnv.pparams
d_pparams_750 ::
  T_DelegEnv_744 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_750 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_754 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DelegEnv.pools
d_pools_752 ::
  T_DelegEnv_744 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_752 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_754 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GovCertEnv
d_GovCertEnv_756 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_756 = erased
-- Ledger.Deleg.PoolEnv
d_PoolEnv_758 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_758 = erased
-- Ledger.Deleg.getDRepVote
d_getDRepVote_826 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_826 ~v0 v1 = du_getDRepVote_826 v1
du_getDRepVote_826 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getDRepVote_826 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovVote'46'constructor_2985 v1 v2 v3 v4
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> let v7 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
                  coe
                    (case coe v5 of
                       MAlonzo.Code.Ledger.GovernanceActions.C_DRep_488
                         -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6)
                       _ -> coe v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__830 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__830
  = C_DELEG'45'delegate_890 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_892 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
-- Ledger.Deleg._.poolDeposit
d_poolDeposit_882 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_7925 -> Integer
d_poolDeposit_882 ~v0 v1 = du_poolDeposit_882 v1
du_poolDeposit_882 :: T_GeneralizeTel_7925 -> Integer
du_poolDeposit_882 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_poolDeposit_298
      (coe d_'46'generalizedField'45'pp_7907 v0)
-- Ledger.Deleg._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__894 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__894
  = C_POOL'45'regpool_896 | C_POOL'45'retirepool_898
-- Ledger.Deleg._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__900 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__900
  = C_GOVCERT'45'regdrep_960 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_962 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_964
-- Ledger.Deleg._.drepActivity
d_drepActivity_922 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_15699 -> AgdaAny
d_drepActivity_922 ~v0 v1 = du_drepActivity_922 v1
du_drepActivity_922 :: T_GeneralizeTel_15699 -> AgdaAny
du_drepActivity_922 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_326
      (coe d_'46'generalizedField'45'pp_15681 v0)
-- Ledger.Deleg._.drepDeposit
d_drepDeposit_924 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_15699 -> Integer
d_drepDeposit_924 ~v0 v1 = du_drepDeposit_924 v1
du_drepDeposit_924 :: T_GeneralizeTel_15699 -> Integer
du_drepDeposit_924 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepDeposit_324
      (coe d_'46'generalizedField'45'pp_15681 v0)
-- Ledger.Deleg._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__966 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__966
  = C_CERT'45'deleg_968 T__'8866'_'8640''10631'_'44'DELEG'10632'__830 |
    C_CERT'45'pool_970 T__'8866'_'8640''10631'_'44'POOL'10632'__894 |
    C_CERT'45'vdel_972 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__900
-- Ledger.Deleg._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__974 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__974
  = C_CERT'45'base_1054 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg._.drepActivity
d_drepActivity_996 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21779 -> AgdaAny
d_drepActivity_996 ~v0 v1 = du_drepActivity_996 v1
du_drepActivity_996 :: T_GeneralizeTel_21779 -> AgdaAny
du_drepActivity_996 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_326
      (coe d_'46'generalizedField'45'pp_21765 v0)
-- Ledger.Deleg._.ccHotKeys
d_ccHotKeys_1036 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1036 ~v0 v1 = du_ccHotKeys_1036 v1
du_ccHotKeys_1036 ::
  T_GeneralizeTel_21779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1036 v0
  = coe
      d_ccHotKeys_724 (coe d_'46'generalizedField'45'st'7501'_21767 v0)
-- Ledger.Deleg._.dreps
d_dreps_1038 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1038 ~v0 v1 = du_dreps_1038 v1
du_dreps_1038 ::
  T_GeneralizeTel_21779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1038 v0
  = coe d_dreps_722 (coe d_'46'generalizedField'45'st'7501'_21767 v0)
-- Ledger.Deleg._.rewards
d_rewards_1042 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1042 ~v0 v1 = du_rewards_1042 v1
du_rewards_1042 ::
  T_GeneralizeTel_21779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_1042 v0
  = coe
      d_rewards_700 (coe d_'46'generalizedField'45'st'7496'_21769 v0)
-- Ledger.Deleg._.stakeDelegs
d_stakeDelegs_1044 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1044 ~v0 v1 = du_stakeDelegs_1044 v1
du_stakeDelegs_1044 ::
  T_GeneralizeTel_21779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_1044 v0
  = coe
      d_stakeDelegs_698 (coe d_'46'generalizedField'45'st'7496'_21769 v0)
-- Ledger.Deleg._.voteDelegs
d_voteDelegs_1046 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1046 ~v0 v1 = du_voteDelegs_1046 v1
du_voteDelegs_1046 ::
  T_GeneralizeTel_21779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_1046 v0
  = coe
      d_voteDelegs_696 (coe d_'46'generalizedField'45'st'7496'_21769 v0)
-- Ledger.Deleg._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1056 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_668 ->
  T_CertState_728 -> [T_DCert_636] -> T_CertState_728 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1056 = erased
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_7907 ::
  T_GeneralizeTel_7925 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_7907 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-c
d_'46'generalizedField'45'c_7909 ::
  T_GeneralizeTel_7925 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_7909 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-rwds
d_'46'generalizedField'45'rwds_7911 ::
  T_GeneralizeTel_7925 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_7911
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-d
d_'46'generalizedField'45'd_7913 :: T_GeneralizeTel_7925 -> Integer
d_'46'generalizedField'45'd_7913 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-mc
d_'46'generalizedField'45'mc_7915 ::
  T_GeneralizeTel_7925 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'mc_7915 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-pools
d_'46'generalizedField'45'pools_7917 ::
  T_GeneralizeTel_7925 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_7917
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_7919 ::
  T_GeneralizeTel_7925 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_7919
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_7921 ::
  T_GeneralizeTel_7925 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_7921
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-mv
d_'46'generalizedField'45'mv_7923 ::
  T_GeneralizeTel_7925 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_496
d_'46'generalizedField'45'mv_7923 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_7925 a0 = ()
data T_GeneralizeTel_7925
  = C_mkGeneralizeTel_7927 MAlonzo.Code.Ledger.PParams.T_PParams_218
                           MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                           (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_496)
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_15681 ::
  T_GeneralizeTel_15699 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_15681
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-d
d_'46'generalizedField'45'd_15683 ::
  T_GeneralizeTel_15699 -> Integer
d_'46'generalizedField'45'd_15683 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-c
d_'46'generalizedField'45'c_15685 ::
  T_GeneralizeTel_15699 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_15685 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-dReps
d_'46'generalizedField'45'dReps_15687 ::
  T_GeneralizeTel_15699 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_15687
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-e
d_'46'generalizedField'45'e_15689 ::
  T_GeneralizeTel_15699 -> AgdaAny
d_'46'generalizedField'45'e_15689 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-vs
d_'46'generalizedField'45'vs_15691 ::
  T_GeneralizeTel_15699 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548]
d_'46'generalizedField'45'vs_15691
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_15693 ::
  T_GeneralizeTel_15699 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_15693
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_15695 ::
  T_GeneralizeTel_15699 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_15695
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-an
d_'46'generalizedField'45'an_15697 ::
  T_GeneralizeTel_15699 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_504
d_'46'generalizedField'45'an_15697
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_15699 a0 = ()
data T_GeneralizeTel_15699
  = C_mkGeneralizeTel_15701 MAlonzo.Code.Ledger.PParams.T_PParams_218
                            Integer MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_504
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_21765 ::
  T_GeneralizeTel_21779 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_21765
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-stᵍ
d_'46'generalizedField'45'st'7501'_21767 ::
  T_GeneralizeTel_21779 -> T_GState_716
d_'46'generalizedField'45'st'7501'_21767
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-stᵈ
d_'46'generalizedField'45'st'7496'_21769 ::
  T_GeneralizeTel_21779 -> T_DState_688
d_'46'generalizedField'45'st'7496'_21769
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-vs
d_'46'generalizedField'45'vs_21771 ::
  T_GeneralizeTel_21779 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548]
d_'46'generalizedField'45'vs_21771
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-e
d_'46'generalizedField'45'e_21773 ::
  T_GeneralizeTel_21779 -> AgdaAny
d_'46'generalizedField'45'e_21773 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_21775 ::
  T_GeneralizeTel_21779 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_21775
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_21777 ::
  T_GeneralizeTel_21779 -> T_PState_704
d_'46'generalizedField'45'st'7510'_21777
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_21779 a0 = ()
data T_GeneralizeTel_21779
  = C_mkGeneralizeTel_21781 MAlonzo.Code.Ledger.PParams.T_PParams_218
                            T_GState_716 T_DState_688
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_PState_704
