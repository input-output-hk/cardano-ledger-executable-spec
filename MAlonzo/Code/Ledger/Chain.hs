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

module MAlonzo.Code.Ledger.Chain where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Interface.HasSingleton
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Deleg
import qualified MAlonzo.Code.Ledger.Enact
import qualified MAlonzo.Code.Ledger.Epoch
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Ledger
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Ratify
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Utxo
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- _.Credential
d_Credential_64 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_64 = erased
-- _.Slot
d_Slot_336 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 -> ()
d_Slot_336 = erased
-- _.Tx
d_Tx_366 a0 = ()
-- _.VDeleg
d_VDeleg_384 a0 = ()
-- _.epoch
d_epoch_446 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  AgdaAny -> AgdaAny
d_epoch_446 v0
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
      (coe
         MAlonzo.Code.Ledger.Transaction.d_epochStructure_1270 (coe v0))
-- Ledger.Chain._._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1452 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Ledger.T_LEnv_1724 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2378] ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__1452 = erased
-- Ledger.Chain._.LEnv
d_LEnv_1460 a0 a1 = ()
-- Ledger.Chain._.LState
d_LState_1462 a0 a1 = ()
-- Ledger.Chain._.StakeDistrs
d_StakeDistrs_1522 a0 a1 = ()
-- Ledger.Chain._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1638 v0 ~v1
  = du_DecEq'45'DepositPurpose_1638 v0
du_DecEq'45'DepositPurpose_1638 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DepositPurpose_1638 v0
  = coe
      MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0)
-- Ledger.Chain._.DepositPurpose
d_DepositPurpose_1640 a0 a1 = ()
-- Ledger.Chain._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__1778 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Chain._.NewEpochState
d_NewEpochState_1790 a0 a1 = ()
-- Ledger.Chain.ChainState
d_ChainState_1826 a0 a1 = ()
newtype T_ChainState_1826
  = C_ChainState'46'constructor_3109 MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1896
-- Ledger.Chain.ChainState.newEpochState
d_newEpochState_1830 ::
  T_ChainState_1826 -> MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1896
d_newEpochState_1830 v0
  = case coe v0 of
      C_ChainState'46'constructor_3109 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.Block
d_Block_1832 a0 a1 = ()
data T_Block_1832
  = C_Block'46'constructor_3197 [MAlonzo.Code.Ledger.Transaction.T_Tx_2378]
                                AgdaAny
-- Ledger.Chain.Block.ts
d_ts_1838 ::
  T_Block_1832 -> [MAlonzo.Code.Ledger.Transaction.T_Tx_2378]
d_ts_1838 v0
  = case coe v0 of
      C_Block'46'constructor_3197 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.Block.slot
d_slot_1840 :: T_Block_1832 -> AgdaAny
d_slot_1840 v0
  = case coe v0 of
      C_Block'46'constructor_3197 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.maybePurpose
d_maybePurpose_1852 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Utxo.T_DepositPurpose_1632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
d_maybePurpose_1852 v0 ~v1 v2 v3 v4
  = du_maybePurpose_1852 v0 v2 v3 v4
du_maybePurpose_1852 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Utxo.T_DepositPurpose_1632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> Maybe Integer
du_maybePurpose_1852 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe
                     MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                     (coe
                        MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642 (coe v0))
                     v1 v4 in
           coe
             (case coe v6 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then coe
                              seq (coe v8)
                              (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v3))
                       else coe
                              seq (coe v8) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.maybePurpose-prop
d_maybePurpose'45'prop_1884 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Utxo.T_DepositPurpose_1632 ->
  MAlonzo.Code.Ledger.Utxo.T_DepositPurpose_1632 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_maybePurpose'45'prop_1884 = erased
-- Ledger.Chain.filterPurpose
d_filterPurpose_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Utxo.T_DepositPurpose_1632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterPurpose_1926 v0 ~v1 v2 v3 = du_filterPurpose_1926 v0 v2 v3
du_filterPurpose_1926 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Utxo.T_DepositPurpose_1632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterPurpose_1926 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_802
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
      (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1116
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (coe du_maybePurpose_1852 (coe v0) (coe v1)) (coe v2))
-- Ledger.Chain.govActionDeposits
d_govActionDeposits_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_govActionDeposits_1940 v0 ~v1 v2
  = du_govActionDeposits_1940 v0 v2
du_govActionDeposits_1940 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_govActionDeposits_1940 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du_foldl_256
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__482
         (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
         (coe
            MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3196))
         (coe
            MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_620
            (coe
               MAlonzo.Code.Ledger.Transaction.d_govStructure_1946 (coe v0))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_512
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
      (coe
         MAlonzo.Code.Axiom.Set.du_mapPartial_558
         (MAlonzo.Code.Axiom.Set.d_th_1430
            (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                -> case coe v4 of
                     MAlonzo.Code.Ledger.GovernanceActions.C_GovActionState'46'constructor_4563 v5 v6 v7 v8 v9
                       -> case coe v6 of
                            MAlonzo.Code.Ledger.Address.C_RwdAddr'46'constructor_1089 v10 v11
                              -> coe
                                   MAlonzo.Code.Data.Maybe.Base.du__'62''62''61'__76
                                   (coe
                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1430
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                         (coe
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                      (coe
                                         MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                         (coe
                                            MAlonzo.Code.Ledger.Deleg.d_dState_734
                                            (coe
                                               MAlonzo.Code.Ledger.Ledger.d_certState_1756
                                               (coe v1))))
                                      (coe v11)
                                      (coe
                                         MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10
                                            erased
                                            (coe
                                               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''8846'_166
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
                                                  (coe
                                                     MAlonzo.Code.Ledger.Crypto.d_khs_192
                                                     (coe
                                                        MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
                                                  (coe
                                                     MAlonzo.Code.Ledger.Transaction.d_crypto_1026
                                                     (coe v0)))))
                                         (coe v11)
                                         (let v12
                                                = MAlonzo.Code.Axiom.Set.d_th_1430
                                                    (coe
                                                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.Rel.du_dom_312 v12
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                  (coe
                                                     MAlonzo.Code.Ledger.Deleg.d_voteDelegs_694
                                                     (coe
                                                        MAlonzo.Code.Ledger.Deleg.d_dState_734
                                                        (coe
                                                           MAlonzo.Code.Ledger.Ledger.d_certState_1756
                                                           (coe v1)))))))))
                                   (coe
                                      (\ v12 ->
                                         coe
                                           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'Maybe_18 ()
                                           erased () erased
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1430
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1430
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                                              (coe
                                                 MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                 (coe
                                                    MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
                                                    (coe v1)))
                                              (coe
                                                 MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1640
                                                 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1592
                                                 (coe
                                                    MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Utxo.du_DecEq'45'DepositPurpose_1642
                                                    (coe v0))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Utxo.C_GovActionDeposit_1640
                                                    (coe v3))
                                                 (let v13
                                                        = MAlonzo.Code.Axiom.Set.d_th_1430
                                                            (coe
                                                               MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10) in
                                                  coe
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_312 v13
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_482
                                                          (coe
                                                             MAlonzo.Code.Ledger.Utxo.d_deposits_1974
                                                             (coe
                                                                MAlonzo.Code.Ledger.Ledger.d_utxoSt_1752
                                                                (coe v1))))))))
                                           (\ v13 ->
                                              coe
                                                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                (coe
                                                   MAlonzo.Code.Interface.HasSingleton.d_'10100'_'10101'_294
                                                   (coe
                                                      MAlonzo.Code.Interface.HasSingleton.du_HasSingletonSet'45'Map_304
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1430
                                                         (coe
                                                            MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v12) (coe v13))))))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError)
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_410
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1430
               (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
            (coe MAlonzo.Code.Ledger.Ledger.d_govSt_1754 (coe v1))))
-- Ledger.Chain.calculateStakeDistrs
d_calculateStakeDistrs_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1630
d_calculateStakeDistrs_1994 v0 ~v1 v2
  = du_calculateStakeDistrs_1994 v0 v2
du_calculateStakeDistrs_1994 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Ledger.T_LState_1744 ->
  MAlonzo.Code.Ledger.Ratify.T_StakeDistrs_1630
du_calculateStakeDistrs_1994 v0 v1
  = coe
      MAlonzo.Code.Ledger.Ratify.C_StakeDistrs'46'constructor_10613
      (coe du_govActionDeposits_1940 (coe v0) (coe v1))
-- Ledger.Chain._⊢_⇀⦇_,CHAIN⦈_
d__'8866'_'8640''10631'_'44'CHAIN'10632'__2042 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'CHAIN'10632'__2042
  = C_CHAIN_2082 MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1896
                 MAlonzo.Code.Ledger.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2062
                 MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__68
-- Ledger.Chain._.newEpochState
d_newEpochState_2046 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_39115 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1896
d_newEpochState_2046 ~v0 ~v1 v2 = du_newEpochState_2046 v2
du_newEpochState_2046 ::
  T_GeneralizeTel_39115 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1896
du_newEpochState_2046 v0
  = coe
      d_newEpochState_1830 (coe d_'46'generalizedField'45's_39107 v0)
-- Ledger.Chain._.slot
d_slot_2050 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_39115 -> AgdaAny
d_slot_2050 ~v0 ~v1 v2 = du_slot_2050 v2
du_slot_2050 :: T_GeneralizeTel_39115 -> AgdaAny
du_slot_2050 v0
  = coe d_slot_1840 (coe d_'46'generalizedField'45'b_39109 v0)
-- Ledger.Chain._.ts
d_ts_2052 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_39115 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2378]
d_ts_2052 ~v0 ~v1 v2 = du_ts_2052 v2
du_ts_2052 ::
  T_GeneralizeTel_39115 ->
  [MAlonzo.Code.Ledger.Transaction.T_Tx_2378]
du_ts_2052 v0
  = coe d_ts_1838 (coe d_'46'generalizedField'45'b_39109 v0)
-- Ledger.Chain._.epochState
d_epochState_2056 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_39115 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870
d_epochState_2056 ~v0 ~v1 v2 = du_epochState_2056 v2
du_epochState_2056 ::
  T_GeneralizeTel_39115 ->
  MAlonzo.Code.Ledger.Epoch.T_EpochState_1870
du_epochState_2056 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_epochState_1904
      (coe
         d_newEpochState_1830 (coe d_'46'generalizedField'45's_39107 v0))
-- Ledger.Chain._.es
d_es_2064 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_39115 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
d_es_2064 ~v0 ~v1 v2 = du_es_2064 v2
du_es_2064 ::
  T_GeneralizeTel_39115 -> MAlonzo.Code.Ledger.Enact.T_EnactState_644
du_es_2064 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_es_1884
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_1904
         (coe
            d_newEpochState_1830 (coe d_'46'generalizedField'45's_39107 v0)))
-- Ledger.Chain._.ls
d_ls_2068 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_39115 -> MAlonzo.Code.Ledger.Ledger.T_LState_1744
d_ls_2068 ~v0 ~v1 v2 = du_ls_2068 v2
du_ls_2068 ::
  T_GeneralizeTel_39115 -> MAlonzo.Code.Ledger.Ledger.T_LState_1744
du_ls_2068 v0
  = coe
      MAlonzo.Code.Ledger.Epoch.d_ls_1882
      (coe
         MAlonzo.Code.Ledger.Epoch.d_epochState_1904
         (coe
            d_newEpochState_1830 (coe d_'46'generalizedField'45's_39107 v0)))
-- Ledger.Chain._.constitution
d_constitution_2074 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_39115 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constitution_2074 ~v0 ~v1 v2 = du_constitution_2074 v2
du_constitution_2074 ::
  T_GeneralizeTel_39115 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constitution_2074 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_constitution_658
      (coe
         MAlonzo.Code.Ledger.Epoch.d_es_1884
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_1904
            (coe
               d_newEpochState_1830 (coe d_'46'generalizedField'45's_39107 v0))))
-- Ledger.Chain._.pparams
d_pparams_2076 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1396 ->
  T_GeneralizeTel_39115 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pparams_2076 ~v0 ~v1 v2 = du_pparams_2076 v2
du_pparams_2076 ::
  T_GeneralizeTel_39115 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pparams_2076 v0
  = coe
      MAlonzo.Code.Ledger.Enact.d_pparams_662
      (coe
         MAlonzo.Code.Ledger.Epoch.d_es_1884
         (coe
            MAlonzo.Code.Ledger.Epoch.d_epochState_1904
            (coe
               d_newEpochState_1830 (coe d_'46'generalizedField'45's_39107 v0))))
-- Ledger.Chain..generalizedField-s
d_'46'generalizedField'45's_39107 ::
  T_GeneralizeTel_39115 -> T_ChainState_1826
d_'46'generalizedField'45's_39107 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-b
d_'46'generalizedField'45'b_39109 ::
  T_GeneralizeTel_39115 -> T_Block_1832
d_'46'generalizedField'45'b_39109 = MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-nes
d_'46'generalizedField'45'nes_39111 ::
  T_GeneralizeTel_39115 ->
  MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1896
d_'46'generalizedField'45'nes_39111
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain..generalizedField-ls'
d_'46'generalizedField'45'ls''_39113 ::
  T_GeneralizeTel_39115 -> MAlonzo.Code.Ledger.Ledger.T_LState_1744
d_'46'generalizedField'45'ls''_39113
  = MAlonzo.RTE.mazUnreachableError
-- Ledger.Chain.GeneralizeTel
d_GeneralizeTel_39115 a0 a1 = ()
data T_GeneralizeTel_39115
  = C_mkGeneralizeTel_39117 T_ChainState_1826 T_Block_1832
                            MAlonzo.Code.Ledger.Epoch.T_NewEpochState_1896
                            MAlonzo.Code.Ledger.Ledger.T_LState_1744