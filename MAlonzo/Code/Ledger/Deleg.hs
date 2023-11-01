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
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.DecEq
import qualified MAlonzo.Code.Interface.Decidable.Instance
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
-- Ledger.Deleg._.Anchor
d_Anchor_468 a0 = ()
-- Ledger.Deleg._.GovVote
d_GovVote_510 a0 = ()
-- Ledger.Deleg._.VDeleg
d_VDeleg_530 a0 = ()
-- Ledger.Deleg.PoolParams
d_PoolParams_662 a0 = ()
newtype T_PoolParams_662
  = C_PoolParams'46'constructor_989 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Deleg.PoolParams.rewardAddr
d_rewardAddr_666 ::
  T_PoolParams_662 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_666 v0
  = case coe v0 of
      C_PoolParams'46'constructor_989 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DCert
d_DCert_668 a0 = ()
data T_DCert_668
  = C_delegate_670 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Ledger.GovernanceActions.T_VDeleg_480)
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30) Integer |
    C_regpool_672 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                  T_PoolParams_662 |
    C_retirepool_674 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 AgdaAny |
    C_regdrep_676 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 Integer
                  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488 |
    C_deregdrep_678 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_ccreghot_680 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                   (Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Ledger.Deleg.CertEnv
d_CertEnv_682 a0 = ()
data T_CertEnv_682
  = C_'10214'_'44'_'44'_'10215''7580'_696 AgdaAny
                                          MAlonzo.Code.Ledger.PParams.T_PParams_210
                                          [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
-- Ledger.Deleg.CertEnv.epoch
d_epoch_690 :: T_CertEnv_682 -> AgdaAny
d_epoch_690 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580'_696 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.pp
d_pp_692 ::
  T_CertEnv_682 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_pp_692 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580'_696 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertEnv.votes
d_votes_694 ::
  T_CertEnv_682 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
d_votes_694 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580'_696 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState
d_DState_698 a0 = ()
data T_DState_698
  = C_'10214'_'44'_'44'_'10215''7496'_712 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                          MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.DState.voteDelegs
d_voteDelegs_706 ::
  T_DState_698 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_706 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_712 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState.stakeDelegs
d_stakeDelegs_708 ::
  T_DState_698 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_708 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_712 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.DState.rewards
d_rewards_710 ::
  T_DState_698 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_710 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7496'_712 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.PState
d_PState_714 a0 = ()
data T_PState_714
  = C_'10214'_'44'_'10215''7510'_724 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.PState.pools
d_pools_720 ::
  T_PState_714 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_720 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_724 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.PState.retiring
d_retiring_722 ::
  T_PState_714 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_722 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7510'_724 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GState
d_GState_726 a0 = ()
data T_GState_726
  = C_'10214'_'44'_'10215''7515'_736 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                     MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg.GState.dreps
d_dreps_732 ::
  T_GState_726 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_732 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_736 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GState.ccHotKeys
d_ccHotKeys_734 ::
  T_GState_726 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_734 v0
  = case coe v0 of
      C_'10214'_'44'_'10215''7515'_736 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState
d_CertState_738 a0 = ()
data T_CertState_738
  = C_'10214'_'44'_'44'_'10215''7580'_752 T_DState_698 T_PState_714
                                          T_GState_726
-- Ledger.Deleg.CertState.dState
d_dState_746 :: T_CertState_738 -> T_DState_698
d_dState_746 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580'_752 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState.pState
d_pState_748 :: T_CertState_738 -> T_PState_714
d_pState_748 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580'_752 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.CertState.gState
d_gState_750 :: T_CertState_738 -> T_GState_726
d_gState_750 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''7580'_752 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GovCertEnv
d_GovCertEnv_754 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_GovCertEnv_754 = erased
-- Ledger.Deleg.DelegEnv
d_DelegEnv_756 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_DelegEnv_756 = erased
-- Ledger.Deleg.PoolEnv
d_PoolEnv_758 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 -> ()
d_PoolEnv_758 = erased
-- Ledger.Deleg._._.cwitness
d_cwitness_832 ::
  T_DCert_668 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cwitness_832 v0
  = case coe v0 of
      C_delegate_670 v1 v2 v3 v4 -> coe v1
      C_regpool_672 v1 v2 -> coe v1
      C_retirepool_674 v1 v2 -> coe v1
      C_regdrep_676 v1 v2 v3 -> coe v1
      C_deregdrep_678 v1 -> coe v1
      C_ccreghot_680 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg._._.requiredDeposit
d_requiredDeposit_848 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  () ->
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe AgdaAny -> Integer
d_requiredDeposit_848 ~v0 ~v1 v2 v3 = du_requiredDeposit_848 v2 v3
du_requiredDeposit_848 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_210 ->
  Maybe AgdaAny -> Integer
du_requiredDeposit_848 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2
        -> coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_286 (coe v0)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe (0 :: Integer)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg._._.getDRepVote
d_getDRepVote_854 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_getDRepVote_854 ~v0 v1 = du_getDRepVote_854 v1
du_getDRepVote_854 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_getDRepVote_854 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.GovernanceActions.C_GovVote'46'constructor_8875 v1 v2 v3 v4 v5
        -> let v6 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
           case coe v2 of
             MAlonzo.Code.Ledger.GovernanceActions.C_DRep_476
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v3)
             _ -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__858 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'DELEG'10632'__858
  = C_DELEG'45'delegate_860
-- Ledger.Deleg._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__862 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'POOL'10632'__862
  = C_POOL'45'regpool_922 | C_POOL'45'retirepool_924
-- Ledger.Deleg._.rewardAddr
d_rewardAddr_920 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_8343 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_rewardAddr_920 ~v0 v1 = du_rewardAddr_920 v1
du_rewardAddr_920 ::
  T_GeneralizeTel_8343 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_rewardAddr_920 v0
  = coe
      d_rewardAddr_666 (coe d_'46'generalizedField'45'poolParams_8335 v0)
-- Ledger.Deleg._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__926 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'GOVCERT'10632'__926
  = C_GOVCERT'45'regdrep_982 MAlonzo.Code.Data.Sum.Base.T__'8846'__30 |
    C_GOVCERT'45'deregdrep_984 MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 |
    C_GOVCERT'45'ccreghot_986
-- Ledger.Deleg._.drepActivity
d_drepActivity_946 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_10173 -> AgdaAny
d_drepActivity_946 ~v0 v1 = du_drepActivity_946 v1
du_drepActivity_946 :: T_GeneralizeTel_10173 -> AgdaAny
du_drepActivity_946 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_308
      (coe d_'46'generalizedField'45'pp_10157 v0)
-- Ledger.Deleg._.drepDeposit
d_drepDeposit_948 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_10173 -> Integer
d_drepDeposit_948 ~v0 v1 = du_drepDeposit_948 v1
du_drepDeposit_948 :: T_GeneralizeTel_10173 -> Integer
du_drepDeposit_948 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepDeposit_306
      (coe d_'46'generalizedField'45'pp_10157 v0)
-- Ledger.Deleg._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__988 a0 a1 a2 a3 a4 = ()
data T__'8866'_'8640''10631'_'44'CERT'10632'__988
  = C_CERT'45'deleg_990 T__'8866'_'8640''10631'_'44'DELEG'10632'__858 |
    C_CERT'45'pool_992 T__'8866'_'8640''10631'_'44'POOL'10632'__862 |
    C_CERT'45'vdel_994 T__'8866'_'8640''10631'_'44'GOVCERT'10632'__926
-- Ledger.Deleg._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__996 a0 a1 a2 a3 a4
  = ()
newtype T__'8866'_'8640''10631'_'44'CERTBASE'10632'__996
  = C_CERT'45'base_1068 MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
-- Ledger.Deleg._.drepActivity
d_drepActivity_1016 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_14295 -> AgdaAny
d_drepActivity_1016 ~v0 v1 = du_drepActivity_1016 v1
du_drepActivity_1016 :: T_GeneralizeTel_14295 -> AgdaAny
du_drepActivity_1016 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_drepActivity_308
      (coe d_'46'generalizedField'45'pp_14287 v0)
-- Ledger.Deleg._.dState
d_dState_1054 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_14295 -> T_DState_698
d_dState_1054 ~v0 v1 = du_dState_1054 v1
du_dState_1054 :: T_GeneralizeTel_14295 -> T_DState_698
du_dState_1054 v0
  = coe d_dState_746 (coe d_'46'generalizedField'45'st_14289 v0)
-- Ledger.Deleg._.gState
d_gState_1056 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_14295 -> T_GState_726
d_gState_1056 ~v0 v1 = du_gState_1056 v1
du_gState_1056 :: T_GeneralizeTel_14295 -> T_GState_726
du_gState_1056 v0
  = coe d_gState_750 (coe d_'46'generalizedField'45'st_14289 v0)
-- Ledger.Deleg._.pState
d_pState_1058 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_14295 -> T_PState_714
d_pState_1058 ~v0 v1 = du_pState_1058 v1
du_pState_1058 :: T_GeneralizeTel_14295 -> T_PState_714
du_pState_1058 v0
  = coe d_pState_748 (coe d_'46'generalizedField'45'st_14289 v0)
-- Ledger.Deleg._.ccHotKeys
d_ccHotKeys_1062 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_14295 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1062 ~v0 v1 = du_ccHotKeys_1062 v1
du_ccHotKeys_1062 ::
  T_GeneralizeTel_14295 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_ccHotKeys_1062 v0
  = coe
      d_ccHotKeys_734
      (coe d_gState_750 (coe d_'46'generalizedField'45'st_14289 v0))
-- Ledger.Deleg._.dreps
d_dreps_1064 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_GeneralizeTel_14295 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1064 ~v0 v1 = du_dreps_1064 v1
du_dreps_1064 ::
  T_GeneralizeTel_14295 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dreps_1064 v0
  = coe
      d_dreps_732
      (coe d_gState_750 (coe d_'46'generalizedField'45'st_14289 v0))
-- Ledger.Deleg._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1070 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  T_CertEnv_682 ->
  T_CertState_738 -> [T_DCert_668] -> T_CertState_738 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1070 = erased
-- Ledger.Deleg._.completeness
d_completeness_1074 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_1074 = erased
-- Ledger.Deleg._.computeProof
d_computeProof_1078 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_computeProof_1078 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_88
      (coe v0)
-- Ledger.Deleg.Computational-DELEG
d_Computational'45'DELEG_1086 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'DELEG_1086 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_176
      (\ v1 v2 v3 ->
         let v4 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
         case coe v3 of
           C_delegate_670 v5 v6 v7 v8
             -> let v9
                      = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                          (coe v8)
                          (coe
                             MAlonzo.Code.Data.Nat.Base.d__'8852'__138
                             (coe du_requiredDeposit_848 (coe v1) (coe v6))
                             (coe du_requiredDeposit_848 (coe v1) (coe v7))) in
                case coe v9 of
                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v10 v11
                    -> if coe v10
                         then coe
                                seq (coe v11)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                   (coe
                                      MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                      (coe
                                         C_'10214'_'44'_'44'_'10215''7496'_712
                                         (let v12
                                                = coe
                                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                    (coe
                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                       (coe
                                                          MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                          (coe
                                                             MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                             (coe v0))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                       (coe
                                                          MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                          (coe v0))) in
                                          coe
                                            MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_706
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1414
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                               erased v12)
                                            (coe v5) (coe v6) (coe d_voteDelegs_706 (coe v2)))
                                         (let v12
                                                = coe
                                                    MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                    (coe
                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                       (coe
                                                          MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                          (coe
                                                             MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                             (coe v0))))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                       (coe
                                                          MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                          (coe v0))) in
                                          coe
                                            MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_706
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1414
                                               (coe
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                               erased v12)
                                            (coe v5) (coe v7) (coe d_stakeDelegs_708 (coe v2)))
                                         (coe d_rewards_710 (coe v2)))
                                      (coe C_DELEG'45'delegate_860)))
                         else coe
                                seq (coe v11) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                  _ -> MAlonzo.RTE.mazUnreachableError
           _ -> coe v4)
-- Ledger.Deleg.Computational-POOL
d_Computational'45'POOL_1124 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'POOL_1124 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_176
      (\ v1 v2 ->
         case coe v2 of
           C_'10214'_'44'_'10215''7510'_724 v3 v4
             -> coe
                  (\ v5 ->
                     let v6 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
                     case coe v5 of
                       C_regpool_672 v7 v8
                         -> let v9
                                  = coe
                                      MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                      (coe
                                         MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                            (coe
                                               MAlonzo.Code.Ledger.Crypto.d_khs_216
                                               (coe
                                                  MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                            (coe
                                               MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                               (coe v0))))
                                      v7
                                      (coe
                                         MAlonzo.Code.Interface.IsSet.du_dom_478
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1414
                                            (coe
                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                         (coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                         (coe v3)) in
                            case coe v9 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v10 v11
                                -> if coe v10
                                     then coe
                                            seq (coe v11)
                                            (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                     else coe
                                            seq (coe v11)
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                               (coe
                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                  (coe
                                                     C_'10214'_'44'_'10215''7510'_724
                                                     (let v12
                                                            = coe
                                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                         (coe v0))))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                      (coe v0))) in
                                                      coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__676
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                                           (coe
                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                           erased v12)
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_658
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v7) (coe v8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                                                              (coe v3))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v3))))
                                                     (coe v4))
                                                  (coe C_POOL'45'regpool_922)))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       C_retirepool_674 v7 v8
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                 (coe
                                    C_'10214'_'44'_'10215''7510'_724 (coe v3)
                                    (let v9
                                           = coe
                                               MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                     (coe
                                                        MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                  (coe
                                                     MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                     (coe v0))) in
                                     coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__676
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1414
                                          (coe
                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                          erased v9)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_658
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1414
                                             (coe
                                                MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                             (coe v8)))
                                       (coe v4)))
                                 (coe C_POOL'45'retirepool_924))
                       _ -> coe v6)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Computational-GOVCERT
d_Computational'45'GOVCERT_1148 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'GOVCERT_1148 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_176
      (\ v1 ->
         case coe v1 of
           C_'10214'_'44'_'44'_'10215''7580'_696 v2 v3 v4
             -> coe
                  (\ v5 ->
                     case coe v5 of
                       C_'10214'_'44'_'10215''7515'_736 v6 v7
                         -> coe
                              (\ v8 ->
                                 let v9 = coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 in
                                 case coe v8 of
                                   C_regdrep_676 v10 v11 v12
                                     -> let v13
                                              = coe
                                                  MAlonzo.Code.Interface.Decidable.Instance.du_Dec'45''8846'_144
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                     (coe
                                                        MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                                                        (coe
                                                           MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                                        (coe v11)
                                                        (coe
                                                           MAlonzo.Code.Ledger.PParams.d_drepDeposit_306
                                                           (coe v3)))
                                                     (coe
                                                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__82
                                                        (coe
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
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                    (coe v0))))
                                                           v10
                                                           (coe
                                                              MAlonzo.Code.Interface.IsSet.du_dom_478
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1414
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                              (coe
                                                                 MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                              (coe v6)))
                                                        (coe
                                                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                                           (coe
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_30))))
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__62
                                                     (coe
                                                        MAlonzo.Code.Interface.Decidable.Instance.du_DecEq'8658'Dec_136
                                                        (coe
                                                           MAlonzo.Code.Interface.DecEq.d_DecEq'45'ℕ_30)
                                                        (coe v11) (coe (0 :: Integer)))
                                                     (coe
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
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                              (coe
                                                                 MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                 (coe v0))))
                                                        v10
                                                        (coe
                                                           MAlonzo.Code.Interface.IsSet.du_dom_478
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                           (coe
                                                              MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                           (coe v6)))) in
                                        case coe v13 of
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v14 v15
                                            -> if coe v14
                                                 then case coe v15 of
                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v16
                                                          -> coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                                  (coe
                                                                     C_'10214'_'44'_'10215''7515'_736
                                                                     (let v17
                                                                            = coe
                                                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                      (coe v0))) in
                                                                      coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__676
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                           erased v17)
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_658
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_th_1414
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                              (coe v10)
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Epoch.d_epoch_38
                                                                                 (MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                                                    (coe v0))
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.Bundles.d__'43'__2010
                                                                                    (MAlonzo.Code.Ledger.Epoch.d_Slot'691'_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                                                          (coe v0)))
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Epoch.d_firstSlot_40
                                                                                       (MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                                                          (coe v0))
                                                                                       v2)
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Epoch.d_firstSlot_40
                                                                                       (MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                                                          (coe v0))
                                                                                       (let v18
                                                                                              = coe
                                                                                                  C_mkGeneralizeTel_10175
                                                                                                  (coe
                                                                                                     v3)
                                                                                                  (coe
                                                                                                     v11)
                                                                                                  (coe
                                                                                                     v10)
                                                                                                  (coe
                                                                                                     v6)
                                                                                                  (coe
                                                                                                     v2)
                                                                                                  (coe
                                                                                                     v4)
                                                                                                  (coe
                                                                                                     v7)
                                                                                                  (coe
                                                                                                     v12) in
                                                                                        MAlonzo.Code.Ledger.PParams.d_drepActivity_308
                                                                                          (coe
                                                                                             d_'46'generalizedField'45'pp_10157
                                                                                             v18)))))))
                                                                        (coe v6))
                                                                     (coe v7))
                                                                  (coe
                                                                     C_GOVCERT'45'regdrep_982 v16))
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 else coe
                                                        seq (coe v15)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   C_deregdrep_678 v10
                                     -> let v11
                                              = coe
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
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                        (coe
                                                           MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                           (coe v0))))
                                                  v10
                                                  (coe
                                                     MAlonzo.Code.Interface.IsSet.du_dom_478
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1414
                                                        (coe
                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                     (coe
                                                        MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_486)
                                                     (coe v6)) in
                                        case coe v11 of
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v12 v13
                                            -> if coe v12
                                                 then case coe v13 of
                                                        MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_26 v14
                                                          -> coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                                  (coe
                                                                     C_'10214'_'44'_'10215''7515'_736
                                                                     (let v15
                                                                            = coe
                                                                                MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                      (coe
                                                                                         MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                         (coe v0))))
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                                   (coe
                                                                                      MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                      (coe v0))) in
                                                                      coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1096
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1414
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                           MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                           erased v15)
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                                                                              (coe v6))
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe v6)))
                                                                        (let v16
                                                                               = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                                                         coe
                                                                           MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                                                                           (MAlonzo.Code.Axiom.Set.d_th_1414
                                                                              (coe v16))
                                                                           erased v10))
                                                                     (coe v7))
                                                                  (coe
                                                                     C_GOVCERT'45'deregdrep_984
                                                                     v14))
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 else coe
                                                        seq (coe v13)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   C_ccreghot_680 v10 v11
                                     -> let v12
                                              = coe
                                                  MAlonzo.Code.Axiom.Set.d__'8712''63'__1542
                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Interface.DecEq.du_DecEq'45'Product_38
                                                     (coe
                                                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                              (coe
                                                                 MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                           (coe
                                                              MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Interface.DecEq.du_DecEq'45'Maybe_34
                                                        (coe
                                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                              (coe
                                                                 MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                 (coe v0))))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v10)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_462
                                                     (coe v7)) in
                                        case coe v12 of
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v13 v14
                                            -> if coe v13
                                                 then coe
                                                        seq (coe v14)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                 else coe
                                                        seq (coe v14)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                              (coe
                                                                 C_'10214'_'44'_'10215''7515'_736
                                                                 (coe v6)
                                                                 (let v15
                                                                        = coe
                                                                            MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                     (coe v0))))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                                                  (coe v0))) in
                                                                  coe
                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__676
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1414
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                       erased v15)
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_650
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1414
                                                                          (coe
                                                                             MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                       (coe v10) (coe v11))
                                                                    (coe v7)))
                                                              (coe C_GOVCERT'45'ccreghot_986)))
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   _ -> coe v9)
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Computational-CERT
d_Computational'45'CERT_1320 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'CERT_1320 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_176
      (\ v1 ->
         case coe v1 of
           C_'10214'_'44'_'44'_'10215''7580'_696 v2 v3 v4
             -> coe
                  (\ v5 ->
                     case coe v5 of
                       C_'10214'_'44'_'44'_'10215''7580'_752 v6 v7 v8
                         -> coe
                              (\ v9 ->
                                 let v10
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_88
                                           (d_Computational'45'POOL_1124 (coe v0)) v3 v7 v9 in
                                 let v11
                                       = coe
                                           MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_88
                                           (d_Computational'45'GOVCERT_1148 (coe v0)) v1 v8 v9 in
                                 case coe v9 of
                                   C_delegate_670 v12 v13 v14 v15
                                     -> let v16
                                              = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2464
                                                  (coe v15)
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Base.d__'8852'__138
                                                     (coe du_requiredDeposit_848 (coe v3) (coe v13))
                                                     (coe
                                                        du_requiredDeposit_848 (coe v3)
                                                        (coe v14))) in
                                        case coe v16 of
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__34 v17 v18
                                            -> if coe v17
                                                 then let v19
                                                            = seq
                                                                (coe v18)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                   (coe
                                                                      MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                                      (coe
                                                                         C_'10214'_'44'_'44'_'10215''7496'_712
                                                                         (let v19
                                                                                = coe
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
                                                                                             v0))) in
                                                                          coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_706
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1414
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                               erased v19)
                                                                            (coe v12) (coe v13)
                                                                            (coe
                                                                               d_voteDelegs_706
                                                                               (coe v6)))
                                                                         (let v19
                                                                                = coe
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
                                                                                             v0))) in
                                                                          coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_706
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1414
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                                                               erased v19)
                                                                            (coe v12) (coe v14)
                                                                            (coe
                                                                               d_stakeDelegs_708
                                                                               (coe v6)))
                                                                         (coe
                                                                            d_rewards_710 (coe v6)))
                                                                      (coe
                                                                         C_DELEG'45'delegate_860))) in
                                                      case coe v19 of
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v20
                                                          -> case coe v20 of
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                 -> coe
                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                      (coe
                                                                         MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                                         (coe
                                                                            C_'10214'_'44'_'44'_'10215''7580'_752
                                                                            (coe v21) (coe v7)
                                                                            (coe v8))
                                                                         (coe
                                                                            C_CERT'45'deleg_990
                                                                            v22))
                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                          -> case coe v10 of
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v20
                                                                 -> case coe v20 of
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                        -> coe
                                                                             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                             (coe
                                                                                MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                                                (coe
                                                                                   C_'10214'_'44'_'44'_'10215''7580'_752
                                                                                   (coe v6)
                                                                                   (coe v21)
                                                                                   (coe v8))
                                                                                (coe
                                                                                   C_CERT'45'pool_992
                                                                                   v22))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                                 -> case coe v11 of
                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v20
                                                                        -> case coe v20 of
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                               -> coe
                                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                                                       (coe
                                                                                          C_'10214'_'44'_'44'_'10215''7580'_752
                                                                                          (coe v6)
                                                                                          (coe v7)
                                                                                          (coe v21))
                                                                                       (coe
                                                                                          C_CERT'45'vdel_994
                                                                                          v22))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                                        -> coe v11
                                                                      _ -> MAlonzo.RTE.mazUnreachableError
                                                               _ -> MAlonzo.RTE.mazUnreachableError
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 else (let v19
                                                             = seq
                                                                 (coe v18)
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18) in
                                                       case coe v19 of
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v20
                                                           -> case coe v20 of
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                  -> coe
                                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                       (coe
                                                                          MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                                          (coe
                                                                             C_'10214'_'44'_'44'_'10215''7580'_752
                                                                             (coe v21) (coe v7)
                                                                             (coe v8))
                                                                          (coe
                                                                             C_CERT'45'deleg_990
                                                                             v22))
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                           -> case coe v10 of
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v20
                                                                  -> case coe v20 of
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                         -> coe
                                                                              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                              (coe
                                                                                 MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                                                 (coe
                                                                                    C_'10214'_'44'_'44'_'10215''7580'_752
                                                                                    (coe v6)
                                                                                    (coe v21)
                                                                                    (coe v8))
                                                                                 (coe
                                                                                    C_CERT'45'pool_992
                                                                                    v22))
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                                  -> case coe v11 of
                                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v20
                                                                         -> case coe v20 of
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v21 v22
                                                                                -> coe
                                                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                                                        (coe
                                                                                           C_'10214'_'44'_'44'_'10215''7580'_752
                                                                                           (coe v6)
                                                                                           (coe v7)
                                                                                           (coe
                                                                                              v21))
                                                                                        (coe
                                                                                           C_CERT'45'vdel_994
                                                                                           v22))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                                       MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                                         -> coe v11
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         _ -> MAlonzo.RTE.mazUnreachableError)
                                          _ -> MAlonzo.RTE.mazUnreachableError
                                   _ -> case coe v10 of
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                            -> case coe v12 of
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                   -> coe
                                                        MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                        (coe
                                                           MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                           (coe
                                                              C_'10214'_'44'_'44'_'10215''7580'_752
                                                              (coe v6) (coe v13) (coe v8))
                                                           (coe C_CERT'45'pool_992 v14))
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                            -> case coe v11 of
                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v12
                                                   -> case coe v12 of
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                                          -> coe
                                                               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                               (coe
                                                                  MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                                                                  (coe
                                                                     C_'10214'_'44'_'44'_'10215''7580'_752
                                                                     (coe v6) (coe v7) (coe v13))
                                                                  (coe C_CERT'45'vdel_994 v14))
                                                        _ -> MAlonzo.RTE.mazUnreachableError
                                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                                   -> coe v11
                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                          _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Computational-CERTBASE
d_Computational'45'CERTBASE_1660 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'CERTBASE_1660 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_176
      (\ v1 ->
         case coe v1 of
           C_'10214'_'44'_'44'_'10215''7580'_696 v2 v3 v4
             -> coe
                  (\ v5 v6 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                       (coe
                          MAlonzo.Code.Data.Product.Base.du_'45''44'__68
                          (coe
                             C_'10214'_'44'_'44'_'10215''7580'_752 (coe d_dState_746 (coe v5))
                             (coe d_pState_748 (coe v5))
                             (coe
                                C_'10214'_'44'_'10215''7515'_736
                                (let v7
                                       = coe
                                           MAlonzo.Code.Interface.DecEq.du_DecEq'45'Sum_40
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                              (coe
                                                 MAlonzo.Code.Ledger.Crypto.d_khs_216
                                                 (coe
                                                    MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                    (coe v0))))
                                           (coe
                                              MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_220
                                              (coe
                                                 MAlonzo.Code.Ledger.GovStructure.d_crypto_368
                                                 (coe v0))) in
                                 coe
                                   MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1104
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1414
                                      (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1540
                                      MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                                      v7)
                                   (let v8
                                          = coe
                                              MAlonzo.Code.Ledger.Epoch.d_epoch_38
                                              (MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                 (coe v0))
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.d__'43'__2010
                                                 (MAlonzo.Code.Ledger.Epoch.d_Slot'691'_26
                                                    (coe
                                                       MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Epoch.d_firstSlot_40
                                                    (MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                       (coe v0))
                                                    v2)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Epoch.d_firstSlot_40
                                                    (MAlonzo.Code.Ledger.GovStructure.d_epochStructure_412
                                                       (coe v0))
                                                    (let v8
                                                           = coe
                                                               C_mkGeneralizeTel_14297 (coe v3)
                                                               (coe v5) (coe v4) (coe v2) in
                                                     MAlonzo.Code.Ledger.PParams.d_drepActivity_308
                                                       (coe
                                                          d_'46'generalizedField'45'pp_14287
                                                          v8)))) in
                                    coe (\ v9 -> v8))
                                   (let v8
                                          = coe
                                              C_mkGeneralizeTel_14297 (coe v3) (coe v5) (coe v4)
                                              (coe v2) in
                                    coe
                                      d_dreps_732
                                      (coe
                                         d_gState_750 (coe d_'46'generalizedField'45'st_14289 v8)))
                                   (let v8
                                          = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                    coe
                                      MAlonzo.Code.Axiom.Set.du_mapPartial_558
                                      (MAlonzo.Code.Axiom.Set.d_th_1414 (coe v8))
                                      (coe du_getDRepVote_854)
                                      (let v9
                                             = MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 in
                                       coe
                                         MAlonzo.Code.Axiom.Set.du_fromList_410
                                         (coe MAlonzo.Code.Axiom.Set.d_th_1414 (coe v9)) (coe v4))))
                                (coe
                                   d_ccHotKeys_734
                                   (let v7
                                          = coe
                                              C_mkGeneralizeTel_14297 (coe v3) (coe v5) (coe v4)
                                              (coe v2) in
                                    coe d_gState_750 (coe d_'46'generalizedField'45'st_14289 v7)))))
                          (coe
                             C_CERT'45'base_1068 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Deleg.Computational-CERTS
d_Computational'45'CERTS_1680 ::
  MAlonzo.Code.Ledger.GovStructure.T_GovStructure_4 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_50
d_Computational'45'CERTS_1680 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.du_Computational'45'SS'8658'BS'7495'_450
      (coe d_Computational'45'CERTBASE_1660 (coe v0))
      (coe d_Computational'45'CERT_1320 (coe v0))
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_8333 ::
  T_GeneralizeTel_8343 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_'46'generalizedField'45'pp_8333 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-poolParams
d_'46'generalizedField'45'poolParams_8335 ::
  T_GeneralizeTel_8343 -> T_PoolParams_662
d_'46'generalizedField'45'poolParams_8335
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-c
d_'46'generalizedField'45'c_8337 ::
  T_GeneralizeTel_8343 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_8337 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-pools
d_'46'generalizedField'45'pools_8339 ::
  T_GeneralizeTel_8343 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'pools_8339
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-retiring
d_'46'generalizedField'45'retiring_8341 ::
  T_GeneralizeTel_8343 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'retiring_8341
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_8343 a0 = ()
data T_GeneralizeTel_8343
  = C_mkGeneralizeTel_8345 MAlonzo.Code.Ledger.PParams.T_PParams_210
                           T_PoolParams_662 MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_10157 ::
  T_GeneralizeTel_10173 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_'46'generalizedField'45'pp_10157
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-d
d_'46'generalizedField'45'd_10159 ::
  T_GeneralizeTel_10173 -> Integer
d_'46'generalizedField'45'd_10159 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-c
d_'46'generalizedField'45'c_10161 ::
  T_GeneralizeTel_10173 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'46'generalizedField'45'c_10161 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-dReps
d_'46'generalizedField'45'dReps_10163 ::
  T_GeneralizeTel_10173 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'dReps_10163
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-e
d_'46'generalizedField'45'e_10165 ::
  T_GeneralizeTel_10173 -> AgdaAny
d_'46'generalizedField'45'e_10165 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-vs
d_'46'generalizedField'45'vs_10167 ::
  T_GeneralizeTel_10173 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
d_'46'generalizedField'45'vs_10167
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-ccKeys
d_'46'generalizedField'45'ccKeys_10169 ::
  T_GeneralizeTel_10173 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'46'generalizedField'45'ccKeys_10169
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-an
d_'46'generalizedField'45'an_10171 ::
  T_GeneralizeTel_10173 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488
d_'46'generalizedField'45'an_10171
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_10173 a0 = ()
data T_GeneralizeTel_10173
  = C_mkGeneralizeTel_10175 MAlonzo.Code.Ledger.PParams.T_PParams_210
                            Integer MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 AgdaAny
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                            MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_488
-- Ledger.Deleg..generalizedField-pp
d_'46'generalizedField'45'pp_14287 ::
  T_GeneralizeTel_14295 -> MAlonzo.Code.Ledger.PParams.T_PParams_210
d_'46'generalizedField'45'pp_14287
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-st
d_'46'generalizedField'45'st_14289 ::
  T_GeneralizeTel_14295 -> T_CertState_738
d_'46'generalizedField'45'st_14289
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-vs
d_'46'generalizedField'45'vs_14291 ::
  T_GeneralizeTel_14295 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670]
d_'46'generalizedField'45'vs_14291
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg..generalizedField-e
d_'46'generalizedField'45'e_14293 ::
  T_GeneralizeTel_14295 -> AgdaAny
d_'46'generalizedField'45'e_14293 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Deleg.GeneralizeTel
d_GeneralizeTel_14295 a0 = ()
data T_GeneralizeTel_14295
  = C_mkGeneralizeTel_14297 MAlonzo.Code.Ledger.PParams.T_PParams_210
                            T_CertState_738
                            [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_670] AgdaAny
