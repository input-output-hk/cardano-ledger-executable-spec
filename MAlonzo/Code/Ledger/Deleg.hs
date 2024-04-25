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
         MAlonzo.Code.Ledger.Types.GovStructure.d_epochStructure_428
         (coe v0))
-- Ledger.Deleg._.Anchor
d_Anchor_476 a0 = ()
-- Ledger.Deleg._.GovVote
d_GovVote_500 a0 = ()
-- Ledger.Deleg._.VDeleg
d_VDeleg_520 a0 = ()
-- Ledger.Deleg.PoolParams
d_PoolParams_626 a0 = ()
newtype T_PoolParams_626
  = C_PoolParams'46'constructor_885 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Deleg.PoolParams.rewardAddr
d_rewardAddr_630 ::
  T_PoolParams_626 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_630 v0
  = case coe v0 of
      C_PoolParams'46'constructor_885 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DCert
d_DCert_632 a0 = ()
data T_DCert_632
  = C_delegate_634 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_490)
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30) Integer |
    C_dereg_636 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_regpool_638 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                  T_PoolParams_626 |
    C_retirepool_640 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 AgdaAny |
    C_regdrep_642 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498 |
    C_deregdrep_644 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_ccreghot_646 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Ledger.Deleg.cwitness
d_cwitness_648 ::
  T_DCert_632 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cwitness_648 v0
  = case coe v0 of
      C_delegate_634 v1 v2 v3 v4 -> coe v1
      C_dereg_636 v1 -> coe v1
      C_regpool_638 v1 v2 -> coe v1
      C_retirepool_640 v1 v2 -> coe v1
      C_regdrep_642 v1 v2 v3 -> coe v1
      C_deregdrep_644 v1 -> coe v1
      C_ccreghot_646 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv
d_CertEnv_664 a0 = ()
data T_CertEnv_664
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_682 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_218
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.CertEnv.epoch
d_epoch_674 :: T_CertEnv_664 -> AgdaAny
d_epoch_674 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_682 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.pp
d_pp_676 ::
  T_CertEnv_664 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pp_676 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_682 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.votes
d_votes_678 ::
  T_CertEnv_664 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548]
d_votes_678 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_682 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.wdrls
d_wdrls_680 ::
  T_CertEnv_664 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_680 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_682 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState
d_DState_684 a0 = ()
data T_DState_684
  = C_'10214'_'44'_'44'_'10215''7496'_698 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.DState.voteDelegs
d_voteDelegs_692 ::
  T_DState_684 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_692 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_698 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState.stakeDelegs
d_stakeDelegs_694 ::
  T_DState_684 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_694 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_698 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState.rewards
d_rewards_696 ::
  T_DState_684 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_696 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_698 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.PState
d_PState_700 a0 = ()
data T_PState_700
  = C_'10214'_'44'_'10215''7510'_710 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.PState.pools
d_pools_706 ::
  T_PState_700 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_706 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_710 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.PState.retiring
d_retiring_708 ::
  T_PState_700 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_708 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_710 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GState
d_GState_712 a0 = ()
data T_GState_712
  = C_'10214'_'44'_'10215''7515'_722 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.GState.dreps
d_dreps_718 ::
  T_GState_712 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_718 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_722 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GState.ccHotKeys
d_ccHotKeys_720 ::
  T_GState_712 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_720 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_722 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState
d_CertState_724 a0 = ()
data T_CertState_724
  = C_'10214'_'44'_'44'_'10215''7580''738'_738 T_DState_684
                                               T_PState_700 T_GState_712
-- Ledger.Deleg.CertState.dState
d_dState_732 :: T_CertState_724 -> T_DState_684
d_dState_732 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_738 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState.pState
d_pState_734 :: T_CertState_724 -> T_PState_700
d_pState_734 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_738 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState.gState
d_gState_736 :: T_CertState_724 -> T_GState_712
d_gState_736 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_738 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DelegEnv
d_DelegEnv_740 a0 = ()
data T_DelegEnv_740
  = C_'10214'_'44'_'10215''7496''7497'_750 MAlonzo.Code.Ledger.PParams.T_PParams_218
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.DelegEnv.pparams
d_pparams_746 ::
  T_DelegEnv_740 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_pparams_746 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_750 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DelegEnv.pools
d_pools_748 ::
  T_DelegEnv_740 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_748 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_750 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GovCertEnv
d_GovCertEnv_752 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_GovCertEnv_752 = erased
-- Ledger.Deleg.PoolEnv
d_PoolEnv_754 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 -> ()
d_PoolEnv_754 = erased
-- Ledger.Deleg.getDRepVote
d_getDRepVote_822 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_822 ~v0 v1 = du_getDRepVote_822 v1
du_getDRepVote_822 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getDRepVote_822 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovVote'46'constructor_3977 v1 v2 v3 v4
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> let v7 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
                  coe
                    (case coe v5 of
                       MAlonzo.Code.Ledger.GovernanceActions.C_DRep_482
                         -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v6)
                       _ -> coe v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__826 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__826
  = C_DELEG'45'delegate_886 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_DELEG'45'dereg_888 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
-- Ledger.Deleg._.poolDeposit
d_poolDeposit_878 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_7911 -> Integer
d_poolDeposit_878 ~v0 v1 = du_poolDeposit_878 v1
du_poolDeposit_878 :: T_GeneralizeTel_7911 -> Integer
du_poolDeposit_878 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_poolDeposit_298
      (coe d_'46'generalizedField'45'pp_7893 v0)
-- Ledger.Deleg._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__890 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__890
  = C_POOL'45'regpool_892 | C_POOL'45'retirepool_894
-- Ledger.Deleg._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__896 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__896
  = C_GOVCERT'45'regdrep_956 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_958 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_960
-- Ledger.Deleg._.drepActivity
d_drepActivity_918 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_15685 -> AgdaAny
d_drepActivity_918 ~v0 v1 = du_drepActivity_918 v1
du_drepActivity_918 :: T_GeneralizeTel_15685 -> AgdaAny
du_drepActivity_918 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_326
      (coe d_'46'generalizedField'45'pp_15667 v0)
-- Ledger.Deleg._.drepDeposit
d_drepDeposit_920 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_15685 -> Integer
d_drepDeposit_920 ~v0 v1 = du_drepDeposit_920 v1
du_drepDeposit_920 :: T_GeneralizeTel_15685 -> Integer
du_drepDeposit_920 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepDeposit_324
      (coe d_'46'generalizedField'45'pp_15667 v0)
-- Ledger.Deleg._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__962 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__962
  = C_CERT'45'deleg_964 T__'8866'_'8640''10631'_'44'DELEG'10632'__826 |
    C_CERT'45'pool_966 T__'8866'_'8640''10631'_'44'POOL'10632'__890 |
    C_CERT'45'vdel_968 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__896
-- Ledger.Deleg._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__970 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__970
  = C_CERT'45'base_1050 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg._.drepActivity
d_drepActivity_992 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21765 -> AgdaAny
d_drepActivity_992 ~v0 v1 = du_drepActivity_992 v1
du_drepActivity_992 :: T_GeneralizeTel_21765 -> AgdaAny
du_drepActivity_992 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_326
      (coe d_'46'generalizedField'45'pp_21751 v0)
-- Ledger.Deleg._.ccHotKeys
d_ccHotKeys_1032 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21765 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1032 ~v0 v1 = du_ccHotKeys_1032 v1
du_ccHotKeys_1032 ::
  T_GeneralizeTel_21765 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1032 v0
  = coe
      d_ccHotKeys_720 (coe d_'46'generalizedField'45'st'7501'_21753 v0)
-- Ledger.Deleg._.dreps
d_dreps_1034 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21765 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1034 ~v0 v1 = du_dreps_1034 v1
du_dreps_1034 ::
  T_GeneralizeTel_21765 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1034 v0
  = coe d_dreps_718 (coe d_'46'generalizedField'45'st'7501'_21753 v0)
-- Ledger.Deleg._.rewards
d_rewards_1038 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21765 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1038 ~v0 v1 = du_rewards_1038 v1
du_rewards_1038 ::
  T_GeneralizeTel_21765 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_1038 v0
  = coe
      d_rewards_696 (coe d_'46'generalizedField'45'st'7496'_21755 v0)
-- Ledger.Deleg._.stakeDelegs
d_stakeDelegs_1040 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21765 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1040 ~v0 v1 = du_stakeDelegs_1040 v1
du_stakeDelegs_1040 ::
  T_GeneralizeTel_21765 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_1040 v0
  = coe
      d_stakeDelegs_694 (coe d_'46'generalizedField'45'st'7496'_21755 v0)
-- Ledger.Deleg._.voteDelegs
d_voteDelegs_1042 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_GeneralizeTel_21765 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1042 ~v0 v1 = du_voteDelegs_1042 v1
du_voteDelegs_1042 ::
  T_GeneralizeTel_21765 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_1042 v0
  = coe
      d_voteDelegs_692 (coe d_'46'generalizedField'45'st'7496'_21755 v0)
-- Ledger.Deleg._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1052 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6 ->
  T_CertEnv_664 ->
  T_CertState_724 -> [T_DCert_632] -> T_CertState_724 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1052 = erased
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_7893 ::
  T_GeneralizeTel_7911 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_7893 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-c
d_'46'generalizedField'45'c_7895 ::
  T_GeneralizeTel_7911 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_7895 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-rwds
d_'46'generalizedField'45'rwds_7897 ::
  T_GeneralizeTel_7911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'rwds_7897
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-d
d_'46'generalizedField'45'd_7899 :: T_GeneralizeTel_7911 -> Integer
d_'46'generalizedField'45'd_7899 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-mc
d_'46'generalizedField'45'mc_7901 ::
  T_GeneralizeTel_7911 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'mc_7901 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-pools
d_'46'generalizedField'45'pools_7903 ::
  T_GeneralizeTel_7911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_7903
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-vDelegs
d_'46'generalizedField'45'vDelegs_7905 ::
  T_GeneralizeTel_7911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'vDelegs_7905
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-sDelegs
d_'46'generalizedField'45'sDelegs_7907 ::
  T_GeneralizeTel_7911 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'sDelegs_7907
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-mv
d_'46'generalizedField'45'mv_7909 ::
  T_GeneralizeTel_7911 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_490
d_'46'generalizedField'45'mv_7909 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_7911 a0 = ()
data T_GeneralizeTel_7911
  = C_mkGeneralizeTel_7913 MAlonzo.Code.Ledger.PParams.T_PParams_218
                           MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 Integer
                           (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_490)
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_15667 ::
  T_GeneralizeTel_15685 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_15667
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-d
d_'46'generalizedField'45'd_15669 ::
  T_GeneralizeTel_15685 -> Integer
d_'46'generalizedField'45'd_15669 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-c
d_'46'generalizedField'45'c_15671 ::
  T_GeneralizeTel_15685 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_15671 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-dReps
d_'46'generalizedField'45'dReps_15673 ::
  T_GeneralizeTel_15685 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_15673
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-e
d_'46'generalizedField'45'e_15675 ::
  T_GeneralizeTel_15685 -> AgdaAny
d_'46'generalizedField'45'e_15675 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-vs
d_'46'generalizedField'45'vs_15677 ::
  T_GeneralizeTel_15685 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548]
d_'46'generalizedField'45'vs_15677
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_15679 ::
  T_GeneralizeTel_15685 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_15679
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_15681 ::
  T_GeneralizeTel_15685 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_15681
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-an
d_'46'generalizedField'45'an_15683 ::
  T_GeneralizeTel_15685 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498
d_'46'generalizedField'45'an_15683
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_15685 a0 = ()
data T_GeneralizeTel_15685
  = C_mkGeneralizeTel_15687 MAlonzo.Code.Ledger.PParams.T_PParams_218
                            Integer MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_498
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_21751 ::
  T_GeneralizeTel_21765 -> MAlonzo.Code.Ledger.PParams.T_PParams_218
d_'46'generalizedField'45'pp_21751
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-stᵍ
d_'46'generalizedField'45'st'7501'_21753 ::
  T_GeneralizeTel_21765 -> T_GState_712
d_'46'generalizedField'45'st'7501'_21753
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-stᵈ
d_'46'generalizedField'45'st'7496'_21755 ::
  T_GeneralizeTel_21765 -> T_DState_684
d_'46'generalizedField'45'st'7496'_21755
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-vs
d_'46'generalizedField'45'vs_21757 ::
  T_GeneralizeTel_21765 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548]
d_'46'generalizedField'45'vs_21757
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-e
d_'46'generalizedField'45'e_21759 ::
  T_GeneralizeTel_21765 -> AgdaAny
d_'46'generalizedField'45'e_21759 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_21761 ::
  T_GeneralizeTel_21765 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_21761
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-stᵖ
d_'46'generalizedField'45'st'7510'_21763 ::
  T_GeneralizeTel_21765 -> T_PState_700
d_'46'generalizedField'45'st'7510'_21763
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_21765 a0 = ()
data T_GeneralizeTel_21765
  = C_mkGeneralizeTel_21767 MAlonzo.Code.Ledger.PParams.T_PParams_218
                            T_GState_712 T_DState_684
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_548] AgdaAny
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 T_PState_700
