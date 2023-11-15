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
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovStructure
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script

-- _.Credential
d_Credential_26 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 -> ()
d_Credential_26 = erased
-- _.DecEq-RwdAddr
d_DecEq'45'RwdAddr_66 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
d_DecEq'45'RwdAddr_66 ~v0 v1 v2 v3
  = du_DecEq'45'RwdAddr_66 v1 v2 v3
du_DecEq'45'RwdAddr_66 ::
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14 ->
  MAlonzo.Code.Interface.DecEq.T_DecEq_14
du_DecEq'45'RwdAddr_66 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_144 (coe v0)
      (coe v1) (coe v2)
-- _.Epoch
d_Epoch_98 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_Epoch_98 = erased
-- _.PParams
d_PParams_134 a0 = ()
-- _.RwdAddr
d_RwdAddr_148 a0 a1 a2 a3 = ()
-- _.addEpoch
d_addEpoch_196 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_196 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_addEpoch_230
      (coe
         MAlonzo.Code.Ledger.GovStructure.d_epochStructure_416 (coe v0))
-- Ledger.Deleg._.Anchor
d_Anchor_474 a0 = ()
-- Ledger.Deleg._.GovVote
d_GovVote_514 a0 = ()
-- Ledger.Deleg._.VDeleg
d_VDeleg_534 a0 = ()
-- Ledger.Deleg.PoolParams
d_PoolParams_670 a0 = ()
newtype T_PoolParams_670
  = C_PoolParams'46'constructor_1009 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Deleg.PoolParams.rewardAddr
d_rewardAddr_674 ::
  T_PoolParams_670 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_674 v0
  = case coe v0 of
      C_PoolParams'46'constructor_1009 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DCert
d_DCert_676 a0 = ()
data T_DCert_676
  = C_delegate_678 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_486)
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30) Integer |
    C_regpool_680 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                  T_PoolParams_670 |
    C_retirepool_682 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 AgdaAny |
    C_regdrep_684 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494 |
    C_deregdrep_686 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_ccreghot_688 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Ledger.Deleg.CertEnv
d_CertEnv_690 a0 = ()
data T_CertEnv_690
  = C_'10214'_'44'_'44'_'44'_'10215''7580'_708 AgdaAny
                                               MAlonzo.Code.Ledger.PParams.T_PParams_210
                                               [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676]
                                               MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.CertEnv.epoch
d_epoch_700 :: T_CertEnv_690 -> AgdaAny
d_epoch_700 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_708 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.pp
d_pp_702 ::
  T_CertEnv_690 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pp_702 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_708 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.votes
d_votes_704 ::
  T_CertEnv_690 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676]
d_votes_704 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_708 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.wdrls
d_wdrls_706 ::
  T_CertEnv_690 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_706 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'44'_'10215''7580'_708 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState
d_DState_710 a0 = ()
data T_DState_710
  = C_'10214'_'44'_'44'_'10215''7496'_724 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.DState.voteDelegs
d_voteDelegs_718 ::
  T_DState_710 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_718 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_724 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState.stakeDelegs
d_stakeDelegs_720 ::
  T_DState_710 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_720 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_724 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState.rewards
d_rewards_722 ::
  T_DState_710 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_722 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_724 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.PState
d_PState_726 a0 = ()
data T_PState_726
  = C_'10214'_'44'_'10215''7510'_736 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.PState.pools
d_pools_732 ::
  T_PState_726 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_732 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_736 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.PState.retiring
d_retiring_734 ::
  T_PState_726 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_734 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_736 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GState
d_GState_738 a0 = ()
data T_GState_738
  = C_'10214'_'44'_'10215''7515'_748 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.GState.dreps
d_dreps_744 ::
  T_GState_738 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_744 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_748 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GState.ccHotKeys
d_ccHotKeys_746 ::
  T_GState_738 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_746 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_748 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState
d_CertState_750 a0 = ()
data T_CertState_750
  = C_'10214'_'44'_'44'_'10215''7580''738'_764 T_DState_710
                                               T_PState_726 T_GState_738
-- Ledger.Deleg.CertState.dState
d_dState_758 :: T_CertState_750 -> T_DState_710
d_dState_758 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_764 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState.pState
d_pState_760 :: T_CertState_750 -> T_PState_726
d_pState_760 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_764 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState.gState
d_gState_762 :: T_CertState_750 -> T_GState_738
d_gState_762 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580''738'_764 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DelegEnv
d_DelegEnv_766 a0 = ()
data T_DelegEnv_766
  = C_'10214'_'44'_'10215''7496''7497'_776 MAlonzo.Code.Ledger.PParams.T_PParams_210
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.DelegEnv.pparams
d_pparams_772 ::
  T_DelegEnv_766 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pparams_772 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_776 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DelegEnv.pools
d_pools_774 ::
  T_DelegEnv_766 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_774 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7496''7497'_776 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GovCertEnv
d_GovCertEnv_778 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_GovCertEnv_778 = erased
-- Ledger.Deleg.PoolEnv
d_PoolEnv_780 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_PoolEnv_780 = erased
-- Ledger.Deleg._._.cwitness
d_cwitness_856 ::
  T_DCert_676 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cwitness_856 v0
  = case coe v0 of
      C_delegate_678 v1 v2 v3 v4 -> coe v1
      C_regpool_680 v1 v2 -> coe v1
      C_retirepool_682 v1 v2 -> coe v1
      C_regdrep_684 v1 v2 v3 -> coe v1
      C_deregdrep_686 v1 -> coe v1
      C_ccreghot_688 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg._._.requiredDeposit
d_requiredDeposit_872 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  () ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe AgdaAny -> Integer
d_requiredDeposit_872 ~v0 ~v1 v2 v3 = du_requiredDeposit_872 v2 v3
du_requiredDeposit_872 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe AgdaAny -> Integer
du_requiredDeposit_872 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_286 (coe v0)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe (0 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg._._.getDRepVote
d_getDRepVote_878 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_878 ~v0 v1 = du_getDRepVote_878 v1
du_getDRepVote_878 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getDRepVote_878 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovVote'46'constructor_8945 v1 v2 v3 v4 v5
        -> let v6 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
           coe
             (case coe v2 of
                MAlonzo.Code.Ledger.GovernanceActions.C_DRep_482
                  -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v3)
                _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__882 a0 a1 a2 a3 a4 = ()
newtype T__'8866'_'8640''10631'_'44'DELEG'10632'__882
  = C_DELEG'45'delegate_884 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
-- Ledger.Deleg._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__886 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__886
  = C_POOL'45'regpool_946 | C_POOL'45'retirepool_948
-- Ledger.Deleg._.rewardAddr
d_rewardAddr_944 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_9519 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_944 ~v0 v1 = du_rewardAddr_944 v1
du_rewardAddr_944 ::
  T_GeneralizeTel_9519 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_rewardAddr_944 v0
  = coe
      d_rewardAddr_674 (coe d_'46'generalizedField'45'poolParams_9511 v0)
-- Ledger.Deleg._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__950 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__950
  = C_GOVCERT'45'regdrep_1006 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_1008 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_1010
-- Ledger.Deleg._.drepActivity
d_drepActivity_970 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_11387 -> AgdaAny
d_drepActivity_970 ~v0 v1 = du_drepActivity_970 v1
du_drepActivity_970 :: T_GeneralizeTel_11387 -> AgdaAny
du_drepActivity_970 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_308
      (coe d_'46'generalizedField'45'pp_11369 v0)
-- Ledger.Deleg._.drepDeposit
d_drepDeposit_972 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_11387 -> Integer
d_drepDeposit_972 ~v0 v1 = du_drepDeposit_972 v1
du_drepDeposit_972 :: T_GeneralizeTel_11387 -> Integer
du_drepDeposit_972 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepDeposit_306
      (coe d_'46'generalizedField'45'pp_11369 v0)
-- Ledger.Deleg._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1012 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__1012
  = C_CERT'45'deleg_1014 T__'8866'_'8640''10631'_'44'DELEG'10632'__882 |
    C_CERT'45'pool_1016 T__'8866'_'8640''10631'_'44'POOL'10632'__886 |
    C_CERT'45'vdel_1018 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__950
-- Ledger.Deleg._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1020 a0 a1 a2 a3 a4
  = ()
data T__'8866'_'8640''10631'_'44'CERTBASE'10632'__1020
  = C_CERT'45'base_1100 (MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
                         MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                         MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34)
                        (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                         MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
                         MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34)
-- Ledger.Deleg._.drepActivity
d_drepActivity_1040 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_16247 -> AgdaAny
d_drepActivity_1040 ~v0 v1 = du_drepActivity_1040 v1
du_drepActivity_1040 :: T_GeneralizeTel_16247 -> AgdaAny
du_drepActivity_1040 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_308
      (coe d_'46'generalizedField'45'pp_16237 v0)
-- Ledger.Deleg._.dState
d_dState_1078 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_16247 -> T_DState_710
d_dState_1078 ~v0 v1 = du_dState_1078 v1
du_dState_1078 :: T_GeneralizeTel_16247 -> T_DState_710
du_dState_1078 v0
  = coe d_dState_758 (coe d_'46'generalizedField'45'st_16239 v0)
-- Ledger.Deleg._.gState
d_gState_1080 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_16247 -> T_GState_738
d_gState_1080 ~v0 v1 = du_gState_1080 v1
du_gState_1080 :: T_GeneralizeTel_16247 -> T_GState_738
du_gState_1080 v0
  = coe d_gState_762 (coe d_'46'generalizedField'45'st_16239 v0)
-- Ledger.Deleg._.pState
d_pState_1082 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_16247 -> T_PState_726
d_pState_1082 ~v0 v1 = du_pState_1082 v1
du_pState_1082 :: T_GeneralizeTel_16247 -> T_PState_726
du_pState_1082 v0
  = coe d_pState_760 (coe d_'46'generalizedField'45'st_16239 v0)
-- Ledger.Deleg._.ccHotKeys
d_ccHotKeys_1086 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_16247 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1086 ~v0 v1 = du_ccHotKeys_1086 v1
du_ccHotKeys_1086 ::
  T_GeneralizeTel_16247 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1086 v0
  = coe
      d_ccHotKeys_746
      (coe d_gState_762 (coe d_'46'generalizedField'45'st_16239 v0))
-- Ledger.Deleg._.dreps
d_dreps_1088 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_16247 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1088 ~v0 v1 = du_dreps_1088 v1
du_dreps_1088 ::
  T_GeneralizeTel_16247 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1088 v0
  = coe
      d_dreps_744
      (coe d_gState_762 (coe d_'46'generalizedField'45'st_16239 v0))
-- Ledger.Deleg._.rewards
d_rewards_1092 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_16247 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1092 ~v0 v1 = du_rewards_1092 v1
du_rewards_1092 ::
  T_GeneralizeTel_16247 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_1092 v0
  = coe
      d_rewards_722
      (coe d_dState_758 (coe d_'46'generalizedField'45'st_16239 v0))
-- Ledger.Deleg._.stakeDelegs
d_stakeDelegs_1094 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_16247 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1094 ~v0 v1 = du_stakeDelegs_1094 v1
du_stakeDelegs_1094 ::
  T_GeneralizeTel_16247 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_1094 v0
  = coe
      d_stakeDelegs_720
      (coe d_dState_758 (coe d_'46'generalizedField'45'st_16239 v0))
-- Ledger.Deleg._.voteDelegs
d_voteDelegs_1096 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_16247 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1096 ~v0 v1 = du_voteDelegs_1096 v1
du_voteDelegs_1096 ::
  T_GeneralizeTel_16247 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_1096 v0
  = coe
      d_voteDelegs_718
      (coe d_dState_758 (coe d_'46'generalizedField'45'st_16239 v0))
-- Ledger.Deleg._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1102 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_CertEnv_690 ->
  T_CertState_750 -> [T_DCert_676] -> T_CertState_750 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1102 = erased
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_9509 ::
  T_GeneralizeTel_9519 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_'46'generalizedField'45'pp_9509 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-poolParams
d_'46'generalizedField'45'poolParams_9511 ::
  T_GeneralizeTel_9519 -> T_PoolParams_670
d_'46'generalizedField'45'poolParams_9511
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-c
d_'46'generalizedField'45'c_9513 ::
  T_GeneralizeTel_9519 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_9513 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-pools
d_'46'generalizedField'45'pools_9515 ::
  T_GeneralizeTel_9519 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_9515
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-retiring
d_'46'generalizedField'45'retiring_9517 ::
  T_GeneralizeTel_9519 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'retiring_9517
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_9519 a0 = ()
data T_GeneralizeTel_9519
  = C_mkGeneralizeTel_9521 MAlonzo.Code.Ledger.PParams.T_PParams_210
                           T_PoolParams_670 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_11369 ::
  T_GeneralizeTel_11387 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_'46'generalizedField'45'pp_11369
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-d
d_'46'generalizedField'45'd_11371 ::
  T_GeneralizeTel_11387 -> Integer
d_'46'generalizedField'45'd_11371 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-c
d_'46'generalizedField'45'c_11373 ::
  T_GeneralizeTel_11387 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_11373 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-dReps
d_'46'generalizedField'45'dReps_11375 ::
  T_GeneralizeTel_11387 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_11375
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-e
d_'46'generalizedField'45'e_11377 ::
  T_GeneralizeTel_11387 -> AgdaAny
d_'46'generalizedField'45'e_11377 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-vs
d_'46'generalizedField'45'vs_11379 ::
  T_GeneralizeTel_11387 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676]
d_'46'generalizedField'45'vs_11379
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_11381 ::
  T_GeneralizeTel_11387 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_11381
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_11383 ::
  T_GeneralizeTel_11387 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_11383
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-an
d_'46'generalizedField'45'an_11385 ::
  T_GeneralizeTel_11387 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494
d_'46'generalizedField'45'an_11385
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_11387 a0 = ()
data T_GeneralizeTel_11387
  = C_mkGeneralizeTel_11389 MAlonzo.Code.Ledger.PParams.T_PParams_210
                            Integer MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_494
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_16237 ::
  T_GeneralizeTel_16247 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_'46'generalizedField'45'pp_16237
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-st
d_'46'generalizedField'45'st_16239 ::
  T_GeneralizeTel_16247 -> T_CertState_750
d_'46'generalizedField'45'st_16239
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-vs
d_'46'generalizedField'45'vs_16241 ::
  T_GeneralizeTel_16247 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676]
d_'46'generalizedField'45'vs_16241
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-wdrls
d_'46'generalizedField'45'wdrls_16243 ::
  T_GeneralizeTel_16247 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'wdrls_16243
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-e
d_'46'generalizedField'45'e_16245 ::
  T_GeneralizeTel_16247 -> AgdaAny
d_'46'generalizedField'45'e_16245 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_16247 a0 = ()
data T_GeneralizeTel_16247
  = C_mkGeneralizeTel_16249 MAlonzo.Code.Ledger.PParams.T_PParams_210
                            T_CertState_750
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_676]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
