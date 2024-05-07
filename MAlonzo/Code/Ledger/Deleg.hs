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
-- Ledger.Deleg._.Anchor
d_Anchor_478 a0 = ()
-- Ledger.Deleg._.GovVote
d_GovVote_502 a0 = ()
-- Ledger.Deleg._.VDeleg
d_VDeleg_522 a0 = ()
-- Ledger.Deleg.PoolParams
d_PoolParams_628 a0 = ()
newtype T_PoolParams_628
  = C_PoolParams'46'constructor_887 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Deleg.PoolParams.rewardAddr
d_rewardAddr_632 ::
  T_PoolParams_628 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_632 v0
  = case coe v0 of
      C_PoolParams'46'constructor_887 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DCert
d_DCert_634 a0 = ()
data T_DCert_634
  = C_delegate_636 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492)
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30) Integer |
    C_dereg_638 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_regpool_640 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                  T_PoolParams_628 |
    C_retirepool_642 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 AgdaAny |
    C_regdrep_644 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_500 |
    C_deregdrep_646 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_ccreghot_648 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Ledger.Deleg.cwitness
d_cwitness_650 ::
  T_DCert_634 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cwitness_650 v0
  = case coe v0 of
      C_delegate_636 v1 v2 v3 v4 -> coe v1
      C_dereg_638 v1 -> coe v1
      C_regpool_640 v1 v2 -> coe v1
      C_retirepool_642 v1 v2 -> coe v1
      C_regdrep_644 v1 v2 v3 -> coe v1
      C_deregdrep_646 v1 -> coe v1
      C_ccreghot_648 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv
d_CertEnv_666 a0 = ()
data T_CertEnv_666
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_684 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_218
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.CertEnv.epoch
d_epoch_676 :: T_CertEnv_666 -> AgdaAny
d_epoch_676 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_684 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.pp
d_pp_678 ::
  T_CertEnv_666 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pp_678 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_684 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.votes
d_votes_680 ::
  T_CertEnv_666 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
d_votes_680 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_684 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.wdrls
d_wdrls_682 ::
  T_CertEnv_666 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_682 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_684 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState
d_DState_686 a0 = ()
data T_DState_686
  = C_'10214'_'44'_'44'_'10215''7496'_700 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.DState.voteDelegs
d_voteDelegs_694 ::
  T_DState_686 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_694 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_700 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState.stakeDelegs
d_stakeDelegs_696 ::
  T_DState_686 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_696 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_700 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState.rewards
d_rewards_698 ::
  T_DState_686 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_698 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_700 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.PState
d_PState_702 a0 = ()
data T_PState_702
  = C_'10214'_'44'_'10215''7510'_712 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.PState.pools
d_pools_708 ::
  T_PState_702 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_708 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_712 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.PState.retiring
d_retiring_710 ::
  T_PState_702 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_710 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_712 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GState
d_GState_714 a0 = ()
data T_GState_714
  = C_'10214'_'44'_'10215''7515'_724 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.GState.dreps
d_dreps_720 ::
  T_GState_714 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_720 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_724 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GState.ccHotKeys
d_ccHotKeys_722 ::
  T_GState_714 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_722 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_724 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState
d_CertState_726 a0 = ()
data T_CertState_726
  = C_'10214'_'44'_'44'_'10215''7580''738'_740 T_DState_686
                                               T_PState_702 T_GState_714
-- Ledger.Deleg.CertState.dState
d_dState_734 :: T_CertState_726 -> T_DState_686
d_dState_734 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_740 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState.pState
d_pState_736 :: T_CertState_726 -> T_PState_702
d_pState_736 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_740 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState.gState
d_gState_738 :: T_CertState_726 -> T_GState_714
d_gState_738 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_740 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DelegEnv
d_DelegEnv_742 a0 = ()
data T_DelegEnv_742
  = C_'10214'_'44'_'10215''7496''7497'_752 MAlonzo.Code.Ledger.PParams.T_PParams_218
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.DelegEnv.pparams
d_pparams_748 ::
  T_DelegEnv_742 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_748 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_752 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DelegEnv.pools
d_pools_750 ::
  T_DelegEnv_742 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_750 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_752 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GovCertEnv
d_GovCertEnv_754 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_754 = erased
-- Ledger.Deleg.PoolEnv
d_PoolEnv_756 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_756 = erased
-- Ledger.Deleg.getDRepVote
d_getDRepVote_824 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_824 ~v0 v1 = du_getDRepVote_824 v1
du_getDRepVote_824 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getDRepVote_824 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovVote'46'constructor_3979 v1 v2 v3 v4
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> let v7 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
                  coe
                    (case coe v5 of
                       MAlonzo.Code.Ledger.GovernanceActions.C_DRep_484
                         -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6)
                       _ -> coe v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__828 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__828
  = C_DELEG'45'delegate_890 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_892 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
-- Ledger.Deleg._.keyDeposit
d_keyDeposit_860 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_7913 -> Integer
d_keyDeposit_860 ~v0 v1 = du_keyDeposit_860 v1
du_keyDeposit_860 :: T_GeneralizeTel_7913 -> Integer
du_keyDeposit_860 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_keyDeposit_302
      (coe d_'46'generalizedField'45'pp_7895 v0)
-- Ledger.Deleg._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__894 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__894
  = C_POOL'45'regpool_896 | C_POOL'45'retirepool_898
-- Ledger.Deleg._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__900 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__900
  = C_GOVCERT'45'regdrep_962 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_964 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_966
-- Ledger.Deleg._.drepActivity
d_drepActivity_922 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_15695 -> AgdaAny
d_drepActivity_922 ~v0 v1 = du_drepActivity_922 v1
du_drepActivity_922 :: T_GeneralizeTel_15695 -> AgdaAny
du_drepActivity_922 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_330
      (coe d_'46'generalizedField'45'pp_15677 v0)
-- Ledger.Deleg._.drepDeposit
d_drepDeposit_924 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_15695 -> Integer
d_drepDeposit_924 ~v0 v1 = du_drepDeposit_924 v1
du_drepDeposit_924 :: T_GeneralizeTel_15695 -> Integer
du_drepDeposit_924 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepDeposit_328
      (coe d_'46'generalizedField'45'pp_15677 v0)
-- Ledger.Deleg._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__968 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__968
  = C_CERT'45'deleg_970 T__'8866'_'8640''10631'_'44'DELEG'10632'__828 |
    C_CERT'45'pool_972 T__'8866'_'8640''10631'_'44'POOL'10632'__894 |
    C_CERT'45'vdel_974 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__900
-- Ledger.Deleg._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__976 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__976
  = C_CERT'45'base_1058 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg._.drepActivity
d_drepActivity_998 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21783 -> AgdaAny
d_drepActivity_998 ~v0 v1 = du_drepActivity_998 v1
du_drepActivity_998 :: T_GeneralizeTel_21783 -> AgdaAny
du_drepActivity_998 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_330
      (coe d_'46'generalizedField'45'pp_21769 v0)
-- Ledger.Deleg._.ccHotKeys
d_ccHotKeys_1040 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21783 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1040 ~v0 v1 = du_ccHotKeys_1040 v1
du_ccHotKeys_1040 ::
  T_GeneralizeTel_21783 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1040 v0
  = coe
      d_ccHotKeys_722 (coe d_'46'generalizedField'45'st'7501'_21771 v0)
-- Ledger.Deleg._.dreps
d_dreps_1042 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21783 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1042 ~v0 v1 = du_dreps_1042 v1
du_dreps_1042 ::
  T_GeneralizeTel_21783 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1042 v0
  = coe d_dreps_720 (coe d_'46'generalizedField'45'st'7501'_21771 v0)
-- Ledger.Deleg._.rewards
d_rewards_1046 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21783 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1046 ~v0 v1 = du_rewards_1046 v1
du_rewards_1046 ::
  T_GeneralizeTel_21783 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_1046 v0
  = coe
      d_rewards_698 (coe d_'46'generalizedField'45'st'7496'_21773 v0)
-- Ledger.Deleg._.stakeDelegs
d_stakeDelegs_1048 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21783 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1048 ~v0 v1 = du_stakeDelegs_1048 v1
du_stakeDelegs_1048 ::
  T_GeneralizeTel_21783 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_1048 v0
  = coe
      d_stakeDelegs_696 (coe d_'46'generalizedField'45'st'7496'_21773 v0)
-- Ledger.Deleg._.voteDelegs
d_voteDelegs_1050 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21783 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1050 ~v0 v1 = du_voteDelegs_1050 v1
du_voteDelegs_1050 ::
  T_GeneralizeTel_21783 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_1050 v0
  = coe
      d_voteDelegs_694 (coe d_'46'generalizedField'45'st'7496'_21773 v0)
-- Ledger.Deleg._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1060 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_666 ->
  T_CertState_726 -> [T_DCert_634] -> T_CertState_726 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1060 = erased
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_7895 ::
  T_GeneralizeTel_7913 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_7895 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-c
d_'46'generalizedField'45'c_7897 ::
  T_GeneralizeTel_7913 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_7897 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-rwds
d_'46'generalizedField'45'rwds_7899 ::
  T_GeneralizeTel_7913 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_7899
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-d
d_'46'generalizedField'45'd_7901 :: T_GeneralizeTel_7913 -> Integer
d_'46'generalizedField'45'd_7901 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-mc
d_'46'generalizedField'45'mc_7903 ::
  T_GeneralizeTel_7913 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'mc_7903 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-pools
d_'46'generalizedField'45'pools_7905 ::
  T_GeneralizeTel_7913 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_7905
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_7907 ::
  T_GeneralizeTel_7913 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_7907
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_7909 ::
  T_GeneralizeTel_7913 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_7909
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-mv
d_'46'generalizedField'45'mv_7911 ::
  T_GeneralizeTel_7913 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492
d_'46'generalizedField'45'mv_7911 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_7913 a0 = ()
data T_GeneralizeTel_7913
  = C_mkGeneralizeTel_7915 MAlonzo.Code.Ledger.PParams.T_PParams_218
                           MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                           (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_492)
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_15677 ::
  T_GeneralizeTel_15695 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_15677
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-d
d_'46'generalizedField'45'd_15679 ::
  T_GeneralizeTel_15695 -> Integer
d_'46'generalizedField'45'd_15679 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-c
d_'46'generalizedField'45'c_15681 ::
  T_GeneralizeTel_15695 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_15681 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-dReps
d_'46'generalizedField'45'dReps_15683 ::
  T_GeneralizeTel_15695 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_15683
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-e
d_'46'generalizedField'45'e_15685 ::
  T_GeneralizeTel_15695 -> AgdaAny
d_'46'generalizedField'45'e_15685 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-vs
d_'46'generalizedField'45'vs_15687 ::
  T_GeneralizeTel_15695 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
d_'46'generalizedField'45'vs_15687
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_15689 ::
  T_GeneralizeTel_15695 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_15689
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_15691 ::
  T_GeneralizeTel_15695 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_15691
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-an
d_'46'generalizedField'45'an_15693 ::
  T_GeneralizeTel_15695 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_500
d_'46'generalizedField'45'an_15693
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_15695 a0 = ()
data T_GeneralizeTel_15695
  = C_mkGeneralizeTel_15697 MAlonzo.Code.Ledger.PParams.T_PParams_218
                            Integer MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_500
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_21769 ::
  T_GeneralizeTel_21783 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_21769
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-stᵍ
d_'46'generalizedField'45'st'7501'_21771 ::
  T_GeneralizeTel_21783 -> T_GState_714
d_'46'generalizedField'45'st'7501'_21771
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-stᵈ
d_'46'generalizedField'45'st'7496'_21773 ::
  T_GeneralizeTel_21783 -> T_DState_686
d_'46'generalizedField'45'st'7496'_21773
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-vs
d_'46'generalizedField'45'vs_21775 ::
  T_GeneralizeTel_21783 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550]
d_'46'generalizedField'45'vs_21775
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-e
d_'46'generalizedField'45'e_21777 ::
  T_GeneralizeTel_21783 -> AgdaAny
d_'46'generalizedField'45'e_21777 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_21779 ::
  T_GeneralizeTel_21783 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_21779
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_21781 ::
  T_GeneralizeTel_21783 -> T_PState_702
d_'46'generalizedField'45'st'7510'_21781
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_21783 a0 = ()
data T_GeneralizeTel_21783
  = C_mkGeneralizeTel_21785 MAlonzo.Code.Ledger.PParams.T_PParams_218
                            T_GState_714 T_DState_686
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_550] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_PState_702
